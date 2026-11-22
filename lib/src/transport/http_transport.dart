import 'dart:async';

import 'package:http/http.dart' as http;

import '../errors/spree_exception.dart';
import '../errors/transport_error.dart';
import 'transport.dart';

/// `package:http`-backed implementation of [SpreeTransport] (ADR-001).
///
/// Responsibilities (all internal — this type is never exported publicly):
/// - normalize the base URL and build `{baseUrl}/api/v3/store{path}` URIs;
/// - apply the configured per-attempt timeout;
/// - follow redirects manually (up to [maxRedirects]) so that credentials
///   ([sensitiveHeaderNames]) are stripped whenever the origin changes
///   (AGENTS.md section 6);
/// - surface transport failures as [SpreeTransportError]/[SpreeTimeoutError].
///
/// TLS validation is never disabled.
class HttpTransport implements SpreeTransport {
  /// Store API prefix appended to the normalized base URL.
  static const String storePrefix = '/api/v3/store';

  /// Redirect statuses handled manually.
  static const Set<int> redirectStatuses = <int>{301, 302, 303, 307, 308};

  final http.Client _client;
  final bool _ownsClient;

  /// Normalized base URL (no trailing slash).
  final Uri baseUrl;

  /// Per-attempt timeout applied to sending and body reads.
  final Duration timeout;

  /// Maximum redirects followed per attempt.
  final int maxRedirects;

  HttpTransport({
    http.Client? client,
    required Uri baseUrl,
    this.timeout = const Duration(seconds: 30),
    this.maxRedirects = 5,
  }) : _client = client ?? http.Client(),
       _ownsClient = client == null,
       baseUrl = normalizeBaseUrl(baseUrl) {
    if (maxRedirects < 0) {
      throw ArgumentError.value(
        maxRedirects,
        'maxRedirects',
        'must be non-negative',
      );
    }
  }

  /// Normalizes a base URL: must be absolute with an `http(s)` scheme, with
  /// any trailing slash removed.
  static Uri normalizeBaseUrl(Uri base) {
    if (!base.isAbsolute) {
      throw ArgumentError.value(
        base,
        'baseUrl',
        'must be an absolute URI (for example, https://api.example.com); '
            'got "$base"',
      );
    }
    if (base.scheme != 'http' && base.scheme != 'https') {
      throw ArgumentError.value(
        base,
        'baseUrl',
        'scheme must be http or https; got "$base"',
      );
    }
    var path = base.path;
    while (path.length > 1 && path.endsWith('/')) {
      path = path.substring(0, path.length - 1);
    }
    if (path == '/') {
      path = '';
    }
    return base.replace(path: path);
  }

  /// Builds `{base}/api/v3/store{path}` with [query], preserving any base
  /// query parameters. A base that already ends in `/api/v3/store` is not
  /// double-prefixed.
  static Uri buildStoreUri(
    Uri base,
    String path, [
    Map<String, String> query = const <String, String>{},
  ]) {
    if (!path.startsWith('/')) {
      throw ArgumentError.value(path, 'path', 'must start with "/"');
    }
    final String basePath = base.path.endsWith(storePrefix)
        ? base.path
        : '${base.path}$storePrefix';
    final String fullPath = '$basePath$path'.replaceAll('//', '/');
    final Map<String, String> merged = <String, String>{
      ...base.queryParameters,
      ...query,
    };
    return base.replace(
      path: fullPath,
      queryParameters: merged.isEmpty ? null : merged,
    );
  }

  @override
  Future<SpreeResponse> send(SpreeRequest request) async {
    var uri = buildStoreUri(baseUrl, request.path, request.query);
    var method = request.method.toUpperCase();
    var headers = Map<String, String>.from(request.headers);
    Object? body = request.body;
    var redirectCount = 0;

    while (true) {
      final http.Request outgoing = http.Request(method, uri)
        ..followRedirects = false
        ..headers.addAll(headers);
      if (body is String) {
        outgoing.body = body;
      } else if (body is List<int>) {
        outgoing.bodyBytes = body;
      } else if (body != null) {
        throw ArgumentError.value(
          body,
          'body',
          'must be a String or List<int>',
        );
      }

      late final http.StreamedResponse streamed;
      late final List<int> bytes;
      try {
        streamed = await _client.send(outgoing).timeout(timeout);
        bytes = await streamed.stream.toBytes().timeout(timeout);
      } on TimeoutException {
        throw SpreeTimeoutError(timeout);
      } catch (error) {
        throw SpreeTransportError.from(error);
      }

      final Map<String, String> responseHeaders = <String, String>{};
      streamed.headers.forEach((String name, String value) {
        responseHeaders[name.toLowerCase()] = value;
      });

      final String? location = streamed.headers['location'];
      if (redirectCount < maxRedirects &&
          redirectStatuses.contains(streamed.statusCode) &&
          location != null) {
        final Uri next = uri.resolve(location);
        redirectCount++;
        if (!_sameOrigin(uri, next)) {
          headers = _stripCredentials(headers);
        }
        if (streamed.statusCode == 303 ||
            ((streamed.statusCode == 301 || streamed.statusCode == 302) &&
                method == 'POST')) {
          method = 'GET';
          body = null;
          headers.remove('content-type');
          headers.remove('content-length');
        }
        uri = next;
        continue;
      }

      return SpreeResponse(
        statusCode: streamed.statusCode,
        headers: responseHeaders,
        bodyBytes: bytes,
        requestUri: uri,
      );
    }
  }

  /// Closes the underlying client when this transport owns it.
  void close() {
    if (_ownsClient) {
      _client.close();
    }
  }

  static bool _sameOrigin(Uri a, Uri b) {
    return a.scheme == b.scheme &&
        a.host.toLowerCase() == b.host.toLowerCase() &&
        _effectivePort(a) == _effectivePort(b);
  }

  static int _effectivePort(Uri uri) {
    if (uri.hasPort) {
      return uri.port;
    }
    return uri.scheme == 'https' ? 443 : 80;
  }

  /// Removes credential headers before crossing origins.
  static Map<String, String> _stripCredentials(Map<String, String> headers) {
    final Map<String, String> kept = Map<String, String>.from(headers);
    for (final String name in sensitiveHeaderNames) {
      kept.removeWhere((String key, String value) => key.toLowerCase() == name);
    }
    return kept;
  }
}
