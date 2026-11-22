/// Authentication models for the Spree Store API.
///
/// Immutable models use Freezed for value semantics and keep their verified
/// JSON mappings explicit.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * `AuthTokens` shape: `packages/sdk/src/types/index.ts` —
///   `{token, refresh_token, user: {id, email, first_name, last_name}}`;
/// * SPEC `store.yaml#/components/schemas/AuthResponse` types `user` as the
///   full `Customer` schema (conflict recorded as Q4 in
///   `doc/research/open-questions.md`). Per the task brief this file models
///   the documented superset: the SDK fields plus the SPEC-documented
///   customer fields, all SPEC extras nullable;
/// * SPEC `store.yaml#/components/schemas/Customer` for the extra fields
///   (`phone`, `accepts_email_marketing`,
///   `email_marketing_consent_updated_at`, `full_name`,
///   `available_store_credit_total`);
/// * login/refresh/logout contracts: `doc/research/store-api-contract.md` §1
///   (`POST /auth/login`, `POST /auth/refresh`, `POST /auth/logout`).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

/// Credentials returned by `POST /auth/login` (and `POST /auth/refresh`,
/// `POST /customers`, `PATCH /password_resets/{token}`).
///
/// Source: `packages/sdk/src/types/index.ts` (`AuthTokens`);
/// SPEC `store.yaml#/components/schemas/AuthResponse`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AuthTokens with _$AuthTokens {
  const AuthTokens._();

  /// Creates an auth token triple.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthTokens({
    required String token,
    required String refreshToken,
    required AuthUser user,
  }) = _AuthTokens;

  /// Parses auth tokens from their JSON shape.
  factory AuthTokens.fromJson(Map<String, Object?> json) =>
      _$AuthTokensFromJson(json);

  /// JWT access token (sent as `Authorization: Bearer …`).
  @override
  String get token;

  /// Refresh token (rotated on every refresh; see contract §1).
  @override
  String get refreshToken;

  /// The authenticated customer (documented superset, see [AuthUser]).
  @override
  AuthUser get user;

  /// Serializes these tokens back to their JSON shape.
}

/// The customer embedded in [AuthTokens].
///
/// The TS SDK declares only `{id, email, first_name, last_name}` while the
/// SPEC types this as the full `Customer` schema (open-questions Q4). This
/// class models the documented superset: the SDK fields plus the
/// SPEC-documented customer fields, all SPEC extras nullable so payloads
/// matching either shape parse safely.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AuthUser with _$AuthUser {
  const AuthUser._();

  /// Creates the embedded auth user.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthUser({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? phone,
    bool? acceptsEmailMarketing,
    String? emailMarketingConsentUpdatedAt,
    String? fullName,
    String? availableStoreCreditTotal,
  }) = _AuthUser;

  /// Parses the embedded user from its JSON shape.
  factory AuthUser.fromJson(Map<String, Object?> json) =>
      _$AuthUserFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Customer email.
  @override
  String get email;

  /// First name, when set.
  @override
  String? get firstName;

  /// Last name, when set.
  @override
  String? get lastName;

  /// Phone number (SPEC `Customer.phone`).
  @override
  String? get phone;

  /// Marketing opt-in flag (SPEC `Customer.accepts_email_marketing`).
  @override
  bool? get acceptsEmailMarketing;

  /// Marketing-consent timestamp (SPEC
  /// `Customer.email_marketing_consent_updated_at`).
  @override
  String? get emailMarketingConsentUpdatedAt;

  /// Computed full name (SPEC `Customer.full_name`).
  @override
  String? get fullName;

  /// Usable store-credit total, decimal string (SPEC
  /// `Customer.available_store_credit_total`).
  @override
  String? get availableStoreCreditTotal;

  /// Serializes this user back to its JSON shape.
}
