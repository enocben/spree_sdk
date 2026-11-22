import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/models/taxons.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Category', () {
    test('parses a tree with children', () {
      final category = Category.fromJson(loadFixture('category_tree.json'));

      expect(category.permalink, 'bags');
      expect(category.isRoot, isTrue);
      expect(category.isLeaf, isFalse);
      expect(category.children, hasLength(1));
      expect(category.children!.first.parentId, 'cat_001');
      expect(category.children!.first.isLeaf, isTrue);
      expect(category.parent, isNull);
      expect(category.ancestors, isNull);
    });

    test('round-trips through toJson', () {
      final category = Category.fromJson(loadFixture('category_tree.json'));
      expect(Category.fromJson(category.toJson()), equals(category));
    });
  });

  group('Seller', () {
    test('parses seller with policies', () {
      final seller = Seller.fromJson(loadFixture('seller.json'));

      expect(seller.slug, 'trailhead-supply');
      expect(seller.logoUrl, isNull);
      expect(seller.policies, hasLength(1));
      expect(seller.policies!.first.slug, 'returns');
    });

    test('unknown policy-free seller round-trips', () {
      final seller = Seller.fromJson(loadFixture('seller.json'));
      expect(Seller.fromJson(seller.toJson()), equals(seller));
    });
  });

  group('Collection', () {
    test('parses sort order and counts', () {
      final collection = Collection.fromJson(loadFixture('collection.json'));

      expect(collection.permalink, 'staff-picks');
      expect(collection.sortOrder, CollectionSortOrder.bestSelling);
      expect(collection.productsCount, 7);
      expect(collection.customFields, isNull);
    });

    test('unknown sort orders fall back safely', () {
      final collection = Collection.fromJson(
        Map<String, Object?>.of(loadFixture('collection.json'))
          ..['sort_order'] = 'editorial',
      );
      expect(collection.sortOrder, CollectionSortOrder.unknown);
    });

    test('round-trips through toJson', () {
      final collection = Collection.fromJson(loadFixture('collection.json'));
      expect(Collection.fromJson(collection.toJson()), equals(collection));
    });
  });
}
