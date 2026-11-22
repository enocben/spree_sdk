/// Group-C models: post-purchase, B2B and payment-setup shapes.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
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

import 'cart.dart';
import 'meta.dart';

/// Compares two lists element-wise; both `null` counts as equal.
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// Compares two maps element-wise; both `null` counts as equal.
bool _mapEquals(Map<String, Object?>? a, Map<String, Object?>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (final MapEntry<String, Object?> entry in a.entries) {
    if (!b.containsKey(entry.key) || b[entry.key] != entry.value) {
      return false;
    }
  }
  return true;
}

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
class ReturnReason {
  /// Creates a return reason.
  const ReturnReason({
    required this.id,
    required this.name,
    required this.active,
  });

  /// Parses a return reason from its JSON shape.
  factory ReturnReason.fromJson(Map<String, Object?> json) => ReturnReason(
    id: json['id'] as String,
    name: json['name'] as String,
    active: json['active'] as bool,
  );

  /// Unique identifier.
  final String id;

  /// Reason name.
  final String name;

  /// Whether the reason is active.
  final bool active;

  /// Serializes this reason back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'active': active,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReturnReason &&
          id == other.id &&
          name == other.name &&
          active == other.active;

  @override
  int get hashCode => Object.hash(id, name, active);
}

/// A claim reason of the store.
///
/// Source: `packages/sdk/src/types/generated/ClaimReason.ts`.
class ClaimReason {
  /// Creates a claim reason.
  const ClaimReason({
    required this.id,
    required this.name,
    required this.active,
  });

  /// Parses a claim reason from its JSON shape.
  factory ClaimReason.fromJson(Map<String, Object?> json) => ClaimReason(
    id: json['id'] as String,
    name: json['name'] as String,
    active: json['active'] as bool,
  );

  /// Unique identifier.
  final String id;

  /// Reason name.
  final String name;

  /// Whether the reason is active.
  final bool active;

  /// Serializes this reason back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'active': active,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClaimReason &&
          id == other.id &&
          name == other.name &&
          active == other.active;

  @override
  int get hashCode => Object.hash(id, name, active);
}

/// One returned unit on a return.
///
/// Source: `packages/sdk/src/types/generated/ReturnLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
class ReturnLineItem {
  /// Creates a return line item.
  const ReturnLineItem({
    required this.id,
    required this.quantity,
    required this.receivedQuantity,
    required this.resellable,
    this.preTaxAmount,
    this.includedTaxTotal,
    this.additionalTaxTotal,
    this.taxTotal,
    this.refundAmount,
    this.variantId,
    this.lineItemId,
    this.fulfillmentItemId,
    this.variant,
  });

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
  final String id;

  /// Quantity being returned.
  final int quantity;

  /// Quantity received so far.
  final int receivedQuantity;

  /// Whether the unit can be resold.
  final bool resellable;

  /// Pre-tax amount, decimal string, when reported.
  final String? preTaxAmount;

  /// Included tax total, decimal string, when reported.
  final String? includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  final String? additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  final String? taxTotal;

  /// Refund amount, decimal string, when reported.
  final String? refundAmount;

  /// Returning variant id, when reported.
  final String? variantId;

  /// Originating line item id, when reported.
  final String? lineItemId;

  /// Shipped unit coming back (the return identity), when reported.
  final String? fulfillmentItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  final Map<String, Object?>? variant;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReturnLineItem &&
          id == other.id &&
          quantity == other.quantity &&
          receivedQuantity == other.receivedQuantity &&
          resellable == other.resellable &&
          preTaxAmount == other.preTaxAmount &&
          includedTaxTotal == other.includedTaxTotal &&
          additionalTaxTotal == other.additionalTaxTotal &&
          taxTotal == other.taxTotal &&
          refundAmount == other.refundAmount &&
          variantId == other.variantId &&
          lineItemId == other.lineItemId &&
          fulfillmentItemId == other.fulfillmentItemId &&
          _mapEquals(variant, other.variant);

  @override
  int get hashCode => Object.hash(id, quantity, fulfillmentItemId);
}

/// A customer return on an order.
///
/// Source: `packages/sdk/src/types/generated/Return.ts`.
class Return {
  /// Creates a return.
  const Return({
    required this.id,
    required this.number,
    required this.status,
    this.orderId,
    this.reasonId,
    this.refundTotal,
    this.refundTaxTotal,
    this.approvedAt,
    this.receivedAt,
    this.refundedAt,
    this.canceledAt,
    this.reason,
    this.returnLineItems,
    this.customFields,
  });

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
  final String id;

  /// Return number.
  final String number;

  /// Lifecycle status.
  final ReturnStatus status;

  /// Owning order id, when reported.
  final String? orderId;

  /// Return reason id, when set (one of the store's return reasons).
  final String? reasonId;

  /// Refund total, decimal string, when reported.
  final String? refundTotal;

  /// Refund tax total, decimal string, when reported.
  final String? refundTaxTotal;

  /// Approval timestamp, when set.
  final String? approvedAt;

  /// Receipt timestamp, when set.
  final String? receivedAt;

  /// Refund timestamp, when set.
  final String? refundedAt;

  /// Cancellation timestamp, when set.
  final String? canceledAt;

  /// Expanded reason, when requested via `expand`.
  final ReturnReason? reason;

  /// Returned units, when present.
  final List<ReturnLineItem>? returnLineItems;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Return &&
          id == other.id &&
          number == other.number &&
          status == other.status &&
          orderId == other.orderId &&
          reasonId == other.reasonId &&
          refundTotal == other.refundTotal &&
          refundTaxTotal == other.refundTaxTotal &&
          approvedAt == other.approvedAt &&
          receivedAt == other.receivedAt &&
          refundedAt == other.refundedAt &&
          canceledAt == other.canceledAt &&
          reason == other.reason &&
          _listEquals(returnLineItems, other.returnLineItems) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, number, status);
}

/// One claimed unit on a claim.
///
/// Source: `packages/sdk/src/types/generated/ClaimLineItem.ts`. The
/// expanded `variant` is kept raw (see library docs).
class ClaimLineItem {
  /// Creates a claim line item.
  const ClaimLineItem({
    required this.id,
    required this.quantity,
    required this.sendReplacement,
    this.description,
    this.refundAmount,
    this.paidAmount,
    this.preTaxAmount,
    this.includedTaxTotal,
    this.additionalTaxTotal,
    this.taxTotal,
    this.variantId,
    this.replacementVariantId,
    this.lineItemId,
    this.variant,
  });

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
  final String id;

  /// Claimed quantity.
  final int quantity;

  /// Whether a replacement unit is sent.
  final bool sendReplacement;

  /// What is wrong with the item, when reported.
  final String? description;

  /// Refund amount, decimal string, when reported.
  final String? refundAmount;

  /// Paid amount, decimal string, when reported.
  final String? paidAmount;

  /// Pre-tax amount, decimal string, when reported.
  final String? preTaxAmount;

  /// Included tax total, decimal string, when reported.
  final String? includedTaxTotal;

  /// Added tax total, decimal string, when reported.
  final String? additionalTaxTotal;

  /// Tax total, decimal string, when reported.
  final String? taxTotal;

  /// Claimed variant id, when reported.
  final String? variantId;

  /// Replacement variant id, when set.
  final String? replacementVariantId;

  /// Originating line item id, when reported.
  final String? lineItemId;

  /// Expanded variant, when requested via `expand`. Kept raw.
  final Map<String, Object?>? variant;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClaimLineItem &&
          id == other.id &&
          quantity == other.quantity &&
          sendReplacement == other.sendReplacement &&
          description == other.description &&
          refundAmount == other.refundAmount &&
          paidAmount == other.paidAmount &&
          preTaxAmount == other.preTaxAmount &&
          includedTaxTotal == other.includedTaxTotal &&
          additionalTaxTotal == other.additionalTaxTotal &&
          taxTotal == other.taxTotal &&
          variantId == other.variantId &&
          replacementVariantId == other.replacementVariantId &&
          lineItemId == other.lineItemId &&
          _mapEquals(variant, other.variant);

  @override
  int get hashCode => Object.hash(id, quantity, lineItemId);
}

/// A customer claim on an order.
///
/// Source: `packages/sdk/src/types/generated/Claim.ts`.
class Claim {
  /// Creates a claim.
  const Claim({
    required this.id,
    required this.number,
    required this.status,
    this.resolution,
    this.orderId,
    this.reasonId,
    this.refundTotal,
    this.approvedAt,
    this.resolvedAt,
    this.deniedAt,
    this.canceledAt,
    this.reason,
    this.claimLineItems,
    this.customFields,
  });

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
  final String id;

  /// Claim number.
  final String number;

  /// Lifecycle status.
  final ClaimStatus status;

  /// Resolution, when resolved.
  final ClaimResolution? resolution;

  /// Owning order id, when reported.
  final String? orderId;

  /// Claim reason id, when set (one of the store's claim reasons).
  final String? reasonId;

  /// Refund total, decimal string, when reported.
  final String? refundTotal;

  /// Approval timestamp, when set.
  final String? approvedAt;

  /// Resolution timestamp, when set.
  final String? resolvedAt;

  /// Denial timestamp, when set.
  final String? deniedAt;

  /// Cancellation timestamp, when set.
  final String? canceledAt;

  /// Expanded reason, when requested via `expand`.
  final ClaimReason? reason;

  /// Claimed units, when present.
  final List<ClaimLineItem>? claimLineItems;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Claim &&
          id == other.id &&
          number == other.number &&
          status == other.status &&
          resolution == other.resolution &&
          orderId == other.orderId &&
          reasonId == other.reasonId &&
          refundTotal == other.refundTotal &&
          approvedAt == other.approvedAt &&
          resolvedAt == other.resolvedAt &&
          deniedAt == other.deniedAt &&
          canceledAt == other.canceledAt &&
          reason == other.reason &&
          _listEquals(claimLineItems, other.claimLineItems) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, number, status);
}

/// A saved credit card of the customer.
///
/// Source: `packages/sdk/src/types/generated/CreditCard.ts`.
class CreditCard {
  /// Creates a saved credit card.
  const CreditCard({
    required this.id,
    required this.brand,
    required this.last4,
    required this.month,
    required this.year,
    this.name,
    required this.isDefault,
    this.gatewayPaymentProfileId,
    this.paymentMethodId,
    this.customFields,
  });

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
  final String id;

  /// Card brand (for example `visa`).
  final String brand;

  /// Last four digits.
  final String last4;

  /// Expiry month.
  final int month;

  /// Expiry year.
  final int year;

  /// Cardholder name, when set.
  final String? name;

  /// Whether this is the default card.
  final bool isDefault;

  /// Gateway profile id, when reported.
  final String? gatewayPaymentProfileId;

  /// The payment method the card was saved with; a card is offered only
  /// for it. Null when reported as such.
  final String? paymentMethodId;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreditCard &&
          id == other.id &&
          brand == other.brand &&
          last4 == other.last4 &&
          month == other.month &&
          year == other.year &&
          name == other.name &&
          isDefault == other.isDefault &&
          gatewayPaymentProfileId == other.gatewayPaymentProfileId &&
          paymentMethodId == other.paymentMethodId &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, brand, last4, isDefault);
}

/// A payment setup session (save-method flow).
///
/// Source: `packages/sdk/src/types/generated/PaymentSetupSession.ts`.
class PaymentSetupSession {
  /// Creates a payment setup session.
  const PaymentSetupSession({
    required this.id,
    required this.status,
    this.externalId,
    this.externalClientSecret,
    required this.externalData,
    this.paymentMethodId,
    this.paymentSourceId,
    this.paymentSourceType,
    this.customerId,
    required this.paymentMethod,
  });

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
  final String id;

  /// Session status.
  final PaymentSetupSessionStatus status;

  /// Gateway-side id, when reported.
  final String? externalId;

  /// Gateway client secret, when reported.
  final String? externalClientSecret;

  /// Provider-specific data passed to the gateway.
  final Map<String, Object?> externalData;

  /// Payment method id, when reported.
  final String? paymentMethodId;

  /// Saved source id, when reported.
  final String? paymentSourceId;

  /// Saved source type, when reported.
  final String? paymentSourceType;

  /// Owning customer id, when reported.
  final String? customerId;

  /// The payment method the setup runs against.
  final PaymentMethod paymentMethod;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentSetupSession &&
          id == other.id &&
          status == other.status &&
          externalId == other.externalId &&
          externalClientSecret == other.externalClientSecret &&
          _mapEquals(externalData, other.externalData) &&
          paymentMethodId == other.paymentMethodId &&
          paymentSourceId == other.paymentSourceId &&
          paymentSourceType == other.paymentSourceType &&
          customerId == other.customerId &&
          paymentMethod == other.paymentMethod;

  @override
  int get hashCode => Object.hash(id, status, paymentMethodId);
}

/// A customer wishlist.
///
/// Source: `packages/sdk/src/types/generated/Wishlist.ts`.
class Wishlist {
  /// Creates a wishlist.
  const Wishlist({
    required this.id,
    required this.name,
    required this.token,
    required this.isDefault,
    required this.isPrivate,
    this.items,
  });

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
  final String id;

  /// Wishlist name.
  final String name;

  /// Sharing token.
  final String token;

  /// Whether this is the default wishlist.
  final bool isDefault;

  /// Whether this wishlist is private.
  final bool isPrivate;

  /// Items, when side-loaded.
  final List<WishlistItem>? items;

  /// Serializes this wishlist back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'token': token,
    'is_default': isDefault,
    'is_private': isPrivate,
    'items': items?.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Wishlist &&
          id == other.id &&
          name == other.name &&
          token == other.token &&
          isDefault == other.isDefault &&
          isPrivate == other.isPrivate &&
          _listEquals(items, other.items);

  @override
  int get hashCode => Object.hash(id, name, token);
}

/// One item on a wishlist.
///
/// Source: `packages/sdk/src/types/generated/WishlistItem.ts`. The
/// expanded `variant`/`product` are kept raw (see library docs).
class WishlistItem {
  /// Creates a wishlist item.
  const WishlistItem({
    required this.id,
    required this.variantId,
    required this.productId,
    required this.wishlistId,
    required this.quantity,
    this.variant,
    this.product,
  });

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
  final String id;

  /// Wishlisted variant id.
  final String variantId;

  /// Owning product id.
  final String productId;

  /// Owning wishlist id.
  final String wishlistId;

  /// Wanted quantity.
  final int quantity;

  /// Expanded variant, when side-loaded. Kept raw.
  final Map<String, Object?>? variant;

  /// Expanded product, when side-loaded. Kept raw.
  final Map<String, Object?>? product;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishlistItem &&
          id == other.id &&
          variantId == other.variantId &&
          productId == other.productId &&
          wishlistId == other.wishlistId &&
          quantity == other.quantity &&
          _mapEquals(variant, other.variant) &&
          _mapEquals(product, other.product);

  @override
  int get hashCode => Object.hash(id, variantId, wishlistId);
}

/// One ancestor on a company's path.
///
/// Source: inline `Company['ancestors'][number]` in
/// `packages/sdk/src/types/generated/Company.ts`.
class CompanyAncestor {
  /// Creates a company ancestor.
  const CompanyAncestor({
    required this.id,
    required this.name,
    required this.kind,
  });

  /// Parses an ancestor from its JSON shape.
  factory CompanyAncestor.fromJson(Map<String, Object?> json) =>
      CompanyAncestor(
        id: json['id'] as String,
        name: json['name'] as String,
        kind: json['kind'] as String,
      );

  /// Ancestor id.
  final String id;

  /// Ancestor name.
  final String name;

  /// Ancestor kind, kept as reported.
  final String kind;

  /// Serializes this ancestor back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'kind': kind,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAncestor &&
          id == other.id &&
          name == other.name &&
          kind == other.kind;

  @override
  int get hashCode => Object.hash(id, name, kind);
}

/// A B2B company node.
///
/// Source: `packages/sdk/src/types/generated/Company.ts`.
class Company {
  /// Creates a company.
  const Company({
    required this.id,
    required this.name,
    required this.kind,
    required this.poNumberRequired,
    this.parentId,
    required this.ancestors,
    this.customFields,
  });

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
  final String id;

  /// Company name.
  final String name;

  /// Node kind.
  final CompanyKind kind;

  /// Whether purchase orders require a PO number.
  final bool poNumberRequired;

  /// Parent node id, when nested.
  final String? parentId;

  /// Ancestor path.
  final List<CompanyAncestor> ancestors;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Company &&
          id == other.id &&
          name == other.name &&
          kind == other.kind &&
          poNumberRequired == other.poNumberRequired &&
          parentId == other.parentId &&
          _listEquals(ancestors, other.ancestors) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, name, kind);
}

/// A customer's standing on a company node.
///
/// Source: `packages/sdk/src/types/generated/CompanyMembership.ts`.
class CompanyMembership {
  /// Creates a company membership.
  const CompanyMembership({
    required this.id,
    required this.companyId,
    required this.customerId,
    this.email,
  });

  /// Parses a membership from its JSON shape.
  factory CompanyMembership.fromJson(Map<String, Object?> json) =>
      CompanyMembership(
        id: json['id'] as String,
        companyId: json['company_id'] as String,
        customerId: json['customer_id'] as String,
        email: json['email'] as String?,
      );

  /// Unique identifier.
  final String id;

  /// Owning company node id.
  final String companyId;

  /// Member customer id.
  final String customerId;

  /// Member email, when reported.
  final String? email;

  /// Serializes this membership back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'company_id': companyId,
    'customer_id': customerId,
    'email': email,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyMembership &&
          id == other.id &&
          companyId == other.companyId &&
          customerId == other.customerId &&
          email == other.email;

  @override
  int get hashCode => Object.hash(id, companyId, customerId);
}

/// A pending invitation to join a company.
///
/// Source: `packages/sdk/src/types/generated/CompanyInvitation.ts`.
class CompanyInvitation {
  /// Creates a company invitation.
  const CompanyInvitation({
    required this.id,
    required this.email,
    this.expiresAt,
    required this.companyId,
    required this.status,
  });

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
  final String id;

  /// Invitee email.
  final String email;

  /// Expiry timestamp, when set.
  final String? expiresAt;

  /// Inviting company node id.
  final String companyId;

  /// Invitation status.
  final CompanyInvitationStatus status;

  /// Serializes this invitation back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'email': email,
    'expires_at': expiresAt,
    'company_id': companyId,
    'status': status.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyInvitation &&
          id == other.id &&
          email == other.email &&
          expiresAt == other.expiresAt &&
          companyId == other.companyId &&
          status == other.status;

  @override
  int get hashCode => Object.hash(id, email, companyId, status);
}

/// One entry of the signed-in buyer's company directory: the membership
/// plus its node.
///
/// Source: `packages/sdk/src/store-client.ts` (`account.companies` returns
/// `{data: Array<CompanyMembership & {company: Company}>}`).
class AccountCompany {
  /// Creates a directory entry.
  const AccountCompany({required this.membership, required this.company});

  /// Parses an entry from its JSON shape (membership fields plus
  /// an embedded `company` object).
  factory AccountCompany.fromJson(Map<String, Object?> json) => AccountCompany(
    membership: CompanyMembership.fromJson(json),
    company: Company.fromJson(json['company'] as Map<String, Object?>),
  );

  /// The buyer's membership on the node.
  final CompanyMembership membership;

  /// The company node.
  final Company company;

  /// Serializes this entry back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    ...membership.toJson(),
    'company': company.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountCompany &&
          membership == other.membership &&
          company == other.company;

  @override
  int get hashCode => Object.hash(membership, company);
}

/// An invitation looked up by its email token, with its context.
///
/// Source: `packages/sdk/src/store-client.ts`
/// (`companyInvitations.lookup` returns
/// `CompanyInvitation & {company_name, store_name}`).
class CompanyInvitationLookup {
  /// Creates an invitation lookup result.
  const CompanyInvitationLookup({
    required this.invitation,
    required this.companyName,
    required this.storeName,
  });

  /// Parses a lookup result from its JSON shape.
  factory CompanyInvitationLookup.fromJson(Map<String, Object?> json) =>
      CompanyInvitationLookup(
        invitation: CompanyInvitation.fromJson(json),
        companyName: json['company_name'] as String,
        storeName: json['store_name'] as String,
      );

  /// The looked-up invitation.
  final CompanyInvitation invitation;

  /// Inviting company name.
  final String companyName;

  /// Owning store name.
  final String storeName;

  /// Serializes this result back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    ...invitation.toJson(),
    'company_name': companyName,
    'store_name': storeName,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyInvitationLookup &&
          invitation == other.invitation &&
          companyName == other.companyName &&
          storeName == other.storeName;

  @override
  int get hashCode => Object.hash(invitation, companyName, storeName);
}

/// One returned unit on a `POST /orders/{id}/returns` body.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`
/// (`items` entry: "The shipped unit coming back").
class CreateReturnItem {
  /// Creates a return item.
  const CreateReturnItem({
    required this.fulfillmentItemId,
    required this.quantity,
  });

  /// The shipped unit coming back.
  final String fulfillmentItemId;

  /// Quantity coming back.
  final int quantity;

  /// Serializes this item to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'fulfillment_item_id': fulfillmentItemId,
    'quantity': quantity,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateReturnItem &&
          fulfillmentItemId == other.fulfillmentItemId &&
          quantity == other.quantity;

  @override
  int get hashCode => Object.hash(fulfillmentItemId, quantity);
}

/// Body for `POST /orders/{id}/returns`.
///
/// Source: `packages/sdk/src/types/params/CreateReturnParams.ts`. A
/// rejected request comes back as a 422 (verified: contract section 5,
/// `returns.create.validate`).
class CreateReturnParams {
  /// Creates return params.
  const CreateReturnParams({required this.items, this.reasonId, this.memo});

  /// The fulfilled units coming back: `fulfillment_item_id` rather than a
  /// line item id, because a return is against a shipped unit.
  final List<CreateReturnItem> items;

  /// One of the store's return reasons, when set.
  final String? reasonId;

  /// Customer memo, when set.
  final String? memo;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'items': items.map((e) => e.toJson()).toList(),
    if (reasonId != null) 'reason_id': reasonId,
    if (memo != null) 'memo': memo,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateReturnParams &&
          _listEquals(items, other.items) &&
          reasonId == other.reasonId &&
          memo == other.memo;

  @override
  int get hashCode => Object.hash(Object.hashAll(items), reasonId, memo);
}

/// One claimed unit on a `POST /orders/{id}/claims` body.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`
/// (`items` entry).
class CreateClaimItem {
  /// Creates a claim item.
  const CreateClaimItem({
    required this.lineItemId,
    required this.quantity,
    this.description,
  });

  /// Originating line item id.
  final String lineItemId;

  /// Claimed quantity.
  final int quantity;

  /// What is wrong with the item, when set.
  final String? description;

  /// Serializes this item to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'line_item_id': lineItemId,
    'quantity': quantity,
    if (description != null) 'description': description,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateClaimItem &&
          lineItemId == other.lineItemId &&
          quantity == other.quantity &&
          description == other.description;

  @override
  int get hashCode => Object.hash(lineItemId, quantity, description);
}

/// Body for `POST /orders/{id}/claims`.
///
/// Source: `packages/sdk/src/types/params/CreateClaimParams.ts`.
class CreateClaimParams {
  /// Creates claim params.
  const CreateClaimParams({required this.items, this.reasonId, this.memo});

  /// The claimed units.
  final List<CreateClaimItem> items;

  /// One of the store's claim reasons, when set.
  final String? reasonId;

  /// Customer memo, when set.
  final String? memo;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'items': items.map((e) => e.toJson()).toList(),
    if (reasonId != null) 'reason_id': reasonId,
    if (memo != null) 'memo': memo,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateClaimParams &&
          _listEquals(items, other.items) &&
          reasonId == other.reasonId &&
          memo == other.memo;

  @override
  int get hashCode => Object.hash(Object.hashAll(items), reasonId, memo);
}

/// Body for `POST /wishlists`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistParams.ts`.
class CreateWishlistParams {
  /// Creates wishlist params.
  const CreateWishlistParams({
    required this.name,
    this.isPrivate,
    this.isDefault,
  });

  /// Wishlist name.
  final String name;

  /// Whether the wishlist is private, when set.
  final bool? isPrivate;

  /// Whether this becomes the default wishlist, when set.
  final bool? isDefault;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'name': name,
    if (isPrivate != null) 'is_private': isPrivate,
    if (isDefault != null) 'is_default': isDefault,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateWishlistParams &&
          name == other.name &&
          isPrivate == other.isPrivate &&
          isDefault == other.isDefault;

  @override
  int get hashCode => Object.hash(name, isPrivate, isDefault);
}

/// Body for `PATCH /wishlists/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistParams.ts`.
class UpdateWishlistParams {
  /// Creates wishlist update params.
  const UpdateWishlistParams({this.name, this.isPrivate, this.isDefault});

  /// New name, when set.
  final String? name;

  /// New privacy flag, when set.
  final bool? isPrivate;

  /// New default flag, when set.
  final bool? isDefault;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (name != null) 'name': name,
    if (isPrivate != null) 'is_private': isPrivate,
    if (isDefault != null) 'is_default': isDefault,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateWishlistParams &&
          name == other.name &&
          isPrivate == other.isPrivate &&
          isDefault == other.isDefault;

  @override
  int get hashCode => Object.hash(name, isPrivate, isDefault);
}

/// Body for `POST /wishlists/{id}/items`.
///
/// Source: `packages/sdk/src/types/params/CreateWishlistItemParams.ts`.
class CreateWishlistItemParams {
  /// Creates wishlist item params.
  const CreateWishlistItemParams({required this.variantId, this.quantity});

  /// Wishlisted variant id.
  final String variantId;

  /// Wanted quantity, when set.
  final int? quantity;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'variant_id': variantId,
    if (quantity != null) 'quantity': quantity,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateWishlistItemParams &&
          variantId == other.variantId &&
          quantity == other.quantity;

  @override
  int get hashCode => Object.hash(variantId, quantity);
}

/// Body for `PATCH /wishlists/{id}/items/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateWishlistItemParams.ts`.
class UpdateWishlistItemParams {
  /// Creates wishlist item update params.
  const UpdateWishlistItemParams({this.variantId, this.quantity});

  /// Moves the item to another variant, when set.
  final String? variantId;

  /// New quantity, when set.
  final int? quantity;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (variantId != null) 'variant_id': variantId,
    if (quantity != null) 'quantity': quantity,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateWishlistItemParams &&
          variantId == other.variantId &&
          quantity == other.quantity;

  @override
  int get hashCode => Object.hash(variantId, quantity);
}

/// Body for `POST /customers/me/payment_setup_sessions`.
///
/// Source: `packages/sdk/src/types/params/CreatePaymentSetupSessionParams.ts`.
class CreatePaymentSetupSessionParams {
  /// Creates payment setup session params.
  const CreatePaymentSetupSessionParams({
    required this.paymentMethodId,
    this.externalData,
  });

  /// Payment method id the setup runs against.
  final String paymentMethodId;

  /// Provider-specific data passed to the gateway, when set.
  final Map<String, Object?>? externalData;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'payment_method_id': paymentMethodId,
    if (externalData != null) 'external_data': externalData,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatePaymentSetupSessionParams &&
          paymentMethodId == other.paymentMethodId &&
          _mapEquals(externalData, other.externalData);

  @override
  int get hashCode => Object.hash(paymentMethodId, externalData);
}

/// Body for `PATCH /customers/me/payment_setup_sessions/{id}/complete`.
///
/// Source: `packages/sdk/src/types/params/CompletePaymentSetupSessionParams.ts`.
class CompletePaymentSetupSessionParams {
  /// Creates payment setup session completion params.
  const CompletePaymentSetupSessionParams({this.externalData});

  /// Provider-specific completion data, when set.
  final Map<String, Object?>? externalData;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (externalData != null) 'external_data': externalData,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompletePaymentSetupSessionParams &&
          _mapEquals(externalData, other.externalData);

  @override
  int get hashCode => externalData.hashCode;
}

/// Body for `PATCH /companies/{id}`.
///
/// Source: `packages/sdk/src/types/params/UpdateCompanyParams.ts`.
class UpdateCompanyParams {
  /// Creates company update params.
  const UpdateCompanyParams({this.name});

  /// New company name, when set.
  final String? name;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (name != null) 'name': name,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateCompanyParams && name == other.name;

  @override
  int get hashCode => name.hashCode;
}

/// Body for `POST /companies/{id}/addresses`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressCreateParams.ts`.
class CompanyAddressCreateParams {
  /// Creates company address params.
  const CompanyAddressCreateParams({
    required this.firstName,
    required this.lastName,
    this.company,
    required this.address1,
    this.address2,
    required this.city,
    this.postalCode,
    this.phone,
    this.label,
    required this.countryCode,
    this.stateCode,
    this.stateName,
    this.zipcode,
    this.defaultBilling,
    this.defaultShipping,
  });

  /// First name.
  final String firstName;

  /// Last name.
  final String lastName;

  /// Company line, when set.
  final String? company;

  /// Street line 1.
  final String address1;

  /// Street line 2, when set.
  final String? address2;

  /// City.
  final String city;

  /// Postal code, when set.
  final String? postalCode;

  /// Phone, when set.
  final String? phone;

  /// Address-book label, when set.
  final String? label;

  /// ISO 3166-1 alpha-2 code, such as `US`.
  final CountryCode countryCode;

  /// The state or province abbreviation, such as `NY`, when set.
  final String? stateCode;

  /// For countries without states in the database, when set.
  final String? stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  final String? zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  final bool? defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  final bool? defaultShipping;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAddressCreateParams &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          company == other.company &&
          address1 == other.address1 &&
          address2 == other.address2 &&
          city == other.city &&
          postalCode == other.postalCode &&
          phone == other.phone &&
          label == other.label &&
          countryCode == other.countryCode &&
          stateCode == other.stateCode &&
          stateName == other.stateName &&
          zipcode == other.zipcode &&
          defaultBilling == other.defaultBilling &&
          defaultShipping == other.defaultShipping;

  @override
  int get hashCode => Object.hash(firstName, lastName, address1, city);
}

/// Body for `PATCH /companies/{id}/addresses/{id}`.
///
/// Source: `packages/sdk/src/types/params/CompanyAddressUpdateParams.ts`.
class CompanyAddressUpdateParams {
  /// Creates company address update params.
  const CompanyAddressUpdateParams({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.postalCode,
    this.phone,
    this.label,
    this.countryCode,
    this.stateCode,
    this.stateName,
    this.zipcode,
    this.defaultBilling,
    this.defaultShipping,
  });

  /// First name, when set.
  final String? firstName;

  /// Last name, when set.
  final String? lastName;

  /// Company line, when set.
  final String? company;

  /// Street line 1, when set.
  final String? address1;

  /// Street line 2, when set.
  final String? address2;

  /// City, when set.
  final String? city;

  /// Postal code, when set.
  final String? postalCode;

  /// Phone, when set.
  final String? phone;

  /// Address-book label, when set.
  final String? label;

  /// ISO 3166-1 alpha-2 code, when set.
  final CountryCode? countryCode;

  /// The state or province abbreviation, when set.
  final String? stateCode;

  /// For countries without states in the database, when set.
  final String? stateName;

  /// Deprecated: use [postalCode]. Removed in 6.5.
  final String? zipcode;

  /// True makes this the node's default billing address, false gives that
  /// up, and leaving it out changes nothing.
  final bool? defaultBilling;

  /// True makes this the node's default shipping address, false gives that
  /// up, and leaving it out changes nothing.
  final bool? defaultShipping;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyAddressUpdateParams &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          company == other.company &&
          address1 == other.address1 &&
          address2 == other.address2 &&
          city == other.city &&
          postalCode == other.postalCode &&
          phone == other.phone &&
          label == other.label &&
          countryCode == other.countryCode &&
          stateCode == other.stateCode &&
          stateName == other.stateName &&
          zipcode == other.zipcode &&
          defaultBilling == other.defaultBilling &&
          defaultShipping == other.defaultShipping;

  @override
  int get hashCode => Object.hash(firstName, lastName, address1, city);
}

/// Body for `POST /companies/{id}/members`: invites a person by email.
///
/// Source: `packages/sdk/src/types/params/AddCompanyMemberParams.ts`.
/// Even an existing customer joins only by accepting the emailed
/// invitation, so this always returns the invitation.
class AddCompanyMemberParams {
  /// Creates member-invite params.
  const AddCompanyMemberParams({required this.customerEmail});

  /// Invitee email.
  final String customerEmail;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'customer_email': customerEmail,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddCompanyMemberParams && customerEmail == other.customerEmail;

  @override
  int get hashCode => customerEmail.hashCode;
}

/// Body for `POST /company_invitations/{token}/accept`.
///
/// Source: `packages/sdk/src/types/params/AcceptCompanyInvitationParams.ts`.
/// Pass a registration payload for a new account (it is created with the
/// invited email), or call authenticated to bind the invitation to the
/// signed-in customer. Defaults to `{}` upstream.
class AcceptCompanyInvitationParams {
  /// Creates invitation-accept params.
  const AcceptCompanyInvitationParams({
    this.firstName,
    this.lastName,
    this.phone,
    this.password,
    this.passwordConfirmation,
  });

  /// First name, when registering.
  final String? firstName;

  /// Last name, when registering.
  final String? lastName;

  /// Phone, when registering.
  final String? phone;

  /// Password, when registering.
  final String? password;

  /// Password confirmation, when registering.
  final String? passwordConfirmation;

  /// Serializes these params to their JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    if (firstName != null) 'first_name': firstName,
    if (lastName != null) 'last_name': lastName,
    if (phone != null) 'phone': phone,
    if (password != null) 'password': password,
    if (passwordConfirmation != null)
      'password_confirmation': passwordConfirmation,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AcceptCompanyInvitationParams &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          phone == other.phone &&
          password == other.password &&
          passwordConfirmation == other.passwordConfirmation;

  @override
  int get hashCode => Object.hash(firstName, lastName, phone);
}
