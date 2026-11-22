import 'package:spree_sdk/spree_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('public barrel', () {
    test('client builds and exposes typed resources', () {
      final client = SpreeClient(
        baseUrl: Uri.parse('https://demo.spreecommerce.org'),
        publishableKey: 'pk_test',
      );
      expect(client.products, isA<ProductsResource>());
      expect(client.carts, isA<CartsResource>());
      expect(client.auth, isA<AuthResource>());
      expect(client.orders, isA<OrdersResource>());
      client.close();
    });
  });
}
