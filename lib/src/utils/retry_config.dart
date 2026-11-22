import 'dart:math' as math;

/// HTTP methods considered safe (and therefore idempotent) for automatic
/// retries. Everything else is a mutation and is never retried without
/// explicit idempotence (AGENTS.md sections 3.9 and 6, ADR-003).
const Set<String> safeHttpMethods = <String>{'GET', 'HEAD', 'OPTIONS'};

/// Conservative retry policy for the Spree SDK (ADR-003).
///
/// Defaults: safe/idempotent reads only, at most [maxRetries] retries with
/// exponential backoff plus jitter, honoring `Retry-After`. Mutations
/// (`POST`/`PUT`/`PATCH`/`DELETE`) are retried only when [RetryConfig]
/// observes explicit idempotence — i.e. the request carries an idempotency
/// key (`RequestOptions.idempotencyKey`, sent as `Idempotency-Key`, a
/// server-supported mechanism per `doc/research/store-api-contract.md`
/// section 4).
class RetryConfig {
  /// Maximum number of retries after the initial attempt. Defaults to 2.
  final int maxRetries;

  /// Base delay before the first retry; doubles on each subsequent retry.
  final Duration initialDelay;

  /// Upper bound for computed backoff delays.
  final Duration maxDelay;

  /// Fraction of the computed delay added as uniform random jitter
  /// (0 disables jitter, 1 adds up to 100% extra).
  final double jitterFraction;

  /// Whether a `Retry-After` response value overrides computed backoff.
  final bool respectRetryAfter;

  /// Status codes eligible for retry (when the method is retryable).
  /// 4xx codes other than 408/429 are never retried.
  final Set<int> retryableStatuses;

  const RetryConfig({
    this.maxRetries = 2,
    this.initialDelay = const Duration(milliseconds: 500),
    this.maxDelay = const Duration(seconds: 5),
    this.jitterFraction = 0.25,
    this.respectRetryAfter = true,
    this.retryableStatuses = const <int>{408, 429, 500, 502, 503, 504},
  }) : assert(maxRetries >= 0, 'maxRetries must be non-negative'),
       assert(
         jitterFraction >= 0 && jitterFraction <= 1,
         'jitterFraction must be within 0..1',
       );

  /// Whether a failed attempt qualifies for retry number [retryNumber]
  /// (1-based: 1 is the first retry after the initial attempt).
  ///
  /// [networkError] covers transport/timeout failures with no response.
  /// [idempotent] must be true for non-safe methods (explicit idempotency
  /// key); safe methods are always idempotent.
  bool shouldRetry({
    required String method,
    required int retryNumber,
    int? statusCode,
    bool networkError = false,
    bool idempotent = false,
  }) {
    if (retryNumber < 1 || retryNumber > maxRetries) {
      return false;
    }
    final bool safe = safeHttpMethods.contains(method.toUpperCase());
    if (!safe && !idempotent) {
      return false;
    }
    if (networkError) {
      return true;
    }
    if (statusCode == null) {
      return false;
    }
    return retryableStatuses.contains(statusCode);
  }

  /// Computes the delay before retry number [retryNumber] (1-based).
  ///
  /// Exponential backoff (`initialDelay * 2^(retryNumber-1)`, capped at
  /// [maxDelay]) plus uniform jitter, unless [retryAfter] is provided and
  /// [respectRetryAfter] is enabled. Pass a seeded [random] for
  /// deterministic tests.
  Duration delayForAttempt(
    int retryNumber, {
    Duration? retryAfter,
    math.Random? random,
  }) {
    assert(retryNumber >= 1, 'retryNumber is 1-based');
    if (respectRetryAfter && retryAfter != null && !retryAfter.isNegative) {
      return retryAfter;
    }
    Duration delay = initialDelay * (1 << (retryNumber - 1));
    if (delay > maxDelay) {
      delay = maxDelay;
    }
    if (jitterFraction <= 0) {
      return delay;
    }
    final math.Random source = random ?? math.Random();
    final int jitterMicros =
        (delay.inMicroseconds * jitterFraction * source.nextDouble()).round();
    return delay + Duration(microseconds: jitterMicros);
  }
}
