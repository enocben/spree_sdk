/// Per-request options threaded through resource methods (frozen contract,
/// `doc/architecture/file-ownership.md` table 2).
///
/// Guest/cart tokens travel via [spreeToken] (sent as `x-spree-token`);
/// customer JWTs via [token] (sent as `Authorization: Bearer …`), which
/// defaults to whatever [AuthTokenProvider.getToken] returns when null.
/// There is intentionally no ambient mutable "current cart" state on the
/// client (ADR-004).
///
/// Verified header semantics: `doc/research/store-api-contract.md`
/// section 0, `doc/research/authentication-flows.md` section 1.
class RequestOptions {
  /// Customer JWT. Overrides the provider token for this request only.
  final String? token;

  /// Guest cart/order token, sent as `x-spree-token`.
  final String? spreeToken;

  /// Extra headers merged over (and able to override) client defaults.
  final Map<String, String>? headers;

  /// Overrides for the client's contextual defaults, sent as
  /// `x-spree-locale`, `x-spree-currency`, `x-spree-country` and
  /// `x-spree-channel` when non-null.
  final String? locale;
  final String? currency;
  final String? country;
  final String? channel;

  /// Idempotency key sent as `Idempotency-Key`.
  ///
  /// Mutations carrying a key are eligible for safe retry under
  /// [RetryConfig]; mutations without one are never retried (AGENTS.md
  /// section 3.9).
  final String? idempotencyKey;

  /// Per-request timeout override.
  final Duration? timeout;

  const RequestOptions({
    this.token,
    this.spreeToken,
    this.headers,
    this.locale,
    this.currency,
    this.country,
    this.channel,
    this.idempotencyKey,
    this.timeout,
  });
}
