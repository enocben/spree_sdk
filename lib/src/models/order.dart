/// Post-purchase order models.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Order,OrderGroup}.ts`;
/// * discriminator: `packages/sdk/src/order-group.ts` (`isOrderGroup`
///   narrows on the `orders` key, which only the group carries);
/// * SPEC `store.yaml#/components/schemas/{Order,OrderGroup}`;
/// * contracts: `docs/research/store-api-contract.md` §4 (`carts.complete`
///   → `Order | OrderGroup`) and §5 (`orders.get` accepts the cart id the
///   checkout was placed from).
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

/// A completed order.
///
/// Source: `packages/sdk/src/types/generated/Order.ts`;
/// SPEC `store.yaml#/components/schemas/Order`.
class Order {
  /// Creates an order.
  const Order({
    this.marketId,
    this.withdrawalPeriodEndsAt,
    required this.withinWithdrawalPeriod,
    required this.shippingEqBillingAddress,
    this.cartId,
    this.channelId,
    this.companyId,
    this.companyName,
    this.poDocumentFilename,
    this.poDocumentByteSize,
    required this.number,
    required this.email,
    this.customerNote,
    this.poNumber,
    required this.currency,
    this.locale,
    required this.totalQuantity,
    this.couponCode,
    this.fulfillmentStatus,
    this.paymentStatus,
    this.completedAt,
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
    required this.discounts,
    required this.fees,
    required this.items,
    required this.fulfillments,
    this.billingAddress,
    this.shippingAddress,
    this.giftCard,
    this.market,
    this.customFields,
  });

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
  final String? marketId;

  /// Withdrawal-period end, when reported.
  final String? withdrawalPeriodEndsAt;

  /// Whether the order is within its withdrawal period.
  final bool withinWithdrawalPeriod;

  /// Whether the shipping address equals the billing address.
  final bool shippingEqBillingAddress;

  /// Id of the cart the checkout was placed from, when reported (also
  /// accepted by `orders.get` in place of the order id).
  final String? cartId;

  /// Owning channel id, when set.
  final String? channelId;

  /// Owning company id, when set.
  final String? companyId;

  /// Owning company name, when set.
  final String? companyName;

  /// Uploaded PO document file name, when set.
  final String? poDocumentFilename;

  /// Uploaded PO document size in bytes, when reported.
  final int? poDocumentByteSize;

  /// Order number.
  final String number;

  /// Customer email.
  final String email;

  /// Customer note, when set.
  final String? customerNote;

  /// Purchase-order number, when set.
  final String? poNumber;

  /// Order currency.
  final CurrencyCode currency;

  /// Order locale, when set.
  final LocaleCode? locale;

  /// Total item quantity.
  final int totalQuantity;

  /// Applied coupon code, when set.
  final String? couponCode;

  /// Aggregate fulfillment status, when reported.
  final OrderFulfillmentStatus? fulfillmentStatus;

  /// Aggregate payment status, when reported.
  final OrderPaymentStatus? paymentStatus;

  /// Completion timestamp, when reported.
  final String? completedAt;

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

  /// Whether store credit covers the order.
  final bool coveredByStoreCredit;

  /// Payments on the order.
  final List<Payment> payments;

  /// Discounts, fees and added tax together, decimal string.
  final String? adjustmentTotal;

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

  /// Applied gift card, when set.
  final GiftCard? giftCard;

  /// Expanded market, when requested via `expand`.
  final Market? market;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          marketId == other.marketId &&
          withdrawalPeriodEndsAt == other.withdrawalPeriodEndsAt &&
          withinWithdrawalPeriod == other.withinWithdrawalPeriod &&
          shippingEqBillingAddress == other.shippingEqBillingAddress &&
          cartId == other.cartId &&
          channelId == other.channelId &&
          companyId == other.companyId &&
          companyName == other.companyName &&
          poDocumentFilename == other.poDocumentFilename &&
          poDocumentByteSize == other.poDocumentByteSize &&
          number == other.number &&
          email == other.email &&
          customerNote == other.customerNote &&
          poNumber == other.poNumber &&
          currency == other.currency &&
          locale == other.locale &&
          totalQuantity == other.totalQuantity &&
          couponCode == other.couponCode &&
          fulfillmentStatus == other.fulfillmentStatus &&
          paymentStatus == other.paymentStatus &&
          completedAt == other.completedAt &&
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
          _listEquals(discounts, other.discounts) &&
          _listEquals(fees, other.fees) &&
          _listEquals(items, other.items) &&
          _listEquals(fulfillments, other.fulfillments) &&
          billingAddress == other.billingAddress &&
          shippingAddress == other.shippingAddress &&
          giftCard == other.giftCard &&
          market == other.market &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(number, email, currency, totalQuantity);
}

/// The group a multi-seller checkout divides into, carrying one [Order]
/// per seller.
///
/// Source: `packages/sdk/src/types/generated/OrderGroup.ts`;
/// SPEC `store.yaml#/components/schemas/OrderGroup`.
class OrderGroup {
  /// Creates an order group.
  const OrderGroup({
    required this.id,
    required this.number,
    this.email,
    required this.currency,
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
    this.fulfillmentStatus,
    this.paymentStatus,
    this.completedAt,
    this.billingAddress,
    this.shippingAddress,
    required this.orders,
  });

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
  final String id;

  /// Group number.
  final String number;

  /// Customer email, when reported.
  final String? email;

  /// Group currency.
  final CurrencyCode currency;

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

  /// Whether store credit covers the group.
  final bool coveredByStoreCredit;

  /// Payments on the group.
  final List<Payment> payments;

  /// Aggregate fulfillment status, when reported.
  final OrderFulfillmentStatus? fulfillmentStatus;

  /// Aggregate payment status, when reported.
  final OrderPaymentStatus? paymentStatus;

  /// Completion timestamp, when reported.
  final String? completedAt;

  /// Billing address, when set.
  final Address? billingAddress;

  /// Shipping address, when set.
  final Address? shippingAddress;

  /// Per-seller orders of this group.
  final List<Order> orders;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderGroup &&
          id == other.id &&
          number == other.number &&
          email == other.email &&
          currency == other.currency &&
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
          fulfillmentStatus == other.fulfillmentStatus &&
          paymentStatus == other.paymentStatus &&
          completedAt == other.completedAt &&
          billingAddress == other.billingAddress &&
          shippingAddress == other.shippingAddress &&
          _listEquals(orders, other.orders);

  @override
  int get hashCode => Object.hash(id, number, currency);
}

/// Whether a decoded `carts.complete` / `orders.get` payload is the group
/// a multi-seller cart divided into, rather than one order.
///
/// Keyed on the `orders` key, which only the group carries — the payload has
/// no type discriminator of its own. Direct Dart port of `isOrderGroup` in
/// `packages/sdk/src/order-group.ts`.
bool isOrderGroup(Map<String, Object?> json) => json['orders'] is List;
