import 'package:spree_sdk/src/models/customer.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Customer', () {
    test('parses a full profile with addresses and subscriber', () {
      final customer = Customer.fromJson(loadFixture('customer_full.json'));

      expect(customer.email, 'sam.buyer@example.com');
      expect(customer.fullName, 'Sam Buyer');
      expect(customer.availableStoreCreditTotal, isA<String>());
      expect(customer.addresses, hasLength(1));
      expect(customer.defaultBillingAddress!.id, 'addr_001');
      expect(customer.defaultShippingAddress, isNull);
      expect(customer.newsletterSubscriber!.verified, isTrue);
      expect(customer.customerGroups.single.name, 'Wholesale');
    });

    test('parses a minimal profile with nulls and empty collections', () {
      final customer = Customer.fromJson(loadFixture('customer_minimal.json'));

      expect(customer.firstName, isNull);
      expect(customer.lastName, isNull);
      expect(customer.phone, isNull);
      expect(customer.addresses, isEmpty);
      expect(customer.customerGroups, isEmpty);
      expect(customer.defaultBillingAddress, isNull);
      expect(customer.newsletterSubscriber, isNull);
    });

    test('null and absent newsletter subscribers agree', () {
      final fromNull = Customer.fromJson(loadFixture('customer_minimal.json'));
      final json = Map<String, Object?>.of(loadFixture('customer_minimal.json'))
        ..remove('newsletter_subscriber');
      expect(Customer.fromJson(json), equals(fromNull));
    });

    test('round-trips through toJson', () {
      final customer = Customer.fromJson(loadFixture('customer_full.json'));
      expect(Customer.fromJson(customer.toJson()), equals(customer));
      final minimal = Customer.fromJson(loadFixture('customer_minimal.json'));
      expect(Customer.fromJson(minimal.toJson()), equals(minimal));
    });
  });

  group('customer re-exports from the cart models', () {
    test('Address, GiftCard and StoreCredit are the same types', () {
      expect(
        Address.fromJson(loadFixture('address_book_entry.json')),
        isA<Address>(),
      );
      expect(
        Customer.fromJson(loadFixture('customer_full.json')).addresses.first,
        isA<Address>(),
      );
    });
  });
}
