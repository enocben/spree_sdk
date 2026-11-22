/// Token provider contract for the Spree SDK (ADR-004).
///
/// The core package must not choose a platform storage mechanism and must
/// never silently persist credentials (AGENTS.md sections 3.8 and 6). The
/// client calls [getToken] per request; any durable store (for example a
/// `flutter_secure_storage`-backed adapter) lives in a separate optional
/// package implementing this interface.
///
/// Verified credential semantics (`Authorization: Bearer …` from the `token`
/// option, refresh via `POST /auth/refresh` with `{refresh_token}` and no
/// Authorization header) are recorded in
/// `docs/research/authentication-flows.md` sections 1–2.
abstract class AuthTokenProvider {
  const AuthTokenProvider();

  /// Returns the current customer JWT, or null for unauthenticated requests.
  ///
  /// Called per request. Must not perform disk persistence; in-memory caching
  /// of an already-loaded token is acceptable.
  Future<String?> getToken();

  /// Refresh hook invoked once when a request fails with 401.
  ///
  /// Returns the replacement access token, or null when refresh is not
  /// supported or fails. The default implementation opts out by returning
  /// null. The core client never persists the returned value beyond the
  /// retried request; durable storage is the adapter's job.
  Future<String?> refreshToken() => Future<String?>.value();
}
