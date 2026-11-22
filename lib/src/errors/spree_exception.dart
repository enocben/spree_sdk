/// Base error type and secret-redaction helpers for the Spree SDK.
///
/// Secrets (API keys, tokens, cookies, personal data) must never appear in
/// logs or diagnostics (AGENTS.md sections 3.7 and 6). Every
/// [SpreeException] renders via [toString] through [redactText], header maps
/// pass through [redactHeaders], and URIs through [redactUri].
library;

/// Placeholder substituted for secret values.
const String redactedPlaceholder = '[REDACTED]';

/// Header names (compared lower-cased) whose values are always secrets.
const Set<String> sensitiveHeaderNames = <String>{
  'authorization',
  'x-spree-token',
  'x-spree-api-key',
  'cookie',
  'set-cookie',
};

/// Query parameter names (compared lower-cased) treated as secrets.
const Set<String> sensitiveQueryParameters = <String>{
  'token',
  'spree_token',
  'refresh_token',
};

final RegExp _bearerPattern = RegExp(
  r'Bearer\s+[A-Za-z0-9\-._~+/=]+',
  caseSensitive: false,
);
final RegExp _publishableKeyPattern = RegExp(r'pk_[A-Za-z0-9\-_]+');

/// Returns a copy of [headers] with secret values replaced by
/// [redactedPlaceholder]. Header names are preserved as given.
Map<String, String> redactHeaders(Map<String, String> headers) {
  if (headers.isEmpty) {
    return <String, String>{};
  }
  return headers.map(
    (String name, String value) =>
        sensitiveHeaderNames.contains(name.toLowerCase())
        ? MapEntry<String, String>(name, redactedPlaceholder)
        : MapEntry<String, String>(name, value),
  );
}

/// Returns [uri] with secret query parameter values redacted.
///
/// Returns the original instance when nothing needs redacting.
Uri redactUri(Uri uri) {
  if (!uri.hasQuery) {
    return uri;
  }
  var changed = false;
  final Map<String, String> query = Map<String, String>.from(
    uri.queryParameters,
  );
  for (final String key in query.keys.toList()) {
    if (sensitiveQueryParameters.contains(key.toLowerCase())) {
      query[key] = redactedPlaceholder;
      changed = true;
    }
  }
  if (!changed) {
    return uri;
  }
  return uri.replace(queryParameters: query);
}

/// Redacts bearer tokens and publishable keys embedded in free text.
String redactText(String input) {
  var output = input.replaceAll(_bearerPattern, 'Bearer $redactedPlaceholder');
  output = output.replaceAll(_publishableKeyPattern, 'pk_$redactedPlaceholder');
  return output;
}

/// Base class for all errors thrown by the Spree SDK.
///
/// The [message] must already be free of raw secrets where possible; as a
/// safety net, [toString] redacts secret-looking content.
abstract class SpreeException implements Exception {
  /// Human-readable description of the failure.
  final String message;

  const SpreeException({required this.message});

  @override
  String toString() => '$runtimeType: ${redactText(message)}';
}
