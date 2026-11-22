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

/// Lifecycle status of a return.
///
/// Source: `packages/sdk/src/types/generated/Return.ts` (`ReturnStatus`),
/// values `packages/core/src/enums.generated.ts` (`RETURN_STATUSES`).
/// Built-in values; extensions may add more, so unknown input maps to
/// [unknown] instead of throwing.
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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ReturnReason with _$ReturnReason {
  const ReturnReason._();

  /// Creates a return reason.
  const factory ReturnReason({
    required String id,
    required String name,
    required bool active,
  }) = _ReturnReason;

  /// Parses a return reason from its JSON shape.
  factory ReturnReason.fromJson(Map<String, Object?> json) => ReturnReason(
    id: json['id'] as String,
    name: json['name'] as String,
    active: json['active'] as bool,
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Reason name.
  @override
  @override
  String get name;

  /// Whether the reason is active.
  @override
  @override
  bool get active;

  /// Serializes this reason back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'active': active,
  };
}

/// A claim reason of the store.
///
/// Source: `packages/sdk/src/types/generated/ClaimReason.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ClaimReason with _$ClaimReason {
  const ClaimReason._();

  /// Creates a claim reason.
  const factory ClaimReason({
    required String id,
    required String name,
    required bool active,
  }) = _ClaimReason;

  /// Parses a claim reason from its JSON shape.
  factory ClaimReason.fromJson(Map<String, Object?> json) => ClaimReason(
    id: json['id'] as String,
    name: json['name'] as String,
    active: json['active'] as bool,
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Reason name.
  @override
  @override
  String get name;

  /// Whether the reason is active.
  @override
  @override
  bool get active;

  /// Serializes this reason back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'active': active,
  };
}

/// One returned unit on a return.
///
/// Source: `packages/sdk/src/types/generated/ReturnLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ReturnLineItem with _$ReturnLineItem {
  const ReturnLineItem._();

  /// Creates a return line item.
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
  factory ReturnLineItem.fromJson(Map<String, Object?> json) => ReturnLineItem(
    id: json['id'] as String,
    quantity: (json['quantity'] as num).toInt(),
    receivedQuantity: (json['received_quantity'] as num).toInt(),
    resellable: json['resellable'] as bool,
    preTaxAmount: json['pre_tax_amount'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    taxTotal: json['tax_total'] as String?,
    refundAmount: json['refund_amount'] as String?,
    variantId: json['variant_id'] as String?,
    lineItemId: json['line_item_id'] as String?,
    fulfillmentItemId: json['fulfillment_item_id'] as String?,
    variant: json['variant'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['variant'] as Map).cast<String, Object?>(),
          ),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Quantity being returned.
  @override
  @override
  int get quantity;

  /// Quantity received so far.
  @override
  @override
  int get receivedQuantity;

  /// Whether the unit can be resold.
  @override
  @override
  bool get resellable;

  /// Pre-tax amount, decimal string, when reported.
  @override
  @override
  String? get preTaxAmount;

  /// Included tax total, decimal string, when reported.
  @override
  @override
  String? get includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  @override
  @override
  String? get additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  @override
  @override
  String? get taxTotal;

  /// Refund amount, decimal string, when reported.
  @override
  @override
  String? get refundAmount;

  /// Returning variant id, when reported.
  @override
  @override
  String? get variantId;

  /// Originating line item id, when reported.
  @override
  @override
  String? get lineItemId;

  /// Shipped unit coming back (the return identity), when reported.
  @override
  @override
  String? get fulfillmentItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  @override
  @override
  Map<String, Object?>? get variant;

  /// Serializes this line item back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'quantity': quantity,
    'received_quantity': receivedQuantity,
    'resellable': resellable,
    'pre_tax_amount': preTaxAmount,
    'included_tax_total': includedTaxTotal,
    'additional_tax_total': additionalTaxTotal,
    'tax_total': taxTotal,
    'refund_amount': refundAmount,
    'variant_id': variantId,
    'line_item_id': lineItemId,
    'fulfillment_item_id': fulfillmentItemId,
    'variant': variant,
  };
}

/// A customer return on an order.
///
/// Source: `packages/sdk/src/types/generated/Return.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Return with _$Return {
  const Return._();

  /// Creates a return.
  const factory Return({
    required String id,
    required String number,
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
    List<CustomField>? customFields,
  }) = _Return;

  /// Parses a return from its JSON shape.
  factory Return.fromJson(Map<String, Object?> json) => Return(
    id: json['id'] as String,
    number: json['number'] as String,
    status: ReturnStatus.fromJson(json['status']),
    orderId: json['order_id'] as String?,
    reasonId: json['reason_id'] as String?,
    refundTotal: json['refund_total'] as String?,
    refundTaxTotal: json['refund_tax_total'] as String?,
    approvedAt: json['approved_at'] as String?,
    receivedAt: json['received_at'] as String?,
    refundedAt: json['refunded_at'] as String?,
    canceledAt: json['canceled_at'] as String?,
    reason: json['reason'] == null
        ? null
        : ReturnReason.fromJson(json['reason'] as Map<String, Object?>),
    returnLineItems: (json['return_line_items'] as List?)
        ?.map((e) => ReturnLineItem.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Return number.
  @override
  @override
  String get number;

  /// Lifecycle status.
  @override
  @override
  ReturnStatus get status;

  /// Owning order id, when reported.
  @override
  @override
  String? get orderId;

  /// Return reason id, when set (one of the store's return reasons).
  @override
  @override
  String? get reasonId;

  /// Refund total, decimal string, when reported.
  @override
  @override
  String? get refundTotal;

  /// Refund tax total, decimal string, when reported.
  @override
  @override
  String? get refundTaxTotal;

  /// Approval timestamp, when set.
  @override
  @override
  String? get approvedAt;

  /// Receipt timestamp, when set.
  @override
  @override
  String? get receivedAt;

  /// Refund timestamp, when set.
  @override
  @override
  String? get refundedAt;

  /// Cancellation timestamp, when set.
  @override
  @override
  String? get canceledAt;

  /// Expanded reason, when requested via `expand`.
  @override
  @override
  ReturnReason? get reason;

  /// Returned units, when present.
  @override
  @override
  List<ReturnLineItem>? get returnLineItems;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this return back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'number': number,
    'status': status.toJson(),
    'order_id': orderId,
    'reason_id': reasonId,
    'refund_total': refundTotal,
    'refund_tax_total': refundTaxTotal,
    'approved_at': approvedAt,
    'received_at': receivedAt,
    'refunded_at': refundedAt,
    'canceled_at': canceledAt,
    'reason': reason?.toJson(),
    'return_line_items': returnLineItems?.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// One claimed unit on a claim.
///
/// Source: `packages/sdk/src/types/generated/ClaimLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ClaimLineItem with _$ClaimLineItem {
  const ClaimLineItem._();

  /// Creates a claim line item.
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
  factory ClaimLineItem.fromJson(Map<String, Object?> json) => ClaimLineItem(
    id: json['id'] as String,
    quantity: (json['quantity'] as num).toInt(),
    sendReplacement: json['send_replacement'] as bool,
    description: json['description'] as String?,
    refundAmount: json['refund_amount'] as String?,
    paidAmount: json['paid_amount'] as String?,
    preTaxAmount: json['pre_tax_amount'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    taxTotal: json['tax_total'] as String?,
    variantId: json['variant_id'] as String?,
    replacementVariantId: json['replacement_variant_id'] as String?,
    lineItemId: json['line_item_id'] as String?,
    variant: json['variant'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['variant'] as Map).cast<String, Object?>(),
          ),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Claimed quantity.
  @override
  @override
  int get quantity;

  /// Whether a replacement unit is sent.
  @override
  @override
  bool get sendReplacement;

  /// What is wrong with the item, when reported.
  @override
  @override
  String? get description;

  /// Refund amount, decimal string, when reported.
  @override
  @override
  String? get refundAmount;

  /// Paid amount, decimal string, when reported.
  @override
  @override
  String? get paidAmount;

  /// Pre-tax amount, decimal string, when reported.
  @override
  @override
  String? get preTaxAmount;

  /// Included tax total, decimal string, when reported.
  @override
  @override
  String? get includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  @override
  @override
  String? get additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  @override
  @override
  String? get taxTotal;

  /// Claimed variant id, when reported.
  @override
  @override
  String? get variantId;

  /// Replacement variant id, when set.
  @override
  @override
  String? get replacementVariantId;

  /// Originating line item id, when reported.
  @override
  @override
  String? get lineItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  @override
  @override
  Map<String, Object?>? get variant;

  /// Serializes this line item back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'quantity': quantity,
    'send_replacement': sendReplacement,
    'description': description,
    'refund_amount': refundAmount,
    'paid_amount': paidAmount,
    'pre_tax_amount': preTaxAmount,
    'included_tax_total': includedTaxTotal,
    'additional_tax_total': additionalTaxTotal,
    'tax_total': taxTotal,
    'variant_id': variantId,
    'replacement_variant_id': replacementVariantId,
    'line_item_id': lineItemId,
    'variant': variant,
  };
}

/// A customer claim on an order.
///
/// Source: `packages/sdk/src/types/generated/Claim.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Claim with _$Claim {
  const Claim._();

  /// Creates a claim.
  const factory Claim({
    required String id,
    required String number,
    required ClaimStatus status,
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
    List<CustomField>? customFields,
  }) = _Claim;

  /// Parses a claim from its JSON shape.
  factory Claim.fromJson(Map<String, Object?> json) => Claim(
    id: json['id'] as String,
    number: json['number'] as String,
    status: ClaimStatus.fromJson(json['status']),
    resolution: json['resolution'] == null
        ? null
        : ClaimResolution.fromJson(json['resolution']),
    orderId: json['order_id'] as String?,
    reasonId: json['reason_id'] as String?,
    refundTotal: json['refund_total'] as String?,
    approvedAt: json['approved_at'] as String?,
    resolvedAt: json['resolved_at'] as String?,
    deniedAt: json['denied_at'] as String?,
    canceledAt: json['canceled_at'] as String?,
    reason: json['reason'] == null
        ? null
        : ClaimReason.fromJson(json['reason'] as Map<String, Object?>),
    claimLineItems: (json['claim_line_items'] as List?)
        ?.map((e) => ClaimLineItem.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Claim number.
  @override
  @override
  String get number;

  /// Lifecycle status.
  @override
  @override
  ClaimStatus get status;

  /// Resolution, when resolved.
  @override
  @override
  ClaimResolution? get resolution;

  /// Owning order id, when reported.
  @override
  @override
  String? get orderId;

  /// Claim reason id, when set (one of the store's claim reasons).
  @override
  @override
  String? get reasonId;

  /// Refund total, decimal string, when reported.
  @override
  @override
  String? get refundTotal;

  /// Approval timestamp, when set.
  @override
  @override
  String? get approvedAt;

  /// Resolution timestamp, when set.
  @override
  @override
  String? get resolvedAt;

  /// Denial timestamp, when set.
  @override
  @override
  String? get deniedAt;

  /// Cancellation timestamp, when set.
  @override
  @override
  String? get canceledAt;

  /// Expanded reason, when requested via `expand`.
  @override
  @override
  ClaimReason? get reason;

  /// Claimed units, when present.
  @override
  @override
  List<ClaimLineItem>? get claimLineItems;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this claim back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'number': number,
    'status': status.toJson(),
    'resolution': resolution?.toJson(),
    'order_id': orderId,
    'reason_id': reasonId,
    'refund_total': refundTotal,
    'approved_at': approvedAt,
    'resolved_at': resolvedAt,
    'denied_at': deniedAt,
    'canceled_at': canceledAt,
    'reason': reason?.toJson(),
    'claim_line_items': claimLineItems?.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A saved credit card of the customer.
///
/// Source: `packages/sdk/src/types/generated/CreditCard.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreditCard with _$CreditCard {
  const CreditCard._();

  /// Creates a saved credit card.
  const factory CreditCard({
    required String id,
    required String brand,
    required String last4,
    required int month,
    required int year,
    String? name,
    required bool isDefault,
    String? gatewayPaymentProfileId,
    String? paymentMethodId,
    List<CustomField>? customFields,
  }) = _CreditCard;

  /// Parses a saved credit card from its JSON shape.
  factory CreditCard.fromJson(Map<String, Object?> json) => CreditCard(
    id: json['id'] as String,
    brand: json['brand'] as String,
    last4: json['last4'] as String,
    month: (json['month'] as num).toInt(),
    year: (json['year'] as num).toInt(),
    name: json['name'] as String?,
    isDefault: json['default'] as bool,
    gatewayPaymentProfileId: json['gateway_payment_profile_id'] as String?,
    paymentMethodId: json['payment_method_id'] as String?,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Card brand (for example `visa`).
  @override
  @override
  String get brand;

  /// Last four digits.
  @override
  @override
  String get last4;

  /// Expiry month.
  @override
  @override
  int get month;

  /// Expiry year.
  @override
  @override
  int get year;

  /// Cardholder name, when set.
  @override
  @override
  String? get name;

  /// Whether this is the default card.
  @override
  @override
  bool get isDefault;

  /// Gateway profile id, when reported.
  @override
  @override
  String? get gatewayPaymentProfileId;

  /// The payment method the card was saved with; a card is offered only
  /// for it. Null when reported as such.
  @override
  @override
  String? get paymentMethodId;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this card back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'brand': brand,
    'last4': last4,
    'month': month,
    'year': year,
    'name': name,
    'default': isDefault,
    'gateway_payment_profile_id': gatewayPaymentProfileId,
    'payment_method_id': paymentMethodId,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A payment setup session (save-method flow).
///
/// Source: `packages/sdk/src/types/generated/PaymentSetupSession.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class PaymentSetupSession with _$PaymentSetupSession {
  const PaymentSetupSession._();

  /// Creates a payment setup session.
  const factory PaymentSetupSession({
    required String id,
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
      PaymentSetupSession(
        id: json['id'] as String,
        status: PaymentSetupSessionStatus.fromJson(json['status']),
        externalId: json['external_id'] as String?,
        externalClientSecret: json['external_client_secret'] as String?,
        externalData: Map<String, Object?>.unmodifiable(
          (json['external_data'] as Map?)?.cast<String, Object?>() ??
              <String, Object?>{},
        ),
        paymentMethodId: json['payment_method_id'] as String?,
        paymentSourceId: json['payment_source_id'] as String?,
        paymentSourceType: json['payment_source_type'] as String?,
        customerId: json['customer_id'] as String?,
        paymentMethod: PaymentMethod.fromJson(
          json['payment_method'] as Map<String, Object?>,
        ),
      );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Session status.
  @override
  @override
  PaymentSetupSessionStatus get status;

  /// Gateway-side id, when reported.
  @override
  @override
  String? get externalId;

  /// Gateway client secret, when reported.
  @override
  @override
  String? get externalClientSecret;

  /// Provider-specific data passed to the gateway.
  @override
  @override
  Map<String, Object?> get externalData;

  /// Payment method id, when reported.
  @override
  @override
  String? get paymentMethodId;

  /// Saved source id, when reported.
  @override
  @override
  String? get paymentSourceId;

  /// Saved source type, when reported.
  @override
  @override
  String? get paymentSourceType;

  /// Owning customer id, when reported.
  @override
  @override
  String? get customerId;

  /// The payment method the setup runs against.
  @override
  @override
  PaymentMethod get paymentMethod;

  /// Serializes this session back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'status': status.toJson(),
    'external_id': externalId,
    'external_client_secret': externalClientSecret,
    'external_data': externalData,
    'payment_method_id': paymentMethodId,
    'payment_source_id': paymentSourceId,
    'payment_source_type': paymentSourceType,
    'customer_id': customerId,
    'payment_method': paymentMethod.toJson(),
  };
}

/// A customer wishlist.
///
/// Source: `packages/sdk/src/types/generated/Wishlist.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Wishlist with _$Wishlist {
  const Wishlist._();

  /// Creates a wishlist.
  const factory Wishlist({
    required String id,
    required String name,
    required String token,
    required bool isDefault,
    required bool isPrivate,
    List<WishlistItem>? items,
  }) = _Wishlist;

  /// Parses a wishlist from its JSON shape.
  factory Wishlist.fromJson(Map<String, Object?> json) => Wishlist(
    id: json['id'] as String,
    name: json['name'] as String,
    token: json['token'] as String,
    isDefault: json['is_default'] as bool,
    isPrivate: json['is_private'] as bool,
    items: (json['items'] as List?)
        ?.map((e) => WishlistItem.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Wishlist name.
  @override
  @override
  String get name;

  /// Sharing token.
  @override
  @override
  String get token;

  /// Whether this is the default wishlist.
  @override
  @override
  bool get isDefault;

  /// Whether this wishlist is private.
  @override
  @override
  bool get isPrivate;

  /// Items, when side-loaded.
  @override
  @override
  List<WishlistItem>? get items;

  /// Serializes this wishlist back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'token': token,
    'is_default': isDefault,
    'is_private': isPrivate,
    'items': items?.map((e) => e.toJson()).toList(),
  };
}

/// One item on a wishlist.
///
/// Source: `packages/sdk/src/types/generated/WishlistItem.ts`. The
/// expanded `variant`/`product` are kept raw (see library docs).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class WishlistItem with _$WishlistItem {
  const WishlistItem._();

  /// Creates a wishlist item.
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
  factory WishlistItem.fromJson(Map<String, Object?> json) => WishlistItem(
    id: json['id'] as String,
    variantId: json['variant_id'] as String,
    productId: json['product_id'] as String,
    wishlistId: json['wishlist_id'] as String,
    quantity: (json['quantity'] as num).toInt(),
    variant: json['variant'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['variant'] as Map).cast<String, Object?>(),
          ),
    product: json['product'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['product'] as Map).cast<String, Object?>(),
          ),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Wishlisted variant id.
  @override
  @override
  String get variantId;

  /// Owning product id.
  @override
  @override
  String get productId;

  /// Owning wishlist id.
  @override
  @override
  String get wishlistId;

  /// Wanted quantity.
  @override
  @override
  int get quantity;

  /// Expanded variant, when side-loaded. Kept raw.
  @override
  @override
  Map<String, Object?>? get variant;

  /// Expanded product, when side-loaded. Kept raw.
  @override
  @override
  Map<String, Object?>? get product;

  /// Serializes this item back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'variant_id': variantId,
    'product_id': productId,
    'wishlist_id': wishlistId,
    'quantity': quantity,
    'variant': variant,
    'product': product,
  };
}

/// One ancestor on a company's path.
///
/// Source: inline `Company['ancestors'][number]` in
/// `packages/sdk/src/types/generated/Company.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyAncestor with _$CompanyAncestor {
  const CompanyAncestor._();

  /// Creates a company ancestor.
  const factory CompanyAncestor({
    required String id,
    required String name,
    required String kind,
  }) = _CompanyAncestor;

  /// Parses an ancestor from its JSON shape.
  factory CompanyAncestor.fromJson(Map<String, Object?> json) =>
      CompanyAncestor(
        id: json['id'] as String,
        name: json['name'] as String,
        kind: json['kind'] as String,
      );

  /// Ancestor id.
  @override
  @override
  String get id;

  /// Ancestor name.
  @override
  @override
  String get name;

  /// Ancestor kind, kept as reported.
  @override
  @override
  String get kind;

  /// Serializes this ancestor back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'kind': kind,
  };
}

/// A B2B company node.
///
/// Source: `packages/sdk/src/types/generated/Company.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Company with _$Company {
  const Company._();

  /// Creates a company.
  const factory Company({
    required String id,
    required String name,
    required CompanyKind kind,
    required bool poNumberRequired,
    String? parentId,
    required List<CompanyAncestor> ancestors,
    List<CustomField>? customFields,
  }) = _Company;

  /// Parses a company from its JSON shape.
  factory Company.fromJson(Map<String, Object?> json) => Company(
    id: json['id'] as String,
    name: json['name'] as String,
    kind: CompanyKind.fromJson(json['kind']),
    poNumberRequired: json['po_number_required'] as bool,
    parentId: json['parent_id'] as String?,
    ancestors: (json['ancestors'] as List)
        .map((e) => CompanyAncestor.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Company name.
  @override
  @override
  String get name;

  /// Node kind.
  @override
  @override
  CompanyKind get kind;

  /// Whether purchase orders require a PO number.
  @override
  @override
  bool get poNumberRequired;

  /// Parent node id, when nested.
  @override
  @override
  String? get parentId;

  /// Ancestor path.
  @override
  @override
  List<CompanyAncestor> get ancestors;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this company back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'kind': kind.toJson(),
    'po_number_required': poNumberRequired,
    'parent_id': parentId,
    'ancestors': ancestors.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A customer's standing on a company node.
///
/// Source: `packages/sdk/src/types/generated/CompanyMembership.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyMembership with _$CompanyMembership {
  const CompanyMembership._();

  /// Creates a company membership.
  const factory CompanyMembership({
    required String id,
    required String companyId,
    required String customerId,
    String? email,
  }) = _CompanyMembership;

  /// Parses a membership from its JSON shape.
  factory CompanyMembership.fromJson(Map<String, Object?> json) =>
      CompanyMembership(
        id: json['id'] as String,
        companyId: json['company_id'] as String,
        customerId: json['customer_id'] as String,
        email: json['email'] as String?,
      );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Owning company node id.
  @override
  @override
  String get companyId;

  /// Member customer id.
  @override
  @override
  String get customerId;

  /// Member email, when reported.
  @override
  @override
  String? get email;

  /// Serializes this membership back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'company_id': companyId,
    'customer_id': customerId,
    'email': email,
  };
}

/// A pending invitation to join a company.
///
/// Source: `packages/sdk/src/types/generated/CompanyInvitation.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyInvitation with _$CompanyInvitation {
  const CompanyInvitation._();

  /// Creates a company invitation.
  const factory CompanyInvitation({
    required String id,
    required String email,
    String? expiresAt,
    required String companyId,
    required CompanyInvitationStatus status,
  }) = _CompanyInvitation;

  /// Parses an invitation from its JSON shape.
  factory CompanyInvitation.fromJson(Map<String, Object?> json) =>
      CompanyInvitation(
        id: json['id'] as String,
        email: json['email'] as String,
        expiresAt: json['expires_at'] as String?,
        companyId: json['company_id'] as String,
        status: CompanyInvitationStatus.fromJson(json['status']),
      );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Invitee email.
  @override
  @override
  String get email;

  /// Expiry timestamp, when set.
  @override
  @override
  String? get expiresAt;

  /// Inviting company node id.
  @override
  @override
  String get companyId;

  /// Invitation status.
  @override
  @override
  CompanyInvitationStatus get status;

  /// Serializes this invitation back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'email': email,
    'expires_at': expiresAt,
    'company_id': companyId,
    'status': status.toJson(),
  };
}

/// One entry of the signed-in buyer's company directory: the membership
/// plus its node.
///
/// Source: `packages/sdk/src/store-client.ts` (`account.companies` returns
/// `{data: Array<CompanyMembership & {company: Company}>}`).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AccountCompany with _$AccountCompany {
  const AccountCompany._();

  /// Creates a directory entry.
  const factory AccountCompany({
    required CompanyMembership membership,
    required Company company,
  }) = _AccountCompany;

  /// Parses an entry from its JSON shape (membership fields plus
  /// an embedded `company` object).
  factory AccountCompany.fromJson(Map<String, Object?> json) => AccountCompany(
    membership: CompanyMembership.fromJson(json),
    company: Company.fromJson(json['company'] as Map<String, Object?>),
  );

  /// The buyer's membership on the node.
  @override
  @override
  CompanyMembership get membership;

  /// The company node.
  @override
  @override
  Company get company;

  /// Serializes this entry back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    ...membership.toJson(),
    'company': company.toJson(),
  };
}

/// An invitation looked up by its email token, with its context.
///
/// Source: `packages/sdk/src/store-client.ts`
/// (`companyInvitations.lookup` returns
/// `CompanyInvitation & {company_name, store_name}`).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyInvitationLookup with _$CompanyInvitationLookup {
  const CompanyInvitationLookup._();

  /// Creates an invitation lookup result.
  const factory CompanyInvitationLookup({
    required CompanyInvitation invitation,
    required String companyName,
    required String storeName,
  }) = _CompanyInvitationLookup;

  /// Parses a lookup result from its JSON shape.
  factory CompanyInvitationLookup.fromJson(Map<String, Object?> json) =>
      CompanyInvitationLookup(
        invitation: CompanyInvitation.fromJson(json),
        companyName: json['company_name'] as String,
        storeName: json['store_name'] as String,
      );

  /// The looked-up invitation.
  @override
  @override
  CompanyInvitation get invitation;

  /// Inviting company name.
  @override
  @override
  String get companyName;

  /// Owning store name.
  @override
  @override
  String get storeName;

  /// Serializes this result back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    ...invitation.toJson(),
    'company_name': companyName,
    'store_name': storeName,
  };
}

/// One returned unit on a `POST /orders/{id}/returns` body.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`
/// (`items` entry: "The shipped unit coming back").
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateReturnItem with _$CreateReturnItem {
  const CreateReturnItem._();

  /// Creates a return item.
  const factory CreateReturnItem({
    required String fulfillmentItemId,
    required int quantity,
  }) = _CreateReturnItem;

  /// The shipped unit coming back.
  @override
  @override
  String get fulfillmentItemId;

  /// Quantity coming back.
  @override
  @override
  int get quantity;

  /// Serializes this item to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'fulfillment_item_id': fulfillmentItemId,
    'quantity': quantity,
  };
}

/// Body for `POST /orders/{id}/returns`.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`. A
/// rejected request comes back as a 422 (verified: contract section 5,
/// `returns.create.validate`).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateReturnParams with _$CreateReturnParams {
  const CreateReturnParams._();

  /// Creates return params.
  const factory CreateReturnParams({
    required List<CreateReturnItem> items,
    String? reasonId,
    String? memo,
  }) = _CreateReturnParams;

  /// The fulfilled units coming back: `fulfillment_item_id` rather than a
  /// line item id, because a return is against a shipped unit.
  @override
  @override
  List<CreateReturnItem> get items;

  /// One of the store's return reasons, when set.
  @override
  @override
  String? get reasonId;

  /// Customer memo, when set.
  @override
  @override
  String? get memo;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'items': items.map((e) => e.toJson()).toList(),
    if (reasonId != null) 'reason_id': reasonId,
    if (memo != null) 'memo': memo,
  };
}

/// One claimed unit on a `POST /orders/{id}/claims` body.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`
/// (`items` entry).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateClaimItem with _$CreateClaimItem {
  const CreateClaimItem._();

  /// Creates a claim item.
  const factory CreateClaimItem({
    required String lineItemId,
    required int quantity,
    String? description,
  }) = _CreateClaimItem;

  /// Originating line item id.
  @override
  @override
  String get lineItemId;

  /// Claimed quantity.
  @override
  @override
  int get quantity;

  /// What is wrong with the item, when set.
  @override
  @override
  String? get description;

  /// Serializes this item to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'line_item_id': lineItemId,
    'quantity': quantity,
    if (description != null) 'description': description,
  };
}

/// Body for `POST /orders/{id}/claims`.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateClaimParams with _$CreateClaimParams {
  const CreateClaimParams._();

  /// Creates claim params.
  const factory CreateClaimParams({
    required List<CreateClaimItem> items,
    String? reasonId,
    String? memo,
  }) = _CreateClaimParams;

  /// The claimed units.
  @override
  @override
  List<CreateClaimItem> get items;

  /// One of the store's claim reasons, when set.
  @override
  @override
  String? get reasonId;

  /// Customer memo, when set.
  @override
  @override
  String? get memo;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'items': items.map((e) => e.toJson()).toList(),
    if (reasonId != null) 'reason_id': reasonId,
    if (memo != null) 'memo': memo,
  };
}

/// Body for `POST /wishlists`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateWishlistParams with _$CreateWishlistParams {
  const CreateWishlistParams._();

  /// Creates wishlist params.
  const factory CreateWishlistParams({
    required String name,
    bool? isPrivate,
    bool? isDefault,
  }) = _CreateWishlistParams;

  /// Wishlist name.
  @override
  @override
  String get name;

  /// Whether the wishlist is private, when set.
  @override
  @override
  bool? get isPrivate;

  /// Whether this becomes the default wishlist, when set.
  @override
  @override
  bool? get isDefault;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'name': name,
    if (isPrivate != null) 'is_private': isPrivate,
    if (isDefault != null) 'is_default': isDefault,
  };
}

/// Body for `PATCH /wishlists/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateWishlistParams with _$UpdateWishlistParams {
  const UpdateWishlistParams._();

  /// Creates wishlist update params.
  const factory UpdateWishlistParams({
    String? name,
    bool? isPrivate,
    bool? isDefault,
  }) = _UpdateWishlistParams;

  /// New name, when set.
  @override
  @override
  String? get name;

  /// New privacy flag, when set.
  @override
  @override
  bool? get isPrivate;

  /// New default flag, when set.
  @override
  @override
  bool? get isDefault;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (name != null) 'name': name,
    if (isPrivate != null) 'is_private': isPrivate,
    if (isDefault != null) 'is_default': isDefault,
  };
}

/// Body for `POST /wishlists/{id}/items`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistItemParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreateWishlistItemParams with _$CreateWishlistItemParams {
  const CreateWishlistItemParams._();

  /// Creates wishlist item params.
  const factory CreateWishlistItemParams({
    required String variantId,
    int? quantity,
  }) = _CreateWishlistItemParams;

  /// Wishlisted variant id.
  @override
  @override
  String get variantId;

  /// Wanted quantity, when set.
  @override
  @override
  int? get quantity;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'variant_id': variantId,
    if (quantity != null) 'quantity': quantity,
  };
}

/// Body for `PATCH /wishlists/{id}/items/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistItemParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateWishlistItemParams with _$UpdateWishlistItemParams {
  const UpdateWishlistItemParams._();

  /// Creates wishlist item update params.
  const factory UpdateWishlistItemParams({String? variantId, int? quantity}) =
      _UpdateWishlistItemParams;

  /// Moves the item to another variant, when set.
  @override
  @override
  String? get variantId;

  /// New quantity, when set.
  @override
  @override
  int? get quantity;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (variantId != null) 'variant_id': variantId,
    if (quantity != null) 'quantity': quantity,
  };
}

/// Body for `POST /customers/me/payment_setup_sessions`.
///
/// Source: `packages/sdk/src/types/params/CreatePaymentSetupSessionParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CreatePaymentSetupSessionParams
    with _$CreatePaymentSetupSessionParams {
  const CreatePaymentSetupSessionParams._();

  /// Creates payment setup session params.
  const factory CreatePaymentSetupSessionParams({
    required String paymentMethodId,
    Map<String, Object?>? externalData,
  }) = _CreatePaymentSetupSessionParams;

  /// Payment method id the setup runs against.
  @override
  @override
  String get paymentMethodId;

  /// Provider-specific data passed to the gateway, when set.
  @override
  @override
  Map<String, Object?>? get externalData;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'payment_method_id': paymentMethodId,
    if (externalData != null) 'external_data': externalData,
  };
}

/// Body for `PATCH /customers/me/payment_setup_sessions/{id}/complete`.
///
/// Source: `packages/sdk/src/types/params/CompletePaymentSetupSessionParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompletePaymentSetupSessionParams
    with _$CompletePaymentSetupSessionParams {
  const CompletePaymentSetupSessionParams._();

  /// Creates payment setup session completion params.
  const factory CompletePaymentSetupSessionParams({
    Map<String, Object?>? externalData,
  }) = _CompletePaymentSetupSessionParams;

  /// Provider-specific completion data, when set.
  @override
  @override
  Map<String, Object?>? get externalData;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (externalData != null) 'external_data': externalData,
  };
}

/// Body for `PATCH /companies/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateCompanyParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class UpdateCompanyParams with _$UpdateCompanyParams {
  const UpdateCompanyParams._();

  /// Creates company update params.
  const factory UpdateCompanyParams({String? name}) = _UpdateCompanyParams;

  /// New company name, when set.
  @override
  @override
  String? get name;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (name != null) 'name': name,
  };
}

/// Body for `POST /companies/{id}/addresses`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressCreateParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyAddressCreateParams with _$CompanyAddressCreateParams {
  const CompanyAddressCreateParams._();

  /// Creates company address params.
  const factory CompanyAddressCreateParams({
    required String firstName,
    required String lastName,
    String? company,
    required String address1,
    String? address2,
    required String city,
    String? postalCode,
    String? phone,
    String? label,
    required CountryCode countryCode,
    String? stateCode,
    String? stateName,
    String? zipcode,
    bool? defaultBilling,
    bool? defaultShipping,
  }) = _CompanyAddressCreateParams;

  /// First name.
  @override
  @override
  String get firstName;

  /// Last name.
  @override
  @override
  String get lastName;

  /// Company line, when set.
  @override
  @override
  String? get company;

  /// Street line 1.
  @override
  @override
  String get address1;

  /// Street line 2, when set.
  @override
  @override
  String? get address2;

  /// City.
  @override
  @override
  String get city;

  /// Postal code, when set.
  @override
  @override
  String? get postalCode;

  /// Phone, when set.
  @override
  @override
  String? get phone;

  /// Address-book label, when set.
  @override
  @override
  String? get label;

  /// ISO 3166-1 alpha-2 code, such as `US`.
  @override
  @override
  CountryCode get countryCode;

  /// The state or province abbreviation, such as `NY`, when set.
  @override
  @override
  String? get stateCode;

  /// For countries without states in the database, when set.
  @override
  @override
  String? get stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  @override
  @override
  String? get zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  @override
  bool? get defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  @override
  bool? get defaultShipping;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'first_name': firstName,
    'last_name': lastName,
    if (company != null) 'company': company,
    'address1': address1,
    if (address2 != null) 'address2': address2,
    'city': city,
    if (postalCode != null) 'postal_code': postalCode,
    if (phone != null) 'phone': phone,
    if (label != null) 'label': label,
    'country_code': countryCode.toJson(),
    if (stateCode != null) 'state_code': stateCode,
    if (stateName != null) 'state_name': stateName,
    if (zipcode != null) 'zipcode': zipcode,
    if (defaultBilling != null) 'default_billing': defaultBilling,
    if (defaultShipping != null) 'default_shipping': defaultShipping,
  };
}

/// Body for `PATCH /companies/{id}/addresses/{id}`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressUpdateParams.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CompanyAddressUpdateParams with _$CompanyAddressUpdateParams {
  const CompanyAddressUpdateParams._();

  /// Creates company address update params.
  const factory CompanyAddressUpdateParams({
    String? firstName,
    String? lastName,
    String? company,
    String? address1,
    String? address2,
    String? city,
    String? postalCode,
    String? phone,
    String? label,
    CountryCode? countryCode,
    String? stateCode,
    String? stateName,
    String? zipcode,
    bool? defaultBilling,
    bool? defaultShipping,
  }) = _CompanyAddressUpdateParams;

  /// First name, when set.
  @override
  @override
  String? get firstName;

  /// Last name, when set.
  @override
  @override
  String? get lastName;

  /// Company line, when set.
  @override
  @override
  String? get company;

  /// Street line 1, when set.
  @override
  @override
  String? get address1;

  /// Street line 2, when set.
  @override
  @override
  String? get address2;

  /// City, when set.
  @override
  @override
  String? get city;

  /// Postal code, when set.
  @override
  @override
  String? get postalCode;

  /// Phone, when set.
  @override
  @override
  String? get phone;

  /// Address-book label, when set.
  @override
  @override
  String? get label;

  /// ISO 3166-1 alpha-2 code, when set.
  @override
  @override
  CountryCode? get countryCode;

  /// The state or province abbreviation, when set.
  @override
  @override
  String? get stateCode;

  /// For countries without states in the database, when set.
  @override
  @override
  String? get stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  @override
  @override
  String? get zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  @override
  bool? get defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  @override
  @override
  bool? get defaultShipping;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (company != null) 'company': company,
    if (address1 != null) 'address1': address1,
    if (address2 != null) 'address2': address2,
    if (city != null) 'city': city,
    if (postalCode != null) 'postal_code': postalCode,
    if (phone != null) 'phone': phone,
    if (label != null) 'label': label,
    if (countryCode != null) 'country_code': countryCode!.toJson(),
    if (stateCode != null) 'state_code': stateCode,
    if (stateName != null) 'state_name': stateName,
    if (zipcode != null) 'zipcode': zipcode,
    if (defaultBilling != null) 'default_billing': defaultBilling,
    if (defaultShipping != null) 'default_shipping': defaultShipping,
  };
}

/// Body for `POST /companies/{id}/members`: invites a person by email.
///
/// Source: `packages/sdk/src/types/params/AddCompanyMemberParams.ts`.
/// Even an existing customer joins only by accepting the emailed
/// invitation, so this always returns the invitation.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AddCompanyMemberParams with _$AddCompanyMemberParams {
  const AddCompanyMemberParams._();

  /// Creates member-invite params.
  const factory AddCompanyMemberParams({required String customerEmail}) =
      _AddCompanyMemberParams;

  /// Invitee email.
  @override
  @override
  String get customerEmail;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'customer_email': customerEmail,
  };
}

/// Body for `POST /company_invitations/{token}/accept`.
///
/// Source: `packages/sdk/src/types/params/AcceptCompanyInvitationParams.ts`.
/// Pass a registration payload for a new account (it is created with the
/// invited email), or call authenticated to bind the invitation to the
/// signed-in customer. Defaults to `{}` upstream.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AcceptCompanyInvitationParams
    with _$AcceptCompanyInvitationParams {
  const AcceptCompanyInvitationParams._();

  /// Creates invitation-accept params.
  const factory AcceptCompanyInvitationParams({
    String? firstName,
    String? lastName,
    String? phone,
    String? password,
    String? passwordConfirmation,
  }) = _AcceptCompanyInvitationParams;

  /// First name, when registering.
  @override
  @override
  String? get firstName;

  /// Last name, when registering.
  @override
  @override
  String? get lastName;

  /// Phone, when registering.
  @override
  @override
  String? get phone;

  /// Password, when registering.
  @override
  @override
  String? get password;

  /// Password confirmation, when registering.
  @override
  @override
  String? get passwordConfirmation;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (phone != null) 'phone': phone,
    if (password != null) 'password': password,
    if (passwordConfirmation != null)
      'password_confirmation': passwordConfirmation,
  };
}
