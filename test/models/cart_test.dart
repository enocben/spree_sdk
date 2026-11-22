import 'package:spree_sdk/src/models/cart.dart';
import 'package:spree_sdk/src/models/meta.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Cart empty (fresh cart)', () {
    test('parses null totals and empty collections', () {
      final cart = Cart.fromJson(loadFixture('cart_empty.json'));

      expect(cart.number, 'cart-001');
      expect(cart.token, 'guest-token-001');
      expect(cart.totalQuantity, 0);
      expect(cart.items, isEmpty);
      expect(cart.fulfillments, isEmpty);
      expect(cart.payments, isEmpty);
      expect(cart.warnings, isEmpty);
      expect(cart.requirements, isEmpty);
      expect(cart.completedSteps, isEmpty);
      expect(cart.total, isNull);
      expect(cart.amountDue, isNull);
      expect(cart.billingAddress, isNull);
      expect(cart.shippingAddress, isNull);
      expect(cart.giftCard, isNull);
      expect(cart.belowOrderMinimum, isNull);
      expect(cart.poDocumentByteSize, isNull);
      expect(cart.currency, CurrencyCode.usd);
      expect(cart.locale, isNull);
    });

    test('round-trips through toJson', () {
      final cart = Cart.fromJson(loadFixture('cart_empty.json'));
      expect(Cart.fromJson(cart.toJson()), equals(cart));
    });
  });

  group('Cart full', () {
    test('parses items, totals, addresses and nested shipment', () {
      final cart = Cart.fromJson(loadFixture('cart_full.json'));

      expect(cart.totalQuantity, 2);
      expect(cart.total, isA<String>());
      expect(cart.total, '183.18');
      expect(cart.email, 'sam.buyer@example.com');
      expect(cart.couponCode, 'FALL10');
      expect(cart.currentStep, 'payment');

      final item = cart.items.single;
      expect(item.quantity, 2);
      expect(item.price, '89.99');
      expect(item.optionValues.single.optionTypeName, 'color');
      expect(item.taxLines, hasLength(1));
      expect(item.taxLines!.first.included, isFalse);

      expect(cart.discounts.single.code, 'FALL10');
      expect(cart.fees.single.kind, FeeKind.handling);
      expect(cart.giftCard!.code, 'GIFT-50');
      expect(cart.giftCard!.status, GiftCardStatus.redeemed);

      final fulfillment = cart.fulfillments.single;
      expect(fulfillment.status, FulfillmentStatus.unfulfilled);
      expect(fulfillment.fulfillmentType, FulfillmentType.shipping);
      expect(fulfillment.deliveryRates.single.selected, isTrue);
      expect(fulfillment.deliveries.single.status, DeliveryStatus.pending);
      expect(fulfillment.stockLocation.countryCode, CountryCode.us);

      expect(cart.payments.single.status, PaymentStatus.checkout);
      expect(cart.billingAddress!.countryCode, CountryCode.us);
      expect(cart.market!.currency, CurrencyCode.usd);
      expect(cart.warnings.single.variantId, 'var_old');
    });

    test('round-trips through toJson', () {
      final cart = Cart.fromJson(loadFixture('cart_full.json'));
      final reparsed = Cart.fromJson(cart.toJson());
      expect(reparsed, equals(cart));
      expect(reparsed.toJson(), equals(cart.toJson()));
    });
  });

  group('Address', () {
    test('parses book entry with owner and custom fields', () {
      final address = Address.fromJson(loadFixture('address_book_entry.json'));

      expect(address.label, 'Home');
      expect(address.isDefaultBilling, isTrue);
      expect(address.owner!.type, AddressOwnerType.customer);
      expect(address.customFields!.single.value, isTrue);
      expect(address.countryCode, CountryCode.us);
    });

    test('unknown country codes and owner types fall back safely', () {
      final address = Address.fromJson(
        Map<String, Object?>.of(loadFixture('address_book_entry.json'))
          ..['country_code'] = 'XX'
          ..['owner'] = const <String, Object?>{
            'id': 'x',
            'type': 'franchise',
            'name': null,
          },
      );
      expect(address.countryCode, CountryCode.unknown);
      expect(address.owner!.type, AddressOwnerType.unknown);
    });

    test('round-trips through toJson', () {
      final address = Address.fromJson(loadFixture('address_book_entry.json'));
      expect(Address.fromJson(address.toJson()), equals(address));
    });
  });

  group('DiscountCode / GiftCard / StoreCredit', () {
    test('parses the SPEC Discount shape as money strings', () {
      final code = DiscountCode.fromJson(loadFixture('discount_code.json'));

      expect(code.code, 'FALL10');
      expect(code.kind, DiscountKind.promotion);
      expect(code.amount, isA<String>());
      expect(code.value, '10.0');
    });

    test('accepts the minimal apply-payload shape', () {
      final code = DiscountCode.fromJson(const <String, Object?>{
        'code': 'FALL10',
      });
      expect(code.code, 'FALL10');
      expect(code.kind, DiscountKind.unknown);
    });

    test('parses wallet balances as decimal strings', () {
      final giftCard = GiftCard.fromJson(loadFixture('gift_card.json'));
      expect(giftCard.status, GiftCardStatus.active);
      expect(giftCard.amount, isA<String>());
      expect(giftCard.expired, isFalse);

      final credit = StoreCredit.fromJson(loadFixture('store_credit.json'));
      expect(credit.amountRemaining, '25.00');
      expect(credit.currency, CurrencyCode.usd);
    });

    test('unknown gift-card statuses fall back safely', () {
      final giftCard = GiftCard.fromJson(
        Map<String, Object?>.of(loadFixture('gift_card.json'))
          ..['status'] = 'someday',
      );
      expect(giftCard.status, GiftCardStatus.unknown);
    });

    test('round-trips through toJson', () {
      final code = DiscountCode.fromJson(loadFixture('discount_code.json'));
      expect(DiscountCode.fromJson(code.toJson()), equals(code));
      final giftCard = GiftCard.fromJson(loadFixture('gift_card.json'));
      expect(GiftCard.fromJson(giftCard.toJson()), equals(giftCard));
      final credit = StoreCredit.fromJson(loadFixture('store_credit.json'));
      expect(StoreCredit.fromJson(credit.toJson()), equals(credit));
    });
  });
}
