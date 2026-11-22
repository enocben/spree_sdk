import 'package:spree_sdk/spree_sdk.dart';

Future<void> main() async {
  final client = SpreeClient(
    baseUrl: Uri.parse('https://demo.spreecommerce.org'),
    publishableKey: 'YOUR_PUBLISHABLE_KEY',
    locale: 'en',
    currency: 'USD',
  );

  try {
    final products = await client.products.list(limit: 5);
    for (final product in products.data) {
      // ignore: avoid_print
      print('${product.id}: ${product.name}');
    }
  } finally {
    client.close();
  }
}
