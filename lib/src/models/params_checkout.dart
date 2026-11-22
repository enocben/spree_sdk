/// Checkout and payment request parameters for cart operations.
///
/// Freezed immutable parameter bags with explicit, contract-verified JSON.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * param names: `packages/sdk/src/types/params/*.ts`
///   (`UpdateCartParams`, `AddLineItemParams`, `UpdateLineItemParams`,
///   `CreatePaymentParams`, `CreatePaymentSessionParams`,
///   `UpdatePaymentSessionParams`, `CompletePaymentSessionParams`,
///   `UpdateFulfillmentParams`);
/// * contracts: `doc/research/store-api-contract.md` §4 (`SRC 560` update,
///   `SRC 632` items create `{variant_id, quantity, …}`,
///   `SRC 648` items update, `SRC 727` fulfillments update selecting the
///   delivery rate, `SRC 747` direct payments for non-session methods,
///   `SRC 764/774/791/807` payment sessions);
/// * money is always a decimal string, never a number
///   (`docs/developer/sdk/configuration.mdx` "Monetary Amounts").
///
/// Only the fields marked *verified* below are sent under their own names.
/// Every class also carries an [extra] passthrough map for server fields
/// whose exact upstream/SPEC shape is still unknown (open-questions.md Q7:
/// full field lists were not extracted in the research pass). Nothing is
/// invented: unknown fields are never guessed, they are forwarded verbatim
/// when the caller supplies them.
///
/// Checkout and payment mutations are never retried blindly (AGENTS.md
/// §3.9): pass an `Idempotency-Key` via `RequestOptions` only where the
/// server documents support (contract §4: cart create/update/items,
/// payments, store credit, complete).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'params_checkout.freezed.dart';
part 'params_checkout.g.dart';

/// Parameters for `PATCH /carts/{id}`.
///
/// Verified (contract §4, `SRC 560`): `UpdateCartParams` exists and carries
/// at least the customer `email`. Address payloads and any further fields
/// are not pinned by the research pass — pass them via [extra].
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateCartParams with _$UpdateCartParams {
  const UpdateCartParams._();

  /// Creates cart-update parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateCartParams({
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _UpdateCartParams;

  /// Customer email for the cart, when set.
  @override
  String? get email;

  /// Additional server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$UpdateCartParamsToJson(this as _UpdateCartParams),
    ...extra,
  };
}

/// Parameters for `POST /carts/{id}/items`.
///
/// Verified (contract §4, `SRC 632`): `AddLineItemParams` carries
/// `variant_id` and `quantity`; further fields are unknown — pass them via
/// [extra].
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AddLineItemParams with _$AddLineItemParams {
  const AddLineItemParams._();

  /// Creates line-item creation parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AddLineItemParams({
    @JsonKey(includeIfNull: false) required String variantId,
    @JsonKey(includeIfNull: false) required int quantity,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _AddLineItemParams;

  /// Variant to add to the cart.
  @override
  String get variantId;

  /// Quantity to add.
  @override
  int get quantity;

  /// Additional server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$AddLineItemParamsToJson(this as _AddLineItemParams),
    ...extra,
  };
}

/// Parameters for `PATCH /carts/{id}/items/{id}`.
///
/// Verified (contract §4, `SRC 648`): `UpdateLineItemParams` exists; the
/// quantity field is the documented update target. Any further fields travel
/// via [extra].
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateLineItemParams with _$UpdateLineItemParams {
  const UpdateLineItemParams._();

  /// Creates line-item update parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateLineItemParams({
    @JsonKey(includeIfNull: false) int? quantity,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _UpdateLineItemParams;

  /// New quantity, when set.
  @override
  int? get quantity;

  /// Additional server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$UpdateLineItemParamsToJson(this as _UpdateLineItemParams),
    ...extra,
  };
}

/// Parameters for `POST /carts/{id}/payments` (direct, non-session methods
/// such as check or cash on delivery).
///
/// Verified (contract §4, `SRC 747`): `CreatePaymentParams` exists. No body
/// field is pinned by the research pass, so this class is a verbatim
/// [extra] passthrough. Do not guess field names here.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreatePaymentParams with _$CreatePaymentParams {
  const CreatePaymentParams._();

  /// Creates direct-payment parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreatePaymentParams({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _CreatePaymentParams;

  /// Server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$CreatePaymentParamsToJson(this as _CreatePaymentParams),
    ...extra,
  };
}

/// Parameters for `POST /carts/{id}/payment_sessions`.
///
/// Verified (contract §4, `SRC 764`): `CreatePaymentSessionParams` exists
/// (Stripe-style provider delegation). No body field is pinned by the
/// research pass, so this class is a verbatim [extra] passthrough.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreatePaymentSessionParams with _$CreatePaymentSessionParams {
  const CreatePaymentSessionParams._();

  /// Creates payment-session creation parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreatePaymentSessionParams({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _CreatePaymentSessionParams;

  /// Server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$CreatePaymentSessionParamsToJson(this as _CreatePaymentSessionParams),
    ...extra,
  };
}

/// Parameters for `PATCH /carts/{id}/payment_sessions/{id}`.
///
/// Verified (contract §4, `SRC 791`): `UpdatePaymentSessionParams` exists.
/// No body field is pinned by the research pass — verbatim [extra]
/// passthrough.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdatePaymentSessionParams with _$UpdatePaymentSessionParams {
  const UpdatePaymentSessionParams._();

  /// Creates payment-session update parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdatePaymentSessionParams({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _UpdatePaymentSessionParams;

  /// Server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$UpdatePaymentSessionParamsToJson(this as _UpdatePaymentSessionParams),
    ...extra,
  };
}

/// Parameters for `PATCH /carts/{id}/payment_sessions/{id}/complete`.
///
/// Verified (contract §4, `SRC 807`): `CompletePaymentSessionParams?`
/// exists and is optional (the call may carry no body). No body field is
/// pinned by the research pass — verbatim [extra] passthrough.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompletePaymentSessionParams
    with _$CompletePaymentSessionParams {
  const CompletePaymentSessionParams._();

  /// Creates payment-session completion parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CompletePaymentSessionParams({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _CompletePaymentSessionParams;

  /// Server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$CompletePaymentSessionParamsToJson(
      this as _CompletePaymentSessionParams,
    ),
    ...extra,
  };
}

/// Parameters for `PATCH /carts/{id}/fulfillments/{id}`.
///
/// Verified (contract §4, `SRC 727`): `UpdateFulfillmentParams` exists and
/// selects the delivery rate for the fulfillment. The exact body field is
/// not pinned by the research pass — verbatim [extra] passthrough.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateFulfillmentParams with _$UpdateFulfillmentParams {
  const UpdateFulfillmentParams._();

  /// Creates fulfillment-update parameters.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateFulfillmentParams({
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default(<String, Object?>{})
    Map<String, Object?> extra,
  }) = _UpdateFulfillmentParams;

  /// Server fields, forwarded verbatim (see file docs).
  @override
  Map<String, Object?> get extra;

  /// Serializes these parameters to the request body.
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$UpdateFulfillmentParamsToJson(this as _UpdateFulfillmentParams),
    ...extra,
  };
}
