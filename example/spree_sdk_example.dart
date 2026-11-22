import 'package:spree_sdk/spree_sdk.dart';

Future<void> main() async {
  final client = SpreeClient(
    baseUrl: Uri.parse('https://spree.sh'),
    publishableKey: 'your-publishable-key',
  );

  try {
    final products = await client.products.list(limit: 5, sort: '-updated_at');
    print("Fetched ${products.data.length} products:");
    for (final product in products.data) {
      // ignore: avoid_print
      print(
        '${product.id}: ${product.name} :${product.price.amount} ${product.price.currency?.value}',
      );
    }
  } catch (e) {
    print("Error fetching products: $e");
  } finally {
    client.close();
  }
}
