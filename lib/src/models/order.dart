/// Post-purchase order models.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Order,OrderGroup}.ts`;
/// * discriminator: `packages/sdk/src/order-group.ts` (`isOrderGroup`
///   narrows on the `orders` key, which only the group carries);
/// * SPEC `store.yaml#/components/schemas/{Order,OrderGroup}`;
/// * contracts: `doc/research/store-api-contract.md` §4 (`carts.complete`
///   → `Order | OrderGroup`) and §5 (`orders.get` accepts the cart id the
///   checkout was placed from).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart.dart';
import 'meta.dart';

part 'order.freezed.dart';
part 'order.g.dart';

/// A completed order.
///
/// Source: `packages/sdk/src/types/generated/Order.ts`;
/// SPEC `store.yaml#/components/schemas/Order`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Order with _$Order {
  const Order._();

  /// Creates an order.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Order({
    String? marketId,
    String? withdrawalPeriodEndsAt,
    required bool withinWithdrawalPeriod,
    required bool shippingEqBillingAddress,
    String? cartId,
    String? channelId,
    String? companyId,
    String? companyName,
    String? poDocumentFilename,
    int? poDocumentByteSize,
    required String number,
    required String email,
    String? customerNote,
    String? poNumber,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    @JsonKey(unknownEnumValue: LocaleCode.unknown) LocaleCode? locale,
    required int totalQuantity,
    String? couponCode,
    @JsonKey(unknownEnumValue: OrderFulfillmentStatus.unknown)
    OrderFulfillmentStatus? fulfillmentStatus,
    @JsonKey(unknownEnumValue: OrderPaymentStatus.unknown)
    OrderPaymentStatus? paymentStatus,
    String? completedAt,
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
    required List<AppliedPromotion> discounts,
    required List<Fee> fees,
    required List<LineItem> items,
    required List<Fulfillment> fulfillments,
    Address? billingAddress,
    Address? shippingAddress,
    GiftCard? giftCard,
    Market? market,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Order;

  /// Parses an order from its JSON shape.
  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);

  /// Owning market id, when set.
  @override
  String? get marketId;

  /// Withdrawal-period end, when reported.
  @override
  String? get withdrawalPeriodEndsAt;

  /// Whether the order is within its withdrawal period.
  @override
  bool get withinWithdrawalPeriod;

  /// Whether the shipping address equals the billing address.
  @override
  bool get shippingEqBillingAddress;

  /// Id of the cart the checkout was placed from, when reported (also
  /// accepted by `orders.get` in place of the order id).
  @override
  String? get cartId;

  /// Owning channel id, when set.
  @override
  String? get channelId;

  /// Owning company id, when set.
  @override
  String? get companyId;

  /// Owning company name, when set.
  @override
  String? get companyName;

  /// Uploaded PO document file name, when set.
  @override
  String? get poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  @override
  int? get poDocumentByteSize;

  /// Order number.
  @override
  String get number;

  /// Customer email.
  @override
  String get email;

  /// Customer note, when set.
  @override
  String? get customerNote;

  /// Purchase-order number, when set.
  @override
  String? get poNumber;

  /// Order currency.
  @override
  CurrencyCode get currency;

  /// Order locale, when set.
  @override
  LocaleCode? get locale;

  /// Total item quantity.
  @override
  int get totalQuantity;

  /// Applied coupon code, when set.
  @override
  String? get couponCode;

  /// Aggregate fulfillment status, when reported.
  @override
  OrderFulfillmentStatus? get fulfillmentStatus;

  /// Aggregate payment status, when reported.
  @override
  OrderPaymentStatus? get paymentStatus;

  /// Completion timestamp, when reported.
  @override
  String? get completedAt;

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

  /// Whether store credit covers the order.
  @override
  bool get coveredByStoreCredit;

  /// Payments on the order.
  @override
  List<Payment> get payments;

  /// Discounts, fees and added tax together, decimal string.
  @override
  String? get adjustmentTotal;

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

  /// Applied gift card, when set.
  @override
  GiftCard? get giftCard;

  /// Expanded market, when requested via `expand`.
  @override
  Market? get market;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this order back to its JSON shape.
}

/// The group a multi-seller checkout divides into, carrying one [Order]
/// per seller.
///
/// Source: `packages/sdk/src/types/generated/OrderGroup.ts`;
/// SPEC `store.yaml#/components/schemas/OrderGroup`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class OrderGroup with _$OrderGroup {
  const OrderGroup._();

  /// Creates an order group.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderGroup({
    required String id,
    required String number,
    String? email,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
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
    @JsonKey(unknownEnumValue: OrderFulfillmentStatus.unknown)
    OrderFulfillmentStatus? fulfillmentStatus,
    @JsonKey(unknownEnumValue: OrderPaymentStatus.unknown)
    OrderPaymentStatus? paymentStatus,
    String? completedAt,
    Address? billingAddress,
    Address? shippingAddress,
    required List<Order> orders,
  }) = _OrderGroup;

  /// Parses an order group from its JSON shape.
  factory OrderGroup.fromJson(Map<String, Object?> json) =>
      _$OrderGroupFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Group number.
  @override
  String get number;

  /// Customer email, when reported.
  @override
  String? get email;

  /// Group currency.
  @override
  CurrencyCode get currency;

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

  /// Whether store credit covers the group.
  @override
  bool get coveredByStoreCredit;

  /// Payments on the group.
  @override
  List<Payment> get payments;

  /// Aggregate fulfillment status, when reported.
  @override
  OrderFulfillmentStatus? get fulfillmentStatus;

  /// Aggregate payment status, when reported.
  @override
  OrderPaymentStatus? get paymentStatus;

  /// Completion timestamp, when reported.
  @override
  String? get completedAt;

  /// Billing address, when set.
  @override
  Address? get billingAddress;

  /// Shipping address, when set.
  @override
  Address? get shippingAddress;

  /// Per-seller orders of this group.
  @override
  List<Order> get orders;

  /// Serializes this group back to its JSON shape.
}

/// Whether a decoded `carts.complete` / `orders.get` payload is the group
/// a multi-seller cart divided into, rather than one order.
///
/// Keyed on the `orders` key, which only the group carries — the payload has
/// no type discriminator of its own. Direct Dart port of `isOrderGroup` in
/// `packages/sdk/src/order-group.ts`.
bool isOrderGroup(Map<String, Object?> json) => json['orders'] is List;
