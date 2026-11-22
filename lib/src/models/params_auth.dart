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
part 'params_auth.g.dart';

/// Body for `POST /auth/login`.
///
/// Verified (contract §1, flows §C): `{provider?='email', email, password}`
/// with provider-dispatched strategies (`Spree.store_authentication_strategies`).
/// Auth: KEY only — no JWT is sent by `POST /auth/login`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class LoginParams with _$LoginParams {
  const LoginParams._();

  /// Creates login credentials.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory LoginParams({
    @JsonKey(includeIfNull: false) required String email,
    @JsonKey(includeIfNull: false) required String password,
    @JsonKey(includeIfNull: false) @Default('email') String? provider,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _LoginParams;

  /// Customer email.
  @override
  String get email;

  /// Customer password.
  @override
  String get password;

  /// Authentication strategy name (documented default `'email'`).
  @override
  String? get provider;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$LoginParamsToJson(this as _LoginParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory RegisterParams({
    @JsonKey(includeIfNull: false) required String email,
    @JsonKey(includeIfNull: false) required String password,
    @JsonKey(includeIfNull: false) String? passwordConfirmation,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _RegisterParams;

  /// Customer email.
  @override
  String get email;

  /// Customer password.
  @override
  String get password;

  /// Password confirmation, when the storefront sends one.
  @override
  String? get passwordConfirmation;

  /// First name, when collected at registration.
  @override
  String? get firstName;

  /// Last name, when collected at registration.
  @override
  String? get lastName;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$RegisterParamsToJson(this as _RegisterParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateCustomerParams({
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) bool? acceptsEmailMarketing,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _UpdateCustomerParams;

  /// New email, when the store allows changing it here.
  @override
  String? get email;

  /// New first name.
  @override
  String? get firstName;

  /// New last name.
  @override
  String? get lastName;

  /// New phone number.
  @override
  String? get phone;

  /// Marketing opt-in flag.
  @override
  bool? get acceptsEmailMarketing;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$UpdateCustomerParamsToJson(this as _UpdateCustomerParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AddressParams({
    @JsonKey(includeIfNull: false) String? label,
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) String? address1,
    @JsonKey(includeIfNull: false) String? address2,
    @JsonKey(includeIfNull: false) String? city,
    @JsonKey(includeIfNull: false) String? postalCode,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? company,
    @JsonKey(includeIfNull: false) String? countryIso,
    @JsonKey(includeIfNull: false) String? stateName,
    @JsonKey(includeIfNull: false) String? stateAbbr,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _AddressParams;

  /// Address-book label.
  @override
  String? get label;

  /// First name.
  @override
  String? get firstName;

  /// Last name.
  @override
  String? get lastName;

  /// Street line 1.
  @override
  String? get address1;

  /// Street line 2.
  @override
  String? get address2;

  /// City.
  @override
  String? get city;

  /// Postal code.
  @override
  String? get postalCode;

  /// Phone number.
  @override
  String? get phone;

  /// Company.
  @override
  String? get company;

  /// ISO country code (SPEC `country_iso`).
  @override
  String? get countryIso;

  /// State name (SPEC `state_name`).
  @override
  String? get stateName;

  /// State abbreviation (SPEC `state_abbr`, deprecated upstream).
  @override
  String? get stateAbbr;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$AddressParamsToJson(this as _AddressParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory RequestPasswordResetParams({
    @JsonKey(includeIfNull: false) required String email,
    @JsonKey(includeIfNull: false) String? redirectUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _RequestPasswordResetParams;

  /// Account email.
  @override
  String get email;

  /// Redirect URL appended with the reset token, when the storefront uses one.
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$RequestPasswordResetParamsToJson(this as _RequestPasswordResetParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ResetPasswordParams({
    @JsonKey(includeIfNull: false) required String password,
    @JsonKey(includeIfNull: false) String? passwordConfirmation,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _ResetPasswordParams;

  /// New password.
  @override
  String get password;

  /// New-password confirmation, when the storefront sends one.
  @override
  String? get passwordConfirmation;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$ResetPasswordParamsToJson(this as _ResetPasswordParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory NewsletterSubscribeParams({
    @JsonKey(includeIfNull: false) required String email,
    @JsonKey(includeIfNull: false) String? redirectUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _NewsletterSubscribeParams;

  /// Subscriber email.
  @override
  String get email;

  /// Redirect URL for the confirmation email link, when used.
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$NewsletterSubscribeParamsToJson(this as _NewsletterSubscribeParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory NewsletterVerifyParams({
    @JsonKey(includeIfNull: false) required String token,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _NewsletterVerifyParams;

  /// Verification token from the confirmation email.
  @override
  String get token;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$NewsletterVerifyParamsToJson(this as _NewsletterVerifyParams),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory NewsletterUnsubscribeRequestParams({
    @JsonKey(includeIfNull: false) required String email,
    @JsonKey(includeIfNull: false) String? redirectUrl,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _NewsletterUnsubscribeRequestParams;

  /// Subscriber email.
  @override
  String get email;

  /// Redirect URL for the unsubscribe email link, when used.
  @override
  String? get redirectUrl;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$NewsletterUnsubscribeRequestParamsToJson(
      this as _NewsletterUnsubscribeRequestParams,
    ),
    ...extra,
  };
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
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateDataRequestParams({
    @JsonKey(includeIfNull: false) String? type,
    @JsonKey(includeIfNull: false) String? redirectUrl,
    @JsonKey(includeIfNull: false) String? currentPassword,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _CreateDataRequestParams;

  /// Request type (server-defined; e.g. export/erasure — unpinned).
  @override
  String? get type;

  /// Redirect URL the confirmation email link appends the token to.
  @override
  String? get redirectUrl;

  /// Current password (required by the server for erasure requests).
  @override
  String? get currentPassword;

  /// Additional documented body fields (never invented by the SDK).
  @override
  Map<String, Object?> get extra;

  /// Serializes this body, omitting nulls.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$CreateDataRequestParamsToJson(this as _CreateDataRequestParams),
    ...extra,
  };
}
