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
part 'cart.g.dart';

/// Owner of an address-book entry.
///
/// Source: `packages/sdk/src/types/generated/AddressOwner.ts`;
/// SPEC `store.yaml#/components/schemas/AddressOwner`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AddressOwner with _$AddressOwner {
  const AddressOwner._();

  /// Creates an address owner.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AddressOwner({
    required String id,
    @JsonKey(unknownEnumValue: AddressOwnerType.unknown)
    required AddressOwnerType type,
    String? name,
  }) = _AddressOwner;

  /// Parses an address owner from its JSON shape.
  factory AddressOwner.fromJson(Map<String, Object?> json) =>
      _$AddressOwnerFromJson(json);

  /// Owner id.
  @override
  String get id;

  /// Owner kind (built-ins; extensions may add more).
  @override
  AddressOwnerType get type;

  /// Owner name, when reported.
  @override
  String? get name;

  /// Serializes this owner back to its JSON shape.
}

/// A postal address: cart address or address-book entry.
///
/// Source: `packages/sdk/src/types/generated/Address.ts`;
/// SPEC `store.yaml#/components/schemas/Address`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Address with _$Address {
  const Address._();

  /// Creates an address.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
    @JsonKey(unknownEnumValue: CountryCode.unknown)
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
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Address;

  /// Parses an address from its JSON shape.
  factory Address.fromJson(Map<String, Object?> json) =>
      _$AddressFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Address-book label, when set.
  @override
  String? get label;

  /// First name, when set.
  @override
  String? get firstName;

  /// Last name, when set.
  @override
  String? get lastName;

  /// Computed full name.
  @override
  String get fullName;

  /// Street line 1, when set.
  @override
  String? get address1;

  /// Street line 2, when set.
  @override
  String? get address2;

  /// Postal code, when set.
  @override
  String? get postalCode;

  /// City, when set.
  @override
  String? get city;

  /// Phone, when set.
  @override
  String? get phone;

  /// Company, when set.
  @override
  String? get company;

  /// Country name, as reported by the API.
  @override
  String get countryName;

  /// ISO country code.
  @override
  CountryCode get countryCode;

  /// State text, when set.
  @override
  String? get stateText;

  /// ISO state code, when set.
  @override
  String? get stateCode;

  /// Whether this address was created via quick checkout.
  @override
  bool get quickCheckout;

  /// Whether this is the default billing address.
  @override
  bool get isDefaultBilling;

  /// Whether this is the default shipping address.
  @override
  bool get isDefaultShipping;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  String? get stateAbbr;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  String get countryIso;

  /// State name, when set.
  @override
  String? get stateName;

  /// Address-book origin, when reported (see contract §4:
  /// `carts.addresses.list`).
  @override
  AddressOwner? get owner;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this address back to its JSON shape.
}

/// A problem found with the cart (e.g. an item removed after a stock change).
///
/// Source: inline `Cart['warnings'][number]`, aliased as `CartWarning` in
/// `packages/sdk/src/types/index.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CartWarning with _$CartWarning {
  const CartWarning._();

  /// Creates a cart warning.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CartWarning({
    required String code,
    required String message,
    String? lineItemId,
    String? variantId,
    int? itemIndex,
  }) = _CartWarning;

  /// Parses a cart warning from its JSON shape.
  factory CartWarning.fromJson(Map<String, Object?> json) =>
      _$CartWarningFromJson(json);

  /// Machine-readable code.
  @override
  String get code;

  /// Human-readable message.
  @override
  String get message;

  /// Affected line item, when reported.
  @override
  String? get lineItemId;

  /// Affected variant, when reported.
  @override
  String? get variantId;

  /// Affected item index, when reported.
  @override
  int? get itemIndex;

  /// Serializes this warning back to its JSON shape.
}

/// A single unsatisfied checkout prerequisite.
///
/// Source: inline `Cart['requirements'][number]`, aliased as
/// `CheckoutRequirement` in `packages/sdk/src/types/index.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class CheckoutRequirement with _$CheckoutRequirement {
  const CheckoutRequirement._();

  /// Creates a checkout requirement.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CheckoutRequirement({
    required String step,
    required String field,
    required String code,
    required String message,
  }) = _CheckoutRequirement;

  /// Parses a requirement from its JSON shape.
  factory CheckoutRequirement.fromJson(Map<String, Object?> json) =>
      _$CheckoutRequirementFromJson(json);

  /// Checkout step the prerequisite belongs to (e.g. `address`).
  @override
  String get step;

  /// Field that still needs satisfying (e.g. `shipping_address`).
  @override
  String get field;

  /// Machine-readable code.
  @override
  String get code;

  /// Human-readable message.
  @override
  String get message;

  /// Serializes this requirement back to its JSON shape.
}

/// One tax line: a single applied tax.
///
/// Source: `packages/sdk/src/types/generated/TaxLine.ts`;
/// SPEC `store.yaml#/components/schemas/TaxLine`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class TaxLine with _$TaxLine {
  const TaxLine._();

  /// Creates a tax line.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
  factory TaxLine.fromJson(Map<String, Object?> json) =>
      _$TaxLineFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Tax label.
  @override
  String get label;

  /// Whether the tax is included in prices (vs added on top).
  @override
  bool get included;

  /// Whether this line is a credit.
  @override
  bool get credit;

  /// Tax rate, decimal string, when reported.
  @override
  String? get rate;

  /// Owning tax rate id, when reported.
  @override
  String? get taxRateId;

  /// Owning line item id, when set.
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  String? get fulfillmentId;

  /// Owning fee id, when set.
  @override
  String? get feeId;

  /// Owning return line item id, when set.
  @override
  String? get returnLineItemId;

  /// Owning claim line item id, when set.
  @override
  String? get claimLineItemId;

  /// Owning exchange line item id, when set.
  @override
  String? get exchangeLineItemId;

  /// Tax amount, decimal string, when reported.
  @override
  String? get amount;

  /// Serializes this tax line back to its JSON shape.
}

/// A promotion applied to a cart or order.
///
/// Source: `packages/sdk/src/types/generated/AppliedPromotion.ts`;
/// SPEC `store.yaml#/components/schemas/AppliedPromotion`. Upstream renamed
/// the legacy `Discount` alias to this (the type of `cart.discounts` and
/// `order.discounts`).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class AppliedPromotion with _$AppliedPromotion {
  const AppliedPromotion._();

  /// Creates an applied promotion.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
      _$AppliedPromotionFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning promotion id.
  @override
  String get promotionId;

  /// Promotion name.
  @override
  String get name;

  /// Promotion description, when set.
  @override
  String? get description;

  /// Redeemed code, when the promotion used one.
  @override
  String? get code;

  /// Discount amount as a negative decimal string, when reported.
  @override
  String? get amount;

  /// Serializes this promotion back to its JSON shape.
}

/// A discount-code record: code, kind, value and applied amount.
///
/// Mirrors the SPEC `Discount` schema (which carries `code`, `value` and
/// decimal-string `amount`) and the `{code}` apply/remove payloads of
/// `POST/DELETE /carts/{id}/discount_codes` (contract §4, `SRC 672/683`).
/// Sources: `packages/sdk/src/types/generated/Discount.ts`;
/// SPEC `store.yaml#/components/schemas/Discount`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class DiscountCode with _$DiscountCode {
  const DiscountCode._();

  /// Creates a discount-code record.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DiscountCode({
    @Default('') String id,
    @Default('') String label,
    @JsonKey(
      unknownEnumValue: DiscountKind.unknown,
      defaultValue: DiscountKind.unknown,
    )
    @Default(DiscountKind.unknown)
    DiscountKind kind,
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
  factory DiscountCode.fromJson(Map<String, Object?> json) =>
      _$DiscountCodeFromJson(json);

  /// Unique identifier (absent in `{code}` apply payloads).
  @override
  String get id;

  /// Discount label (absent in `{code}` apply payloads).
  @override
  String get label;

  /// Discount origin: promotion rule or manual adjustment.
  @override
  DiscountKind get kind;

  /// The redeemed code, when reported.
  @override
  String? get code;

  /// Value type, when reported (open string).
  @override
  String? get valueType;

  /// Value, decimal string, when reported.
  @override
  String? get value;

  /// Owning promotion id, when reported.
  @override
  String? get promotionId;

  /// Owning line item id, when set.
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  String? get fulfillmentId;

  /// Applied amount, decimal string, when reported.
  @override
  String? get amount;

  /// Serializes this record back to its JSON shape.
}

/// A fee charged on a cart or order (handling, duty, …).
///
/// Source: `packages/sdk/src/types/generated/Fee.ts`;
/// SPEC `store.yaml#/components/schemas/Fee`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Fee with _$Fee {
  const Fee._();

  /// Creates a fee.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Fee({
    required String id,
    required String label,
    @JsonKey(unknownEnumValue: FeeKind.unknown) required FeeKind kind,
    String? lineItemId,
    String? fulfillmentId,
    String? amount,
  }) = _Fee;

  /// Parses a fee from its JSON shape.
  factory Fee.fromJson(Map<String, Object?> json) => _$FeeFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Fee label.
  @override
  String get label;

  /// What sort of charge this is. Extensions may register further kinds;
  /// unrecognized values map to [FeeKind.unknown].
  @override
  FeeKind get kind;

  /// Owning line item id, when set.
  @override
  String? get lineItemId;

  /// Owning fulfillment id, when set.
  @override
  String? get fulfillmentId;

  /// Fee amount, decimal string, when reported.
  @override
  String? get amount;

  /// Serializes this fee back to its JSON shape.
}

/// A digital link attached to a line item or owned by a customer.
///
/// Source: `packages/sdk/src/types/generated/DigitalLink.ts`;
/// SPEC `store.yaml#/components/schemas/DigitalLink`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class DigitalLink with _$DigitalLink {
  const DigitalLink._();

  /// Creates a digital link.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
  factory DigitalLink.fromJson(Map<String, Object?> json) =>
      _$DigitalLinkFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Number of recorded accesses.
  @override
  int get accessCounter;

  /// File name.
  @override
  String get filename;

  /// File content type.
  @override
  String get contentType;

  /// Download URL (follow redirects; see contract §7 for the
  /// authenticated `digital_links/{id}` variant).
  @override
  String get downloadUrl;

  /// Expiry timestamp, when set.
  @override
  String? get expiresAt;

  /// Whether authorization is required to download.
  @override
  bool get authorizable;

  /// Whether the link expired.
  @override
  bool get expired;

  /// Whether the access limit was exceeded.
  @override
  bool get accessLimitExceeded;

  /// Serializes this link back to its JSON shape.
}

/// One line item of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/LineItem.ts`;
/// SPEC `store.yaml#/components/schemas/LineItem`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class LineItem with _$LineItem {
  const LineItem._();

  /// Creates a line item.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LineItem({
    required String id,
    required String variantId,
    String? sellerId,
    required bool preorder,
    String? preorderShipsAt,
    required int quantity,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
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
    @JsonKey(includeIfNull: false) List<DigitalLink>? digitalLinks,
    @JsonKey(includeIfNull: false) List<TaxLine>? taxLines,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _LineItem;

  /// Parses a line item from its JSON shape.
  factory LineItem.fromJson(Map<String, Object?> json) =>
      _$LineItemFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Bought variant id.
  @override
  String get variantId;

  /// Owning seller id, when set.
  @override
  String? get sellerId;

  /// Whether the line is a preorder.
  @override
  bool get preorder;

  /// Preorder shipping date, when set.
  @override
  String? get preorderShipsAt;

  /// Quantity.
  @override
  int get quantity;

  /// Pricing currency.
  @override
  CurrencyCode get currency;

  /// Variant/product name snapshot.
  @override
  String get name;

  /// Variant/product slug snapshot.
  @override
  String get slug;

  /// Human-readable option summary.
  @override
  String get optionsText;

  /// Price of one unit, decimal string, when reported.
  @override
  String? get price;

  /// Line total (price × quantity, with discounts, fees and added tax),
  /// decimal string, when reported.
  @override
  String? get total;

  /// Discounts, fees and added tax together, decimal string, when reported.
  @override
  String? get adjustmentTotal;

  /// Tax added on top of the price, decimal string, when reported.
  @override
  String? get additionalTaxTotal;

  /// Tax already included in the price, decimal string, when reported.
  @override
  String? get includedTaxTotal;

  /// Promotion discounts on this line (negative), decimal string.
  @override
  String? get discountTotal;

  /// Line total after discounts, without tax, decimal string.
  @override
  String? get preTaxAmount;

  /// Price × quantity after discounts, decimal string.
  @override
  String? get discountedAmount;

  /// Compare-at price × quantity, decimal string, when the variant has one.
  @override
  String? get compareAtAmount;

  /// Thumbnail URL, when set.
  @override
  String? get thumbnailUrl;

  /// Expanded seller, when requested via `expand`.
  @override
  Seller? get seller;

  /// Option values identifying the bought variant.
  @override
  List<OptionValue> get optionValues;

  /// Digital links of this line, when expanded.
  @override
  List<DigitalLink>? get digitalLinks;

  /// Tax lines of this line, when present.
  @override
  List<TaxLine>? get taxLines;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this line item back to its JSON shape.
}

/// Freight summary of a delivery rate (carton/pallet shipping).
///
/// Source: `packages/sdk/src/types/generated/FreightSummary.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class FreightSummary with _$FreightSummary {
  const FreightSummary._();

  /// Creates a freight summary.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FreightSummary({
    required int totalUnits,
    required int totalCartons,
    int? totalPallets,
    required String totalVolume,
    required String totalWeight,
    required bool complete,
  }) = _FreightSummary;

  /// Parses a freight summary from its JSON shape.
  factory FreightSummary.fromJson(Map<String, Object?> json) =>
      _$FreightSummaryFromJson(json);

  /// Total units.
  @override
  int get totalUnits;

  /// Total cartons.
  @override
  int get totalCartons;

  /// Total pallets, when reported.
  @override
  int? get totalPallets;

  /// Total volume, as reported by the API (kept as-is).
  @override
  String get totalVolume;

  /// Total weight, as reported by the API (kept as-is).
  @override
  String get totalWeight;

  /// Whether the summary is complete.
  @override
  bool get complete;

  /// Serializes this summary back to its JSON shape.
}

/// A stock location fulfilling a shipment.
///
/// Source: `packages/sdk/src/types/generated/StockLocation.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class StockLocation with _$StockLocation {
  const StockLocation._();

  /// Creates a stock location.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StockLocation({
    required String id,
    required String name,
    String? address1,
    String? city,
    String? zipcode,
    @JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode? countryCode,
    String? countryName,
    String? stateCode,
    String? stateText,
    String? countryIso,
    String? stateAbbr,
    int? pickupReadyInMinutes,
    String? pickupInstructions,
  }) = _StockLocation;

  /// Parses a stock location from its JSON shape.
  factory StockLocation.fromJson(Map<String, Object?> json) =>
      _$StockLocationFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Location name.
  @override
  String get name;

  /// Street, when reported.
  @override
  String? get address1;

  /// City, when reported.
  @override
  String? get city;

  /// Postal code, when reported.
  @override
  String? get zipcode;

  /// ISO country code, when reported.
  @override
  CountryCode? get countryCode;

  /// Country name, when reported.
  @override
  String? get countryName;

  /// ISO state code, when reported.
  @override
  String? get stateCode;

  /// State text, when reported.
  @override
  String? get stateText;

  /// Deprecated upstream in favor of [countryCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  String? get countryIso;

  /// Deprecated upstream in favor of [stateCode] (removal slated for
  /// 6.5) but still serialized; kept as a plain field.
  @override
  String? get stateAbbr;

  /// Minutes until a pickup is ready, when reported.
  @override
  int? get pickupReadyInMinutes;

  /// Pickup instructions, when set.
  @override
  String? get pickupInstructions;

  /// Serializes this location back to its JSON shape.
}

/// A delivery method available to a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryMethod.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryMethod`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class DeliveryMethod with _$DeliveryMethod {
  const DeliveryMethod._();

  /// Creates a delivery method.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DeliveryMethod({
    required String id,
    required String name,
    String? code,
    int? estimatedTransitBusinessDaysMin,
    int? estimatedTransitBusinessDaysMax,
    required bool digital,
    required bool pickup,
    required bool pickupPoint,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _DeliveryMethod;

  /// Parses a delivery method from its JSON shape.
  factory DeliveryMethod.fromJson(Map<String, Object?> json) =>
      _$DeliveryMethodFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Method name.
  @override
  String get name;

  /// Method code, when set.
  @override
  String? get code;

  /// Minimum estimated transit business days, when reported.
  @override
  int? get estimatedTransitBusinessDaysMin;

  /// Maximum estimated transit business days, when reported.
  @override
  int? get estimatedTransitBusinessDaysMax;

  /// Whether this method delivers digitally.
  @override
  bool get digital;

  /// Whether this method is a pickup.
  @override
  bool get pickup;

  /// Whether this method delivers to a pickup point.
  @override
  bool get pickupPoint;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this method back to its JSON shape.
}

/// One carrier delivery inside a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/Delivery.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Delivery with _$Delivery {
  const Delivery._();

  /// Creates a delivery.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Delivery({
    required String id,
    required String trackingNumber,
    String? carrier,
    String? carrierName,
    String? service,
    @JsonKey(unknownEnumValue: DeliveryStatus.unknown)
    required DeliveryStatus status,
    String? trackingUrl,
    String? estimatedDeliveryAt,
    String? deliveredAt,
  }) = _Delivery;

  /// Parses a delivery from its JSON shape.
  factory Delivery.fromJson(Map<String, Object?> json) =>
      _$DeliveryFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Carrier tracking number.
  @override
  String get trackingNumber;

  /// Carrier code, when reported.
  @override
  String? get carrier;

  /// Carrier name, when reported.
  @override
  String? get carrierName;

  /// Service level, when reported.
  @override
  String? get service;

  /// Delivery status.
  @override
  DeliveryStatus get status;

  /// Tracking URL, when reported.
  @override
  String? get trackingUrl;

  /// Estimated delivery timestamp, when reported.
  @override
  String? get estimatedDeliveryAt;

  /// Delivery timestamp, when reported.
  @override
  String? get deliveredAt;

  /// Serializes this delivery back to its JSON shape.
}

/// One selectable delivery rate of a fulfillment.
///
/// Source: `packages/sdk/src/types/generated/DeliveryRate.ts`;
/// SPEC `store.yaml#/components/schemas/DeliveryRate`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class DeliveryRate with _$DeliveryRate {
  const DeliveryRate._();

  /// Creates a delivery rate.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
  factory DeliveryRate.fromJson(Map<String, Object?> json) =>
      _$DeliveryRateFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning delivery method id.
  @override
  String get deliveryMethodId;

  /// Rate name.
  @override
  String get name;

  /// Whether this rate is currently selected.
  @override
  bool get selected;

  /// Rate cost, decimal string, when reported.
  @override
  String? get cost;

  /// Rate total, decimal string, when reported.
  @override
  String? get total;

  /// Tax added on top, decimal string, when reported.
  @override
  String? get additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  @override
  String? get includedTaxTotal;

  /// Total tax, decimal string, when reported.
  @override
  String? get taxTotal;

  /// Carrier, when reported.
  @override
  String? get carrier;

  /// Service level, when reported.
  @override
  String? get serviceLevel;

  /// Estimated delivery date, when reported.
  @override
  String? get estimatedDeliveryDate;

  /// Whether the rate is unpriced.
  @override
  bool get unpriced;

  /// Freight summary, for carton/pallet shipping.
  @override
  FreightSummary? get freightSummary;

  /// The delivery method of this rate.
  @override
  DeliveryMethod get deliveryMethod;

  /// Serializes this rate back to its JSON shape.
}

/// One line allocation inside a fulfillment.
///
/// Source: inline `Fulfillment['items'][number]` in
/// `packages/sdk/src/types/generated/Fulfillment.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class FulfillmentItem with _$FulfillmentItem {
  const FulfillmentItem._();

  /// Creates a fulfillment line allocation.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FulfillmentItem({
    required String itemId,
    required String variantId,
    required int quantity,
  }) = _FulfillmentItem;

  /// Parses a fulfillment line allocation from its JSON shape.
  factory FulfillmentItem.fromJson(Map<String, Object?> json) =>
      _$FulfillmentItemFromJson(json);

  /// Line item id.
  @override
  String get itemId;

  /// Variant id.
  @override
  String get variantId;

  /// Allocated quantity.
  @override
  int get quantity;

  /// Serializes this allocation back to its JSON shape.
}

/// A fulfillment (shipment) of a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Fulfillment.ts`;
/// SPEC `store.yaml#/components/schemas/Fulfillment`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Fulfillment with _$Fulfillment {
  const Fulfillment._();

  /// Creates a fulfillment.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
    @JsonKey(unknownEnumValue: FulfillmentStatus.unknown)
    required FulfillmentStatus status,
    @JsonKey(unknownEnumValue: FulfillmentType.unknown)
    required FulfillmentType fulfillmentType,
    String? fulfilledAt,
    String? deliveredAt,
    required List<FulfillmentItem> items,
    required List<Delivery> deliveries,
    required DeliveryMethod deliveryMethod,
    required StockLocation stockLocation,
    required List<DeliveryRate> deliveryRates,
    @JsonKey(includeIfNull: false) List<TaxLine>? taxLines,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Fulfillment;

  /// Parses a fulfillment from its JSON shape.
  factory Fulfillment.fromJson(Map<String, Object?> json) =>
      _$FulfillmentFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Fulfillment number.
  @override
  String get number;

  /// Tracking reference, when reported.
  @override
  String? get tracking;

  /// Tracking URL, when reported.
  @override
  String? get trackingUrl;

  /// Pickup-point payload, when reported (untyped upstream).
  @override
  Map<String, Object?>? get pickupPointData;

  /// Selected delivery rate id, when reported.
  @override
  String? get selectedDeliveryRateId;

  /// Whether the fulfillment is unpriced.
  @override
  bool get unpriced;

  /// Fulfillment cost, decimal string, when reported.
  @override
  String? get cost;

  /// Fulfillment total, decimal string, when reported.
  @override
  String? get total;

  /// Delivery discounts, decimal string, when reported.
  @override
  String? get discountTotal;

  /// Tax added on top, decimal string, when reported.
  @override
  String? get additionalTaxTotal;

  /// Tax included in the cost, decimal string, when reported.
  @override
  String? get includedTaxTotal;

  /// Total tax, decimal string, when reported.
  @override
  String? get taxTotal;

  /// Fulfillment status.
  @override
  FulfillmentStatus get status;

  /// How this fulfillment is delivered.
  @override
  FulfillmentType get fulfillmentType;

  /// Fulfillment timestamp, when reported.
  @override
  String? get fulfilledAt;

  /// Delivery timestamp, when reported.
  @override
  String? get deliveredAt;

  /// Which line items (and units) are in this fulfillment.
  @override
  List<FulfillmentItem> get items;

  /// Carrier deliveries of this fulfillment.
  @override
  List<Delivery> get deliveries;

  /// The delivery method of this fulfillment.
  @override
  DeliveryMethod get deliveryMethod;

  /// The stock location fulfilling this fulfillment.
  @override
  StockLocation get stockLocation;

  /// Selectable delivery rates.
  @override
  List<DeliveryRate> get deliveryRates;

  /// Tax lines, when present.
  @override
  List<TaxLine>? get taxLines;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this fulfillment back to its JSON shape.
}

/// A payment method available on a cart.
///
/// Source: `packages/sdk/src/types/generated/PaymentMethod.ts`;
/// SPEC `store.yaml#/components/schemas/PaymentMethod`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class PaymentMethod with _$PaymentMethod {
  const PaymentMethod._();

  /// Creates a payment method.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PaymentMethod({
    required String id,
    required String name,
    String? description,
    required String type,
    required bool sessionRequired,
    required bool sourceRequired,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _PaymentMethod;

  /// Parses a payment method from its JSON shape.
  factory PaymentMethod.fromJson(Map<String, Object?> json) =>
      _$PaymentMethodFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Method name.
  @override
  String get name;

  /// Method description, when set.
  @override
  String? get description;

  /// Method type. Built-ins: `check`, `store_credit`,
  /// `custom_payment_source_method`, `bogus` (test only); payment-provider
  /// gems register their own (e.g. `stripe`). Kept as an open string.
  @override
  String get type;

  /// Whether a payment session is required before paying.
  @override
  bool get sessionRequired;

  /// Whether a payment source is required before paying.
  @override
  bool get sourceRequired;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this method back to its JSON shape.
}

/// A payment on a cart or order.
///
/// Source: `packages/sdk/src/types/generated/Payment.ts`;
/// SPEC `store.yaml#/components/schemas/Payment`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Payment with _$Payment {
  const Payment._();

  /// Creates a payment.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Payment({
    required String id,
    required String paymentMethodId,
    String? responseCode,
    required String number,
    @JsonKey(unknownEnumValue: PaymentStatus.unknown)
    required PaymentStatus status,
    String? amount,
    @JsonKey(unknownEnumValue: PaymentSourceType.unknown)
    PaymentSourceType? sourceType,
    String? sourceId,
    Map<String, Object?>? source,
    required PaymentMethod paymentMethod,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Payment;

  /// Parses a payment from its JSON shape.
  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning payment method id.
  @override
  String get paymentMethodId;

  /// Provider response code, when reported.
  @override
  String? get responseCode;

  /// Payment number.
  @override
  String get number;

  /// Payment status.
  @override
  PaymentStatus get status;

  /// Payment amount, decimal string, when reported.
  @override
  String? get amount;

  /// Polymorphic source kind, when reported.
  @override
  PaymentSourceType? get sourceType;

  /// Polymorphic source id, when reported.
  @override
  String? get sourceId;

  /// Polymorphic source payload (`credit_card` | `store_credit` |
  /// `payment_source`, per [sourceType]). Kept raw: no typed union exists
  /// upstream for the embedded shape (Limitation; narrow later if a
  /// serializer pins it down).
  @override
  Map<String, Object?>? get source;

  /// The payment method of this payment.
  @override
  PaymentMethod get paymentMethod;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this payment back to its JSON shape.
}

/// A gift card: code, status and decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/GiftCard.ts`;
/// SPEC `store.yaml#/components/schemas/GiftCard`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class GiftCard with _$GiftCard {
  const GiftCard._();

  /// Creates a gift card.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GiftCard({
    required String id,
    required String code,
    @JsonKey(unknownEnumValue: GiftCardStatus.unknown)
    required GiftCardStatus status,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    String? amount,
    String? amountUsed,
    String? amountAuthorized,
    String? amountRemaining,
    String? expiresAt,
    String? redeemedAt,
    required bool expired,
    required bool active,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _GiftCard;

  /// Parses a gift card from its JSON shape.
  factory GiftCard.fromJson(Map<String, Object?> json) =>
      _$GiftCardFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Redemption code.
  @override
  String get code;

  /// Lifecycle status.
  @override
  GiftCardStatus get status;

  /// Gift-card currency.
  @override
  CurrencyCode get currency;

  /// Original amount, decimal string, when reported.
  @override
  String? get amount;

  /// Used amount, decimal string, when reported.
  @override
  String? get amountUsed;

  /// Authorized amount, decimal string, when reported.
  @override
  String? get amountAuthorized;

  /// Remaining amount, decimal string, when reported.
  @override
  String? get amountRemaining;

  /// Expiry timestamp, when set.
  @override
  String? get expiresAt;

  /// Redemption timestamp, when set.
  @override
  String? get redeemedAt;

  /// Whether the card expired.
  @override
  bool get expired;

  /// Whether the card is active.
  @override
  bool get active;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this gift card back to its JSON shape.
}

/// A store-credit record with decimal-string balances.
///
/// Source: `packages/sdk/src/types/generated/StoreCredit.ts`;
/// SPEC `store.yaml#/components/schemas/StoreCredit`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class StoreCredit with _$StoreCredit {
  const StoreCredit._();

  /// Creates a store-credit record.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StoreCredit({
    required String id,
    String? amount,
    String? amountUsed,
    String? amountRemaining,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _StoreCredit;

  /// Parses a store-credit record from its JSON shape.
  factory StoreCredit.fromJson(Map<String, Object?> json) =>
      _$StoreCreditFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Original amount, decimal string, when reported.
  @override
  String? get amount;

  /// Used amount, decimal string, when reported.
  @override
  String? get amountUsed;

  /// Remaining amount, decimal string, when reported.
  @override
  String? get amountRemaining;

  /// Store-credit currency.
  @override
  CurrencyCode get currency;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this record back to its JSON shape.
}

/// The active cart (checkout in progress).
///
/// Source: `packages/sdk/src/types/generated/Cart.ts`;
/// SPEC `store.yaml#/components/schemas/Cart`.
/// `checkout_steps` / `state_lock_version` appear only in the TS-SDK mocks
/// (`tests/mocks/handlers.ts`, per contract §4) — not in the serializer type
/// or the SPEC — so they are not modeled here (Limitation).
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Cart with _$Cart {
  const Cart._();

  /// Creates a cart.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    @JsonKey(unknownEnumValue: LocaleCode.unknown) LocaleCode? locale,
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
  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);

  /// Owning market id, when set.
  @override
  String? get marketId;

  /// Owning channel id, when set.
  @override
  String? get channelId;

  /// Preferred stock location id, when set.
  @override
  String? get preferredStockLocationId;

  /// Owning company id, when set.
  @override
  String? get companyId;

  /// Owning company name, when set.
  @override
  String? get companyName;

  /// Whether a PO number is required to complete checkout.
  @override
  bool get poNumberRequired;

  /// Uploaded PO document file name, when set.
  @override
  String? get poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  @override
  int? get poDocumentByteSize;

  /// Cart number. Deprecated upstream in favor of `id` — a cart has no
  /// order number — but still serialized; kept as a plain field.
  @override
  String get number;

  /// Guest cart token (sent as `x-spree-token` via `spreeToken`).
  @override
  String get token;

  /// Customer email, when set.
  @override
  String? get email;

  /// Customer note, when set.
  @override
  String? get customerNote;

  /// Purchase-order number, when set.
  @override
  String? get poNumber;

  /// Cart currency.
  @override
  CurrencyCode get currency;

  /// Cart locale, when set.
  @override
  LocaleCode? get locale;

  /// Total item quantity.
  @override
  int get totalQuantity;

  /// Problems found with the cart (e.g. stock changes).
  @override
  List<CartWarning> get warnings;

  /// Applied coupon code, when set.
  @override
  String? get couponCode;

  /// Line items total before discounts/fees/delivery, decimal string.
  @override
  String? get itemTotal;

  /// Promotion discounts (negative), decimal string.
  @override
  String? get discountTotal;

  /// All tax (included + added), decimal string.
  @override
  String? get taxTotal;

  /// Tax included in prices, decimal string.
  @override
  String? get includedTaxTotal;

  /// Tax added on top of prices, decimal string.
  @override
  String? get additionalTaxTotal;

  /// Delivery cost before delivery discounts, decimal string.
  @override
  String? get deliveryTotal;

  /// All fees, decimal string.
  @override
  String? get feeTotal;

  /// What a gift card pays, decimal string.
  @override
  String? get giftCardTotal;

  /// What store credit pays, decimal string.
  @override
  String? get storeCreditTotal;

  /// Grand total, decimal string.
  @override
  String? get total;

  /// Remainder to pay after payments and store credit, decimal string.
  @override
  String? get amountDue;

  /// Whether store credit covers the cart.
  @override
  bool get coveredByStoreCredit;

  /// Payments on the cart.
  @override
  List<Payment> get payments;

  /// Discounts, fees and added tax together, decimal string.
  @override
  String? get adjustmentTotal;

  /// Current checkout step.
  @override
  String get currentStep;

  /// Completed checkout steps.
  @override
  List<String> get completedSteps;

  /// What is still missing before the cart can be completed.
  @override
  List<CheckoutRequirement> get requirements;

  /// Order minimum, decimal string, when enforced.
  @override
  String? get orderMinimum;

  /// Shortfall below the order minimum, decimal string.
  @override
  String? get orderMinimumShortfall;

  /// Whether the cart is below the order minimum.
  @override
  bool? get belowOrderMinimum;

  /// Freight summary, for carton/pallet shipping.
  @override
  FreightSummary? get freightSummary;

  /// Whether the shipping address equals the billing address.
  @override
  bool get shippingEqBillingAddress;

  /// Applied promotions.
  @override
  List<AppliedPromotion> get discounts;

  /// Charged fees.
  @override
  List<Fee> get fees;

  /// Line items.
  @override
  List<LineItem> get items;

  /// Fulfillments (shipments).
  @override
  List<Fulfillment> get fulfillments;

  /// Billing address, when set.
  @override
  Address? get billingAddress;

  /// Shipping address, when set.
  @override
  Address? get shippingAddress;

  /// Payment methods available on the cart.
  @override
  List<PaymentMethod> get paymentMethods;

  /// Applied gift card, when set.
  @override
  GiftCard? get giftCard;

  /// Expanded market, when requested via `expand`.
  @override
  Market? get market;

  /// Serializes this cart back to its JSON shape.
}
