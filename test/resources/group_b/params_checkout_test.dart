import 'package:spree_sdk/src/models/params_checkout.dart';
import 'package:test/test.dart';

void main() {
  group('checkout params serialization', () {
    test('UpdateCartParams sends only verified fields plus extras', () {
      expect(const UpdateCartParams().toJson(), isEmpty);
      expect(
        const UpdateCartParams(
          email: 'sam@example.com',
          extra: <String, Object?>{'customer_note': 'Leave at door'},
        ).toJson(),
        equals(<String, Object?>{
          'email': 'sam@example.com',
          'customer_note': 'Leave at door',
        }),
      );
    });

    test('AddLineItemParams requires variant and quantity', () {
      expect(
        const AddLineItemParams(variantId: 'var_001', quantity: 2).toJson(),
        equals(<String, Object?>{'variant_id': 'var_001', 'quantity': 2}),
      );
      expect(
        const AddLineItemParams(
          variantId: 'var_001',
          quantity: 1,
          extra: <String, Object?>{'metadata': 'gift'},
        ).toJson()['metadata'],
        equals('gift'),
      );
    });

    test('UpdateLineItemParams omits quantity when unset', () {
      expect(const UpdateLineItemParams().toJson(), isEmpty);
      expect(
        const UpdateLineItemParams(quantity: 3).toJson(),
        equals(<String, Object?>{'quantity': 3}),
      );
    });

    test('CreatePaymentParams forwards extras verbatim', () {
      expect(const CreatePaymentParams().toJson(), isEmpty);
      expect(
        const CreatePaymentParams(
          extra: <String, Object?>{'payment_method_id': 'pm_1'},
        ).toJson(),
        equals(<String, Object?>{'payment_method_id': 'pm_1'}),
      );
    });

    test('payment session params forward extras verbatim', () {
      expect(const CreatePaymentSessionParams().toJson(), isEmpty);
      expect(
        const UpdatePaymentSessionParams(
          extra: <String, Object?>{'return_url': 'https://x.example/'},
        ).toJson(),
        equals(<String, Object?>{'return_url': 'https://x.example/'}),
      );
      expect(const CompletePaymentSessionParams().toJson(), isEmpty);
      expect(
        const CompletePaymentSessionParams(
          extra: <String, Object?>{'token': 'tok_1'},
        ).toJson(),
        equals(<String, Object?>{'token': 'tok_1'}),
      );
    });

    test('UpdateFulfillmentParams forwards extras verbatim', () {
      expect(const UpdateFulfillmentParams().toJson(), isEmpty);
      expect(
        const UpdateFulfillmentParams(
          extra: <String, Object?>{'delivery_rate_id': 'rate_1'},
        ).toJson(),
        equals(<String, Object?>{'delivery_rate_id': 'rate_1'}),
      );
    });
  });
}
