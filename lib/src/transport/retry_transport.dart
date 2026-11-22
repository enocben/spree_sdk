import '../errors/transport_error.dart';
import '../utils/retry_config.dart';
import 'transport.dart';

/// Parses a `Retry-After` header value.
///
/// Supports delta-seconds (the form Spree rate limiting uses —
/// `docs/research/store-api-contract.md` section 0). HTTP-date values are
/// not parsed and yield null (documented limitation).
Duration? parseRetryAfter(String? value) {
  if (value == null) {
    return null;
  }
  final int? seconds = int.tryParse(value.trim());
  if (seconds == null) {
    return null;
  }
  return Duration(seconds: seconds < 0 ? 0 : seconds);
}

/// Retry decorator around an inner [SpreeTransport] (ADR-003, AGENTS.md
/// sections 3.9 and 6).
///
/// Retries safe/idempotent reads per [RetryConfig]; mutations are retried
/// only when the request is marked [SpreeRequest.idempotent] (explicit
/// idempotency key). Backoff uses [RetryConfig.delayForAttempt] with jitter
/// and honors `Retry-After`.
class RetryingTransport implements SpreeTransport {
  /// Transport performing each attempt.
  final SpreeTransport inner;

  /// Retry policy.
  final RetryConfig config;

  /// Delay function; defaults to [Future.delayed]. Overridable for tests.
  final Future<void> Function(Duration duration) sleeper;

  RetryingTransport({
    required this.inner,
    this.config = const RetryConfig(),
    Future<void> Function(Duration duration)? sleeper,
  }) : sleeper = sleeper ?? Future.delayed;

  @override
  Future<SpreeResponse> send(SpreeRequest request) async {
    var attempt = 0;
    while (true) {
      attempt++;
      try {
        final SpreeResponse response = await inner.send(request);
        if (!config.shouldRetry(
          method: request.method,
          retryNumber: attempt,
          statusCode: response.statusCode,
          idempotent: request.idempotent,
        )) {
          return response;
        }
        await sleeper(
          config.delayForAttempt(
            attempt,
            retryAfter: config.respectRetryAfter
                ? parseRetryAfter(response.headers['retry-after'])
                : null,
          ),
        );
      } on SpreeTransportError {
        if (!config.shouldRetry(
          method: request.method,
          retryNumber: attempt,
          networkError: true,
          idempotent: request.idempotent,
        )) {
          rethrow;
        }
        await sleeper(config.delayForAttempt(attempt));
      }
    }
  }
}
