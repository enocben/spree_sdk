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

/// A completed order.
///
/// Source: `packages/sdk/src/types/generated/Order.ts`;
/// SPEC `store.yaml#/components/schemas/Order`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Order with _$Order {
  const Order._();

  /// Creates an order.
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
    required CurrencyCode currency,
    LocaleCode? locale,
    required int totalQuantity,
    String? couponCode,
    OrderFulfillmentStatus? fulfillmentStatus,
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
    List<CustomField>? customFields,
  }) = _Order;

  /// Parses an order from its JSON shape.
  factory Order.fromJson(Map<String, Object?> json) => Order(
    marketId: json['market_id'] as String?,
    withdrawalPeriodEndsAt: json['withdrawal_period_ends_at'] as String?,
    withinWithdrawalPeriod: json['within_withdrawal_period'] as bool,
    shippingEqBillingAddress: json['shipping_eq_billing_address'] as bool,
    cartId: json['cart_id'] as String?,
    channelId: json['channel_id'] as String?,
    companyId: json['company_id'] as String?,
    companyName: json['company_name'] as String?,
    poDocumentFilename: json['po_document_filename'] as String?,
    poDocumentByteSize: (json['po_document_byte_size'] as num?)?.toInt(),
    number: json['number'] as String,
    email: json['email'] as String,
    customerNote: json['customer_note'] as String?,
    poNumber: json['po_number'] as String?,
    currency: CurrencyCode.fromJson(json['currency']),
    locale: json['locale'] == null ? null : LocaleCode.fromJson(json['locale']),
    totalQuantity: (json['total_quantity'] as num).toInt(),
    couponCode: json['coupon_code'] as String?,
    fulfillmentStatus: json['fulfillment_status'] == null
        ? null
        : OrderFulfillmentStatus.fromJson(json['fulfillment_status']),
    paymentStatus: json['payment_status'] == null
        ? null
        : OrderPaymentStatus.fromJson(json['payment_status']),
    completedAt: json['completed_at'] as String?,
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
    giftCard: json['gift_card'] == null
        ? null
        : GiftCard.fromJson(json['gift_card'] as Map<String, Object?>),
    market: json['market'] == null
        ? null
        : Market.fromJson(json['market'] as Map<String, Object?>),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Owning market id, when set.
  @override
  @override
  String? get marketId;

  /// Withdrawal-period end, when reported.
  @override
  @override
  String? get withdrawalPeriodEndsAt;

  /// Whether the order is within its withdrawal period.
  @override
  @override
  bool get withinWithdrawalPeriod;

  /// Whether the shipping address equals the billing address.
  @override
  @override
  bool get shippingEqBillingAddress;

  /// Id of the cart the checkout was placed from, when reported (also
  /// accepted by `orders.get` in place of the order id).
  @override
  @override
  String? get cartId;

  /// Owning channel id, when set.
  @override
  @override
  String? get channelId;

  /// Owning company id, when set.
  @override
  @override
  String? get companyId;

  /// Owning company name, when set.
  @override
  @override
  String? get companyName;

  /// Uploaded PO document file name, when set.
  @override
  @override
  String? get poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  @override
  @override
  int? get poDocumentByteSize;

  /// Order number.
  @override
  @override
  String get number;

  /// Customer email.
  @override
  @override
  String get email;

  /// Customer note, when set.
  @override
  @override
  String? get customerNote;

  /// Purchase-order number, when set.
  @override
  @override
  String? get poNumber;

  /// Order currency.
  @override
  @override
  CurrencyCode get currency;

  /// Order locale, when set.
  @override
  @override
  LocaleCode? get locale;

  /// Total item quantity.
  @override
  @override
  int get totalQuantity;

  /// Applied coupon code, when set.
  @override
  @override
  String? get couponCode;

  /// Aggregate fulfillment status, when reported.
  @override
  @override
  OrderFulfillmentStatus? get fulfillmentStatus;

  /// Aggregate payment status, when reported.
  @override
  @override
  OrderPaymentStatus? get paymentStatus;

  /// Completion timestamp, when reported.
  @override
  @override
  String? get completedAt;

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

  /// Whether store credit covers the order.
  @override
  @override
  bool get coveredByStoreCredit;

  /// Payments on the order.
  @override
  @override
  List<Payment> get payments;

  /// Discounts, fees and added tax together, decimal string.
  @override
  @override
  String? get adjustmentTotal;

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

  /// Applied gift card, when set.
  @override
  @override
  GiftCard? get giftCard;

  /// Expanded market, when requested via `expand`.
  @override
  @override
  Market? get market;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this order back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'market_id': marketId,
    'withdrawal_period_ends_at': withdrawalPeriodEndsAt,
    'within_withdrawal_period': withinWithdrawalPeriod,
    'shipping_eq_billing_address': shippingEqBillingAddress,
    'cart_id': cartId,
    'channel_id': channelId,
    'company_id': companyId,
    'company_name': companyName,
    'po_document_filename': poDocumentFilename,
    'po_document_byte_size': poDocumentByteSize,
    'number': number,
    'email': email,
    'customer_note': customerNote,
    'po_number': poNumber,
    'currency': currency.toJson(),
    'locale': locale?.toJson(),
    'total_quantity': totalQuantity,
    'coupon_code': couponCode,
    'fulfillment_status': fulfillmentStatus?.toJson(),
    'payment_status': paymentStatus?.toJson(),
    'completed_at': completedAt,
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
    'discounts': discounts.map((e) => e.toJson()).toList(),
    'fees': fees.map((e) => e.toJson()).toList(),
    'items': items.map((e) => e.toJson()).toList(),
    'fulfillments': fulfillments.map((e) => e.toJson()).toList(),
    'billing_address': billingAddress?.toJson(),
    'shipping_address': shippingAddress?.toJson(),
    'gift_card': giftCard?.toJson(),
    'market': market?.toJson(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// The group a multi-seller checkout divides into, carrying one [Order]
/// per seller.
///
/// Source: `packages/sdk/src/types/generated/OrderGroup.ts`;
/// SPEC `store.yaml#/components/schemas/OrderGroup`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class OrderGroup with _$OrderGroup {
  const OrderGroup._();

  /// Creates an order group.
  const factory OrderGroup({
    required String id,
    required String number,
    String? email,
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
    OrderFulfillmentStatus? fulfillmentStatus,
    OrderPaymentStatus? paymentStatus,
    String? completedAt,
    Address? billingAddress,
    Address? shippingAddress,
    required List<Order> orders,
  }) = _OrderGroup;

  /// Parses an order group from its JSON shape.
  factory OrderGroup.fromJson(Map<String, Object?> json) => OrderGroup(
    id: json['id'] as String,
    number: json['number'] as String,
    email: json['email'] as String?,
    currency: CurrencyCode.fromJson(json['currency']),
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
    fulfillmentStatus: json['fulfillment_status'] == null
        ? null
        : OrderFulfillmentStatus.fromJson(json['fulfillment_status']),
    paymentStatus: json['payment_status'] == null
        ? null
        : OrderPaymentStatus.fromJson(json['payment_status']),
    completedAt: json['completed_at'] as String?,
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, Object?>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, Object?>),
    orders: (json['orders'] as List)
        .map((e) => Order.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Group number.
  @override
  @override
  String get number;

  /// Customer email, when reported.
  @override
  @override
  String? get email;

  /// Group currency.
  @override
  @override
  CurrencyCode get currency;

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

  /// Whether store credit covers the group.
  @override
  @override
  bool get coveredByStoreCredit;

  /// Payments on the group.
  @override
  @override
  List<Payment> get payments;

  /// Aggregate fulfillment status, when reported.
  @override
  @override
  OrderFulfillmentStatus? get fulfillmentStatus;

  /// Aggregate payment status, when reported.
  @override
  @override
  OrderPaymentStatus? get paymentStatus;

  /// Completion timestamp, when reported.
  @override
  @override
  String? get completedAt;

  /// Billing address, when set.
  @override
  @override
  Address? get billingAddress;

  /// Shipping address, when set.
  @override
  @override
  Address? get shippingAddress;

  /// Per-seller orders of this group.
  @override
  @override
  List<Order> get orders;

  /// Serializes this group back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'number': number,
    'email': email,
    'currency': currency.toJson(),
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
    'fulfillment_status': fulfillmentStatus?.toJson(),
    'payment_status': paymentStatus?.toJson(),
    'completed_at': completedAt,
    'billing_address': billingAddress?.toJson(),
    'shipping_address': shippingAddress?.toJson(),
    'orders': orders.map((e) => e.toJson()).toList(),
  };
}

/// Whether a decoded `carts.complete` / `orders.get` payload is the group
/// a multi-seller cart divided into, rather than one order.
///
/// Keyed on the `orders` key, which only the group carries — the payload has
/// no type discriminator of its own. Direct Dart port of `isOrderGroup` in
/// `packages/sdk/src/order-group.ts`.
bool isOrderGroup(Map<String, Object?> json) => json['orders'] is List;
