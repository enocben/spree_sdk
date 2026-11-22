/// Authentication resource for the Spree Store API (Phase 05 group A).
///
/// Verified contracts (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `doc/research/store-api-contract.md` §1 — method, path, auth, body,
///   envelope and error rows for `auth.login`, `auth.refresh`,
///   `auth.logout`, `customers.create` (register), `passwordResets.create`
///   and `passwordResets.update`;
/// * `doc/research/authentication-flows.md` §B–E, §H — register/login/
///   refresh/logout/password-reset flows, rate limits, rotation and
///   auto-login behavior.
///
/// Auth rule (AGENTS.md §§3, 6): every operation below is KEY-only — the
/// publishable key travels as `x-spree-api-key` (sent by [SpreeClient] on
/// every request) and no JWT or guest token is ever attached, including
/// when a token provider is configured. In particular `POST /auth/refresh`
/// is sent with explicitly no `Authorization` header (verified SRC comment).
///
/// No credentials are persisted: login/register/reset-update return fresh
/// [AuthTokens] and the caller owns storage (AGENTS.md §3.8). Mutating
/// operations are never retried by this resource (AGENTS.md §3.9) — retry
/// stays with the transport's idempotency policy.
library;

import '../client.dart';
import '../errors/decode_error.dart';
import '../models/auth.dart';
import '../models/params_auth.dart';
import '../transport/request_options.dart';

/// Copies [options] without any credential, preserving only the
/// non-credential context (locale/currency/country/channel, extra headers,
/// timeout) for KEY-only operations.
///
/// The empty-string [RequestOptions.token] is intentional: [SpreeClient]
/// only sends `Authorization` for non-empty tokens and only consults the
/// configured provider when the per-request token is null, so `''` blocks
/// both paths and guarantees no credential is attached.
RequestOptions _keyOnly(RequestOptions? options) => RequestOptions(
  token: '',
  locale: options?.locale,
  currency: options?.currency,
  country: options?.country,
  channel: options?.channel,
  headers: options?.headers,
  timeout: options?.timeout,
);

/// Throws [SpreeDecodeError] unless [json] is a JSON object; shared by the
/// single-resource parsers below.
Map<String, Object?> _asObject(Object? json, String operation) {
  if (json is Map<String, Object?>) {
    return json;
  }
  if (json is Map) {
    return json.map(
      (Object? key, Object? value) =>
          MapEntry<String, Object?>(key.toString(), value),
    );
  }
  throw SpreeDecodeError(
    expected: '$operation response object',
    actual: json == null ? 'null' : json.runtimeType.toString(),
  );
}

/// Authentication operations: login, refresh, logout, register and the
/// password-reset flow (with auto-login).
///
/// ```dart
/// final auth = AuthResource(client);
/// final AuthTokens session = await auth.login(
///   email: 'sam.buyer@example.com',
///   password: 'secret',
/// );
/// ```
class AuthResource {
  /// Creates an auth resource bound to [SpreeClient].
  const AuthResource(this.client);

  /// The Store API client used for every operation.
  final SpreeClient client;

  /// `POST /auth/login` → [AuthTokens].
  ///
  /// Body: `{provider, email, password}` (default provider `'email'`).
  /// Auth: KEY only. Throws [SpreeAuthError] on 401/403 and [SpreeHttpError]
  /// on 422 validation failures.
  Future<AuthTokens> login({
    required String email,
    required String password,
    String? provider,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/auth/login',
      body: LoginParams(
        email: email,
        password: password,
        provider: provider ?? 'email',
      ).toJson(),
      options: _keyOnly(options),
    );
    return AuthTokens.fromJson(_asObject(json, 'login'));
  }

  /// `POST /auth/refresh` → rotated [AuthTokens].
  ///
  /// Body: `{refresh_token}`. Auth: KEY only with explicitly no
  /// `Authorization` header. The caller must store BOTH new values (the
  /// refresh token rotates). Throws [SpreeAuthError] with code
  /// `invalid_refresh_token` on 401.
  Future<AuthTokens> refresh({
    required String refreshToken,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/auth/refresh',
      body: <String, Object?>{'refresh_token': refreshToken},
      options: _keyOnly(options),
    );
    return AuthTokens.fromJson(_asObject(json, 'refresh'));
  }

  /// `POST /auth/logout` → `void` (204, no body).
  ///
  /// Body: `{refresh_token}` (revokes the refresh token). Auth: KEY only.
  /// Any decoded body is ignored — the contract yields no content.
  Future<void> logout({
    required String refreshToken,
    RequestOptions? options,
  }) async {
    await client.request(
      'POST',
      '/auth/logout',
      body: <String, Object?>{'refresh_token': refreshToken},
      options: _keyOnly(options),
    );
  }

  /// `POST /customers` → [AuthTokens] (auto-login).
  ///
  /// Auth: KEY only. Throws [SpreeHttpError] on 422 validation failures;
  /// registration is rate-limited (3/min/IP, server-side).
  Future<AuthTokens> register({
    required RegisterParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/customers',
      body: params.toJson(),
      options: _keyOnly(options),
    );
    return AuthTokens.fromJson(_asObject(json, 'register'));
  }

  /// `POST /password_resets` → confirmation `message` (always 202,
  /// anti-enumeration: the message is identical for unknown emails).
  ///
  /// Auth: KEY only.
  Future<String> requestPasswordReset({
    required RequestPasswordResetParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'POST',
      '/password_resets',
      body: params.toJson(),
      options: _keyOnly(options),
    );
    final Map<String, Object?> body = _asObject(json, 'requestPasswordReset');
    final Object? message = body['message'];
    if (message is String) {
      return message;
    }
    throw SpreeDecodeError(
      expected: 'password reset response with message',
      actual: 'missing message',
    );
  }

  /// `PATCH /password_resets/{token}` → [AuthTokens] (auto-login).
  ///
  /// The email-link [token] travels as a path segment (the transport
  /// percent-encodes it). Auth: KEY only.
  Future<AuthTokens> resetPassword({
    required String token,
    required ResetPasswordParams params,
    RequestOptions? options,
  }) async {
    final Object? json = await client.request(
      'PATCH',
      '/password_resets/$token',
      body: params.toJson(),
      options: _keyOnly(options),
    );
    return AuthTokens.fromJson(_asObject(json, 'resetPassword'));
  }
}
