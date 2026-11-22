import 'package:spree_sdk/src/models/meta.dart';
import 'package:spree_sdk/src/models/product.dart';
import 'package:test/test.dart';

import 'fixture_helpers.dart';

void main() {
  group('Product minimal', () {
    test('parses required-only shape with nulls and empty tags', () {
      final product = Product.fromJson(loadFixture('product_minimal.json'));

      expect(product.id, 'prod_001');
      expect(product.slug, 'canvas-backpack');
      expect(product.variantCount, 1);
      expect(product.tags, isEmpty);
      expect(product.metaTitle, isNull);
      expect(product.price.amount, isA<String>());
      expect(product.price.amount, '89.99');
      expect(product.price.currency, CurrencyCode.usd);
      expect(product.originalPrice, isNull);
      expect(product.seller, isNull);
      expect(product.variants, isNull);
      expect(product.media, isNull);
    });

    test('absent optional associations stay null', () {
      final json = Map<String, Object?>.of(loadFixture('product_minimal.json'))
        ..remove('tags');
      expect(
        () => Product.fromJson(json),
        throwsA(isA<TypeError>()),
        reason: 'tags is non-nullable upstream and must be present',
      );
    });
  });

  group('Product expanded', () {
    test('parses variants, media, options, categories and seller', () {
      final product = Product.fromJson(loadFixture('product_expanded.json'));

      expect(product.tags, ['outdoor', 'canvas']);
      expect(product.variants, hasLength(1));
      final variant = product.variants!.first;
      expect(variant.sku, 'CB-CHAR');
      expect(variant.weight, 0.8);
      expect(variant.weightUnit, WeightUnit.kg);
      expect(variant.dimensionsUnit, DimensionUnit.cm);
      expect(variant.purchaseUnit, PurchaseUnit.unit);
      expect(variant.optionValues.first.optionTypeName, 'color');

      expect(product.primaryMedia, isNull);
      expect(product.media, hasLength(1));
      expect(product.media!.first.mediaType, MediaType.image);
      expect(product.optionTypes!.first.kind, OptionTypeKind.colorSwatch);
      expect(product.categories!.first.permalink, 'bags/backpacks');
      expect(product.seller!.slug, 'trailhead-supply');
      expect(product.priorPrice!.amount, '99.99');
      expect(product.customFields!.first.key, 'season');
    });

    test('round-trips through toJson', () {
      final product = Product.fromJson(loadFixture('product_expanded.json'));
      expect(Product.fromJson(product.toJson()), equals(product));
    });
  });

  group('Variant / Price edge cases', () {
    test('unknown units and purchase unit fall back safely', () {
      final json =
          Map<String, Object?>.of(
              (loadFixture('product_expanded.json')['variants'] as List).first
                  as Map<String, Object?>,
            )
            ..['weight_unit'] = 'stone'
            ..['purchase_unit'] = 'pallet'
            ..['price'] = const <String, Object?>{
              'id': 'price_001',
              'currency': 'ZZZ',
            };
      final variant = Variant.fromJson(json);

      expect(variant.weightUnit, WeightUnit.unknown);
      expect(variant.purchaseUnit, PurchaseUnit.unknown);
      expect(variant.price.currency, CurrencyCode.unknown);
      expect(variant.price.amount, isNull);
    });

    test('money stays a decimal string, never a number', () {
      final product = Product.fromJson(loadFixture('product_expanded.json'));
      expect(product.price.amount, isA<String>());
      expect(product.originalPrice!.amount, isA<String>());
    });
  });

  group('ProductFiltersResponse', () {
    test('parses all four facet kinds plus sort options', () {
      final response = ProductFiltersResponse.fromJson(
        loadFixture('product_filters.json'),
      );

      expect(response.totalCount, 42);
      expect(response.filters, hasLength(5));

      final priceRange = response.filters[0] as ProductFilterPriceRange;
      expect(priceRange.min, '10.00');
      expect(priceRange.currency, CurrencyCode.usd);

      final availability = response.filters[1] as ProductFilterAvailability;
      expect(availability.options.map((e) => e.id), [
        StockAvailability.inStock,
        StockAvailability.outOfStock,
      ]);

      final option = response.filters[2] as ProductFilterOption;
      expect(option.kind, OptionTypeKind.colorSwatch);
      expect(option.options.first.count, 12);

      final category = response.filters[3] as ProductFilterCategory;
      expect(category.options.first.permalink, 'bags/backpacks');

      expect(response.sortOptions.first.label, 'Name A-Z');
      expect(response.sortOptions[1].label, isNull);
    });

    test('unrecognized facet types are kept, not thrown', () {
      final response = ProductFiltersResponse.fromJson(
        loadFixture('product_filters.json'),
      );
      final unknown = response.filters[4] as ProductFilterUnknown;

      expect(unknown.id, 'future-facet');
      expect(unknown.raw['type'], 'upcoming_facet_kind');
      expect(unknown.toJson()['whatever'], 'kept-raw');
    });

    test('unknown availability ids fall back safely', () {
      final option = ProductFilterAvailabilityOption.fromJson(
        const <String, Object?>{'id': 'backordered', 'count': 1},
      );
      expect(option.id, StockAvailability.unknown);
    });

    test('round-trips through toJson', () {
      final response = ProductFiltersResponse.fromJson(
        loadFixture('product_filters.json'),
      );
      final reparsed = ProductFiltersResponse.fromJson(response.toJson());
      expect(reparsed, equals(response));
    });
  });
}
