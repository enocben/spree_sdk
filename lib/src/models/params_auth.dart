/// Request parameter models for Phase 05 group A (auth, customer account,
/// newsletter, GDPR data requests).
///
/// Hand-written immutable models with manual `toJson` (ADR-002: no codegen).
/// This file is NEW: it only adds the request bodies missing from the
/// existing `models/` files, which are left untouched.
///
/// Evidence (all consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * endpoint/method/auth matrix: `docs/research/store-api-contract.md`
///   sections 1 (auth), 6 (newsletter), 7 (`/customers/me`), 8 (data
///   requests);
/// * flows: `docs/research/authentication-flows.md` sections B, C, D, E, H,
///   I, K;
/// * open unknowns recorded in `docs/research/open-questions.md` Q7
///   (full field lists for `RegisterParams`, password-reset params,
///   address create/update params, newsletter params and data-request
///   params were not printed in the research pass).
///
/// Rule applied throughout (AGENTS.md section 3.1): only fields documented
/// in the sources above are modeled explicitly; every class additionally
/// carries an [extra] map for caller-supplied documented fields so the SDK
/// never invents a field name but never blocks one either. Null values are
/// always omitted from the wire body.
library;

/// Base helper: drops `null` values from a wire body.
Map<String, Object?> _withoutNulls(Map<String, Object?> body) {
  final Map<String, Object?> out = <String, Object?>{};
  body.forEach((String key, Object? value) {
    if (value != null) {
      out[key] = value;
    }
  });
  return out;
}

/// Body for `POST /auth/login`.
///
/// Verified (contract §1, flows §C): `{provider?='email', email, password}`
/// with provider-dispatched strategies (`Spree.store_authentication_strategies`).
/// Auth: KEY only — no JWT is sent by [login].
class LoginParams {
  /// Creates login credentials.
  const LoginParams({
    required this.email,
    required this.password,
    this.provider = 'email',
    this.extra = const <String, Object?>{},
  });

  /// Customer email.
  final String email;

  /// Customer password.
  final String password;

  /// Authentication strategy name (documented default `'email'`).
  final String? provider;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'provider': provider,
    'email': email,
    'password': password,
    ...extra,
  });
}

/// Body for `POST /customers` (registration, auto-login).
///
/// Verified (contract §1, flows §B): `RegisterParams` with at least
/// `{email, password, password_confirmation?, first_name?, last_name?}`;
/// the full upstream field list is unknown (open-questions Q7) — further
/// documented fields travel via [extra]. Auth: KEY only.
class RegisterParams {
  /// Creates registration parameters.
  const RegisterParams({
    required this.email,
    required this.password,
    this.passwordConfirmation,
    this.firstName,
    this.lastName,
    this.extra = const <String, Object?>{},
  });

  /// Customer email.
  final String email;

  /// Customer password.
  final String password;

  /// Password confirmation, when the storefront sends one.
  final String? passwordConfirmation;

  /// First name, when collected at registration.
  final String? firstName;

  /// Last name, when collected at registration.
  final String? lastName;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'email': email,
    'password': password,
    'password_confirmation': passwordConfirmation,
    'first_name': firstName,
    'last_name': lastName,
    ...extra,
  });
}

/// Body for `PATCH /customers/me`.
///
/// Verified endpoint + auth (contract §7: KEY+JWT); the upstream
/// `UpdateCustomerParams` field list is unknown (open-questions Q7), so
/// only the commonly documented profile fields are explicit and everything
/// else travels via [extra].
class UpdateCustomerParams {
  /// Creates customer-update parameters.
  const UpdateCustomerParams({
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.acceptsEmailMarketing,
    this.extra = const <String, Object?>{},
  });

  /// New email, when the store allows changing it here.
  final String? email;

  /// New first name.
  final String? firstName;

  /// New last name.
  final String? lastName;

  /// New phone number.
  final String? phone;

  /// Marketing opt-in flag.
  final bool? acceptsEmailMarketing;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'phone': phone,
    'accepts_email_marketing': acceptsEmailMarketing,
    ...extra,
  });
}

/// Body for address create (`POST /customers/me/addresses`) and update
/// (`PATCH /customers/me/addresses/{id}`).
///
/// Verified endpoints + auth (contract §7: KEY+JWT); the upstream
/// `AddressCreateParams` / `AddressUpdateParams` field lists are unknown
/// (open-questions Q7). Only the documented `Address` serializer fields
/// (SPEC `store.yaml#/components/schemas/Address`, also used by the cart
/// models) are explicit; everything else travels via [extra].
class AddressParams {
  /// Creates address parameters.
  const AddressParams({
    this.label,
    this.firstName,
    this.lastName,
    this.address1,
    this.address2,
    this.city,
    this.postalCode,
    this.phone,
    this.company,
    this.countryIso,
    this.stateName,
    this.stateAbbr,
    this.extra = const <String, Object?>{},
  });

  /// Address-book label.
  final String? label;

  /// First name.
  final String? firstName;

  /// Last name.
  final String? lastName;

  /// Street line 1.
  final String? address1;

  /// Street line 2.
  final String? address2;

  /// City.
  final String? city;

  /// Postal code.
  final String? postalCode;

  /// Phone number.
  final String? phone;

  /// Company.
  final String? company;

  /// ISO country code (SPEC `country_iso`).
  final String? countryIso;

  /// State name (SPEC `state_name`).
  final String? stateName;

  /// State abbreviation (SPEC `state_abbr`, deprecated upstream).
  final String? stateAbbr;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'label': label,
    'first_name': firstName,
    'last_name': lastName,
    'address1': address1,
    'address2': address2,
    'city': city,
    'postal_code': postalCode,
    'phone': phone,
    'company': company,
    'country_iso': countryIso,
    'state_name': stateName,
    'state_abbr': stateAbbr,
    ...extra,
  });
}

/// Body for `POST /password_resets` (request reset email).
///
/// Verified (contract §1, flows §H): `{email}` plus redirect fields; always
/// `202 {message}` (anti-enumeration). Auth: KEY only. Exact redirect field
/// names are unknown (open-questions Q7) — they travel via [extra] or the
/// explicit [redirectUrl] alias.
class RequestPasswordResetParams {
  /// Creates password-reset request parameters.
  const RequestPasswordResetParams({
    required this.email,
    this.redirectUrl,
    this.extra = const <String, Object?>{},
  });

  /// Account email.
  final String email;

  /// Redirect URL appended with the reset token, when the storefront uses one.
  final String? redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'email': email,
    'redirect_url': redirectUrl,
    ...extra,
  });
}

/// Body for `PATCH /password_resets/{token}` (consume reset token,
/// auto-login).
///
/// Verified endpoint + auto-login `AuthTokens` (contract §1, flows §H);
/// exact upstream `ResetPasswordParams` fields are unknown
/// (open-questions Q7). Auth: KEY only.
class ResetPasswordParams {
  /// Creates password-reset update parameters.
  const ResetPasswordParams({
    required this.password,
    this.passwordConfirmation,
    this.extra = const <String, Object?>{},
  });

  /// New password.
  final String password;

  /// New-password confirmation, when the storefront sends one.
  final String? passwordConfirmation;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'password': password,
    'password_confirmation': passwordConfirmation,
    ...extra,
  });
}

/// Body for `POST /newsletter_subscribers`.
///
/// Verified (contract §6, flows §K): optional JWT links the subscription to
/// the customer and auto-verifies on email match; full
/// `CreateNewsletterSubscriberParams` field list is unknown
/// (open-questions Q7) — documented extras travel via [extra].
class NewsletterSubscribeParams {
  /// Creates newsletter-subscribe parameters.
  const NewsletterSubscribeParams({
    required this.email,
    this.redirectUrl,
    this.extra = const <String, Object?>{},
  });

  /// Subscriber email.
  final String email;

  /// Redirect URL for the confirmation email link, when used.
  final String? redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'email': email,
    'redirect_url': redirectUrl,
    ...extra,
  });
}

/// Body for `POST /newsletter_subscribers/verify`.
///
/// Verified endpoint (contract §6, flows §K): the token comes from the
/// confirmation email. Exact upstream field names are unknown
/// (open-questions Q7); the token is sent under the documented `token`
/// key with the full raw value available via [extra] if the server ever
/// diverges. Auth: KEY only.
class NewsletterVerifyParams {
  /// Creates newsletter-verify parameters.
  const NewsletterVerifyParams({
    required this.token,
    this.extra = const <String, Object?>{},
  });

  /// Verification token from the confirmation email.
  final String token;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() =>
      _withoutNulls(<String, Object?>{'token': token, ...extra});
}

/// Body for `POST /newsletter_subscribers/request_unsubscribe`.
///
/// Verified (contract §6, flows §K): always `202`, `void`
/// (anti-enumeration). Exact upstream fields are unknown
/// (open-questions Q7): email plus `redirect_url`. Auth: KEY only.
class NewsletterUnsubscribeRequestParams {
  /// Creates unsubscribe-request parameters.
  const NewsletterUnsubscribeRequestParams({
    required this.email,
    this.redirectUrl,
    this.extra = const <String, Object?>{},
  });

  /// Subscriber email.
  final String email;

  /// Redirect URL for the unsubscribe email link, when used.
  final String? redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'email': email,
    'redirect_url': redirectUrl,
    ...extra,
  });
}

/// Body for `POST /customers/me/data_requests`.
///
/// Verified (contract §7, flows §I): `CreateDataRequestParams?` with
/// `redirect_url`; erasure requests need `current_password`. The request
/// starts in `awaiting_confirmation` until the email link is confirmed.
/// Request `type` values are not pinned by the research pass and stay a
/// plain string. Auth: KEY+JWT.
class CreateDataRequestParams {
  /// Creates data-request parameters.
  const CreateDataRequestParams({
    this.type,
    this.redirectUrl,
    this.currentPassword,
    this.extra = const <String, Object?>{},
  });

  /// Request type (server-defined; e.g. export/erasure — unpinned).
  final String? type;

  /// Redirect URL the confirmation email link appends the token to.
  final String? redirectUrl;

  /// Current password (required by the server for erasure requests).
  final String? currentPassword;

  /// Additional documented body fields (never invented by the SDK).
  final Map<String, Object?> extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'type': type,
    'redirect_url': redirectUrl,
    'current_password': currentPassword,
    ...extra,
  });
}
