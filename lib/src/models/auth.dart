/// Authentication models for the Spree Store API.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
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

/// Credentials returned by `POST /auth/login` (and `POST /auth/refresh`,
/// `POST /customers`, `PATCH /password_resets/{token}`).
///
/// Source: `packages/sdk/src/types/index.ts` (`AuthTokens`);
/// SPEC `store.yaml#/components/schemas/AuthResponse`.
class AuthTokens {
  /// Creates an auth token triple.
  const AuthTokens({
    required this.token,
    required this.refreshToken,
    required this.user,
  });

  /// Parses auth tokens from their JSON shape.
  factory AuthTokens.fromJson(Map<String, Object?> json) => AuthTokens(
    token: json['token'] as String,
    refreshToken: json['refresh_token'] as String,
    user: AuthUser.fromJson(json['user'] as Map<String, Object?>),
  );

  /// JWT access token (sent as `Authorization: Bearer …`).
  final String token;

  /// Refresh token (rotated on every refresh; see contract §1).
  final String refreshToken;

  /// The authenticated customer (documented superset, see [AuthUser]).
  final AuthUser user;

  /// Serializes these tokens back to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'token': token,
    'refresh_token': refreshToken,
    'user': user.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthTokens &&
          token == other.token &&
          refreshToken == other.refreshToken &&
          user == other.user;

  @override
  int get hashCode => Object.hash(token, refreshToken, user);
}

/// The customer embedded in [AuthTokens].
///
/// The TS SDK declares only `{id, email, first_name, last_name}` while the
/// SPEC types this as the full `Customer` schema (open-questions Q4). This
/// class models the documented superset: the SDK fields plus the
/// SPEC-documented customer fields, all SPEC extras nullable so payloads
/// matching either shape parse safely.
class AuthUser {
  /// Creates the embedded auth user.
  const AuthUser({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.acceptsEmailMarketing,
    this.emailMarketingConsentUpdatedAt,
    this.fullName,
    this.availableStoreCreditTotal,
  });

  /// Parses the embedded user from its JSON shape.
  factory AuthUser.fromJson(Map<String, Object?> json) => AuthUser(
    id: json['id'] as String,
    email: json['email'] as String,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    phone: json['phone'] as String?,
    acceptsEmailMarketing: json['accepts_email_marketing'] as bool?,
    emailMarketingConsentUpdatedAt:
        json['email_marketing_consent_updated_at'] as String?,
    fullName: json['full_name'] as String?,
    availableStoreCreditTotal: json['available_store_credit_total'] as String?,
  );

  /// Unique identifier.
  final String id;

  /// Customer email.
  final String email;

  /// First name, when set.
  final String? firstName;

  /// Last name, when set.
  final String? lastName;

  /// Phone number (SPEC `Customer.phone`).
  final String? phone;

  /// Marketing opt-in flag (SPEC `Customer.accepts_email_marketing`).
  final bool? acceptsEmailMarketing;

  /// Marketing-consent timestamp (SPEC
  /// `Customer.email_marketing_consent_updated_at`).
  final String? emailMarketingConsentUpdatedAt;

  /// Computed full name (SPEC `Customer.full_name`).
  final String? fullName;

  /// Usable store-credit total, decimal string (SPEC
  /// `Customer.available_store_credit_total`).
  final String? availableStoreCreditTotal;

  /// Serializes this user back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'phone': phone,
    'accepts_email_marketing': acceptsEmailMarketing,
    'email_marketing_consent_updated_at': emailMarketingConsentUpdatedAt,
    'full_name': fullName,
    'available_store_credit_total': availableStoreCreditTotal,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthUser &&
          id == other.id &&
          email == other.email &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          phone == other.phone &&
          acceptsEmailMarketing == other.acceptsEmailMarketing &&
          emailMarketingConsentUpdatedAt ==
              other.emailMarketingConsentUpdatedAt &&
          fullName == other.fullName &&
          availableStoreCreditTotal == other.availableStoreCreditTotal;

  @override
  int get hashCode => Object.hash(
    id,
    email,
    firstName,
    lastName,
    phone,
    acceptsEmailMarketing,
    emailMarketingConsentUpdatedAt,
    fullName,
    availableStoreCreditTotal,
  );
}
