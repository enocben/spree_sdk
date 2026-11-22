/// Group-C models: post-purchase, B2B and payment-setup shapes.
///
/// Freezed immutable models and parameter objects with explicit JSON mappings.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * response shapes: `packages/sdk/src/types/generated/{Return,
///   ReturnLineItem, ReturnReason, Claim, ClaimLineItem, ClaimReason,
///   CreditCard, PaymentSetupSession, Wishlist, WishlistItem, Company,
///   CompanyMembership, CompanyInvitation}.ts`;
/// * enum values: `packages/core/src/enums.generated.ts`
///   (`RETURN_STATUSES`, `CLAIM_STATUSES`, `CLAIM_RESOLUTIONS`,
///   `COMPANY_KINDS`, `COMPANY_INVITATION_STATUSES`,
///   `PAYMENT_SETUP_SESSION_STATUSES`);
/// * request bodies: `packages/sdk/src/types/params/{CreateReturnParams,
///   CreateClaimParams, CreateWishlistParams, UpdateWishlistParams,
///   CreateWishlistItemParams, UpdateWishlistItemParams,
///   CreatePaymentSetupSessionParams, CompletePaymentSetupSessionParams,
///   UpdateCompanyParams, CompanyAddressCreateParams,
///   CompanyAddressUpdateParams, AddCompanyMemberParams,
///   AcceptCompanyInvitationParams}.ts` (auto-generated from the SPEC
///   request schemas);
/// * contracts: `doc/research/store-api-contract.md` sections 5, 7 and 8
///   (method/path/auth/envelope per operation).
///
/// Conventions (ADR-002 + file-ownership table 2):
/// * nullable exactly where the API omits or nulls the field;
/// * open enums (documented as built-ins that extensions may extend) map
///   unknown strings to the documented `unknown` fallback, never throw;
/// * closed enums (documented as "every value") parse strictly;
/// * money stays a decimal `String`;
/// * deprecated `display_*` serializer fields are intentionally omitted
///   (slated for removal in 6.5), matching the rest of the package;
/// * nested `variant`/`product` payloads on line items are kept as raw maps:
///   no typed union exists for the embedded expansion shape and retyping
///   `Variant` here would duplicate `product.dart` (Limitation, see the
///   handoff in `OrdersResource` tests).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart.dart';
import 'meta.dart';

part 'params_orders.freezed.dart';
part 'params_orders.g.dart';

/// Lifecycle status of a return.
///
/// Source: `packages/sdk/src/types/generated/Return.ts` (`ReturnStatus`),
/// values `packages/core/src/enums.generated.ts` (`RETURN_STATUSES`).
/// Built-in values; extensions may add more, so unknown input maps to
/// [unknown] instead of throwing.
@JsonEnum(valueField: 'value')
enum ReturnStatus {
  /// Wire value `requested`.
  requested('requested'),

  /// Wire value `approved`.
  approved('approved'),

  /// Wire value `received`.
  received('received'),

  /// Wire value `refunded`.
  refunded('refunded'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const ReturnStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, ReturnStatus> _byValue = <String, ReturnStatus>{
    for (final v in ReturnStatus.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static ReturnStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? ReturnStatus.unknown)
      : ReturnStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// Lifecycle status of a claim.
///
/// Source: `packages/sdk/src/types/generated/Claim.ts` (`ClaimStatus`),
/// values `packages/core/src/enums.generated.ts` (`CLAIM_STATUSES`).
/// Built-in values; extensions may add more, so unknown input maps to
/// [unknown] instead of throwing.
@JsonEnum(valueField: 'value')
enum ClaimStatus {
  /// Wire value `open`.
  open('open'),

  /// Wire value `approved`.
  approved('approved'),

  /// Wire value `resolved`.
  resolved('resolved'),

  /// Wire value `denied`.
  denied('denied'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const ClaimStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, ClaimStatus> _byValue = <String, ClaimStatus>{
    for (final v in ClaimStatus.values) v.value: v,
  };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static ClaimStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? ClaimStatus.unknown)
      : ClaimStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// How a claim was resolved.
///
/// Source: `packages/sdk/src/types/generated/Claim.ts`
/// (`ClaimResolution`), values `packages/core/src/enums.generated.ts`
/// (`CLAIM_RESOLUTIONS`). Documents every value, so parsing is strict.
@JsonEnum(valueField: 'value')
enum ClaimResolution {
  /// Wire value `refund`.
  refund('refund'),

  /// Wire value `replacement`.
  replacement('replacement'),

  /// Wire value `refund_and_replacement`.
  refundAndReplacement('refund_and_replacement');

  const ClaimResolution(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, ClaimResolution> _byValue =
      <String, ClaimResolution>{
        for (final v in ClaimResolution.values) v.value: v,
      };

  /// Parses [json]; throws [ArgumentError] for anything unrecognized.
  static ClaimResolution fromJson(Object? json) {
    final ClaimResolution? parsed = json is String ? _byValue[json] : null;
    if (parsed == null) {
      throw ArgumentError.value(json, 'json', 'unknown ClaimResolution');
    }
    return parsed;
  }

  /// The wire string for this value.
  String toJson() => value;
}

/// Kind of a B2B company node.
///
/// Source: `packages/sdk/src/types/generated/Company.ts` (`CompanyKind`),
/// values `packages/core/src/enums.generated.ts` (`COMPANY_KINDS`).
/// Documents every value, so parsing is strict.
@JsonEnum(valueField: 'value')
enum CompanyKind {
  /// Wire value `company`.
  company('company'),

  /// Wire value `division`.
  division('division');

  const CompanyKind(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CompanyKind> _byValue = <String, CompanyKind>{
    for (final v in CompanyKind.values) v.value: v,
  };

  /// Parses [json]; throws [ArgumentError] for anything unrecognized.
  static CompanyKind fromJson(Object? json) {
    final CompanyKind? parsed = json is String ? _byValue[json] : null;
    if (parsed == null) {
      throw ArgumentError.value(json, 'json', 'unknown CompanyKind');
    }
    return parsed;
  }

  /// The wire string for this value.
  String toJson() => value;
}

/// Lifecycle status of a company invitation.
///
/// Source: `packages/sdk/src/types/generated/CompanyInvitation.ts`
/// (`CompanyInvitationStatus`), values
/// `packages/core/src/enums.generated.ts` (`COMPANY_INVITATION_STATUSES`).
/// Documents every value, so parsing is strict.
@JsonEnum(valueField: 'value')
enum CompanyInvitationStatus {
  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `accepted`.
  accepted('accepted'),

  /// Wire value `revoked`.
  revoked('revoked'),

  /// Wire value `expired`.
  expired('expired');

  const CompanyInvitationStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, CompanyInvitationStatus> _byValue =
      <String, CompanyInvitationStatus>{
        for (final v in CompanyInvitationStatus.values) v.value: v,
      };

  /// Parses [json]; throws [ArgumentError] for anything unrecognized.
  static CompanyInvitationStatus fromJson(Object? json) {
    final CompanyInvitationStatus? parsed = json is String
        ? _byValue[json]
        : null;
    if (parsed == null) {
      throw ArgumentError.value(
        json,
        'json',
        'unknown CompanyInvitationStatus',
      );
    }
    return parsed;
  }

  /// The wire string for this value.
  String toJson() => value;
}

/// Lifecycle status of a payment setup session.
///
/// Source: `packages/sdk/src/types/generated/PaymentSetupSession.ts`
/// (`PaymentSetupSessionStatus`), values
/// `packages/core/src/enums.generated.ts`
/// (`PAYMENT_SETUP_SESSION_STATUSES`). Built-in values; extensions may add
/// more, so unknown input maps to [unknown] instead of throwing.
@JsonEnum(valueField: 'value')
enum PaymentSetupSessionStatus {
  /// Wire value `pending`.
  pending('pending'),

  /// Wire value `processing`.
  processing('processing'),

  /// Wire value `completed`.
  completed('completed'),

  /// Wire value `failed`.
  failed('failed'),

  /// Wire value `canceled`.
  canceled('canceled'),

  /// Wire value `expired`.
  expired('expired'),

  /// Fallback for values the SDK does not know yet.
  /// Never thrown by [fromJson]; unrecognized input maps here.
  unknown('');

  const PaymentSetupSessionStatus(this.value);

  /// The wire string sent to / received from the Store API.
  final String value;

  static final Map<String, PaymentSetupSessionStatus> _byValue =
      <String, PaymentSetupSessionStatus>{
        for (final v in PaymentSetupSessionStatus.values) v.value: v,
      };

  /// Parses [json]; returns [unknown] for anything unrecognized,
  /// including `null` and non-string input. Never throws.
  static PaymentSetupSessionStatus fromJson(Object? json) => json is String
      ? (_byValue[json] ?? PaymentSetupSessionStatus.unknown)
      : PaymentSetupSessionStatus.unknown;

  /// The wire string for this value.
  String toJson() => value;
}

/// A return reason of the store.
///
/// Source: `packages/sdk/src/types/generated/ReturnReason.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ReturnReason with _$ReturnReason {
  const ReturnReason._();

  /// Creates a return reason.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ReturnReason({
    required String id,
    required String name,
    required bool active,
  }) = _ReturnReason;

  /// Parses a return reason from its JSON shape.
  factory ReturnReason.fromJson(Map<String, Object?> json) =>
      _$ReturnReasonFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Reason name.
  @override
  String get name;

  /// Whether the reason is active.
  @override
  bool get active;

  /// Serializes this reason back to its JSON shape.
}

/// A claim reason of the store.
///
/// Source: `packages/sdk/src/types/generated/ClaimReason.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ClaimReason with _$ClaimReason {
  const ClaimReason._();

  /// Creates a claim reason.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ClaimReason({
    required String id,
    required String name,
    required bool active,
  }) = _ClaimReason;

  /// Parses a claim reason from its JSON shape.
  factory ClaimReason.fromJson(Map<String, Object?> json) =>
      _$ClaimReasonFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Reason name.
  @override
  String get name;

  /// Whether the reason is active.
  @override
  bool get active;

  /// Serializes this reason back to its JSON shape.
}

/// One returned unit on a return.
///
/// Source: `packages/sdk/src/types/generated/ReturnLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ReturnLineItem with _$ReturnLineItem {
  const ReturnLineItem._();

  /// Creates a return line item.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ReturnLineItem({
    required String id,
    required int quantity,
    required int receivedQuantity,
    required bool resellable,
    String? preTaxAmount,
    String? includedTaxTotal,
    String? additionalTaxTotal,
    String? taxTotal,
    String? refundAmount,
    String? variantId,
    String? lineItemId,
    String? fulfillmentItemId,
    Map<String, Object?>? variant,
  }) = _ReturnLineItem;

  /// Parses a return line item from its JSON shape.
  factory ReturnLineItem.fromJson(Map<String, Object?> json) =>
      _$ReturnLineItemFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Quantity being returned.
  @override
  int get quantity;

  /// Quantity received so far.
  @override
  int get receivedQuantity;

  /// Whether the unit can be resold.
  @override
  bool get resellable;

  /// Pre-tax amount, decimal string, when reported.
  @override
  String? get preTaxAmount;

  /// Included tax total, decimal string, when reported.
  @override
  String? get includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  @override
  String? get additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  @override
  String? get taxTotal;

  /// Refund amount, decimal string, when reported.
  @override
  String? get refundAmount;

  /// Returning variant id, when reported.
  @override
  String? get variantId;

  /// Originating line item id, when reported.
  @override
  String? get lineItemId;

  /// Shipped unit coming back (the return identity), when reported.
  @override
  String? get fulfillmentItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  @override
  Map<String, Object?>? get variant;

  /// Serializes this line item back to its JSON shape.
}

/// A customer return on an order.
///
/// Source: `packages/sdk/src/types/generated/Return.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Return with _$Return {
  const Return._();

  /// Creates a return.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Return({
    required String id,
    required String number,
    @JsonKey(unknownEnumValue: ReturnStatus.unknown)
    required ReturnStatus status,
    String? orderId,
    String? reasonId,
    String? refundTotal,
    String? refundTaxTotal,
    String? approvedAt,
    String? receivedAt,
    String? refundedAt,
    String? canceledAt,
    ReturnReason? reason,
    List<ReturnLineItem>? returnLineItems,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Return;

  /// Parses a return from its JSON shape.
  factory Return.fromJson(Map<String, Object?> json) => _$ReturnFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Return number.
  @override
  String get number;

  /// Lifecycle status.
  @override
  ReturnStatus get status;

  /// Owning order id, when reported.
  @override
  String? get orderId;

  /// Return reason id, when set (one of the store's return reasons).
  @override
  String? get reasonId;

  /// Refund total, decimal string, when reported.
  @override
  String? get refundTotal;

  /// Refund tax total, decimal string, when reported.
  @override
  String? get refundTaxTotal;

  /// Approval timestamp, when set.
  @override
  String? get approvedAt;

  /// Receipt timestamp, when set.
  @override
  String? get receivedAt;

  /// Refund timestamp, when set.
  @override
  String? get refundedAt;

  /// Cancellation timestamp, when set.
  @override
  String? get canceledAt;

  /// Expanded reason, when requested via `expand`.
  @override
  ReturnReason? get reason;

  /// Returned units, when present.
  @override
  List<ReturnLineItem>? get returnLineItems;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this return back to its JSON shape.
}

/// One claimed unit on a claim.
///
/// Source: `packages/sdk/src/types/generated/ClaimLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ClaimLineItem with _$ClaimLineItem {
  const ClaimLineItem._();

  /// Creates a claim line item.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ClaimLineItem({
    required String id,
    required int quantity,
    required bool sendReplacement,
    String? description,
    String? refundAmount,
    String? paidAmount,
    String? preTaxAmount,
    String? includedTaxTotal,
    String? additionalTaxTotal,
    String? taxTotal,
    String? variantId,
    String? replacementVariantId,
    String? lineItemId,
    Map<String, Object?>? variant,
  }) = _ClaimLineItem;

  /// Parses a claim line item from its JSON shape.
  factory ClaimLineItem.fromJson(Map<String, Object?> json) =>
      _$ClaimLineItemFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Claimed quantity.
  @override
  int get quantity;

  /// Whether a replacement unit is sent.
  @override
  bool get sendReplacement;

  /// What is wrong with the item, when reported.
  @override
  String? get description;

  /// Refund amount, decimal string, when reported.
  @override
  String? get refundAmount;

  /// Paid amount, decimal string, when reported.
  @override
  String? get paidAmount;

  /// Pre-tax amount, decimal string, when reported.
  @override
  String? get preTaxAmount;

  /// Included tax total, decimal string, when reported.
  @override
  String? get includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  @override
  String? get additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  @override
  String? get taxTotal;

  /// Claimed variant id, when reported.
  @override
  String? get variantId;

  /// Replacement variant id, when set.
  @override
  String? get replacementVariantId;

  /// Originating line item id, when reported.
  @override
  String? get lineItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  @override
  Map<String, Object?>? get variant;

  /// Serializes this line item back to its JSON shape.
}

/// A customer claim on an order.
///
/// Source: `packages/sdk/src/types/generated/Claim.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Claim with _$Claim {
  const Claim._();

  /// Creates a claim.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Claim({
    required String id,
    required String number,
    @JsonKey(unknownEnumValue: ClaimStatus.unknown) required ClaimStatus status,
    ClaimResolution? resolution,
    String? orderId,
    String? reasonId,
    String? refundTotal,
    String? approvedAt,
    String? resolvedAt,
    String? deniedAt,
    String? canceledAt,
    ClaimReason? reason,
    List<ClaimLineItem>? claimLineItems,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Claim;

  /// Parses a claim from its JSON shape.
  factory Claim.fromJson(Map<String, Object?> json) => _$ClaimFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Claim number.
  @override
  String get number;

  /// Lifecycle status.
  @override
  ClaimStatus get status;

  /// Resolution, when resolved.
  @override
  ClaimResolution? get resolution;

  /// Owning order id, when reported.
  @override
  String? get orderId;

  /// Claim reason id, when set (one of the store's claim reasons).
  @override
  String? get reasonId;

  /// Refund total, decimal string, when reported.
  @override
  String? get refundTotal;

  /// Approval timestamp, when set.
  @override
  String? get approvedAt;

  /// Resolution timestamp, when set.
  @override
  String? get resolvedAt;

  /// Denial timestamp, when set.
  @override
  String? get deniedAt;

  /// Cancellation timestamp, when set.
  @override
  String? get canceledAt;

  /// Expanded reason, when requested via `expand`.
  @override
  ClaimReason? get reason;

  /// Claimed units, when present.
  @override
  List<ClaimLineItem>? get claimLineItems;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this claim back to its JSON shape.
}

/// A saved credit card of the customer.
///
/// Source: `packages/sdk/src/types/generated/CreditCard.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreditCard with _$CreditCard {
  const CreditCard._();

  /// Creates a saved credit card.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CreditCard({
    required String id,
    required String brand,
    required String last4,
    required int month,
    required int year,
    String? name,
    @JsonKey(name: 'default') required bool isDefault,
    String? gatewayPaymentProfileId,
    String? paymentMethodId,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _CreditCard;

  /// Parses a saved credit card from its JSON shape.
  factory CreditCard.fromJson(Map<String, Object?> json) =>
      _$CreditCardFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Card brand (for example `visa`).
  @override
  String get brand;

  /// Last four digits.
  @override
  String get last4;

  /// Expiry month.
  @override
  int get month;

  /// Expiry year.
  @override
  int get year;

  /// Cardholder name, when set.
  @override
  String? get name;

  /// Whether this is the default card.
  @override
  bool get isDefault;

  /// Gateway profile id, when reported.
  @override
  String? get gatewayPaymentProfileId;

  /// The payment method the card was saved with; a card is offered only
  /// for it. Null when reported as such.
  @override
  String? get paymentMethodId;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this card back to its JSON shape.
}

/// A payment setup session (save-method flow).
///
/// Source: `packages/sdk/src/types/generated/PaymentSetupSession.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class PaymentSetupSession with _$PaymentSetupSession {
  const PaymentSetupSession._();

  /// Creates a payment setup session.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PaymentSetupSession({
    required String id,
    @JsonKey(unknownEnumValue: PaymentSetupSessionStatus.unknown)
    required PaymentSetupSessionStatus status,
    String? externalId,
    String? externalClientSecret,
    required Map<String, Object?> externalData,
    String? paymentMethodId,
    String? paymentSourceId,
    String? paymentSourceType,
    String? customerId,
    required PaymentMethod paymentMethod,
  }) = _PaymentSetupSession;

  /// Parses a payment setup session from its JSON shape.
  factory PaymentSetupSession.fromJson(Map<String, Object?> json) =>
      _$PaymentSetupSessionFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Session status.
  @override
  PaymentSetupSessionStatus get status;

  /// Gateway-side id, when reported.
  @override
  String? get externalId;

  /// Gateway client secret, when reported.
  @override
  String? get externalClientSecret;

  /// Provider-specific data passed to the gateway.
  @override
  Map<String, Object?> get externalData;

  /// Payment method id, when reported.
  @override
  String? get paymentMethodId;

  /// Saved source id, when reported.
  @override
  String? get paymentSourceId;

  /// Saved source type, when reported.
  @override
  String? get paymentSourceType;

  /// Owning customer id, when reported.
  @override
  String? get customerId;

  /// The payment method the setup runs against.
  @override
  PaymentMethod get paymentMethod;

  /// Serializes this session back to its JSON shape.
}

/// A customer wishlist.
///
/// Source: `packages/sdk/src/types/generated/Wishlist.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Wishlist with _$Wishlist {
  const Wishlist._();

  /// Creates a wishlist.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Wishlist({
    required String id,
    required String name,
    required String token,
    required bool isDefault,
    required bool isPrivate,
    List<WishlistItem>? items,
  }) = _Wishlist;

  /// Parses a wishlist from its JSON shape.
  factory Wishlist.fromJson(Map<String, Object?> json) =>
      _$WishlistFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Wishlist name.
  @override
  String get name;

  /// Sharing token.
  @override
  String get token;

  /// Whether this is the default wishlist.
  @override
  bool get isDefault;

  /// Whether this wishlist is private.
  @override
  bool get isPrivate;

  /// Items, when side-loaded.
  @override
  List<WishlistItem>? get items;

  /// Serializes this wishlist back to its JSON shape.
}

/// One item on a wishlist.
///
/// Source: `packages/sdk/src/types/generated/WishlistItem.ts`. The
/// expanded `variant`/`product` are kept raw (see library docs).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class WishlistItem with _$WishlistItem {
  const WishlistItem._();

  /// Creates a wishlist item.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory WishlistItem({
    required String id,
    required String variantId,
    required String productId,
    required String wishlistId,
    required int quantity,
    Map<String, Object?>? variant,
    Map<String, Object?>? product,
  }) = _WishlistItem;

  /// Parses a wishlist item from its JSON shape.
  factory WishlistItem.fromJson(Map<String, Object?> json) =>
      _$WishlistItemFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Wishlisted variant id.
  @override
  String get variantId;

  /// Owning product id.
  @override
  String get productId;

  /// Owning wishlist id.
  @override
  String get wishlistId;

  /// Wanted quantity.
  @override
  int get quantity;

  /// Expanded variant, when side-loaded. Kept raw.
  @override
  Map<String, Object?>? get variant;

  /// Expanded product, when side-loaded. Kept raw.
  @override
  Map<String, Object?>? get product;

  /// Serializes this item back to its JSON shape.
}

/// One ancestor on a company's path.
///
/// Source: inline `Company['ancestors'][number]` in
/// `packages/sdk/src/types/generated/Company.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyAncestor with _$CompanyAncestor {
  const CompanyAncestor._();

  /// Creates a company ancestor.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CompanyAncestor({
    required String id,
    required String name,
    required String kind,
  }) = _CompanyAncestor;

  /// Parses an ancestor from its JSON shape.
  factory CompanyAncestor.fromJson(Map<String, Object?> json) =>
      _$CompanyAncestorFromJson(json);

  /// Ancestor id.
  @override
  String get id;

  /// Ancestor name.
  @override
  String get name;

  /// Ancestor kind, kept as reported.
  @override
  String get kind;

  /// Serializes this ancestor back to its JSON shape.
}

/// A B2B company node.
///
/// Source: `packages/sdk/src/types/generated/Company.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Company with _$Company {
  const Company._();

  /// Creates a company.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Company({
    required String id,
    required String name,
    required CompanyKind kind,
    required bool poNumberRequired,
    String? parentId,
    required List<CompanyAncestor> ancestors,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Company;

  /// Parses a company from its JSON shape.
  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Company name.
  @override
  String get name;

  /// Node kind.
  @override
  CompanyKind get kind;

  /// Whether purchase orders require a PO number.
  @override
  bool get poNumberRequired;

  /// Parent node id, when nested.
  @override
  String? get parentId;

  /// Ancestor path.
  @override
  List<CompanyAncestor> get ancestors;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this company back to its JSON shape.
}

/// A customer's standing on a company node.
///
/// Source: `packages/sdk/src/types/generated/CompanyMembership.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyMembership with _$CompanyMembership {
  const CompanyMembership._();

  /// Creates a company membership.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CompanyMembership({
    required String id,
    required String companyId,
    required String customerId,
    String? email,
  }) = _CompanyMembership;

  /// Parses a membership from its JSON shape.
  factory CompanyMembership.fromJson(Map<String, Object?> json) =>
      _$CompanyMembershipFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning company node id.
  @override
  String get companyId;

  /// Member customer id.
  @override
  String get customerId;

  /// Member email, when reported.
  @override
  String? get email;

  /// Serializes this membership back to its JSON shape.
}

/// A pending invitation to join a company.
///
/// Source: `packages/sdk/src/types/generated/CompanyInvitation.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyInvitation with _$CompanyInvitation {
  const CompanyInvitation._();

  /// Creates a company invitation.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CompanyInvitation({
    required String id,
    required String email,
    String? expiresAt,
    required String companyId,
    required CompanyInvitationStatus status,
  }) = _CompanyInvitation;

  /// Parses an invitation from its JSON shape.
  factory CompanyInvitation.fromJson(Map<String, Object?> json) =>
      _$CompanyInvitationFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Invitee email.
  @override
  String get email;

  /// Expiry timestamp, when set.
  @override
  String? get expiresAt;

  /// Inviting company node id.
  @override
  String get companyId;

  /// Invitation status.
  @override
  CompanyInvitationStatus get status;

  /// Serializes this invitation back to its JSON shape.
}

/// One entry of the signed-in buyer's company directory.
///
/// Source: `packages/sdk/src/store-client.ts` (`account.companies` returns
/// `{data: Array<CompanyMembership & {company: Company}>}`).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AccountCompany with _$AccountCompany {
  const AccountCompany._();

  /// Creates a directory entry.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AccountCompany({
    required String id,
    required String companyId,
    required String customerId,
    String? email,
    required Company company,
  }) = _AccountCompany;

  /// Parses the flattened membership fields and embedded company.
  factory AccountCompany.fromJson(Map<String, Object?> json) =>
      _$AccountCompanyFromJson(json);

  /// The buyer's membership on the node.
  CompanyMembership get membership => CompanyMembership(
    id: id,
    companyId: companyId,
    customerId: customerId,
    email: email,
  );

  /// The company node.
  @override
  Company get company;

  /// Serializes this entry back to its JSON shape.
}

/// An invitation looked up by its email token, with its context.
///
/// Source: `packages/sdk/src/store-client.ts`
/// (`companyInvitations.lookup` returns
/// `CompanyInvitation & {company_name, store_name}`).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyInvitationLookup with _$CompanyInvitationLookup {
  const CompanyInvitationLookup._();

  /// Creates an invitation lookup result.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CompanyInvitationLookup({
    required String id,
    required String email,
    String? expiresAt,
    required String companyId,
    required CompanyInvitationStatus status,
    required String companyName,
    required String storeName,
  }) = _CompanyInvitationLookup;

  /// Parses a lookup result from its JSON shape.
  factory CompanyInvitationLookup.fromJson(Map<String, Object?> json) =>
      _$CompanyInvitationLookupFromJson(json);

  /// The looked-up invitation.
  CompanyInvitation get invitation => CompanyInvitation(
    id: id,
    email: email,
    expiresAt: expiresAt,
    companyId: companyId,
    status: status,
  );

  /// Inviting company name.
  @override
  String get id;

  /// Invitee email.
  @override
  String get email;

  /// Expiry timestamp, when set.
  @override
  String? get expiresAt;

  /// Inviting company node id.
  @override
  String get companyId;

  /// Invitation status.
  @override
  CompanyInvitationStatus get status;

  /// Inviting company name.
  @override
  String get companyName;

  /// Owning store name.
  @override
  String get storeName;

  /// Serializes this result back to its JSON shape.
}

/// One returned unit on a `POST /orders/{id}/returns` body.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`
/// (`items` entry: "The shipped unit coming back").
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateReturnItem with _$CreateReturnItem {
  const CreateReturnItem._();

  /// Creates a return item.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateReturnItem({
    @JsonKey(includeIfNull: false) required String fulfillmentItemId,
    @JsonKey(includeIfNull: false) required int quantity,
  }) = _CreateReturnItem;

  /// The shipped unit coming back.
  @override
  String get fulfillmentItemId;

  /// Quantity coming back.
  @override
  int get quantity;

  /// Serializes this item to its JSON shape.
}

/// Body for `POST /orders/{id}/returns`.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`. A
/// rejected request comes back as a 422 (verified: contract section 5,
/// `returns.create.validate`).
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateReturnParams with _$CreateReturnParams {
  const CreateReturnParams._();

  /// Creates return params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateReturnParams({
    @JsonKey(includeIfNull: false) required List<CreateReturnItem> items,
    @JsonKey(includeIfNull: false) String? reasonId,
    @JsonKey(includeIfNull: false) String? memo,
  }) = _CreateReturnParams;

  /// The fulfilled units coming back: `fulfillment_item_id` rather than a
  /// line item id, because a return is against a shipped unit.
  @override
  List<CreateReturnItem> get items;

  /// One of the store's return reasons, when set.
  @override
  String? get reasonId;

  /// Customer memo, when set.
  @override
  String? get memo;

  /// Serializes these params to their JSON shape.
}

/// One claimed unit on a `POST /orders/{id}/claims` body.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`
/// (`items` entry).
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateClaimItem with _$CreateClaimItem {
  const CreateClaimItem._();

  /// Creates a claim item.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateClaimItem({
    @JsonKey(includeIfNull: false) required String lineItemId,
    @JsonKey(includeIfNull: false) required int quantity,
    @JsonKey(includeIfNull: false) String? description,
  }) = _CreateClaimItem;

  /// Originating line item id.
  @override
  String get lineItemId;

  /// Claimed quantity.
  @override
  int get quantity;

  /// What is wrong with the item, when set.
  @override
  String? get description;

  /// Serializes this item to its JSON shape.
}

/// Body for `POST /orders/{id}/claims`.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateClaimParams with _$CreateClaimParams {
  const CreateClaimParams._();

  /// Creates claim params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateClaimParams({
    @JsonKey(includeIfNull: false) required List<CreateClaimItem> items,
    @JsonKey(includeIfNull: false) String? reasonId,
    @JsonKey(includeIfNull: false) String? memo,
  }) = _CreateClaimParams;

  /// The claimed units.
  @override
  List<CreateClaimItem> get items;

  /// One of the store's claim reasons, when set.
  @override
  String? get reasonId;

  /// Customer memo, when set.
  @override
  String? get memo;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /wishlists`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateWishlistParams with _$CreateWishlistParams {
  const CreateWishlistParams._();

  /// Creates wishlist params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateWishlistParams({
    @JsonKey(includeIfNull: false) required String name,
    @JsonKey(includeIfNull: false) bool? isPrivate,
    @JsonKey(includeIfNull: false) bool? isDefault,
  }) = _CreateWishlistParams;

  /// Wishlist name.
  @override
  String get name;

  /// Whether the wishlist is private, when set.
  @override
  bool? get isPrivate;

  /// Whether this becomes the default wishlist, when set.
  @override
  bool? get isDefault;

  /// Serializes these params to their JSON shape.
}

/// Body for `PATCH /wishlists/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class UpdateWishlistParams with _$UpdateWishlistParams {
  const UpdateWishlistParams._();

  /// Creates wishlist update params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateWishlistParams({
    @JsonKey(includeIfNull: false) String? name,
    @JsonKey(includeIfNull: false) bool? isPrivate,
    @JsonKey(includeIfNull: false) bool? isDefault,
  }) = _UpdateWishlistParams;

  /// New name, when set.
  @override
  String? get name;

  /// New privacy flag, when set.
  @override
  bool? get isPrivate;

  /// New default flag, when set.
  @override
  bool? get isDefault;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /wishlists/{id}/items`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistItemParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreateWishlistItemParams with _$CreateWishlistItemParams {
  const CreateWishlistItemParams._();

  /// Creates wishlist item params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreateWishlistItemParams({
    @JsonKey(includeIfNull: false) required String variantId,
    @JsonKey(includeIfNull: false) int? quantity,
  }) = _CreateWishlistItemParams;

  /// Wishlisted variant id.
  @override
  String get variantId;

  /// Wanted quantity, when set.
  @override
  int? get quantity;

  /// Serializes these params to their JSON shape.
}

/// Body for `PATCH /wishlists/{id}/items/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistItemParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class UpdateWishlistItemParams with _$UpdateWishlistItemParams {
  const UpdateWishlistItemParams._();

  /// Creates wishlist item update params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateWishlistItemParams({
    @JsonKey(includeIfNull: false) String? variantId,
    @JsonKey(includeIfNull: false) int? quantity,
  }) = _UpdateWishlistItemParams;

  /// Moves the item to another variant, when set.
  @override
  String? get variantId;

  /// New quantity, when set.
  @override
  int? get quantity;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /customers/me/payment_setup_sessions`.
///
/// Source: `packages/sdk/src/types/params/CreatePaymentSetupSessionParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CreatePaymentSetupSessionParams
    with _$CreatePaymentSetupSessionParams {
  const CreatePaymentSetupSessionParams._();

  /// Creates payment setup session params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CreatePaymentSetupSessionParams({
    @JsonKey(includeIfNull: false) required String paymentMethodId,
    @JsonKey(includeIfNull: false) Map<String, Object?>? externalData,
  }) = _CreatePaymentSetupSessionParams;

  /// Payment method id the setup runs against.
  @override
  String get paymentMethodId;

  /// Provider-specific data passed to the gateway, when set.
  @override
  Map<String, Object?>? get externalData;
}

/// Body for `PATCH /customers/me/payment_setup_sessions/{id}/complete`.
///
/// Source: `packages/sdk/src/types/params/CompletePaymentSetupSessionParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompletePaymentSetupSessionParams
    with _$CompletePaymentSetupSessionParams {
  const CompletePaymentSetupSessionParams._();

  /// Creates payment setup session completion params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CompletePaymentSetupSessionParams({
    @JsonKey(includeIfNull: false) Map<String, Object?>? externalData,
  }) = _CompletePaymentSetupSessionParams;

  /// Provider-specific completion data, when set.
  @override
  Map<String, Object?>? get externalData;
}

/// Body for `PATCH /companies/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateCompanyParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class UpdateCompanyParams with _$UpdateCompanyParams {
  const UpdateCompanyParams._();

  /// Creates company update params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateCompanyParams({
    @JsonKey(includeIfNull: false) String? name,
  }) = _UpdateCompanyParams;

  /// New company name, when set.
  @override
  String? get name;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /companies/{id}/addresses`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressCreateParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyAddressCreateParams with _$CompanyAddressCreateParams {
  const CompanyAddressCreateParams._();

  /// Creates company address params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CompanyAddressCreateParams({
    @JsonKey(includeIfNull: false) required String firstName,
    @JsonKey(includeIfNull: false) required String lastName,
    @JsonKey(includeIfNull: false) String? company,
    @JsonKey(includeIfNull: false) required String address1,
    @JsonKey(includeIfNull: false) String? address2,
    @JsonKey(includeIfNull: false) required String city,
    @JsonKey(includeIfNull: false) String? postalCode,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? label,
    @JsonKey(unknownEnumValue: CountryCode.unknown)
    required CountryCode countryCode,
    @JsonKey(includeIfNull: false) String? stateCode,
    @JsonKey(includeIfNull: false) String? stateName,
    @JsonKey(includeIfNull: false) String? zipcode,
    @JsonKey(includeIfNull: false) bool? defaultBilling,
    @JsonKey(includeIfNull: false) bool? defaultShipping,
  }) = _CompanyAddressCreateParams;

  /// First name.
  @override
  String get firstName;

  /// Last name.
  @override
  String get lastName;

  /// Company line, when set.
  @override
  String? get company;

  /// Street line 1.
  @override
  String get address1;

  /// Street line 2, when set.
  @override
  String? get address2;

  /// City.
  @override
  String get city;

  /// Postal code, when set.
  @override
  String? get postalCode;

  /// Phone, when set.
  @override
  String? get phone;

  /// Address-book label, when set.
  @override
  String? get label;

  /// ISO 3166-1 alpha-2 code, such as `US`.
  @override
  CountryCode get countryCode;

  /// The state or province abbreviation, such as `NY`, when set.
  @override
  String? get stateCode;

  /// For countries without states in the database, when set.
  @override
  String? get stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  @override
  String? get zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  bool? get defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  bool? get defaultShipping;

  /// Serializes these params to their JSON shape.
}

/// Body for `PATCH /companies/{id}/addresses/{id}`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressUpdateParams.ts`.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CompanyAddressUpdateParams with _$CompanyAddressUpdateParams {
  const CompanyAddressUpdateParams._();

  /// Creates company address update params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CompanyAddressUpdateParams({
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) String? company,
    @JsonKey(includeIfNull: false) String? address1,
    @JsonKey(includeIfNull: false) String? address2,
    @JsonKey(includeIfNull: false) String? city,
    @JsonKey(includeIfNull: false) String? postalCode,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? label,
    @JsonKey(includeIfNull: false, unknownEnumValue: CountryCode.unknown)
    CountryCode? countryCode,
    @JsonKey(includeIfNull: false) String? stateCode,
    @JsonKey(includeIfNull: false) String? stateName,
    @JsonKey(includeIfNull: false) String? zipcode,
    @JsonKey(includeIfNull: false) bool? defaultBilling,
    @JsonKey(includeIfNull: false) bool? defaultShipping,
  }) = _CompanyAddressUpdateParams;

  /// First name, when set.
  @override
  String? get firstName;

  /// Last name, when set.
  @override
  String? get lastName;

  /// Company line, when set.
  @override
  String? get company;

  /// Street line 1, when set.
  @override
  String? get address1;

  /// Street line 2, when set.
  @override
  String? get address2;

  /// City, when set.
  @override
  String? get city;

  /// Postal code, when set.
  @override
  String? get postalCode;

  /// Phone, when set.
  @override
  String? get phone;

  /// Address-book label, when set.
  @override
  String? get label;

  /// ISO 3166-1 alpha-2 code, when set.
  @override
  CountryCode? get countryCode;

  /// The state or province abbreviation, when set.
  @override
  String? get stateCode;

  /// For countries without states in the database, when set.
  @override
  String? get stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  @override
  String? get zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  bool? get defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  bool? get defaultShipping;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /companies/{id}/members`: invites a person by email.
///
/// Source: `packages/sdk/src/types/params/AddCompanyMemberParams.ts`.
/// Even an existing customer joins only by accepting the emailed
/// invitation, so this always returns the invitation.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AddCompanyMemberParams with _$AddCompanyMemberParams {
  const AddCompanyMemberParams._();

  /// Creates member-invite params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AddCompanyMemberParams({
    @JsonKey(includeIfNull: false) required String customerEmail,
  }) = _AddCompanyMemberParams;

  /// Invitee email.
  @override
  String get customerEmail;

  /// Serializes these params to their JSON shape.
}

/// Body for `POST /company_invitations/{token}/accept`.
///
/// Source: `packages/sdk/src/types/params/AcceptCompanyInvitationParams.ts`.
/// Pass a registration payload for a new account (it is created with the
/// invited email), or call authenticated to bind the invitation to the
/// signed-in customer. Defaults to `{}` upstream.
@Freezed(fromJson: false, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AcceptCompanyInvitationParams
    with _$AcceptCompanyInvitationParams {
  const AcceptCompanyInvitationParams._();

  /// Creates invitation-accept params.
  @JsonSerializable(
    createFactory: false,
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory AcceptCompanyInvitationParams({
    @JsonKey(includeIfNull: false) String? firstName,
    @JsonKey(includeIfNull: false) String? lastName,
    @JsonKey(includeIfNull: false) String? phone,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? passwordConfirmation,
  }) = _AcceptCompanyInvitationParams;

  /// First name, when registering.
  @override
  String? get firstName;

  /// Last name, when registering.
  @override
  String? get lastName;

  /// Phone, when registering.
  @override
  String? get phone;

  /// Password, when registering.
  @override
  String? get password;

  /// Password confirmation, when registering.
  @override
  String? get passwordConfirmation;
}
