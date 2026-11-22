/// Cart and checkout models.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Cart,LineItem,Address,
///   AddressOwner,Fulfillment,DeliveryRate,DeliveryMethod,Delivery,
///   StockLocation,FreightSummary,Payment,PaymentMethod,GiftCard,StoreCredit,
///   TaxLine,Fee,AppliedPromotion,Discount,DigitalLink}.ts` and
///   `packages/sdk/src/types/index.ts` (`CartWarning`, `CheckoutRequirement`,
///   deprecated `Discount = AppliedPromotion` alias);
/// * SPEC `store.yaml#/components/schemas/` for the same names
///   (`Discount` carries `code`/`value`/`amount`; `AppliedPromotion` carries
///   `promotion_id`/`name`/`code`/`amount`);
/// * contracts: `docs/research/store-api-contract.md` §4 (cart ops, guest
///   credential via `spreeToken`, discount-code apply/remove bodies
///   `{code}`, store-credit apply `{amount?}` decimal string).
///
/// Task-label mapping: the brief's `Adjustment` is covered by the three
/// upstream/SPEC adjustment-breakdown types [AppliedPromotion], [Fee] and
/// [TaxLine] (no standalone `Adjustment` serializer exists upstream —
/// verified: no `Adjustment.ts` in `packages/sdk/src/types/generated/`);
/// `Shipment/rate` is covered by [Fulfillment], [DeliveryRate],
/// [DeliveryMethod], [Delivery] and [StockLocation] (no `Shipment`
/// serializer exists upstream — verified: no `Shipment.ts`); `DiscountCode`
/// mirrors the SPEC `Discount` schema plus the `{code}` apply/remove
/// payloads (contract §4, `SRC 672/683`).
library;

import 'meta.dart';
import 'product.dart';
import 'taxons.dart';

/// Compares two lists element-wise; both `null` counts as equal.
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// Owner of an address-book entry.
///
/// Source: `packages/sdk/src/types/generated/AddressOwner.ts`;
/// SPEC `store.yaml#/components/schemas/AddressOwner`.
class AddressOwner {
  /// Creates an address owner.
  const AddressOwner({required this.id, required this.type, this.name});

  /// Parses an address owner from its JSON shape.
  factory AddressOwner.fromJson(Map<String, Object?> json) => AddressOwner(
    id: json['id'] as String,
    type: AddressOwnerType.fromJson(json['type']),
    name: json['name'] as String?,
  );

  /// Owner id.
  final String id;

  /// Owner kind (built-ins; extensions may add more).
  final AddressOwnerType type;

  /// Owner name, when reported.
  final String? name;

  /// Serializes this owner back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': type.toJson(),
    'name': name,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressOwner &&
          id == other.id &&
          type == other.type &&
          name == other.name;

  @override
  int get hashCode => Object.hash(id, type, name);
}

/// A postal address: cart address or address-book entry.
///
/// Source: `packages/sdk/src/types/generated/Address.ts`;
/// SPEC `store.yaml#/components/schemas/Address`.
class Address {
  /// Creates an address.
  const Address({
    required this.id,
    this.label,
    this.firstName,
    this.lastName,
    required this.fullName,
    this.address1,
    this.address2,
    this.postalCode,
    this.city,
    this.phone,
    this.company,
    required this.countryName,
    required this.countryCode,
    this.stateText,
    this.stateCode,
    required this.quickCheckout,
    required this.isDefaultBilling,
    required this.isDefaultShipping,
    this.stateAbbr,
    required this.countryIso,
    this.stateName,
    this.owner,
    this.customFields,
  });

  /// Parses an address from its JSON shape.
  factory Address.fromJson(Map<String, Object?> json) => Address(
    id: json['id'] as String,
    label: json['label'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    fullName: json['full_name'] as String,
    address1: json['address1'] as String?,
    address2: json['address2'] as String?,
    postalCode: json['postal_code'] as String?,
    city: json['city'] as String?,
    phone: json['phone'] as String?,
    company: json['company'] as String?,
    countryName: json['country_name'] as String,
    countryCode: CountryCode.fromJson(json['country_code']),
    stateText: json['state_text'] as String?,
    stateCode: json['state_code'] as String?,
    quickCheckout: json['quick_checkout'] as bool,
    isDefaultBilling: json['is_default_billing'] as bool,
    isDefaultShipping: json['is_default_shipping'] as bool,
    stateAbbr: json['state_abbr'] as String?,
    countryIso: json['country_iso'] as String,
    stateName: json['state_name'] as String?,
    owner: json['owner'] == null
        ? null
        : AddressOwner.fromJson(json['owner'] as Map<String, Object?>),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Address-book label, when set.
  final String? label;

  /// First name, when set.
  final String? firstName;

  /// Last name, when set.
  final String? lastName;

  /// Computed full name.
  final String fullName;

  /// Street line 1, when set.
  final String? address1;

  /// Street line 2, when set.
  final String? address2;

  /// Postal code, when set.
  final String? postalCode;

  /// City, when set.
  final String? city;

  /// Phone, when set.
  final String? phone;

  /// Company, when set.
  final String? company;

  /// Country name, as reported by the API.
  final String countryName;

  /// ISO country code.
  final CountryCode countryCode;

  /// State text, when set.
  final String? stateText;

  /// ISO state code, when set.
  final String? stateCode;

  /// Whether this address was created via quick checkout.
  final bool quickCheckout;

  /// Whether this is the default billing address.
  final bool isDefaultBilling;

  /// Whether this is the default shipping address.
  final bool isDefaultShipping;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  final String? stateAbbr;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  final String countryIso;

  /// State name, when set.
  final String? stateName;

  /// Address-book origin, when reported (see contract §4:
  /// `carts.addresses.list`).
  final AddressOwner? owner;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this address back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'label': label,
    'first_name': firstName,
    'last_name': lastName,
    'full_name': fullName,
    'address1': address1,
    'address2': address2,
    'postal_code': postalCode,
    'city': city,
    'phone': phone,
    'company': company,
    'country_name': countryName,
    'country_code': countryCode.toJson(),
    'state_text': stateText,
    'state_code': stateCode,
    'quick_checkout': quickCheckout,
    'is_default_billing': isDefaultBilling,
    'is_default_shipping': isDefaultShipping,
    'state_abbr': stateAbbr,
    'country_iso': countryIso,
    'state_name': stateName,
    'owner': owner?.toJson(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          id == other.id &&
          label == other.label &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          fullName == other.fullName &&
          address1 == other.address1 &&
          address2 == other.address2 &&
          postalCode == other.postalCode &&
          city == other.city &&
          phone == other.phone &&
          company == other.company &&
          countryName == other.countryName &&
          countryCode == other.countryCode &&
          stateText == other.stateText &&
          stateCode == other.stateCode &&
          quickCheckout == other.quickCheckout &&
          isDefaultBilling == other.isDefaultBilling &&
          isDefaultShipping == other.isDefaultShipping &&
          stateAbbr == other.stateAbbr &&
          countryIso == other.countryIso &&
          stateName == other.stateName &&
          owner == other.owner &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(
    id,
    fullName,
    countryName,
    countryCode,
    quickCheckout,
    isDefaultBilling,
    isDefaultShipping,
    countryIso,
  );
}

/// A problem found with the cart (e.g. an item removed after a stock change).
///
/// Source: inline `Cart['warnings'][number]`, aliased as `CartWarning` in
/// `packages/sdk/src/types/index.ts`.
class CartWarning {
  /// Creates a cart warning.
  const CartWarning({
    required this.code,
    required this.message,
    this.lineItemId,
    this.variantId,
    this.itemIndex,
  });

  /// Parses a cart warning from its JSON shape.
  factory CartWarning.fromJson(Map<String, Object?> json) => CartWarning(
    code: json['code'] as String,
    message: json['message'] as String,
    lineItemId: json['line_item_id'] as String?,
    variantId: json['variant_id'] as String?,
    itemIndex: (json['item_index'] as num?)?.toInt(),
  );

  /// Machine-readable code.
  final String code;

  /// Human-readable message.
  final String message;

  /// Affected line item, when reported.
  final String? lineItemId;

  /// Affected variant, when reported.
  final String? variantId;

  /// Affected item index, when reported.
  final int? itemIndex;

  /// Serializes this warning back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'code': code,
    'message': message,
    'line_item_id': lineItemId,
    'variant_id': variantId,
    'item_index': itemIndex,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartWarning &&
          code == other.code &&
          message == other.message &&
          lineItemId == other.lineItemId &&
          variantId == other.variantId &&
          itemIndex == other.itemIndex;

  @override
  int get hashCode =>
      Object.hash(code, message, lineItemId, variantId, itemIndex);
}

/// A single unsatisfied checkout prerequisite.
///
/// Source: inline `Cart['requirements'][number]`, aliased as
/// `CheckoutRequirement` in `packages/sdk/src/types/index.ts`.
class CheckoutRequirement {
  /// Creates a checkout requirement.
  const CheckoutRequirement({
    required this.step,
    required this.field,
    required this.code,
    required this.message,
  });

  /// Parses a requirement from its JSON shape.
  factory CheckoutRequirement.fromJson(Map<String, Object?> json) =>
      CheckoutRequirement(
        step: json['step'] as String,
        field: json['field'] as String,
        code: json['code'] as String,
        message: json['message'] as String,
      );

  /// Checkout step the prerequisite belongs to (e.g. `address`).
  final String step;

  /// Field that still needs satisfying (e.g. `shipping_address`).
  final String field;

  /// Machine-readable code.
  final String code;

  /// Human-readable message.
  final String message;

  /// Serializes this requirement back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'step': step,
    'field': field,
    'code': code,
    'message': message,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckoutRequirement &&
          step == other.step &&
          field == other.field &&
          code == other.code &&
          message == other.message;

  @override
  int get hashCode => Object.hash(step, field, code, message);
}

/// One tax line: a single applied tax.
///
/// Source: `packages/sdk/src/types/generated/TaxLine.ts`;
/// SPEC `store.yaml#/components/schemas/TaxLine`.
class TaxLine {
  /// Creates a tax line.
  const TaxLine({
    required this.id,
    required this.label,
    required this.included,
    required this.credit,
    this.rate,
    this.taxRateId,
    this.lineItemId,
    this.fulfillmentId,
    this.feeId,
    this.returnLineItemId,
    this.claimLineItemId,
    this.exchangeLineItemId,
    this.amount,
  });

  /// Parses a tax line from its JSON shape.
  factory TaxLine.fromJson(Map<String, Object?> json) => TaxLine(
    id: json['id'] as String,
    label: json['label'] as String,
    included: json['included'] as bool,
    credit: json['credit'] as bool,
    rate: json['rate'] as String?,
    taxRateId: json['tax_rate_id'] as String?,
    lineItemId: json['line_item_id'] as String?,
    fulfillmentId: json['fulfillment_id'] as String?,
    feeId: json['fee_id'] as String?,
    returnLineItemId: json['return_line_item_id'] as String?,
    claimLineItemId: json['claim_line_item_id'] as String?,
    exchangeLineItemId: json['exchange_line_item_id'] as String?,
    amount: json['amount'] as String?,
  );

  /// Unique identifier.
  final String id;

  /// Tax label.
  final String label;

  /// Whether the tax is included in prices (vs added on top).
  final bool included;

  /// Whether this line is a credit.
  final bool credit;

  /// Tax rate, decimal string, when reported.
  final String? rate;

  /// Owning tax rate id, when reported.
  final String? taxRateId;

  /// Owning line item id, when set.
  final String? lineItemId;

  /// Owning fulfillment id, when set.
  final String? fulfillmentId;

  /// Owning fee id, when set.
  final String? feeId;

  /// Owning return line item id, when set.
  final String? returnLineItemId;

  /// Owning claim line item id, when set.
  final String? claimLineItemId;

  /// Owning exchange line item id, when set.
  final String? exchangeLineItemId;

  /// Tax amount, decimal string, when reported.
  final String? amount;

  /// Serializes this tax line back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'label': label,
    'included': included,
    'credit': credit,
    'rate': rate,
    'tax_rate_id': taxRateId,
    'line_item_id': lineItemId,
    'fulfillment_id': fulfillmentId,
    'fee_id': feeId,
    'return_line_item_id': returnLineItemId,
    'claim_line_item_id': claimLineItemId,
    'exchange_line_item_id': exchangeLineItemId,
    'amount': amount,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaxLine &&
          id == other.id &&
          label == other.label &&
          included == other.included &&
          credit == other.credit &&
          rate == other.rate &&
          taxRateId == other.taxRateId &&
          lineItemId == other.lineItemId &&
          fulfillmentId == other.fulfillmentId &&
          feeId == other.feeId &&
          returnLineItemId == other.returnLineItemId &&
          claimLineItemId == other.claimLineItemId &&
          exchangeLineItemId == other.exchangeLineItemId &&
          amount == other.amount;

  @override
  int get hashCode => Object.hash(id, label, included, credit, amount);
}

/// A promotion applied to a cart or order.
///
/// Source: `packages/sdk/src/types/generated/AppliedPromotion.ts`;
/// SPEC `store.yaml#/components/schemas/AppliedPromotion`. Upstream renamed
/// the legacy `Discount` alias to this (the type of `cart.discounts` and
/// `order.discounts`).
class AppliedPromotion {
  /// Creates an applied promotion.
  const AppliedPromotion({
    required this.id,
    required this.promotionId,
    required this.name,
    this.description,
    this.code,
    this.amount,
  });

  /// Parses an applied promotion from its JSON shape.
  factory AppliedPromotion.fromJson(Map<String, Object?> json) =>
      AppliedPromotion(
        id: json['id'] as String,
        promotionId: json['promotion_id'] as String,
        name: json['name'] as String,
        description: json['description'] as String?,
        code: json['code'] as String?,
        amount: json['amount'] as String?,
      );

  /// Unique identifier.
  final String id;

  /// Owning promotion id.
  final String promotionId;

  /// Promotion name.
  final String name;

  /// Promotion description, when set.
  final String? description;

  /// Redeemed code, when the promotion used one.
  final String? code;

  /// Discount amount as a negative decimal string, when reported.
  final String? amount;

  /// Serializes this promotion back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'promotion_id': promotionId,
    'name': name,
    'description': description,
    'code': code,
    'amount': amount,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppliedPromotion &&
          id == other.id &&
          promotionId == other.promotionId &&
          name == other.name &&
          description == other.description &&
          code == other.code &&
          amount == other.amount;

  @override
  int get hashCode =>
      Object.hash(id, promotionId, name, description, code, amount);
}

/// A discount-code record: code, kind, value and applied amount.
///
/// Mirrors the SPEC `Discount` schema (which carries `code`, `value` and
/// decimal-string `amount`) and the `{code}` apply/remove payloads of
/// `POST/DELETE /carts/{id}/discount_codes` (contract §4, `SRC 672/683`).
/// Sources: `packages/sdk/src/types/generated/Discount.ts`;
/// SPEC `store.yaml#/components/schemas/Discount`.
class DiscountCode {
  /// Creates a discount-code record.
  const DiscountCode({
    required this.id,
    required this.label,
    required this.kind,
    this.code,
    this.valueType,
    this.value,
    this.promotionId,
    this.lineItemId,
    this.fulfillmentId,
    this.amount,
  });

  /// Parses a discount-code record from its JSON shape.
  ///
  /// Also accepts the minimal `{code}` apply payload shape: absent `id`,
  /// `label` and `kind` fall back to `''` and [DiscountKind.unknown].
  factory DiscountCode.fromJson(Map<String, Object?> json) => DiscountCode(
    id: json['id'] as String? ?? '',
    label: json['label'] as String? ?? '',
    kind: DiscountKind.fromJson(json['kind']),
    code: json['code'] as String?,
    valueType: json['value_type'] as String?,
    value: json['value'] as String?,
    promotionId: json['promotion_id'] as String?,
    lineItemId: json['line_item_id'] as String?,
    fulfillmentId: json['fulfillment_id'] as String?,
    amount: json['amount'] as String?,
  );

  /// Unique identifier (absent in `{code}` apply payloads).
  final String id;

  /// Discount label (absent in `{code}` apply payloads).
  final String label;

  /// Discount origin: promotion rule or manual adjustment.
  final DiscountKind kind;

  /// The redeemed code, when reported.
  final String? code;

  /// Value type, when reported (open string).
  final String? valueType;

  /// Value, decimal string, when reported.
  final String? value;

  /// Owning promotion id, when reported.
  final String? promotionId;

  /// Owning line item id, when set.
  final String? lineItemId;

  /// Owning fulfillment id, when set.
  final String? fulfillmentId;

  /// Applied amount, decimal string, when reported.
  final String? amount;

  /// Serializes this record back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'label': label,
    'kind': kind.toJson(),
    'code': code,
    'value_type': valueType,
    'value': value,
    'promotion_id': promotionId,
    'line_item_id': lineItemId,
    'fulfillment_id': fulfillmentId,
    'amount': amount,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscountCode &&
          id == other.id &&
          label == other.label &&
          kind == other.kind &&
          code == other.code &&
          valueType == other.valueType &&
          value == other.value &&
          promotionId == other.promotionId &&
          lineItemId == other.lineItemId &&
          fulfillmentId == other.fulfillmentId &&
          amount == other.amount;

  @override
  int get hashCode => Object.hash(id, label, kind, code, amount);
}

/// A fee charged on a cart or order (handling, duty, …).
///
/// Source: `packages/sdk/src/types/generated/Fee.ts`;
/// SPEC `store.yaml#/components/schemas/Fee`.
class Fee {
  /// Creates a fee.
  const Fee({
    required this.id,
    required this.label,
    required this.kind,
    this.lineItemId,
    this.fulfillmentId,
    this.amount,
  });

  /// Parses a fee from its JSON shape.
  factory Fee.fromJson(Map<String, Object?> json) => Fee(
    id: json['id'] as String,
    label: json['label'] as String,
    kind: FeeKind.fromJson(json['kind']),
    lineItemId: json['line_item_id'] as String?,
    fulfillmentId: json['fulfillment_id'] as String?,
    amount: json['amount'] as String?,
  );

  /// Unique identifier.
  final String id;

  /// Fee label.
  final String label;

  /// What sort of charge this is. Extensions may register further kinds;
  /// unrecognized values map to [FeeKind.unknown].
  final FeeKind kind;

  /// Owning line item id, when set.
  final String? lineItemId;

  /// Owning fulfillment id, when set.
  final String? fulfillmentId;

  /// Fee amount, decimal string, when reported.
  final String? amount;

  /// Serializes this fee back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'label': label,
    'kind': kind.toJson(),
    'line_item_id': lineItemId,
    'fulfillment_id': fulfillmentId,
    'amount': amount,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Fee &&
          id == other.id &&
          label == other.label &&
          kind == other.kind &&
          lineItemId == other.lineItemId &&
          fulfillmentId == other.fulfillmentId &&
          amount == other.amount;

  @override
  int get hashCode =>
      Object.hash(id, label, kind, lineItemId, fulfillmentId, amount);
}

/// A digital link attached to a line item or owned by a customer.
///
/// Source: `packages/sdk/src/types/generated/DigitalLink.ts`;
/// SPEC `store.yaml#/components/schemas/DigitalLink`.
class DigitalLink {
  /// Creates a digital link.
  const DigitalLink({
    required this.id,
    required this.accessCounter,
    required this.filename,
    required this.contentType,
    required this.downloadUrl,
    this.expiresAt,
    required this.authorizable,
    required this.expired,
    required this.accessLimitExceeded,
  });

  /// Parses a digital link from its JSON shape.
  factory DigitalLink.fromJson(Map<String, Object?> json) => DigitalLink(
    id: json['id'] as String,
    accessCounter: (json['access_counter'] as num).toInt(),
    filename: json['filename'] as String,
    contentType: json['content_type'] as String,
    downloadUrl: json['download_url'] as String,
    expiresAt: json['expires_at'] as String?,
    authorizable: json['authorizable'] as bool,
    expired: json['expired'] as bool,
    accessLimitExceeded: json['access_limit_exceeded'] as bool,
  );

  /// Unique identifier.
  final String id;

  /// Number of recorded accesses.
  final int accessCounter;

  /// File name.
  final String filename;

  /// File content type.
  final String contentType;

  /// Download URL (follow redirects; see contract §7 for the
  /// authenticated `digital_links/{id}` variant).
  final String downloadUrl;

  /// Expiry timestamp, when set.
  final String? expiresAt;

  /// Whether authorization is required to download.
  final bool authorizable;

  /// Whether the link expired.
  final bool expired;

  /// Whether the access limit was exceeded.
  final bool accessLimitExceeded;

  /// Serializes this link back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'access_counter': accessCounter,
    'filename': filename,
    'content_type': contentType,
    'download_url': downloadUrl,
    'expires_at': expiresAt,
    'authorizable': authorizable,
    'expired': expired,
    'access_limit_exceeded': accessLimitExceeded,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DigitalLink &&
          id == other.id &&
          accessCounter == other.accessCounter &&
          filename == other.filename &&
          contentType == other.contentType &&
          downloadUrl == other.downloadUrl &&
          expiresAt == other.expiresAt &&
          authorizable == other.authorizable &&
          expired == other.expired &&
          accessLimitExceeded == other.accessLimitExceeded;

  @override
  int get hashCode => Object.hash(id, filename, downloadUrl, expired);
}

/// One line item of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/LineItem.ts`;
/// SPEC `store.yaml#/components/schemas/LineItem`.
class LineItem {
  /// Creates a line item.
  const LineItem({
    required this.id,
    required this.variantId,
    this.sellerId,
    required this.preorder,
    this.preorderShipsAt,
    required this.quantity,
    required this.currency,
    required this.name,
    required this.slug,
    required this.optionsText,
    this.price,
    this.total,
    this.adjustmentTotal,
    this.additionalTaxTotal,
    this.includedTaxTotal,
    this.discountTotal,
    this.preTaxAmount,
    this.discountedAmount,
    this.compareAtAmount,
    this.thumbnailUrl,
    this.seller,
    required this.optionValues,
    this.digitalLinks,
    this.taxLines,
    this.customFields,
  });

  /// Parses a line item from its JSON shape.
  factory LineItem.fromJson(Map<String, Object?> json) => LineItem(
    id: json['id'] as String,
    variantId: json['variant_id'] as String,
    sellerId: json['seller_id'] as String?,
    preorder: json['preorder'] as bool,
    preorderShipsAt: json['preorder_ships_at'] as String?,
    quantity: (json['quantity'] as num).toInt(),
    currency: CurrencyCode.fromJson(json['currency']),
    name: json['name'] as String,
    slug: json['slug'] as String,
    optionsText: json['options_text'] as String,
    price: json['price'] as String?,
    total: json['total'] as String?,
    adjustmentTotal: json['adjustment_total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    discountTotal: json['discount_total'] as String?,
    preTaxAmount: json['pre_tax_amount'] as String?,
    discountedAmount: json['discounted_amount'] as String?,
    compareAtAmount: json['compare_at_amount'] as String?,
    thumbnailUrl: json['thumbnail_url'] as String?,
    seller: json['seller'] == null
        ? null
        : Seller.fromJson(json['seller'] as Map<String, Object?>),
    optionValues: (json['option_values'] as List)
        .map((e) => OptionValue.fromJson(e as Map<String, Object?>))
        .toList(),
    digitalLinks: (json['digital_links'] as List?)
        ?.map((e) => DigitalLink.fromJson(e as Map<String, Object?>))
        .toList(),
    taxLines: (json['tax_lines'] as List?)
        ?.map((e) => TaxLine.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Bought variant id.
  final String variantId;

  /// Owning seller id, when set.
  final String? sellerId;

  /// Whether the line is a preorder.
  final bool preorder;

  /// Preorder shipping date, when set.
  final String? preorderShipsAt;

  /// Quantity.
  final int quantity;

  /// Pricing currency.
  final CurrencyCode currency;

  /// Variant/product name snapshot.
  final String name;

  /// Variant/product slug snapshot.
  final String slug;

  /// Human-readable option summary.
  final String optionsText;

  /// Price of one unit, decimal string, when reported.
  final String? price;

  /// Line total (price × quantity, with discounts, fees and added tax),
  /// decimal string, when reported.
  final String? total;

  /// Discounts, fees and added tax together, decimal string, when reported.
  final String? adjustmentTotal;

  /// Tax added on top of the price, decimal string, when reported.
  final String? additionalTaxTotal;

  /// Tax already included in the price, decimal string, when reported.
  final String? includedTaxTotal;

  /// Promotion discounts on this line (negative), decimal string.
  final String? discountTotal;

  /// Line total after discounts, without tax, decimal string.
  final String? preTaxAmount;

  /// Price × quantity after discounts, decimal string.
  final String? discountedAmount;

  /// Compare-at price × quantity, decimal string, when the variant has one.
  final String? compareAtAmount;

  /// Thumbnail URL, when set.
  final String? thumbnailUrl;

  /// Expanded seller, when requested via `expand`.
  final Seller? seller;

  /// Option values identifying the bought variant.
  final List<OptionValue> optionValues;

  /// Digital links of this line, when expanded.
  final List<DigitalLink>? digitalLinks;

  /// Tax lines of this line, when present.
  final List<TaxLine>? taxLines;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this line item back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'variant_id': variantId,
    'seller_id': sellerId,
    'preorder': preorder,
    'preorder_ships_at': preorderShipsAt,
    'quantity': quantity,
    'currency': currency.toJson(),
    'name': name,
    'slug': slug,
    'options_text': optionsText,
    'price': price,
    'total': total,
    'adjustment_total': adjustmentTotal,
    'additional_tax_total': additionalTaxTotal,
    'included_tax_total': includedTaxTotal,
    'discount_total': discountTotal,
    'pre_tax_amount': preTaxAmount,
    'discounted_amount': discountedAmount,
    'compare_at_amount': compareAtAmount,
    'thumbnail_url': thumbnailUrl,
    'seller': seller?.toJson(),
    'option_values': optionValues.map((e) => e.toJson()).toList(),
    if (digitalLinks != null)
      'digital_links': digitalLinks!.map((e) => e.toJson()).toList(),
    if (taxLines != null)
      'tax_lines': taxLines!.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LineItem &&
          id == other.id &&
          variantId == other.variantId &&
          sellerId == other.sellerId &&
          preorder == other.preorder &&
          preorderShipsAt == other.preorderShipsAt &&
          quantity == other.quantity &&
          currency == other.currency &&
          name == other.name &&
          slug == other.slug &&
          optionsText == other.optionsText &&
          price == other.price &&
          total == other.total &&
          adjustmentTotal == other.adjustmentTotal &&
          additionalTaxTotal == other.additionalTaxTotal &&
          includedTaxTotal == other.includedTaxTotal &&
          discountTotal == other.discountTotal &&
          preTaxAmount == other.preTaxAmount &&
          discountedAmount == other.discountedAmount &&
          compareAtAmount == other.compareAtAmount &&
          thumbnailUrl == other.thumbnailUrl &&
          seller == other.seller &&
          _listEquals(optionValues, other.optionValues) &&
          _listEquals(digitalLinks, other.digitalLinks) &&
          _listEquals(taxLines, other.taxLines) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, variantId, quantity, currency);
}

/// Freight summary of a delivery rate (carton/pallet shipping).
///
/// Source: `packages/sdk/src/types/generated/FreightSummary.ts`.
class FreightSummary {
  /// Creates a freight summary.
  const FreightSummary({
    required this.totalUnits,
    required this.totalCartons,
    this.totalPallets,
    required this.totalVolume,
    required this.totalWeight,
    required this.complete,
  });

  /// Parses a freight summary from its JSON shape.
  factory FreightSummary.fromJson(Map<String, Object?> json) => FreightSummary(
    totalUnits: (json['total_units'] as num).toInt(),
    totalCartons: (json['total_cartons'] as num).toInt(),
    totalPallets: (json['total_pallets'] as num?)?.toInt(),
    totalVolume: json['total_volume'] as String,
    totalWeight: json['total_weight'] as String,
    complete: json['complete'] as bool,
  );

  /// Total units.
  final int totalUnits;

  /// Total cartons.
  final int totalCartons;

  /// Total pallets, when reported.
  final int? totalPallets;

  /// Total volume, as reported by the API (kept as-is).
  final String totalVolume;

  /// Total weight, as reported by the API (kept as-is).
  final String totalWeight;

  /// Whether the summary is complete.
  final bool complete;

  /// Serializes this summary back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'total_units': totalUnits,
    'total_cartons': totalCartons,
    'total_pallets': totalPallets,
    'total_volume': totalVolume,
    'total_weight': totalWeight,
    'complete': complete,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FreightSummary &&
          totalUnits == other.totalUnits &&
          totalCartons == other.totalCartons &&
          totalPallets == other.totalPallets &&
          totalVolume == other.totalVolume &&
          totalWeight == other.totalWeight &&
          complete == other.complete;

  @override
  int get hashCode => Object.hash(
    totalUnits,
    totalCartons,
    totalPallets,
    totalVolume,
    totalWeight,
    complete,
  );
}

/// A stock location fulfilling a shipment.
///
/// Source: `packages/sdk/src/types/generated/StockLocation.ts`.
class StockLocation {
  /// Creates a stock location.
  const StockLocation({
    required this.id,
    required this.name,
    this.address1,
    this.city,
    this.zipcode,
    this.countryCode,
    this.countryName,
    this.stateCode,
    this.stateText,
    this.countryIso,
    this.stateAbbr,
    this.pickupReadyInMinutes,
    this.pickupInstructions,
  });

  /// Parses a stock location from its JSON shape.
  factory StockLocation.fromJson(Map<String, Object?> json) => StockLocation(
    id: json['id'] as String,
    name: json['name'] as String,
    address1: json['address1'] as String?,
    city: json['city'] as String?,
    zipcode: json['zipcode'] as String?,
    countryCode: json['country_code'] == null
        ? null
        : CountryCode.fromJson(json['country_code']),
    countryName: json['country_name'] as String?,
    stateCode: json['state_code'] as String?,
    stateText: json['state_text'] as String?,
    countryIso: json['country_iso'] as String?,
    stateAbbr: json['state_abbr'] as String?,
    pickupReadyInMinutes: (json['pickup_ready_in_minutes'] as num?)?.toInt(),
    pickupInstructions: json['pickup_instructions'] as String?,
  );

  /// Unique identifier.
  final String id;

  /// Location name.
  final String name;

  /// Street, when reported.
  final String? address1;

  /// City, when reported.
  final String? city;

  /// Postal code, when reported.
  final String? zipcode;

  /// ISO country code, when reported.
  final CountryCode? countryCode;

  /// Country name, when reported.
  final String? countryName;

  /// ISO state code, when reported.
  final String? stateCode;

  /// State text, when reported.
  final String? stateText;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  final String? countryIso;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  final String? stateAbbr;

  /// Minutes until a pickup is ready, when reported.
  final int? pickupReadyInMinutes;

  /// Pickup instructions, when set.
  final String? pickupInstructions;

  /// Serializes this location back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'address1': address1,
    'city': city,
    'zipcode': zipcode,
    'country_code': countryCode?.toJson(),
    'country_name': countryName,
    'state_code': stateCode,
    'state_text': stateText,
    'country_iso': countryIso,
    'state_abbr': stateAbbr,
    'pickup_ready_in_minutes': pickupReadyInMinutes,
    'pickup_instructions': pickupInstructions,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockLocation &&
          id == other.id &&
          name == other.name &&
          address1 == other.address1 &&
          city == other.city &&
          zipcode == other.zipcode &&
          countryCode == other.countryCode &&
          countryName == other.countryName &&
          stateCode == other.stateCode &&
          stateText == other.stateText &&
          countryIso == other.countryIso &&
          stateAbbr == other.stateAbbr &&
          pickupReadyInMinutes == other.pickupReadyInMinutes &&
          pickupInstructions == other.pickupInstructions;

  @override
  int get hashCode => Object.hash(id, name, countryCode, stateCode);
}

/// A delivery method available to a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryMethod.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryMethod`.
class DeliveryMethod {
  /// Creates a delivery method.
  const DeliveryMethod({
    required this.id,
    required this.name,
    this.code,
    this.estimatedTransitBusinessDaysMin,
    this.estimatedTransitBusinessDaysMax,
    required this.digital,
    required this.pickup,
    required this.pickupPoint,
    this.customFields,
  });

  /// Parses a delivery method from its JSON shape.
  factory DeliveryMethod.fromJson(Map<String, Object?> json) => DeliveryMethod(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String?,
    estimatedTransitBusinessDaysMin:
        (json['estimated_transit_business_days_min'] as num?)?.toInt(),
    estimatedTransitBusinessDaysMax:
        (json['estimated_transit_business_days_max'] as num?)?.toInt(),
    digital: json['digital'] as bool,
    pickup: json['pickup'] as bool,
    pickupPoint: json['pickup_point'] as bool,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Method name.
  final String name;

  /// Method code, when set.
  final String? code;

  /// Minimum estimated transit business days, when reported.
  final int? estimatedTransitBusinessDaysMin;

  /// Maximum estimated transit business days, when reported.
  final int? estimatedTransitBusinessDaysMax;

  /// Whether this method delivers digitally.
  final bool digital;

  /// Whether this method is a pickup.
  final bool pickup;

  /// Whether this method delivers to a pickup point.
  final bool pickupPoint;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this method back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'code': code,
    'estimated_transit_business_days_min': estimatedTransitBusinessDaysMin,
    'estimated_transit_business_days_max': estimatedTransitBusinessDaysMax,
    'digital': digital,
    'pickup': pickup,
    'pickup_point': pickupPoint,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryMethod &&
          id == other.id &&
          name == other.name &&
          code == other.code &&
          estimatedTransitBusinessDaysMin ==
              other.estimatedTransitBusinessDaysMin &&
          estimatedTransitBusinessDaysMax ==
              other.estimatedTransitBusinessDaysMax &&
          digital == other.digital &&
          pickup == other.pickup &&
          pickupPoint == other.pickupPoint &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, name, code, digital, pickup, pickupPoint);
}

/// One carrier delivery inside a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/Delivery.ts`.
class Delivery {
  /// Creates a delivery.
  const Delivery({
    required this.id,
    required this.trackingNumber,
    this.carrier,
    this.carrierName,
    this.service,
    required this.status,
    this.trackingUrl,
    this.estimatedDeliveryAt,
    this.deliveredAt,
  });

  /// Parses a delivery from its JSON shape.
  factory Delivery.fromJson(Map<String, Object?> json) => Delivery(
    id: json['id'] as String,
    trackingNumber: json['tracking_number'] as String,
    carrier: json['carrier'] as String?,
    carrierName: json['carrier_name'] as String?,
    service: json['service'] as String?,
    status: DeliveryStatus.fromJson(json['status']),
    trackingUrl: json['tracking_url'] as String?,
    estimatedDeliveryAt: json['estimated_delivery_at'] as String?,
    deliveredAt: json['delivered_at'] as String?,
  );

  /// Unique identifier.
  final String id;

  /// Carrier tracking number.
  final String trackingNumber;

  /// Carrier code, when reported.
  final String? carrier;

  /// Carrier name, when reported.
  final String? carrierName;

  /// Service level, when reported.
  final String? service;

  /// Delivery status.
  final DeliveryStatus status;

  /// Tracking URL, when reported.
  final String? trackingUrl;

  /// Estimated delivery timestamp, when reported.
  final String? estimatedDeliveryAt;

  /// Delivery timestamp, when reported.
  final String? deliveredAt;

  /// Serializes this delivery back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'tracking_number': trackingNumber,
    'carrier': carrier,
    'carrier_name': carrierName,
    'service': service,
    'status': status.toJson(),
    'tracking_url': trackingUrl,
    'estimated_delivery_at': estimatedDeliveryAt,
    'delivered_at': deliveredAt,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Delivery &&
          id == other.id &&
          trackingNumber == other.trackingNumber &&
          carrier == other.carrier &&
          carrierName == other.carrierName &&
          service == other.service &&
          status == other.status &&
          trackingUrl == other.trackingUrl &&
          estimatedDeliveryAt == other.estimatedDeliveryAt &&
          deliveredAt == other.deliveredAt;

  @override
  int get hashCode => Object.hash(id, trackingNumber, status);
}

/// One selectable delivery rate of a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryRate.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryRate`.
class DeliveryRate {
  /// Creates a delivery rate.
  const DeliveryRate({
    required this.id,
    required this.deliveryMethodId,
    required this.name,
    required this.selected,
    this.cost,
    this.total,
    this.additionalTaxTotal,
    this.includedTaxTotal,
    this.taxTotal,
    this.carrier,
    this.serviceLevel,
    this.estimatedDeliveryDate,
    required this.unpriced,
    this.freightSummary,
    required this.deliveryMethod,
  });

  /// Parses a delivery rate from its JSON shape.
  factory DeliveryRate.fromJson(Map<String, Object?> json) => DeliveryRate(
    id: json['id'] as String,
    deliveryMethodId: json['delivery_method_id'] as String,
    name: json['name'] as String,
    selected: json['selected'] as bool,
    cost: json['cost'] as String?,
    total: json['total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    taxTotal: json['tax_total'] as String?,
    carrier: json['carrier'] as String?,
    serviceLevel: json['service_level'] as String?,
    estimatedDeliveryDate: json['estimated_delivery_date'] as String?,
    unpriced: json['unpriced'] as bool,
    freightSummary: json['freight_summary'] == null
        ? null
        : FreightSummary.fromJson(
            json['freight_summary'] as Map<String, Object?>,
          ),
    deliveryMethod: DeliveryMethod.fromJson(
      json['delivery_method'] as Map<String, Object?>,
    ),
  );

  /// Unique identifier.
  final String id;

  /// Owning delivery method id.
  final String deliveryMethodId;

  /// Rate name.
  final String name;

  /// Whether this rate is currently selected.
  final bool selected;

  /// Rate cost, decimal string, when reported.
  final String? cost;

  /// Rate total, decimal string, when reported.
  final String? total;

  /// Tax added on top, decimal string, when reported.
  final String? additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  final String? includedTaxTotal;

  /// Total tax, decimal string, when reported.
  final String? taxTotal;

  /// Carrier, when reported.
  final String? carrier;

  /// Service level, when reported.
  final String? serviceLevel;

  /// Estimated delivery date, when reported.
  final String? estimatedDeliveryDate;

  /// Whether the rate is unpriced.
  final bool unpriced;

  /// Freight summary, for carton/pallet shipping.
  final FreightSummary? freightSummary;

  /// The delivery method of this rate.
  final DeliveryMethod deliveryMethod;

  /// Serializes this rate back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'delivery_method_id': deliveryMethodId,
    'name': name,
    'selected': selected,
    'cost': cost,
    'total': total,
    'additional_tax_total': additionalTaxTotal,
    'included_tax_total': includedTaxTotal,
    'tax_total': taxTotal,
    'carrier': carrier,
    'service_level': serviceLevel,
    'estimated_delivery_date': estimatedDeliveryDate,
    'unpriced': unpriced,
    'freight_summary': freightSummary?.toJson(),
    'delivery_method': deliveryMethod.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryRate &&
          id == other.id &&
          deliveryMethodId == other.deliveryMethodId &&
          name == other.name &&
          selected == other.selected &&
          cost == other.cost &&
          total == other.total &&
          additionalTaxTotal == other.additionalTaxTotal &&
          includedTaxTotal == other.includedTaxTotal &&
          taxTotal == other.taxTotal &&
          carrier == other.carrier &&
          serviceLevel == other.serviceLevel &&
          estimatedDeliveryDate == other.estimatedDeliveryDate &&
          unpriced == other.unpriced &&
          freightSummary == other.freightSummary &&
          deliveryMethod == other.deliveryMethod;

  @override
  int get hashCode => Object.hash(id, deliveryMethodId, selected, total);
}

/// One line allocation inside a fulfillment.
///
/// Source: inline `Fulfillment['items'][number]` in
/// `packages/sdk/src/types/generated/Fulfillment.ts`.
class FulfillmentItem {
  /// Creates a fulfillment line allocation.
  const FulfillmentItem({
    required this.itemId,
    required this.variantId,
    required this.quantity,
  });

  /// Parses a fulfillment line allocation from its JSON shape.
  factory FulfillmentItem.fromJson(Map<String, Object?> json) =>
      FulfillmentItem(
        itemId: json['item_id'] as String,
        variantId: json['variant_id'] as String,
        quantity: (json['quantity'] as num).toInt(),
      );

  /// Line item id.
  final String itemId;

  /// Variant id.
  final String variantId;

  /// Allocated quantity.
  final int quantity;

  /// Serializes this allocation back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'item_id': itemId,
    'variant_id': variantId,
    'quantity': quantity,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FulfillmentItem &&
          itemId == other.itemId &&
          variantId == other.variantId &&
          quantity == other.quantity;

  @override
  int get hashCode => Object.hash(itemId, variantId, quantity);
}

/// A fulfillment (shipment) of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Fulfillment.ts`;
/// SPEC `store.yaml#/components/schemas/Fulfillment`.
class Fulfillment {
  /// Creates a fulfillment.
  const Fulfillment({
    required this.id,
    required this.number,
    this.tracking,
    this.trackingUrl,
    this.pickupPointData,
    this.selectedDeliveryRateId,
    required this.unpriced,
    this.cost,
    this.total,
    this.discountTotal,
    this.additionalTaxTotal,
    this.includedTaxTotal,
    this.taxTotal,
    required this.status,
    required this.fulfillmentType,
    this.fulfilledAt,
    this.deliveredAt,
    required this.items,
    required this.deliveries,
    required this.deliveryMethod,
    required this.stockLocation,
    required this.deliveryRates,
    this.taxLines,
    this.customFields,
  });

  /// Parses a fulfillment from its JSON shape.
  factory Fulfillment.fromJson(Map<String, Object?> json) => Fulfillment(
    id: json['id'] as String,
    number: json['number'] as String,
    tracking: json['tracking'] as String?,
    trackingUrl: json['tracking_url'] as String?,
    pickupPointData: json['pickup_point_data'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['pickup_point_data'] as Map).cast<String, Object?>(),
          ),
    selectedDeliveryRateId: json['selected_delivery_rate_id'] as String?,
    unpriced: json['unpriced'] as bool,
    cost: json['cost'] as String?,
    total: json['total'] as String?,
    discountTotal: json['discount_total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    taxTotal: json['tax_total'] as String?,
    status: FulfillmentStatus.fromJson(json['status']),
    fulfillmentType: FulfillmentType.fromJson(json['fulfillment_type']),
    fulfilledAt: json['fulfilled_at'] as String?,
    deliveredAt: json['delivered_at'] as String?,
    items: (json['items'] as List)
        .map((e) => FulfillmentItem.fromJson(e as Map<String, Object?>))
        .toList(),
    deliveries: (json['deliveries'] as List)
        .map((e) => Delivery.fromJson(e as Map<String, Object?>))
        .toList(),
    deliveryMethod: DeliveryMethod.fromJson(
      json['delivery_method'] as Map<String, Object?>,
    ),
    stockLocation: StockLocation.fromJson(
      json['stock_location'] as Map<String, Object?>,
    ),
    deliveryRates: (json['delivery_rates'] as List)
        .map((e) => DeliveryRate.fromJson(e as Map<String, Object?>))
        .toList(),
    taxLines: (json['tax_lines'] as List?)
        ?.map((e) => TaxLine.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Fulfillment number.
  final String number;

  /// Tracking reference, when reported.
  final String? tracking;

  /// Tracking URL, when reported.
  final String? trackingUrl;

  /// Pickup-point payload, when reported (untyped upstream).
  final Map<String, Object?>? pickupPointData;

  /// Selected delivery rate id, when reported.
  final String? selectedDeliveryRateId;

  /// Whether the fulfillment is unpriced.
  final bool unpriced;

  /// Fulfillment cost, decimal string, when reported.
  final String? cost;

  /// Fulfillment total, decimal string, when reported.
  final String? total;

  /// Delivery discounts, decimal string, when reported.
  final String? discountTotal;

  /// Tax added on top, decimal string, when reported.
  final String? additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  final String? includedTaxTotal;

  /// Total tax, decimal string, when reported.
  final String? taxTotal;

  /// Fulfillment status.
  final FulfillmentStatus status;

  /// How this fulfillment is delivered.
  final FulfillmentType fulfillmentType;

  /// Fulfillment timestamp, when reported.
  final String? fulfilledAt;

  /// Delivery timestamp, when reported.
  final String? deliveredAt;

  /// Which line items (and units) are in this fulfillment.
  final List<FulfillmentItem> items;

  /// Carrier deliveries of this fulfillment.
  final List<Delivery> deliveries;

  /// The delivery method of this fulfillment.
  final DeliveryMethod deliveryMethod;

  /// The stock location fulfilling this fulfillment.
  final StockLocation stockLocation;

  /// Selectable delivery rates.
  final List<DeliveryRate> deliveryRates;

  /// Tax lines, when present.
  final List<TaxLine>? taxLines;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this fulfillment back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'number': number,
    'tracking': tracking,
    'tracking_url': trackingUrl,
    'pickup_point_data': pickupPointData,
    'selected_delivery_rate_id': selectedDeliveryRateId,
    'unpriced': unpriced,
    'cost': cost,
    'total': total,
    'discount_total': discountTotal,
    'additional_tax_total': additionalTaxTotal,
    'included_tax_total': includedTaxTotal,
    'tax_total': taxTotal,
    'status': status.toJson(),
    'fulfillment_type': fulfillmentType.toJson(),
    'fulfilled_at': fulfilledAt,
    'delivered_at': deliveredAt,
    'items': items.map((e) => e.toJson()).toList(),
    'deliveries': deliveries.map((e) => e.toJson()).toList(),
    'delivery_method': deliveryMethod.toJson(),
    'stock_location': stockLocation.toJson(),
    'delivery_rates': deliveryRates.map((e) => e.toJson()).toList(),
    if (taxLines != null)
      'tax_lines': taxLines!.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Fulfillment &&
          id == other.id &&
          number == other.number &&
          tracking == other.tracking &&
          trackingUrl == other.trackingUrl &&
          selectedDeliveryRateId == other.selectedDeliveryRateId &&
          unpriced == other.unpriced &&
          cost == other.cost &&
          total == other.total &&
          discountTotal == other.discountTotal &&
          additionalTaxTotal == other.additionalTaxTotal &&
          includedTaxTotal == other.includedTaxTotal &&
          taxTotal == other.taxTotal &&
          status == other.status &&
          fulfillmentType == other.fulfillmentType &&
          fulfilledAt == other.fulfilledAt &&
          deliveredAt == other.deliveredAt &&
          _listEquals(items, other.items) &&
          _listEquals(deliveries, other.deliveries) &&
          deliveryMethod == other.deliveryMethod &&
          stockLocation == other.stockLocation &&
          _listEquals(deliveryRates, other.deliveryRates) &&
          _listEquals(taxLines, other.taxLines) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(
    id,
    number,
    status,
    fulfillmentType,
    deliveryMethod,
    stockLocation,
  );
}

/// A payment method available on a cart.
///
/// Source: `packages/sdk/src/types/generated/PaymentMethod.ts`;
/// SPEC `store.yaml#/components/schemas/PaymentMethod`.
class PaymentMethod {
  /// Creates a payment method.
  const PaymentMethod({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    required this.sessionRequired,
    required this.sourceRequired,
    this.customFields,
  });

  /// Parses a payment method from its JSON shape.
  factory PaymentMethod.fromJson(Map<String, Object?> json) => PaymentMethod(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String?,
    type: json['type'] as String,
    sessionRequired: json['session_required'] as bool,
    sourceRequired: json['source_required'] as bool,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Method name.
  final String name;

  /// Method description, when set.
  final String? description;

  /// Method type. Built-ins: `check`, `store_credit`,
  /// `custom_payment_source_method`, `bogus` (test only); payment-provider
  /// gems register their own (e.g. `stripe`). Kept as an open string.
  final String type;

  /// Whether a payment session is required before paying.
  final bool sessionRequired;

  /// Whether a payment source is required before paying.
  final bool sourceRequired;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this method back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'description': description,
    'type': type,
    'session_required': sessionRequired,
    'source_required': sourceRequired,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentMethod &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          type == other.type &&
          sessionRequired == other.sessionRequired &&
          sourceRequired == other.sourceRequired &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, name, type);
}

/// A payment on a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Payment.ts`;
/// SPEC `store.yaml#/components/schemas/Payment`.
class Payment {
  /// Creates a payment.
  const Payment({
    required this.id,
    required this.paymentMethodId,
    this.responseCode,
    required this.number,
    required this.status,
    this.amount,
    this.sourceType,
    this.sourceId,
    this.source,
    required this.paymentMethod,
    this.customFields,
  });

  /// Parses a payment from its JSON shape.
  factory Payment.fromJson(Map<String, Object?> json) => Payment(
    id: json['id'] as String,
    paymentMethodId: json['payment_method_id'] as String,
    responseCode: json['response_code'] as String?,
    number: json['number'] as String,
    status: PaymentStatus.fromJson(json['status']),
    amount: json['amount'] as String?,
    sourceType: json['source_type'] == null
        ? null
        : PaymentSourceType.fromJson(json['source_type']),
    sourceId: json['source_id'] as String?,
    source: json['source'] == null
        ? null
        : Map<String, Object?>.unmodifiable(
            (json['source'] as Map).cast<String, Object?>(),
          ),
    paymentMethod: PaymentMethod.fromJson(
      json['payment_method'] as Map<String, Object?>,
    ),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Owning payment method id.
  final String paymentMethodId;

  /// Provider response code, when reported.
  final String? responseCode;

  /// Payment number.
  final String number;

  /// Payment status.
  final PaymentStatus status;

  /// Payment amount, decimal string, when reported.
  final String? amount;

  /// Polymorphic source kind, when reported.
  final PaymentSourceType? sourceType;

  /// Polymorphic source id, when reported.
  final String? sourceId;

  /// Polymorphic source payload (`credit_card` | `store_credit` |
  /// `payment_source`, per [sourceType]). Kept raw: no typed union exists
  /// upstream for the embedded shape (Limitation; narrow later if a
  /// serializer pins it down).
  final Map<String, Object?>? source;

  /// The payment method of this payment.
  final PaymentMethod paymentMethod;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this payment back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'payment_method_id': paymentMethodId,
    'response_code': responseCode,
    'number': number,
    'status': status.toJson(),
    'amount': amount,
    'source_type': sourceType?.toJson(),
    'source_id': sourceId,
    'source': source,
    'payment_method': paymentMethod.toJson(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Payment &&
          id == other.id &&
          paymentMethodId == other.paymentMethodId &&
          responseCode == other.responseCode &&
          number == other.number &&
          status == other.status &&
          amount == other.amount &&
          sourceType == other.sourceType &&
          sourceId == other.sourceId &&
          paymentMethod == other.paymentMethod &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(
    id,
    paymentMethodId,
    number,
    status,
    amount,
    sourceType,
    sourceId,
    paymentMethod,
  );
}

/// A gift card: code, status and decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/GiftCard.ts`;
/// SPEC `store.yaml#/components/schemas/GiftCard`.
class GiftCard {
  /// Creates a gift card.
  const GiftCard({
    required this.id,
    required this.code,
    required this.status,
    required this.currency,
    this.amount,
    this.amountUsed,
    this.amountAuthorized,
    this.amountRemaining,
    this.expiresAt,
    this.redeemedAt,
    required this.expired,
    required this.active,
    this.customFields,
  });

  /// Parses a gift card from its JSON shape.
  factory GiftCard.fromJson(Map<String, Object?> json) => GiftCard(
    id: json['id'] as String,
    code: json['code'] as String,
    status: GiftCardStatus.fromJson(json['status']),
    currency: CurrencyCode.fromJson(json['currency']),
    amount: json['amount'] as String?,
    amountUsed: json['amount_used'] as String?,
    amountAuthorized: json['amount_authorized'] as String?,
    amountRemaining: json['amount_remaining'] as String?,
    expiresAt: json['expires_at'] as String?,
    redeemedAt: json['redeemed_at'] as String?,
    expired: json['expired'] as bool,
    active: json['active'] as bool,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Redemption code.
  final String code;

  /// Lifecycle status.
  final GiftCardStatus status;

  /// Gift-card currency.
  final CurrencyCode currency;

  /// Original amount, decimal string, when reported.
  final String? amount;

  /// Used amount, decimal string, when reported.
  final String? amountUsed;

  /// Authorized amount, decimal string, when reported.
  final String? amountAuthorized;

  /// Remaining amount, decimal string, when reported.
  final String? amountRemaining;

  /// Expiry timestamp, when set.
  final String? expiresAt;

  /// Redemption timestamp, when set.
  final String? redeemedAt;

  /// Whether the card expired.
  final bool expired;

  /// Whether the card is active.
  final bool active;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this gift card back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'code': code,
    'status': status.toJson(),
    'currency': currency.toJson(),
    'amount': amount,
    'amount_used': amountUsed,
    'amount_authorized': amountAuthorized,
    'amount_remaining': amountRemaining,
    'expires_at': expiresAt,
    'redeemed_at': redeemedAt,
    'expired': expired,
    'active': active,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GiftCard &&
          id == other.id &&
          code == other.code &&
          status == other.status &&
          currency == other.currency &&
          amount == other.amount &&
          amountUsed == other.amountUsed &&
          amountAuthorized == other.amountAuthorized &&
          amountRemaining == other.amountRemaining &&
          expiresAt == other.expiresAt &&
          redeemedAt == other.redeemedAt &&
          expired == other.expired &&
          active == other.active &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, code, status, currency, active);
}

/// A store-credit record with decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/StoreCredit.ts`;
/// SPEC `store.yaml#/components/schemas/StoreCredit`.
class StoreCredit {
  /// Creates a store-credit record.
  const StoreCredit({
    required this.id,
    this.amount,
    this.amountUsed,
    this.amountRemaining,
    required this.currency,
    this.customFields,
  });

  /// Parses a store-credit record from its JSON shape.
  factory StoreCredit.fromJson(Map<String, Object?> json) => StoreCredit(
    id: json['id'] as String,
    amount: json['amount'] as String?,
    amountUsed: json['amount_used'] as String?,
    amountRemaining: json['amount_remaining'] as String?,
    currency: CurrencyCode.fromJson(json['currency']),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  final String id;

  /// Original amount, decimal string, when reported.
  final String? amount;

  /// Used amount, decimal string, when reported.
  final String? amountUsed;

  /// Remaining amount, decimal string, when reported.
  final String? amountRemaining;

  /// Store-credit currency.
  final CurrencyCode currency;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Serializes this record back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'amount': amount,
    'amount_used': amountUsed,
    'amount_remaining': amountRemaining,
    'currency': currency.toJson(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreCredit &&
          id == other.id &&
          amount == other.amount &&
          amountUsed == other.amountUsed &&
          amountRemaining == other.amountRemaining &&
          currency == other.currency &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode =>
      Object.hash(id, amount, amountUsed, amountRemaining, currency);
}

/// The active cart (checkout in progress).
///
/// Source: `packages/sdk/src/types/generated/Cart.ts`;
/// SPEC `store.yaml#/components/schemas/Cart`.
/// `checkout_steps` / `state_lock_version` appear only in the TS-SDK mocks
/// (`tests/mocks/handlers.ts`, per contract §4) — not in the serializer type
/// or the SPEC — so they are not modeled here (Limitation).
class Cart {
  /// Creates a cart.
  const Cart({
    this.marketId,
    this.channelId,
    this.preferredStockLocationId,
    this.companyId,
    this.companyName,
    required this.poNumberRequired,
    this.poDocumentFilename,
    this.poDocumentByteSize,
    required this.number,
    required this.token,
    this.email,
    this.customerNote,
    this.poNumber,
    required this.currency,
    this.locale,
    required this.totalQuantity,
    required this.warnings,
    this.couponCode,
    this.itemTotal,
    this.discountTotal,
    this.taxTotal,
    this.includedTaxTotal,
    this.additionalTaxTotal,
    this.deliveryTotal,
    this.feeTotal,
    this.giftCardTotal,
    this.storeCreditTotal,
    this.total,
    this.amountDue,
    required this.coveredByStoreCredit,
    required this.payments,
    this.adjustmentTotal,
    required this.currentStep,
    required this.completedSteps,
    required this.requirements,
    this.orderMinimum,
    this.orderMinimumShortfall,
    this.belowOrderMinimum,
    this.freightSummary,
    required this.shippingEqBillingAddress,
    required this.discounts,
    required this.fees,
    required this.items,
    required this.fulfillments,
    this.billingAddress,
    this.shippingAddress,
    required this.paymentMethods,
    this.giftCard,
    this.market,
  });

  /// Parses a cart from its JSON shape.
  factory Cart.fromJson(Map<String, Object?> json) => Cart(
    marketId: json['market_id'] as String?,
    channelId: json['channel_id'] as String?,
    preferredStockLocationId: json['preferred_stock_location_id'] as String?,
    companyId: json['company_id'] as String?,
    companyName: json['company_name'] as String?,
    poNumberRequired: json['po_number_required'] as bool,
    poDocumentFilename: json['po_document_filename'] as String?,
    poDocumentByteSize: (json['po_document_byte_size'] as num?)?.toInt(),
    number: json['number'] as String,
    token: json['token'] as String,
    email: json['email'] as String?,
    customerNote: json['customer_note'] as String?,
    poNumber: json['po_number'] as String?,
    currency: CurrencyCode.fromJson(json['currency']),
    locale: json['locale'] == null ? null : LocaleCode.fromJson(json['locale']),
    totalQuantity: (json['total_quantity'] as num).toInt(),
    warnings: (json['warnings'] as List)
        .map((e) => CartWarning.fromJson(e as Map<String, Object?>))
        .toList(),
    couponCode: json['coupon_code'] as String?,
    itemTotal: json['item_total'] as String?,
    discountTotal: json['discount_total'] as String?,
    taxTotal: json['tax_total'] as String?,
    includedTaxTotal: json['included_tax_total'] as String?,
    additionalTaxTotal: json['additional_tax_total'] as String?,
    deliveryTotal: json['delivery_total'] as String?,
    feeTotal: json['fee_total'] as String?,
    giftCardTotal: json['gift_card_total'] as String?,
    storeCreditTotal: json['store_credit_total'] as String?,
    total: json['total'] as String?,
    amountDue: json['amount_due'] as String?,
    coveredByStoreCredit: json['covered_by_store_credit'] as bool,
    payments: (json['payments'] as List)
        .map((e) => Payment.fromJson(e as Map<String, Object?>))
        .toList(),
    adjustmentTotal: json['adjustment_total'] as String?,
    currentStep: json['current_step'] as String,
    completedSteps: (json['completed_steps'] as List).cast<String>(),
    requirements: (json['requirements'] as List)
        .map((e) => CheckoutRequirement.fromJson(e as Map<String, Object?>))
        .toList(),
    orderMinimum: json['order_minimum'] as String?,
    orderMinimumShortfall: json['order_minimum_shortfall'] as String?,
    belowOrderMinimum: json['below_order_minimum'] as bool?,
    freightSummary: json['freight_summary'] == null
        ? null
        : FreightSummary.fromJson(
            json['freight_summary'] as Map<String, Object?>,
          ),
    shippingEqBillingAddress: json['shipping_eq_billing_address'] as bool,
    discounts: (json['discounts'] as List)
        .map((e) => AppliedPromotion.fromJson(e as Map<String, Object?>))
        .toList(),
    fees: (json['fees'] as List)
        .map((e) => Fee.fromJson(e as Map<String, Object?>))
        .toList(),
    items: (json['items'] as List)
        .map((e) => LineItem.fromJson(e as Map<String, Object?>))
        .toList(),
    fulfillments: (json['fulfillments'] as List)
        .map((e) => Fulfillment.fromJson(e as Map<String, Object?>))
        .toList(),
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, Object?>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, Object?>),
    paymentMethods: (json['payment_methods'] as List)
        .map((e) => PaymentMethod.fromJson(e as Map<String, Object?>))
        .toList(),
    giftCard: json['gift_card'] == null
        ? null
        : GiftCard.fromJson(json['gift_card'] as Map<String, Object?>),
    market: json['market'] == null
        ? null
        : Market.fromJson(json['market'] as Map<String, Object?>),
  );

  /// Owning market id, when set.
  final String? marketId;

  /// Owning channel id, when set.
  final String? channelId;

  /// Preferred stock location id, when set.
  final String? preferredStockLocationId;

  /// Owning company id, when set.
  final String? companyId;

  /// Owning company name, when set.
  final String? companyName;

  /// Whether a PO number is required to complete checkout.
  final bool poNumberRequired;

  /// Uploaded PO document file name, when set.
  final String? poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  final int? poDocumentByteSize;

  /// Cart number. Deprecated upstream in favor of [id] — a cart has no
  /// order number — but still serialized; kept as a plain field.
  final String number;

  /// Guest cart token (sent as `x-spree-token` via `spreeToken`).
  final String token;

  /// Customer email, when set.
  final String? email;

  /// Customer note, when set.
  final String? customerNote;

  /// Purchase-order number, when set.
  final String? poNumber;

  /// Cart currency.
  final CurrencyCode currency;

  /// Cart locale, when set.
  final LocaleCode? locale;

  /// Total item quantity.
  final int totalQuantity;

  /// Problems found with the cart (e.g. stock changes).
  final List<CartWarning> warnings;

  /// Applied coupon code, when set.
  final String? couponCode;

  /// Line items total before discounts/fees/delivery, decimal string.
  final String? itemTotal;

  /// Promotion discounts (negative), decimal string.
  final String? discountTotal;

  /// All tax (included + added), decimal string.
  final String? taxTotal;

  /// Tax included in prices, decimal string.
  final String? includedTaxTotal;

  /// Tax added on top of prices, decimal string.
  final String? additionalTaxTotal;

  /// Delivery cost before delivery discounts, decimal string.
  final String? deliveryTotal;

  /// All fees, decimal string.
  final String? feeTotal;

  /// What a gift card pays, decimal string.
  final String? giftCardTotal;

  /// What store credit pays, decimal string.
  final String? storeCreditTotal;

  /// Grand total, decimal string.
  final String? total;

  /// Remainder to pay after payments and store credit, decimal string.
  final String? amountDue;

  /// Whether store credit covers the cart.
  final bool coveredByStoreCredit;

  /// Payments on the cart.
  final List<Payment> payments;

  /// Discounts, fees and added tax together, decimal string.
  final String? adjustmentTotal;

  /// Current checkout step.
  final String currentStep;

  /// Completed checkout steps.
  final List<String> completedSteps;

  /// What is still missing before the cart can be completed.
  final List<CheckoutRequirement> requirements;

  /// Order minimum, decimal string, when enforced.
  final String? orderMinimum;

  /// Shortfall below the order minimum, decimal string.
  final String? orderMinimumShortfall;

  /// Whether the cart is below the order minimum.
  final bool? belowOrderMinimum;

  /// Freight summary, for carton/pallet shipping.
  final FreightSummary? freightSummary;

  /// Whether the shipping address equals the billing address.
  final bool shippingEqBillingAddress;

  /// Applied promotions.
  final List<AppliedPromotion> discounts;

  /// Charged fees.
  final List<Fee> fees;

  /// Line items.
  final List<LineItem> items;

  /// Fulfillments (shipments).
  final List<Fulfillment> fulfillments;

  /// Billing address, when set.
  final Address? billingAddress;

  /// Shipping address, when set.
  final Address? shippingAddress;

  /// Payment methods available on the cart.
  final List<PaymentMethod> paymentMethods;

  /// Applied gift card, when set.
  final GiftCard? giftCard;

  /// Expanded market, when requested via `expand`.
  final Market? market;

  /// Serializes this cart back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'market_id': marketId,
    'channel_id': channelId,
    'preferred_stock_location_id': preferredStockLocationId,
    'company_id': companyId,
    'company_name': companyName,
    'po_number_required': poNumberRequired,
    'po_document_filename': poDocumentFilename,
    'po_document_byte_size': poDocumentByteSize,
    'number': number,
    'token': token,
    'email': email,
    'customer_note': customerNote,
    'po_number': poNumber,
    'currency': currency.toJson(),
    'locale': locale?.toJson(),
    'total_quantity': totalQuantity,
    'warnings': warnings.map((e) => e.toJson()).toList(),
    'coupon_code': couponCode,
    'item_total': itemTotal,
    'discount_total': discountTotal,
    'tax_total': taxTotal,
    'included_tax_total': includedTaxTotal,
    'additional_tax_total': additionalTaxTotal,
    'delivery_total': deliveryTotal,
    'fee_total': feeTotal,
    'gift_card_total': giftCardTotal,
    'store_credit_total': storeCreditTotal,
    'total': total,
    'amount_due': amountDue,
    'covered_by_store_credit': coveredByStoreCredit,
    'payments': payments.map((e) => e.toJson()).toList(),
    'adjustment_total': adjustmentTotal,
    'current_step': currentStep,
    'completed_steps': completedSteps,
    'requirements': requirements.map((e) => e.toJson()).toList(),
    'order_minimum': orderMinimum,
    'order_minimum_shortfall': orderMinimumShortfall,
    'below_order_minimum': belowOrderMinimum,
    'freight_summary': freightSummary?.toJson(),
    'shipping_eq_billing_address': shippingEqBillingAddress,
    'discounts': discounts.map((e) => e.toJson()).toList(),
    'fees': fees.map((e) => e.toJson()).toList(),
    'items': items.map((e) => e.toJson()).toList(),
    'fulfillments': fulfillments.map((e) => e.toJson()).toList(),
    'billing_address': billingAddress?.toJson(),
    'shipping_address': shippingAddress?.toJson(),
    'payment_methods': paymentMethods.map((e) => e.toJson()).toList(),
    'gift_card': giftCard?.toJson(),
    'market': market?.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cart &&
          marketId == other.marketId &&
          channelId == other.channelId &&
          preferredStockLocationId == other.preferredStockLocationId &&
          companyId == other.companyId &&
          companyName == other.companyName &&
          poNumberRequired == other.poNumberRequired &&
          poDocumentFilename == other.poDocumentFilename &&
          poDocumentByteSize == other.poDocumentByteSize &&
          number == other.number &&
          token == other.token &&
          email == other.email &&
          customerNote == other.customerNote &&
          poNumber == other.poNumber &&
          currency == other.currency &&
          locale == other.locale &&
          totalQuantity == other.totalQuantity &&
          _listEquals(warnings, other.warnings) &&
          couponCode == other.couponCode &&
          itemTotal == other.itemTotal &&
          discountTotal == other.discountTotal &&
          taxTotal == other.taxTotal &&
          includedTaxTotal == other.includedTaxTotal &&
          additionalTaxTotal == other.additionalTaxTotal &&
          deliveryTotal == other.deliveryTotal &&
          feeTotal == other.feeTotal &&
          giftCardTotal == other.giftCardTotal &&
          storeCreditTotal == other.storeCreditTotal &&
          total == other.total &&
          amountDue == other.amountDue &&
          coveredByStoreCredit == other.coveredByStoreCredit &&
          _listEquals(payments, other.payments) &&
          adjustmentTotal == other.adjustmentTotal &&
          currentStep == other.currentStep &&
          _listEquals(completedSteps, other.completedSteps) &&
          _listEquals(requirements, other.requirements) &&
          orderMinimum == other.orderMinimum &&
          orderMinimumShortfall == other.orderMinimumShortfall &&
          belowOrderMinimum == other.belowOrderMinimum &&
          freightSummary == other.freightSummary &&
          shippingEqBillingAddress == other.shippingEqBillingAddress &&
          _listEquals(discounts, other.discounts) &&
          _listEquals(fees, other.fees) &&
          _listEquals(items, other.items) &&
          _listEquals(fulfillments, other.fulfillments) &&
          billingAddress == other.billingAddress &&
          shippingAddress == other.shippingAddress &&
          _listEquals(paymentMethods, other.paymentMethods) &&
          giftCard == other.giftCard &&
          market == other.market;

  @override
  int get hashCode => Object.hash(number, token, currency, totalQuantity);
}
