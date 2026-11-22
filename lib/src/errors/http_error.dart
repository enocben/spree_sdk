import 'dart:convert';

import 'spree_exception.dart';

/// The server answered with a non-2xx status code.
///
/// The `{error: {code, message, details}}` envelope documented in
/// `doc/research/store-api-contract.md` section 0 is parsed when present;
/// otherwise [code] is null and [message] falls back to a status summary.
/// The raw body is retained in [rawBody] for diagnostics (truncated) and is
/// never interpolated into [toString] unredacted.
class SpreeHttpError extends SpreeException {
  /// HTTP status code returned by the server.
  final int statusCode;

  /// Machine-readable error code from the envelope (for example
  /// `invalid_token`, `rate_limit_exceeded`), or null when absent.
  final String? code;

  /// HTTP method of the failed request, upper-cased.
  final String method;

  /// URI of the failed request, with secret query parameters redacted.
  final Uri uri;

  /// Structured `details` payload from the envelope, if any.
  final Object? details;

  /// Raw response body, truncated for diagnostics. May be null.
  final String? rawBody;

  const SpreeHttpError({
    required this.statusCode,
    required super.message,
    required this.method,
    required this.uri,
    this.code,
    this.details,
    this.rawBody,
  });

  /// Builds a [SpreeHttpError] — or a [SpreeAuthError] for 401/403 — from a
  /// failed response. Never throws: unparseable bodies yield a status-based
  /// message instead.
  factory SpreeHttpError.fromResponse({
    required String method,
    required Uri uri,
    required int statusCode,
    required String bodyText,
  }) {
    String? code;
    String message = 'Request failed with status $statusCode';
    Object? details;
    String? rawBody;
    if (bodyText.isNotEmpty) {
      rawBody = bodyText.length > 2000 ? bodyText.substring(0, 2000) : bodyText;
      try {
        final Object? decoded = jsonDecode(bodyText);
        if (decoded is Map) {
          final Object? error = decoded['error'];
          if (error is Map) {
            final Object? rawCode = error['code'];
            if (rawCode != null) {
              code = rawCode.toString();
            }
            final Object? rawMessage = error['message'];
            if (rawMessage is String && rawMessage.isNotEmpty) {
              message = rawMessage;
            }
            details = error['details'];
          }
        }
      } on FormatException {
        // Keep the status-based message; rawBody retains diagnostics.
      }
    }
    if (statusCode == 401 || statusCode == 403) {
      return SpreeAuthError(
        statusCode: statusCode,
        message: message,
        method: method,
        uri: uri,
        code: code,
        details: details,
        rawBody: rawBody,
      );
    }
    return SpreeHttpError(
      statusCode: statusCode,
      message: message,
      method: method,
      uri: uri,
      code: code,
      details: details,
      rawBody: rawBody,
    );
  }

  @override
  String toString() {
    final String safeUri = redactUri(uri).toString();
    final String suffix = code == null ? '' : ' $code';
    return '$runtimeType($statusCode$suffix): '
        '${redactText(message)} [$method $safeUri]';
  }
}

/// 401/403-class failures surfaced distinctly so apps can trigger re-login
/// (ADR-003). Constructed via [SpreeHttpError.fromResponse].
class SpreeAuthError extends SpreeHttpError {
  const SpreeAuthError({
    required super.statusCode,
    required super.message,
    required super.method,
    required super.uri,
    super.code,
    super.details,
    super.rawBody,
  });
}
