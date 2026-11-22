import 'spree_exception.dart';

/// A request failed before any HTTP response was received.
///
/// Covers DNS failures, refused connections, TLS errors and socket errors.
/// The underlying platform error is summarized in [message]; raw secrets are
/// never included because request URIs are redacted by callers.
class SpreeTransportError extends SpreeException {
  const SpreeTransportError({required super.message});

  /// Wraps an unknown transport-layer failure.
  factory SpreeTransportError.from(Object error) {
    return SpreeTransportError(
      message: 'Request failed before a response was received: $error',
    );
  }
}

/// A request exceeded the configured client-side timeout.
///
/// Timeouts are always configured (never infinite by default); see ADR-003.
class SpreeTimeoutError extends SpreeTransportError {
  /// The timeout that was exceeded.
  final Duration timeout;

  SpreeTimeoutError(this.timeout)
    : super(message: 'Request timed out after ${timeout.inMilliseconds}ms');
}
