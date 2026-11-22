/// Cart and checkout models.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
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
/// * contracts: `doc/research/store-api-contract.md` §4 (cart ops, guest
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

import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta.dart';
import 'product.dart';
import 'taxons.dart';

part 'cart.freezed.dart';

/// Owner of an address-book entry.
///
/// Source: `packages/sdk/src/types/generated/AddressOwner.ts`;
/// SPEC `store.yaml#/components/schemas/AddressOwner`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AddressOwner with _$AddressOwner {
  const AddressOwner._();

  /// Creates an address owner.
  const factory AddressOwner({
    required String id,
    required AddressOwnerType type,
    String? name,
  }) = _AddressOwner;

  /// Parses an address owner from its JSON shape.
  factory AddressOwner.fromJson(Map<String, Object?> json) => AddressOwner(
    id: json['id'] as String,
    type: AddressOwnerType.fromJson(json['type']),
    name: json['name'] as String?,
  );

  /// Owner id.
  @override
  @override
  String get id;

  /// Owner kind (built-ins; extensions may add more).
  @override
  @override
  AddressOwnerType get type;

  /// Owner name, when reported.
  @override
  @override
  String? get name;

  /// Serializes this owner back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': type.toJson(),
    'name': name,
  };
}

/// A postal address: cart address or address-book entry.
///
/// Source: `packages/sdk/src/types/generated/Address.ts`;
/// SPEC `store.yaml#/components/schemas/Address`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Address with _$Address {
  const Address._();

  /// Creates an address.
  const factory Address({
    required String id,
    String? label,
    String? firstName,
    String? lastName,
    required String fullName,
    String? address1,
    String? address2,
    String? postalCode,
    String? city,
    String? phone,
    String? company,
    required String countryName,
    required CountryCode countryCode,
    String? stateText,
    String? stateCode,
    required bool quickCheckout,
    required bool isDefaultBilling,
    required bool isDefaultShipping,
    String? stateAbbr,
    required String countryIso,
    String? stateName,
    AddressOwner? owner,
    List<CustomField>? customFields,
  }) = _Address;

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
  @override
  @override
  String get id;

  /// Address-book label, when set.
  @override
  @override
  String? get label;

  /// First name, when set.
  @override
  @override
  String? get firstName;

  /// Last name, when set.
  @override
  @override
  String? get lastName;

  /// Computed full name.
  @override
  @override
  String get fullName;

  /// Street line 1, when set.
  @override
  @override
  String? get address1;

  /// Street line 2, when set.
  @override
  @override
  String? get address2;

  /// Postal code, when set.
  @override
  @override
  String? get postalCode;

  /// City, when set.
  @override
  @override
  String? get city;

  /// Phone, when set.
  @override
  @override
  String? get phone;

  /// Company, when set.
  @override
  @override
  String? get company;

  /// Country name, as reported by the API.
  @override
  @override
  String get countryName;

  /// ISO country code.
  @override
  @override
  CountryCode get countryCode;

  /// State text, when set.
  @override
  @override
  String? get stateText;

  /// ISO state code, when set.
  @override
  @override
  String? get stateCode;

  /// Whether this address was created via quick checkout.
  @override
  @override
  bool get quickCheckout;

  /// Whether this is the default billing address.
  @override
  @override
  bool get isDefaultBilling;

  /// Whether this is the default shipping address.
  @override
  @override
  bool get isDefaultShipping;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  @override
  String? get stateAbbr;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  @override
  String get countryIso;

  /// State name, when set.
  @override
  @override
  String? get stateName;

  /// Address-book origin, when reported (see contract §4:
  /// `carts.addresses.list`).
  @override
  @override
  AddressOwner? get owner;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// A problem found with the cart (e.g. an item removed after a stock change).
///
/// Source: inline `Cart['warnings'][number]`, aliased as `CartWarning` in
/// `packages/sdk/src/types/index.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CartWarning with _$CartWarning {
  const CartWarning._();

  /// Creates a cart warning.
  const factory CartWarning({
    required String code,
    required String message,
    String? lineItemId,
    String? variantId,
    int? itemIndex,
  }) = _CartWarning;

  /// Parses a cart warning from its JSON shape.
  factory CartWarning.fromJson(Map<String, Object?> json) => CartWarning(
    code: json['code'] as String,
    message: json['message'] as String,
    lineItemId: json['line_item_id'] as String?,
    variantId: json['variant_id'] as String?,
    itemIndex: (json['item_index'] as num?)?.toInt(),
  );

  /// Machine-readable code.
  @override
  @override
  String get code;

  /// Human-readable message.
  @override
  @override
  String get message;

  /// Affected line item, when reported.
  @override
  @override
  String? get lineItemId;

  /// Affected variant, when reported.
  @override
  @override
  String? get variantId;

  /// Affected item index, when reported.
  @override
  @override
  int? get itemIndex;

  /// Serializes this warning back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'code': code,
    'message': message,
    'line_item_id': lineItemId,
    'variant_id': variantId,
    'item_index': itemIndex,
  };
}

/// A single unsatisfied checkout prerequisite.
///
/// Source: inline `Cart['requirements'][number]`, aliased as
/// `CheckoutRequirement` in `packages/sdk/src/types/index.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class CheckoutRequirement with _$CheckoutRequirement {
  const CheckoutRequirement._();

  /// Creates a checkout requirement.
  const factory CheckoutRequirement({
    required String step,
    required String field,
    required String code,
    required String message,
  }) = _CheckoutRequirement;

  /// Parses a requirement from its JSON shape.
  factory CheckoutRequirement.fromJson(Map<String, Object?> json) =>
      CheckoutRequirement(
        step: json['step'] as String,
        field: json['field'] as String,
        code: json['code'] as String,
        message: json['message'] as String,
      );

  /// Checkout step the prerequisite belongs to (e.g. `address`).
  @override
  @override
  String get step;

  /// Field that still needs satisfying (e.g. `shipping_address`).
  @override
  @override
  String get field;

  /// Machine-readable code.
  @override
  @override
  String get code;

  /// Human-readable message.
  @override
  @override
  String get message;

  /// Serializes this requirement back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'step': step,
    'field': field,
    'code': code,
    'message': message,
  };
}

/// One tax line: a single applied tax.
///
/// Source: `packages/sdk/src/types/generated/TaxLine.ts`;
/// SPEC `store.yaml#/components/schemas/TaxLine`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class TaxLine with _$TaxLine {
  const TaxLine._();

  /// Creates a tax line.
  const factory TaxLine({
    required String id,
    required String label,
    required bool included,
    required bool credit,
    String? rate,
    String? taxRateId,
    String? lineItemId,
    String? fulfillmentId,
    String? feeId,
    String? returnLineItemId,
    String? claimLineItemId,
    String? exchangeLineItemId,
    String? amount,
  }) = _TaxLine;

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
  @override
  @override
  String get id;

  /// Tax label.
  @override
  @override
  String get label;

  /// Whether the tax is included in prices (vs added on top).
  @override
  @override
  bool get included;

  /// Whether this line is a credit.
  @override
  @override
  bool get credit;

  /// Tax rate, decimal string, when reported.
  @override
  @override
  String? get rate;

  /// Owning tax rate id, when reported.
  @override
  @override
  String? get taxRateId;

  /// Owning line item id, when set.
  @override
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  @override
  String? get fulfillmentId;

  /// Owning fee id, when set.
  @override
  @override
  String? get feeId;

  /// Owning return line item id, when set.
  @override
  @override
  String? get returnLineItemId;

  /// Owning claim line item id, when set.
  @override
  @override
  String? get claimLineItemId;

  /// Owning exchange line item id, when set.
  @override
  @override
  String? get exchangeLineItemId;

  /// Tax amount, decimal string, when reported.
  @override
  @override
  String? get amount;

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
}

/// A promotion applied to a cart or order.
///
/// Source: `packages/sdk/src/types/generated/AppliedPromotion.ts`;
/// SPEC `store.yaml#/components/schemas/AppliedPromotion`. Upstream renamed
/// the legacy `Discount` alias to this (the type of `cart.discounts` and
/// `order.discounts`).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class AppliedPromotion with _$AppliedPromotion {
  const AppliedPromotion._();

  /// Creates an applied promotion.
  const factory AppliedPromotion({
    required String id,
    required String promotionId,
    required String name,
    String? description,
    String? code,
    String? amount,
  }) = _AppliedPromotion;

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
  @override
  @override
  String get id;

  /// Owning promotion id.
  @override
  @override
  String get promotionId;

  /// Promotion name.
  @override
  @override
  String get name;

  /// Promotion description, when set.
  @override
  @override
  String? get description;

  /// Redeemed code, when the promotion used one.
  @override
  @override
  String? get code;

  /// Discount amount as a negative decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Serializes this promotion back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'promotion_id': promotionId,
    'name': name,
    'description': description,
    'code': code,
    'amount': amount,
  };
}

/// A discount-code record: code, kind, value and applied amount.
///
/// Mirrors the SPEC `Discount` schema (which carries `code`, `value` and
/// decimal-string `amount`) and the `{code}` apply/remove payloads of
/// `POST/DELETE /carts/{id}/discount_codes` (contract §4, `SRC 672/683`).
/// Sources: `packages/sdk/src/types/generated/Discount.ts`;
/// SPEC `store.yaml#/components/schemas/Discount`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class DiscountCode with _$DiscountCode {
  const DiscountCode._();

  /// Creates a discount-code record.
  const factory DiscountCode({
    required String id,
    required String label,
    required DiscountKind kind,
    String? code,
    String? valueType,
    String? value,
    String? promotionId,
    String? lineItemId,
    String? fulfillmentId,
    String? amount,
  }) = _DiscountCode;

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
  @override
  @override
  String get id;

  /// Discount label (absent in `{code}` apply payloads).
  @override
  @override
  String get label;

  /// Discount origin: promotion rule or manual adjustment.
  @override
  @override
  DiscountKind get kind;

  /// The redeemed code, when reported.
  @override
  @override
  String? get code;

  /// Value type, when reported (open string).
  @override
  @override
  String? get valueType;

  /// Value, decimal string, when reported.
  @override
  @override
  String? get value;

  /// Owning promotion id, when reported.
  @override
  @override
  String? get promotionId;

  /// Owning line item id, when set.
  @override
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  @override
  String? get fulfillmentId;

  /// Applied amount, decimal string, when reported.
  @override
  @override
  String? get amount;

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
}

/// A fee charged on a cart or order (handling, duty, …).
///
/// Source: `packages/sdk/src/types/generated/Fee.ts`;
/// SPEC `store.yaml#/components/schemas/Fee`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Fee with _$Fee {
  const Fee._();

  /// Creates a fee.
  const factory Fee({
    required String id,
    required String label,
    required FeeKind kind,
    String? lineItemId,
    String? fulfillmentId,
    String? amount,
  }) = _Fee;

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
  @override
  @override
  String get id;

  /// Fee label.
  @override
  @override
  String get label;

  /// What sort of charge this is. Extensions may register further kinds;
  /// unrecognized values map to [FeeKind.unknown].
  @override
  @override
  FeeKind get kind;

  /// Owning line item id, when set.
  @override
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  @override
  String? get fulfillmentId;

  /// Fee amount, decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Serializes this fee back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'label': label,
    'kind': kind.toJson(),
    'line_item_id': lineItemId,
    'fulfillment_id': fulfillmentId,
    'amount': amount,
  };
}

/// A digital link attached to a line item or owned by a customer.
///
/// Source: `packages/sdk/src/types/generated/DigitalLink.ts`;
/// SPEC `store.yaml#/components/schemas/DigitalLink`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class DigitalLink with _$DigitalLink {
  const DigitalLink._();

  /// Creates a digital link.
  const factory DigitalLink({
    required String id,
    required int accessCounter,
    required String filename,
    required String contentType,
    required String downloadUrl,
    String? expiresAt,
    required bool authorizable,
    required bool expired,
    required bool accessLimitExceeded,
  }) = _DigitalLink;

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
  @override
  @override
  String get id;

  /// Number of recorded accesses.
  @override
  @override
  int get accessCounter;

  /// File name.
  @override
  @override
  String get filename;

  /// File content type.
  @override
  @override
  String get contentType;

  /// Download URL (follow redirects; see contract §7 for the
  /// authenticated `digital_links/{id}` variant).
  @override
  @override
  String get downloadUrl;

  /// Expiry timestamp, when set.
  @override
  @override
  String? get expiresAt;

  /// Whether authorization is required to download.
  @override
  @override
  bool get authorizable;

  /// Whether the link expired.
  @override
  @override
  bool get expired;

  /// Whether the access limit was exceeded.
  @override
  @override
  bool get accessLimitExceeded;

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
}

/// One line item of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/LineItem.ts`;
/// SPEC `store.yaml#/components/schemas/LineItem`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class LineItem with _$LineItem {
  const LineItem._();

  /// Creates a line item.
  const factory LineItem({
    required String id,
    required String variantId,
    String? sellerId,
    required bool preorder,
    String? preorderShipsAt,
    required int quantity,
    required CurrencyCode currency,
    required String name,
    required String slug,
    required String optionsText,
    String? price,
    String? total,
    String? adjustmentTotal,
    String? additionalTaxTotal,
    String? includedTaxTotal,
    String? discountTotal,
    String? preTaxAmount,
    String? discountedAmount,
    String? compareAtAmount,
    String? thumbnailUrl,
    Seller? seller,
    required List<OptionValue> optionValues,
    List<DigitalLink>? digitalLinks,
    List<TaxLine>? taxLines,
    List<CustomField>? customFields,
  }) = _LineItem;

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
  @override
  @override
  String get id;

  /// Bought variant id.
  @override
  @override
  String get variantId;

  /// Owning seller id, when set.
  @override
  @override
  String? get sellerId;

  /// Whether the line is a preorder.
  @override
  @override
  bool get preorder;

  /// Preorder shipping date, when set.
  @override
  @override
  String? get preorderShipsAt;

  /// Quantity.
  @override
  @override
  int get quantity;

  /// Pricing currency.
  @override
  @override
  CurrencyCode get currency;

  /// Variant/product name snapshot.
  @override
  @override
  String get name;

  /// Variant/product slug snapshot.
  @override
  @override
  String get slug;

  /// Human-readable option summary.
  @override
  @override
  String get optionsText;

  /// Price of one unit, decimal string, when reported.
  @override
  @override
  String? get price;

  /// Line total (price × quantity, with discounts, fees and added tax),
  /// decimal string, when reported.
  @override
  @override
  String? get total;

  /// Discounts, fees and added tax together, decimal string, when reported.
  @override
  @override
  String? get adjustmentTotal;

  /// Tax added on top of the price, decimal string, when reported.
  @override
  @override
  String? get additionalTaxTotal;

  /// Tax already included in the price, decimal string, when reported.
  @override
  @override
  String? get includedTaxTotal;

  /// Promotion discounts on this line (negative), decimal string.
  @override
  @override
  String? get discountTotal;

  /// Line total after discounts, without tax, decimal string.
  @override
  @override
  String? get preTaxAmount;

  /// Price × quantity after discounts, decimal string.
  @override
  @override
  String? get discountedAmount;

  /// Compare-at price × quantity, decimal string, when the variant has one.
  @override
  @override
  String? get compareAtAmount;

  /// Thumbnail URL, when set.
  @override
  @override
  String? get thumbnailUrl;

  /// Expanded seller, when requested via `expand`.
  @override
  @override
  Seller? get seller;

  /// Option values identifying the bought variant.
  @override
  @override
  List<OptionValue> get optionValues;

  /// Digital links of this line, when expanded.
  @override
  @override
  List<DigitalLink>? get digitalLinks;

  /// Tax lines of this line, when present.
  @override
  @override
  List<TaxLine>? get taxLines;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// Freight summary of a delivery rate (carton/pallet shipping).
///
/// Source: `packages/sdk/src/types/generated/FreightSummary.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class FreightSummary with _$FreightSummary {
  const FreightSummary._();

  /// Creates a freight summary.
  const factory FreightSummary({
    required int totalUnits,
    required int totalCartons,
    int? totalPallets,
    required String totalVolume,
    required String totalWeight,
    required bool complete,
  }) = _FreightSummary;

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
  @override
  @override
  int get totalUnits;

  /// Total cartons.
  @override
  @override
  int get totalCartons;

  /// Total pallets, when reported.
  @override
  @override
  int? get totalPallets;

  /// Total volume, as reported by the API (kept as-is).
  @override
  @override
  String get totalVolume;

  /// Total weight, as reported by the API (kept as-is).
  @override
  @override
  String get totalWeight;

  /// Whether the summary is complete.
  @override
  @override
  bool get complete;

  /// Serializes this summary back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'total_units': totalUnits,
    'total_cartons': totalCartons,
    'total_pallets': totalPallets,
    'total_volume': totalVolume,
    'total_weight': totalWeight,
    'complete': complete,
  };
}

/// A stock location fulfilling a shipment.
///
/// Source: `packages/sdk/src/types/generated/StockLocation.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class StockLocation with _$StockLocation {
  const StockLocation._();

  /// Creates a stock location.
  const factory StockLocation({
    required String id,
    required String name,
    String? address1,
    String? city,
    String? zipcode,
    CountryCode? countryCode,
    String? countryName,
    String? stateCode,
    String? stateText,
    String? countryIso,
    String? stateAbbr,
    int? pickupReadyInMinutes,
    String? pickupInstructions,
  }) = _StockLocation;

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
  @override
  @override
  String get id;

  /// Location name.
  @override
  @override
  String get name;

  /// Street, when reported.
  @override
  @override
  String? get address1;

  /// City, when reported.
  @override
  @override
  String? get city;

  /// Postal code, when reported.
  @override
  @override
  String? get zipcode;

  /// ISO country code, when reported.
  @override
  @override
  CountryCode? get countryCode;

  /// Country name, when reported.
  @override
  @override
  String? get countryName;

  /// ISO state code, when reported.
  @override
  @override
  String? get stateCode;

  /// State text, when reported.
  @override
  @override
  String? get stateText;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  @override
  String? get countryIso;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  @override
  String? get stateAbbr;

  /// Minutes until a pickup is ready, when reported.
  @override
  @override
  int? get pickupReadyInMinutes;

  /// Pickup instructions, when set.
  @override
  @override
  String? get pickupInstructions;

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
}

/// A delivery method available to a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryMethod.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryMethod`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class DeliveryMethod with _$DeliveryMethod {
  const DeliveryMethod._();

  /// Creates a delivery method.
  const factory DeliveryMethod({
    required String id,
    required String name,
    String? code,
    int? estimatedTransitBusinessDaysMin,
    int? estimatedTransitBusinessDaysMax,
    required bool digital,
    required bool pickup,
    required bool pickupPoint,
    List<CustomField>? customFields,
  }) = _DeliveryMethod;

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
  @override
  @override
  String get id;

  /// Method name.
  @override
  @override
  String get name;

  /// Method code, when set.
  @override
  @override
  String? get code;

  /// Minimum estimated transit business days, when reported.
  @override
  @override
  int? get estimatedTransitBusinessDaysMin;

  /// Maximum estimated transit business days, when reported.
  @override
  @override
  int? get estimatedTransitBusinessDaysMax;

  /// Whether this method delivers digitally.
  @override
  @override
  bool get digital;

  /// Whether this method is a pickup.
  @override
  @override
  bool get pickup;

  /// Whether this method delivers to a pickup point.
  @override
  @override
  bool get pickupPoint;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// One carrier delivery inside a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/Delivery.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Delivery with _$Delivery {
  const Delivery._();

  /// Creates a delivery.
  const factory Delivery({
    required String id,
    required String trackingNumber,
    String? carrier,
    String? carrierName,
    String? service,
    required DeliveryStatus status,
    String? trackingUrl,
    String? estimatedDeliveryAt,
    String? deliveredAt,
  }) = _Delivery;

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
  @override
  @override
  String get id;

  /// Carrier tracking number.
  @override
  @override
  String get trackingNumber;

  /// Carrier code, when reported.
  @override
  @override
  String? get carrier;

  /// Carrier name, when reported.
  @override
  @override
  String? get carrierName;

  /// Service level, when reported.
  @override
  @override
  String? get service;

  /// Delivery status.
  @override
  @override
  DeliveryStatus get status;

  /// Tracking URL, when reported.
  @override
  @override
  String? get trackingUrl;

  /// Estimated delivery timestamp, when reported.
  @override
  @override
  String? get estimatedDeliveryAt;

  /// Delivery timestamp, when reported.
  @override
  @override
  String? get deliveredAt;

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
}

/// One selectable delivery rate of a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryRate.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryRate`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class DeliveryRate with _$DeliveryRate {
  const DeliveryRate._();

  /// Creates a delivery rate.
  const factory DeliveryRate({
    required String id,
    required String deliveryMethodId,
    required String name,
    required bool selected,
    String? cost,
    String? total,
    String? additionalTaxTotal,
    String? includedTaxTotal,
    String? taxTotal,
    String? carrier,
    String? serviceLevel,
    String? estimatedDeliveryDate,
    required bool unpriced,
    FreightSummary? freightSummary,
    required DeliveryMethod deliveryMethod,
  }) = _DeliveryRate;

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
  @override
  @override
  String get id;

  /// Owning delivery method id.
  @override
  @override
  String get deliveryMethodId;

  /// Rate name.
  @override
  @override
  String get name;

  /// Whether this rate is currently selected.
  @override
  @override
  bool get selected;

  /// Rate cost, decimal string, when reported.
  @override
  @override
  String? get cost;

  /// Rate total, decimal string, when reported.
  @override
  @override
  String? get total;

  /// Tax added on top, decimal string, when reported.
  @override
  @override
  String? get additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  @override
  @override
  String? get includedTaxTotal;

  /// Total tax, decimal string, when reported.
  @override
  @override
  String? get taxTotal;

  /// Carrier, when reported.
  @override
  @override
  String? get carrier;

  /// Service level, when reported.
  @override
  @override
  String? get serviceLevel;

  /// Estimated delivery date, when reported.
  @override
  @override
  String? get estimatedDeliveryDate;

  /// Whether the rate is unpriced.
  @override
  @override
  bool get unpriced;

  /// Freight summary, for carton/pallet shipping.
  @override
  @override
  FreightSummary? get freightSummary;

  /// The delivery method of this rate.
  @override
  @override
  DeliveryMethod get deliveryMethod;

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
}

/// One line allocation inside a fulfillment.
///
/// Source: inline `Fulfillment['items'][number]` in
/// `packages/sdk/src/types/generated/Fulfillment.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class FulfillmentItem with _$FulfillmentItem {
  const FulfillmentItem._();

  /// Creates a fulfillment line allocation.
  const factory FulfillmentItem({
    required String itemId,
    required String variantId,
    required int quantity,
  }) = _FulfillmentItem;

  /// Parses a fulfillment line allocation from its JSON shape.
  factory FulfillmentItem.fromJson(Map<String, Object?> json) =>
      FulfillmentItem(
        itemId: json['item_id'] as String,
        variantId: json['variant_id'] as String,
        quantity: (json['quantity'] as num).toInt(),
      );

  /// Line item id.
  @override
  @override
  String get itemId;

  /// Variant id.
  @override
  @override
  String get variantId;

  /// Allocated quantity.
  @override
  @override
  int get quantity;

  /// Serializes this allocation back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'item_id': itemId,
    'variant_id': variantId,
    'quantity': quantity,
  };
}

/// A fulfillment (shipment) of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Fulfillment.ts`;
/// SPEC `store.yaml#/components/schemas/Fulfillment`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Fulfillment with _$Fulfillment {
  const Fulfillment._();

  /// Creates a fulfillment.
  const factory Fulfillment({
    required String id,
    required String number,
    String? tracking,
    String? trackingUrl,
    Map<String, Object?>? pickupPointData,
    String? selectedDeliveryRateId,
    required bool unpriced,
    String? cost,
    String? total,
    String? discountTotal,
    String? additionalTaxTotal,
    String? includedTaxTotal,
    String? taxTotal,
    required FulfillmentStatus status,
    required FulfillmentType fulfillmentType,
    String? fulfilledAt,
    String? deliveredAt,
    required List<FulfillmentItem> items,
    required List<Delivery> deliveries,
    required DeliveryMethod deliveryMethod,
    required StockLocation stockLocation,
    required List<DeliveryRate> deliveryRates,
    List<TaxLine>? taxLines,
    List<CustomField>? customFields,
  }) = _Fulfillment;

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
  @override
  @override
  String get id;

  /// Fulfillment number.
  @override
  @override
  String get number;

  /// Tracking reference, when reported.
  @override
  @override
  String? get tracking;

  /// Tracking URL, when reported.
  @override
  @override
  String? get trackingUrl;

  /// Pickup-point payload, when reported (untyped upstream).
  @override
  @override
  Map<String, Object?>? get pickupPointData;

  /// Selected delivery rate id, when reported.
  @override
  @override
  String? get selectedDeliveryRateId;

  /// Whether the fulfillment is unpriced.
  @override
  @override
  bool get unpriced;

  /// Fulfillment cost, decimal string, when reported.
  @override
  @override
  String? get cost;

  /// Fulfillment total, decimal string, when reported.
  @override
  @override
  String? get total;

  /// Delivery discounts, decimal string, when reported.
  @override
  @override
  String? get discountTotal;

  /// Tax added on top, decimal string, when reported.
  @override
  @override
  String? get additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  @override
  @override
  String? get includedTaxTotal;

  /// Total tax, decimal string, when reported.
  @override
  @override
  String? get taxTotal;

  /// Fulfillment status.
  @override
  @override
  FulfillmentStatus get status;

  /// How this fulfillment is delivered.
  @override
  @override
  FulfillmentType get fulfillmentType;

  /// Fulfillment timestamp, when reported.
  @override
  @override
  String? get fulfilledAt;

  /// Delivery timestamp, when reported.
  @override
  @override
  String? get deliveredAt;

  /// Which line items (and units) are in this fulfillment.
  @override
  @override
  List<FulfillmentItem> get items;

  /// Carrier deliveries of this fulfillment.
  @override
  @override
  List<Delivery> get deliveries;

  /// The delivery method of this fulfillment.
  @override
  @override
  DeliveryMethod get deliveryMethod;

  /// The stock location fulfilling this fulfillment.
  @override
  @override
  StockLocation get stockLocation;

  /// Selectable delivery rates.
  @override
  @override
  List<DeliveryRate> get deliveryRates;

  /// Tax lines, when present.
  @override
  @override
  List<TaxLine>? get taxLines;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// A payment method available on a cart.
///
/// Source: `packages/sdk/src/types/generated/PaymentMethod.ts`;
/// SPEC `store.yaml#/components/schemas/PaymentMethod`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class PaymentMethod with _$PaymentMethod {
  const PaymentMethod._();

  /// Creates a payment method.
  const factory PaymentMethod({
    required String id,
    required String name,
    String? description,
    required String type,
    required bool sessionRequired,
    required bool sourceRequired,
    List<CustomField>? customFields,
  }) = _PaymentMethod;

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
  @override
  @override
  String get id;

  /// Method name.
  @override
  @override
  String get name;

  /// Method description, when set.
  @override
  @override
  String? get description;

  /// Method type. Built-ins: `check`, `store_credit`,
  /// `custom_payment_source_method`, `bogus` (test only); payment-provider
  /// gems register their own (e.g. `stripe`). Kept as an open string.
  @override
  @override
  String get type;

  /// Whether a payment session is required before paying.
  @override
  @override
  bool get sessionRequired;

  /// Whether a payment source is required before paying.
  @override
  @override
  bool get sourceRequired;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// A payment on a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Payment.ts`;
/// SPEC `store.yaml#/components/schemas/Payment`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Payment with _$Payment {
  const Payment._();

  /// Creates a payment.
  const factory Payment({
    required String id,
    required String paymentMethodId,
    String? responseCode,
    required String number,
    required PaymentStatus status,
    String? amount,
    PaymentSourceType? sourceType,
    String? sourceId,
    Map<String, Object?>? source,
    required PaymentMethod paymentMethod,
    List<CustomField>? customFields,
  }) = _Payment;

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
  @override
  @override
  String get id;

  /// Owning payment method id.
  @override
  @override
  String get paymentMethodId;

  /// Provider response code, when reported.
  @override
  @override
  String? get responseCode;

  /// Payment number.
  @override
  @override
  String get number;

  /// Payment status.
  @override
  @override
  PaymentStatus get status;

  /// Payment amount, decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Polymorphic source kind, when reported.
  @override
  @override
  PaymentSourceType? get sourceType;

  /// Polymorphic source id, when reported.
  @override
  @override
  String? get sourceId;

  /// Polymorphic source payload (`credit_card` | `store_credit` |
  /// `payment_source`, per [sourceType]). Kept raw: no typed union exists
  /// upstream for the embedded shape (Limitation; narrow later if a
  /// serializer pins it down).
  @override
  @override
  Map<String, Object?>? get source;

  /// The payment method of this payment.
  @override
  @override
  PaymentMethod get paymentMethod;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// A gift card: code, status and decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/GiftCard.ts`;
/// SPEC `store.yaml#/components/schemas/GiftCard`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class GiftCard with _$GiftCard {
  const GiftCard._();

  /// Creates a gift card.
  const factory GiftCard({
    required String id,
    required String code,
    required GiftCardStatus status,
    required CurrencyCode currency,
    String? amount,
    String? amountUsed,
    String? amountAuthorized,
    String? amountRemaining,
    String? expiresAt,
    String? redeemedAt,
    required bool expired,
    required bool active,
    List<CustomField>? customFields,
  }) = _GiftCard;

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
  @override
  @override
  String get id;

  /// Redemption code.
  @override
  @override
  String get code;

  /// Lifecycle status.
  @override
  @override
  GiftCardStatus get status;

  /// Gift-card currency.
  @override
  @override
  CurrencyCode get currency;

  /// Original amount, decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Used amount, decimal string, when reported.
  @override
  @override
  String? get amountUsed;

  /// Authorized amount, decimal string, when reported.
  @override
  @override
  String? get amountAuthorized;

  /// Remaining amount, decimal string, when reported.
  @override
  @override
  String? get amountRemaining;

  /// Expiry timestamp, when set.
  @override
  @override
  String? get expiresAt;

  /// Redemption timestamp, when set.
  @override
  @override
  String? get redeemedAt;

  /// Whether the card expired.
  @override
  @override
  bool get expired;

  /// Whether the card is active.
  @override
  @override
  bool get active;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// A store-credit record with decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/StoreCredit.ts`;
/// SPEC `store.yaml#/components/schemas/StoreCredit`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class StoreCredit with _$StoreCredit {
  const StoreCredit._();

  /// Creates a store-credit record.
  const factory StoreCredit({
    required String id,
    String? amount,
    String? amountUsed,
    String? amountRemaining,
    required CurrencyCode currency,
    List<CustomField>? customFields,
  }) = _StoreCredit;

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
  @override
  @override
  String get id;

  /// Original amount, decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Used amount, decimal string, when reported.
  @override
  @override
  String? get amountUsed;

  /// Remaining amount, decimal string, when reported.
  @override
  @override
  String? get amountRemaining;

  /// Store-credit currency.
  @override
  @override
  CurrencyCode get currency;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

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
}

/// The active cart (checkout in progress).
///
/// Source: `packages/sdk/src/types/generated/Cart.ts`;
/// SPEC `store.yaml#/components/schemas/Cart`.
/// `checkout_steps` / `state_lock_version` appear only in the TS-SDK mocks
/// (`tests/mocks/handlers.ts`, per contract §4) — not in the serializer type
/// or the SPEC — so they are not modeled here (Limitation).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Cart with _$Cart {
  const Cart._();

  /// Creates a cart.
  const factory Cart({
    String? marketId,
    String? channelId,
    String? preferredStockLocationId,
    String? companyId,
    String? companyName,
    required bool poNumberRequired,
    String? poDocumentFilename,
    int? poDocumentByteSize,
    required String number,
    required String token,
    String? email,
    String? customerNote,
    String? poNumber,
    required CurrencyCode currency,
    LocaleCode? locale,
    required int totalQuantity,
    required List<CartWarning> warnings,
    String? couponCode,
    String? itemTotal,
    String? discountTotal,
    String? taxTotal,
    String? includedTaxTotal,
    String? additionalTaxTotal,
    String? deliveryTotal,
    String? feeTotal,
    String? giftCardTotal,
    String? storeCreditTotal,
    String? total,
    String? amountDue,
    required bool coveredByStoreCredit,
    required List<Payment> payments,
    String? adjustmentTotal,
    required String currentStep,
    required List<String> completedSteps,
    required List<CheckoutRequirement> requirements,
    String? orderMinimum,
    String? orderMinimumShortfall,
    bool? belowOrderMinimum,
    FreightSummary? freightSummary,
    required bool shippingEqBillingAddress,
    required List<AppliedPromotion> discounts,
    required List<Fee> fees,
    required List<LineItem> items,
    required List<Fulfillment> fulfillments,
    Address? billingAddress,
    Address? shippingAddress,
    required List<PaymentMethod> paymentMethods,
    GiftCard? giftCard,
    Market? market,
  }) = _Cart;

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
  @override
  @override
  String? get marketId;

  /// Owning channel id, when set.
  @override
  @override
  String? get channelId;

  /// Preferred stock location id, when set.
  @override
  @override
  String? get preferredStockLocationId;

  /// Owning company id, when set.
  @override
  @override
  String? get companyId;

  /// Owning company name, when set.
  @override
  @override
  String? get companyName;

  /// Whether a PO number is required to complete checkout.
  @override
  @override
  bool get poNumberRequired;

  /// Uploaded PO document file name, when set.
  @override
  @override
  String? get poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  @override
  @override
  int? get poDocumentByteSize;

  /// Cart number. Deprecated upstream in favor of `id` — a cart has no
  /// order number — but still serialized; kept as a plain field.
  @override
  @override
  String get number;

  /// Guest cart token (sent as `x-spree-token` via `spreeToken`).
  @override
  @override
  String get token;

  /// Customer email, when set.
  @override
  @override
  String? get email;

  /// Customer note, when set.
  @override
  @override
  String? get customerNote;

  /// Purchase-order number, when set.
  @override
  @override
  String? get poNumber;

  /// Cart currency.
  @override
  @override
  CurrencyCode get currency;

  /// Cart locale, when set.
  @override
  @override
  LocaleCode? get locale;

  /// Total item quantity.
  @override
  @override
  int get totalQuantity;

  /// Problems found with the cart (e.g. stock changes).
  @override
  @override
  List<CartWarning> get warnings;

  /// Applied coupon code, when set.
  @override
  @override
  String? get couponCode;

  /// Line items total before discounts/fees/delivery, decimal string.
  @override
  @override
  String? get itemTotal;

  /// Promotion discounts (negative), decimal string.
  @override
  @override
  String? get discountTotal;

  /// All tax (included + added), decimal string.
  @override
  @override
  String? get taxTotal;

  /// Tax included in prices, decimal string.
  @override
  @override
  String? get includedTaxTotal;

  /// Tax added on top of prices, decimal string.
  @override
  @override
  String? get additionalTaxTotal;

  /// Delivery cost before delivery discounts, decimal string.
  @override
  @override
  String? get deliveryTotal;

  /// All fees, decimal string.
  @override
  @override
  String? get feeTotal;

  /// What a gift card pays, decimal string.
  @override
  @override
  String? get giftCardTotal;

  /// What store credit pays, decimal string.
  @override
  @override
  String? get storeCreditTotal;

  /// Grand total, decimal string.
  @override
  @override
  String? get total;

  /// Remainder to pay after payments and store credit, decimal string.
  @override
  @override
  String? get amountDue;

  /// Whether store credit covers the cart.
  @override
  @override
  bool get coveredByStoreCredit;

  /// Payments on the cart.
  @override
  @override
  List<Payment> get payments;

  /// Discounts, fees and added tax together, decimal string.
  @override
  @override
  String? get adjustmentTotal;

  /// Current checkout step.
  @override
  @override
  String get currentStep;

  /// Completed checkout steps.
  @override
  @override
  List<String> get completedSteps;

  /// What is still missing before the cart can be completed.
  @override
  @override
  List<CheckoutRequirement> get requirements;

  /// Order minimum, decimal string, when enforced.
  @override
  @override
  String? get orderMinimum;

  /// Shortfall below the order minimum, decimal string.
  @override
  @override
  String? get orderMinimumShortfall;

  /// Whether the cart is below the order minimum.
  @override
  @override
  bool? get belowOrderMinimum;

  /// Freight summary, for carton/pallet shipping.
  @override
  @override
  FreightSummary? get freightSummary;

  /// Whether the shipping address equals the billing address.
  @override
  @override
  bool get shippingEqBillingAddress;

  /// Applied promotions.
  @override
  @override
  List<AppliedPromotion> get discounts;

  /// Charged fees.
  @override
  @override
  List<Fee> get fees;

  /// Line items.
  @override
  @override
  List<LineItem> get items;

  /// Fulfillments (shipments).
  @override
  @override
  List<Fulfillment> get fulfillments;

  /// Billing address, when set.
  @override
  @override
  Address? get billingAddress;

  /// Shipping address, when set.
  @override
  @override
  Address? get shippingAddress;

  /// Payment methods available on the cart.
  @override
  @override
  List<PaymentMethod> get paymentMethods;

  /// Applied gift card, when set.
  @override
  @override
  GiftCard? get giftCard;

  /// Expanded market, when requested via `expand`.
  @override
  @override
  Market? get market;

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
}
