/// Request parameter models for Phase 05 group A (auth, customer account,
/// newsletter, GDPR data requests).
///
/// Freezed immutable parameter objects with explicit, contract-verified JSON.
/// This file is NEW: it only adds the request bodies missing from the
/// existing `models/` files, which are left untouched.
///
/// Evidence (all consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * endpoint/method/auth matrix: `doc/research/store-api-contract.md`
///   sections 1 (auth), 6 (newsletter), 7 (`/customers/me`), 8 (data
///   requests);
/// * flows: `doc/research/authentication-flows.md` sections B, C, D, E, H,
///   I, K;
/// * open unknowns recorded in `doc/research/open-questions.md` Q7
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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'params_auth.freezed.dart';

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
/// Auth: KEY only — no JWT is sent by `POST /auth/login`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class LoginParams with _$LoginParams {
  const LoginParams._();

  /// Creates login credentials.
  const factory LoginParams({
    required String email,
    required String password,
    @Default('email') String? provider,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _LoginParams;

  /// Customer email.
  @override
  @override
  String get email;

  /// Customer password.
  @override
  @override
  String get password;

  /// Authentication strategy name (documented default `'email'`).
  @override
  @override
  String? get provider;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class RegisterParams with _$RegisterParams {
  const RegisterParams._();

  /// Creates registration parameters.
  const factory RegisterParams({
    required String email,
    required String password,
    String? passwordConfirmation,
    String? firstName,
    String? lastName,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _RegisterParams;

  /// Customer email.
  @override
  @override
  String get email;

  /// Customer password.
  @override
  @override
  String get password;

  /// Password confirmation, when the storefront sends one.
  @override
  @override
  String? get passwordConfirmation;

  /// First name, when collected at registration.
  @override
  @override
  String? get firstName;

  /// Last name, when collected at registration.
  @override
  @override
  String? get lastName;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateCustomerParams with _$UpdateCustomerParams {
  const UpdateCustomerParams._();

  /// Creates customer-update parameters.
  const factory UpdateCustomerParams({
    String? email,
    String? firstName,
    String? lastName,
    String? phone,
    bool? acceptsEmailMarketing,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _UpdateCustomerParams;

  /// New email, when the store allows changing it here.
  @override
  @override
  String? get email;

  /// New first name.
  @override
  @override
  String? get firstName;

  /// New last name.
  @override
  @override
  String? get lastName;

  /// New phone number.
  @override
  @override
  String? get phone;

  /// Marketing opt-in flag.
  @override
  @override
  bool? get acceptsEmailMarketing;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AddressParams with _$AddressParams {
  const AddressParams._();

  /// Creates address parameters.
  const factory AddressParams({
    String? label,
    String? firstName,
    String? lastName,
    String? address1,
    String? address2,
    String? city,
    String? postalCode,
    String? phone,
    String? company,
    String? countryIso,
    String? stateName,
    String? stateAbbr,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _AddressParams;

  /// Address-book label.
  @override
  @override
  String? get label;

  /// First name.
  @override
  @override
  String? get firstName;

  /// Last name.
  @override
  @override
  String? get lastName;

  /// Street line 1.
  @override
  @override
  String? get address1;

  /// Street line 2.
  @override
  @override
  String? get address2;

  /// City.
  @override
  @override
  String? get city;

  /// Postal code.
  @override
  @override
  String? get postalCode;

  /// Phone number.
  @override
  @override
  String? get phone;

  /// Company.
  @override
  @override
  String? get company;

  /// ISO country code (SPEC `country_iso`).
  @override
  @override
  String? get countryIso;

  /// State name (SPEC `state_name`).
  @override
  @override
  String? get stateName;

  /// State abbreviation (SPEC `state_abbr`, deprecated upstream).
  @override
  @override
  String? get stateAbbr;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class RequestPasswordResetParams with _$RequestPasswordResetParams {
  const RequestPasswordResetParams._();

  /// Creates password-reset request parameters.
  const factory RequestPasswordResetParams({
    required String email,
    String? redirectUrl,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _RequestPasswordResetParams;

  /// Account email.
  @override
  @override
  String get email;

  /// Redirect URL appended with the reset token, when the storefront uses one.
  @override
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ResetPasswordParams with _$ResetPasswordParams {
  const ResetPasswordParams._();

  /// Creates password-reset update parameters.
  const factory ResetPasswordParams({
    required String password,
    String? passwordConfirmation,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _ResetPasswordParams;

  /// New password.
  @override
  @override
  String get password;

  /// New-password confirmation, when the storefront sends one.
  @override
  @override
  String? get passwordConfirmation;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class NewsletterSubscribeParams with _$NewsletterSubscribeParams {
  const NewsletterSubscribeParams._();

  /// Creates newsletter-subscribe parameters.
  const factory NewsletterSubscribeParams({
    required String email,
    String? redirectUrl,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _NewsletterSubscribeParams;

  /// Subscriber email.
  @override
  @override
  String get email;

  /// Redirect URL for the confirmation email link, when used.
  @override
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class NewsletterVerifyParams with _$NewsletterVerifyParams {
  const NewsletterVerifyParams._();

  /// Creates newsletter-verify parameters.
  const factory NewsletterVerifyParams({
    required String token,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _NewsletterVerifyParams;

  /// Verification token from the confirmation email.
  @override
  @override
  String get token;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() =>
      _withoutNulls(<String, Object?>{'token': token, ...extra});
}

/// Body for `POST /newsletter_subscribers/request_unsubscribe`.
///
/// Verified (contract §6, flows §K): always `202`, `void`
/// (anti-enumeration). Exact upstream fields are unknown
/// (open-questions Q7): email plus `redirect_url`. Auth: KEY only.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class NewsletterUnsubscribeRequestParams
    with _$NewsletterUnsubscribeRequestParams {
  const NewsletterUnsubscribeRequestParams._();

  /// Creates unsubscribe-request parameters.
  const factory NewsletterUnsubscribeRequestParams({
    required String email,
    String? redirectUrl,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _NewsletterUnsubscribeRequestParams;

  /// Subscriber email.
  @override
  @override
  String get email;

  /// Redirect URL for the unsubscribe email link, when used.
  @override
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateDataRequestParams with _$CreateDataRequestParams {
  const CreateDataRequestParams._();

  /// Creates data-request parameters.
  const factory CreateDataRequestParams({
    String? type,
    String? redirectUrl,
    String? currentPassword,
    @Default(<String, Object?>{}) Map<String, Object?> extra,
  }) = _CreateDataRequestParams;

  /// Request type (server-defined; e.g. export/erasure — unpinned).
  @override
  @override
  String? get type;

  /// Redirect URL the confirmation email link appends the token to.
  @override
  @override
  String? get redirectUrl;

  /// Current password (required by the server for erasure requests).
  @override
  @override
  String? get currentPassword;

  /// Additional documented body fields (never invented by the SDK).
  @override
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => _withoutNulls(<String, Object?>{
    'type': type,
    'redirect_url': redirectUrl,
    'current_password': currentPassword,
    ...extra,
  });
}
