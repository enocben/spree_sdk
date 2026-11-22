import 'dart:convert';

/// Internal request/response value types for the transport pipeline.
///
/// Resources depend on this narrow interface — never on `package:http` types
/// (ADR-001). These types are internal and are not exported by the public
/// barrel.
class SpreeRequest {
  /// HTTP method, upper-cased by convention.
  final String method;

  /// Store API path, must start with `/` (for example `/products`).
  final String path;

  /// URL query parameters (already serialized, e.g. via [ListQuery]).
  final Map<String, String> query;

  /// Request headers (fully resolved, secrets included in memory only —
  /// never logged unredacted).
  final Map<String, String> headers;

  /// Encoded body: `String` (JSON) or `List<int>` bytes, or null.
  final Object? body;

  /// True for safe methods or mutations carrying an idempotency key.
  /// Only idempotent requests are eligible for automatic retry.
  final bool idempotent;

  const SpreeRequest({
    required this.method,
    required this.path,
    this.query = const <String, String>{},
    this.headers = const <String, String>{},
    this.body,
    this.idempotent = false,
  });
}

/// Internal HTTP response value type.
class SpreeResponse {
  /// HTTP status code.
  final int statusCode;

  /// Response headers with lower-cased names.
  final Map<String, String> headers;

  /// Raw response body bytes.
  final List<int> bodyBytes;

  /// Final request URI (after redirects), for error diagnostics.
  final Uri? requestUri;

  const SpreeResponse({
    required this.statusCode,
    this.headers = const <String, String>{},
    this.bodyBytes = const <int>[],
    this.requestUri,
  });

  /// Body decoded as UTF-8, tolerating malformed sequences.
  String get bodyText => utf8.decode(bodyBytes, allowMalformed: true);
}

/// Narrow internal transport seam (ADR-001).
///
/// The default implementation wraps `package:http`; tests inject fakes of
/// this interface (or a fake `http.Client`) for deterministic
/// request-construction tests with zero network.
abstract class SpreeTransport {
  Future<SpreeResponse> send(SpreeRequest request);
}
