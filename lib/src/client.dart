import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'auth/provider.dart';
import 'errors/decode_error.dart';
import 'errors/http_error.dart';
import 'errors/transport_error.dart';
import 'pagination.dart';
import 'transport/http_transport.dart';
import 'transport/interceptors.dart';
import 'transport/request_options.dart';
import 'transport/retry_transport.dart';
import 'transport/transport.dart';
import 'utils/query_builder.dart';
import 'utils/retry_config.dart';

/// HTTP methods supported by [SpreeClient.request].
const Set<String> _supportedMethods = <String>{
  'GET',
  'POST',
  'PUT',
  'PATCH',
  'DELETE',
  'HEAD',
  'OPTIONS',
};

/// Immutable configuration for [SpreeClient] (frozen contract,
/// `doc/architecture/file-ownership.md` table 2).
class SpreeConfig {
  /// Absolute HTTP(S) store origin (for example
  /// `Uri.parse('https://api.mystore.com')`). Trailing slashes are stripped;
  /// `/api/v3/store` is appended per request.
  final Uri baseUrl;

  /// Publishable storefront key, sent as `x-spree-api-key` on every request
  /// (verified: `doc/research/store-api-contract.md` section 0).
  final String publishableKey;

  /// Token provider supplying the customer JWT. Null for anonymous usage.
  /// Core never persists tokens (ADR-004).
  final AuthTokenProvider? authProvider;

  /// Retry policy: safe reads only by default (ADR-003).
  final RetryConfig retry;

  /// Contextual defaults, sent as `x-spree-locale`, `x-spree-currency`,
  /// `x-spree-country` and `x-spree-channel` (verified header names:
  /// `doc/research/store-api-contract.md` section 0). Per-request
  /// [RequestOptions] override these.
  final String? locale;
  final String? currency;
  final String? country;
  final String? channel;

  /// Client-side timeout applied to each request (never infinite).
  final Duration timeout;

  /// Maximum redirects followed per request.
  final int maxRedirects;

  SpreeConfig({
    required Uri baseUrl,
    required String publishableKey,
    this.authProvider,
    this.retry = const RetryConfig(),
    this.locale,
    this.currency,
    this.country,
    this.channel,
    this.timeout = const Duration(seconds: 30),
    this.maxRedirects = 5,
  }) : baseUrl = HttpTransport.normalizeBaseUrl(baseUrl),
       publishableKey = publishableKey {
    if (publishableKey.isEmpty) {
      throw ArgumentError.value(
        publishableKey,
        'publishableKey',
        'must not be empty',
      );
    }
    if (timeout <= Duration.zero) {
      throw ArgumentError.value(timeout, 'timeout', 'must be positive');
    }
  }
}

/// Entry point for the Spree Store API (frozen contract,
/// `doc/architecture/file-ownership.md` table 2).
///
/// ```dart
/// final client = SpreeClient(
///   baseUrl: Uri.parse('https://api.mystore.com'),
///   publishableKey: 'pk_xxx',
/// );
/// final products = await client.requestPaginated(
///   'GET',
///   '/products',
///   query: const ListQuery(limit: 25).toQueryParameters(),
///   fromJson: (item) => item as Map<String, Object?>,
/// );
/// client.close();
/// ```
///
/// The client owns its transport lifecycle ([close] releases resources),
/// holds no ambient auth/cart state, and never persists credentials.
class SpreeClient {
  /// Effective configuration.
  final SpreeConfig config;

  /// Request interceptors applied in order before sending.
  final List<RequestInterceptor> requestInterceptors;

  /// Response interceptors applied in order before decoding.
  final List<ResponseInterceptor> responseInterceptors;

  late final HttpTransport _httpTransport;
  late final SpreeTransport _transport;
  bool _closed = false;

  SpreeClient({
    required Uri baseUrl,
    required String publishableKey,
    AuthTokenProvider? authProvider,
    RetryConfig retry = const RetryConfig(),
    String? locale,
    String? currency,
    String? country,
    String? channel,
    Duration timeout = const Duration(seconds: 30),
    int maxRedirects = 5,
    http.Client? httpClient,
    this.requestInterceptors = const <RequestInterceptor>[],
    this.responseInterceptors = const <ResponseInterceptor>[],
  }) : config = SpreeConfig(
         baseUrl: baseUrl,
         publishableKey: publishableKey,
         authProvider: authProvider,
         retry: retry,
         locale: locale,
         currency: currency,
         country: country,
         channel: channel,
         timeout: timeout,
         maxRedirects: maxRedirects,
       ) {
    _httpTransport = HttpTransport(
      client: httpClient,
      baseUrl: config.baseUrl,
      timeout: config.timeout,
      maxRedirects: config.maxRedirects,
    );
    _transport = RetryingTransport(inner: _httpTransport, config: config.retry);
  }

  /// Sends a Store API request and returns the decoded body.
  ///
  /// - [method] is the HTTP method (case-insensitive).
  /// - [path] is the Store API path starting with `/` (for example
  ///   `/products`); `/api/v3/store` is prepended automatically.
  /// - [query] holds serialized query parameters — compose with
  ///   [ListQuery.toQueryParameters].
  /// - [body] is JSON-encoded when it is a `Map` or `List`, sent verbatim
  ///   when a `String`.
  ///
  /// Returns the decoded JSON (`Map`/`List`), `null` for empty bodies
  /// (including 204), or raw text for non-JSON 2xx responses. Throws
  /// [SpreeAuthError] for 401/403, [SpreeHttpError] for other failures,
  /// [SpreeDecodeError] for unparseable success bodies,
  /// [SpreeTimeoutError] on timeout and [SpreeTransportError] when no
  /// response was received.
  Future<Object?> request(
    String method,
    String path, {
    Map<String, String>? query,
    Object? body,
    RequestOptions? options,
  }) async {
    final String upper = method.toUpperCase();
    if (!_supportedMethods.contains(upper)) {
      throw ArgumentError.value(method, 'method', 'unsupported HTTP method');
    }
    if (_closed) {
      throw StateError('SpreeClient is closed');
    }

    SpreeRequest spreeRequest = await _buildRequest(
      upper,
      path,
      query: query,
      body: body,
      options: options,
    );
    for (final RequestInterceptor interceptor in requestInterceptors) {
      spreeRequest = await interceptor(spreeRequest);
    }

    SpreeResponse response = await _send(spreeRequest, options?.timeout);
    for (final ResponseInterceptor interceptor in responseInterceptors) {
      response = await interceptor(response);
    }

    if (response.statusCode == 401 && config.authProvider != null) {
      final String? refreshed = await config.authProvider!.refreshToken();
      if (refreshed != null && refreshed.isNotEmpty) {
        SpreeRequest retryRequest = await _buildRequest(
          upper,
          path,
          query: query,
          body: body,
          options: options,
          tokenOverride: refreshed,
        );
        for (final RequestInterceptor interceptor in requestInterceptors) {
          retryRequest = await interceptor(retryRequest);
        }
        response = await _send(retryRequest, options?.timeout);
        for (final ResponseInterceptor interceptor in responseInterceptors) {
          response = await interceptor(response);
        }
      }
    }

    return _decode(spreeRequest, response);
  }

  /// Sends a request expected to return a paginated collection envelope,
  /// applying [fromJson] to each `data` entry.
  Future<PaginatedResponse<T>> requestPaginated<T>(
    String method,
    String path, {
    Map<String, String>? query,
    ListQuery? list,
    Object? body,
    RequestOptions? options,
    required T Function(Object?) fromJson,
  }) async {
    final Map<String, String> merged = <String, String>{
      ...?list?.toQueryParameters(),
      ...?query,
    };
    final Object? json = await request(
      method,
      path,
      query: merged,
      body: body,
      options: options,
    );
    return PaginatedResponse<T>.fromJson(json, fromJson);
  }

  /// Releases the underlying HTTP resources. The client must not be used
  /// afterwards.
  void close() {
    _closed = true;
    _httpTransport.close();
  }

  Future<SpreeRequest> _buildRequest(
    String method,
    String path, {
    Map<String, String>? query,
    Object? body,
    RequestOptions? options,
    String? tokenOverride,
  }) async {
    final Map<String, String> headers = <String, String>{
      'accept': 'application/json',
      'x-spree-api-key': config.publishableKey,
    };

    final String? locale = options?.locale ?? config.locale;
    if (locale != null) {
      headers['x-spree-locale'] = locale;
    }
    final String? currency = options?.currency ?? config.currency;
    if (currency != null) {
      headers['x-spree-currency'] = currency;
    }
    final String? country = options?.country ?? config.country;
    if (country != null) {
      headers['x-spree-country'] = country;
    }
    final String? channel = options?.channel ?? config.channel;
    if (channel != null) {
      headers['x-spree-channel'] = channel;
    }

    final String? token =
        tokenOverride ??
        options?.token ??
        await config.authProvider?.getToken();
    if (token != null && token.isNotEmpty) {
      headers['authorization'] = 'Bearer $token';
    }
    final String? spreeToken = options?.spreeToken;
    if (spreeToken != null && spreeToken.isNotEmpty) {
      headers['x-spree-token'] = spreeToken;
    }
    if (options?.headers != null) {
      headers.addAll(options!.headers!);
    }
    final String? idempotencyKey = options?.idempotencyKey;
    if (idempotencyKey != null && idempotencyKey.isNotEmpty) {
      headers['idempotency-key'] = idempotencyKey;
    }

    Object? encodedBody;
    if (body != null) {
      if (body is String || body is List<int>) {
        encodedBody = body;
        headers.putIfAbsent('content-type', () => 'application/json');
      } else {
        try {
          encodedBody = jsonEncode(body);
        } on JsonUnsupportedObjectError catch (error) {
          throw SpreeDecodeError(
            expected: 'JSON-encodable request body',
            actual: error.toString(),
          );
        }
        headers['content-type'] = 'application/json';
      }
    }

    final bool safe = safeHttpMethods.contains(method);
    return SpreeRequest(
      method: method,
      path: path,
      query: query ?? const <String, String>{},
      headers: headers,
      body: encodedBody,
      idempotent: safe || (idempotencyKey != null && idempotencyKey.isNotEmpty),
    );
  }

  Future<SpreeResponse> _send(SpreeRequest request, Duration? override) async {
    final Duration timeout = override ?? config.timeout;
    try {
      return await _transport.send(request).timeout(timeout);
    } on TimeoutException {
      throw SpreeTimeoutError(timeout);
    }
  }

  Object? _decode(SpreeRequest request, SpreeResponse response) {
    final int status = response.statusCode;
    final Uri uri =
        response.requestUri ??
        HttpTransport.buildStoreUri(config.baseUrl, request.path);
    if (response.bodyBytes.isEmpty) {
      if (status >= 200 && status < 300) {
        return null;
      }
      throw SpreeHttpError.fromResponse(
        method: request.method,
        uri: uri,
        statusCode: status,
        bodyText: '',
      );
    }
    final String text = response.bodyText;
    if (status == 204) {
      return null;
    }
    if (status < 200 || status >= 300) {
      throw SpreeHttpError.fromResponse(
        method: request.method,
        uri: uri,
        statusCode: status,
        bodyText: text,
      );
    }
    final String contentType = response.headers['content-type'] ?? '';
    if (!contentType.contains('json')) {
      return text;
    }
    try {
      return jsonDecode(text);
    } on FormatException catch (error) {
      throw SpreeDecodeError(expected: 'JSON response', actual: error.message);
    }
  }
}
