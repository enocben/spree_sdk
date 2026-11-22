import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/models/order.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Order', () {
    test('parses a single completed order', () {
      final order = Order.fromJson(loadFixture('order_single.json'));

      expect(order.number, 'R001');
      expect(order.email, 'sam.buyer@example.com');
      expect(order.cartId, 'cart-002');
      expect(order.fulfillmentStatus, OrderFulfillmentStatus.fulfilled);
      expect(order.paymentStatus, OrderPaymentStatus.paid);
      expect(order.total, isA<String>());
      expect(order.items.single.quantity, 2);
      expect(order.billingAddress!.city, 'San Francisco');
      expect(order.shippingAddress, isNull);
      expect(order.currency, CurrencyCode.usd);
    });

    test('unknown statuses fall back safely', () {
      final order = Order.fromJson(
        Map<String, Object?>.of(loadFixture('order_single.json'))
          ..['fulfillment_status'] = 'teleported'
          ..['payment_status'] = 'bartered',
      );
      expect(order.fulfillmentStatus, OrderFulfillmentStatus.unknown);
      expect(order.paymentStatus, OrderPaymentStatus.unknown);
    });

    test('round-trips through toJson', () {
      final order = Order.fromJson(loadFixture('order_single.json'));
      expect(Order.fromJson(order.toJson()), equals(order));
    });
  });

  group('OrderGroup / isOrderGroup', () {
    test('parses a multi-seller group with per-seller orders', () {
      final group = OrderGroup.fromJson(loadFixture('order_group.json'));

      expect(group.number, 'G001');
      expect(group.orders, hasLength(1));
      expect(group.orders.single.number, 'R001');
      expect(group.email, 'sam.buyer@example.com');
    });

    test('isOrderGroup keys on the orders member', () {
      expect(isOrderGroup(loadFixture('order_group.json')), isTrue);
      expect(isOrderGroup(loadFixture('order_single.json')), isFalse);
      expect(isOrderGroup(const <String, Object?>{}), isFalse);
      expect(isOrderGroup(const <String, Object?>{'orders': null}), isFalse);
    });

    test('round-trips through toJson', () {
      final group = OrderGroup.fromJson(loadFixture('order_group.json'));
      expect(OrderGroup.fromJson(group.toJson()), equals(group));
    });
  });
}
