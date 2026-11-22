/// Catalog product models.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Product,Variant,Price,
///   PriceHistory,Media,OptionType,OptionValue,ProductFilters,
///   ProductFilterPriceRange,ProductFilterAvailability,
///   ProductFilterAvailabilityOption,ProductFilterOption,
///   ProductFilterOptionValue,ProductFilterCategory,
///   ProductFilterCategoryOption,ProductFilterSortOption}.ts`;
/// * SPEC `store.yaml#/components/schemas/` for the same names;
/// * contracts: `doc/research/store-api-contract.md` §2
///   (`GET /products`, `GET /products/{id}`, `GET /products/filters`);
/// * money is always a decimal string, never a number
///   (`docs/developer/sdk/configuration.mdx` "Monetary Amounts", verified in
///   `doc/research/upstream-sdk-inventory.md` §4).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta.dart';
import 'taxons.dart';

part 'product.freezed.dart';
part 'product.g.dart';

/// A price in a currency: decimal-string amounts.
///
/// Source: `packages/sdk/src/types/generated/Price.ts`;
/// SPEC `store.yaml#/components/schemas/Price`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Price with _$Price {
  const Price._();

  /// Creates a price.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Price({
    required String id,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode? currency,
    String? amount,
    String? compareAtAmount,
    String? priceListId,
  }) = _Price;

  /// Parses a price from its JSON shape.
  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Pricing currency, when reported.
  @override
  CurrencyCode? get currency;

  /// Amount as a decimal string (never a number), when reported.
  @override
  String? get amount;

  /// Compare-at amount as a decimal string, when reported.
  @override
  String? get compareAtAmount;

  /// Owning price list, when reported.
  @override
  String? get priceListId;

  /// Serializes this price back to its JSON shape.
}

/// The lowest prior price of a variant (omnibus-style pricing history).
///
/// Source: `packages/sdk/src/types/generated/PriceHistory.ts`;
/// SPEC `store.yaml#/components/schemas/PriceHistory`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class PriceHistory with _$PriceHistory {
  const PriceHistory._();

  /// Creates a price-history entry.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PriceHistory({
    required String id,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
    String? amount,
    required String recordedAt,
  }) = _PriceHistory;

  /// Parses a price-history entry from its JSON shape.
  factory PriceHistory.fromJson(Map<String, Object?> json) =>
      _$PriceHistoryFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Pricing currency.
  @override
  CurrencyCode get currency;

  /// Amount as a decimal string, when reported.
  @override
  String? get amount;

  /// Recording timestamp, as reported by the API (kept as-is).
  @override
  String get recordedAt;

  /// Serializes this entry back to its JSON shape.
}

/// Media attached to a product or variant.
///
/// Source: `packages/sdk/src/types/generated/Media.ts`;
/// SPEC `store.yaml#/components/schemas/Media`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Media with _$Media {
  const Media._();

  /// Creates a media attachment.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Media({
    required String id,
    String? productId,
    required List<String> variantIds,
    required int position,
    String? alt,
    @JsonKey(unknownEnumValue: MediaType.unknown) required MediaType mediaType,
    String? externalVideoUrl,
    double? focalPointX,
    double? focalPointY,
    String? videoProvider,
    String? videoEmbedUrl,
    String? videoUrl,
    String? posterUrl,
    String? originalUrl,
    String? miniUrl,
    String? smallUrl,
    String? mediumUrl,
    String? largeUrl,
    String? xlargeUrl,
    String? ogImageUrl,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Media;

  /// Parses media from its JSON shape.
  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning product id, when reported.
  @override
  String? get productId;

  /// Ids of the variants this media belongs to.
  @override
  List<String> get variantIds;

  /// Sort position.
  @override
  int get position;

  /// Alt text, when set.
  @override
  String? get alt;

  /// Media kind.
  @override
  MediaType get mediaType;

  /// External video URL, for `externalVideo` media.
  @override
  String? get externalVideoUrl;

  /// Horizontal focal point, when set.
  @override
  double? get focalPointX;

  /// Vertical focal point, when set.
  @override
  double? get focalPointY;

  /// Video provider name, when reported.
  @override
  String? get videoProvider;

  /// Embeddable video URL, when reported.
  @override
  String? get videoEmbedUrl;

  /// Video file URL, when reported.
  @override
  String? get videoUrl;

  /// Poster image URL, when reported.
  @override
  String? get posterUrl;

  /// Original image URL, when reported.
  @override
  String? get originalUrl;

  /// Mini rendition URL, when reported.
  @override
  String? get miniUrl;

  /// Small rendition URL, when reported.
  @override
  String? get smallUrl;

  /// Medium rendition URL, when reported.
  @override
  String? get mediumUrl;

  /// Large rendition URL, when reported.
  @override
  String? get largeUrl;

  /// Extra-large rendition URL, when reported.
  @override
  String? get xlargeUrl;

  /// Open-graph image URL, when reported.
  @override
  String? get ogImageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this media back to its JSON shape.
}

/// A product option type (e.g. size, color).
///
/// Source: `packages/sdk/src/types/generated/OptionType.ts`;
/// SPEC `store.yaml#/components/schemas/OptionType`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class OptionType with _$OptionType {
  const OptionType._();

  /// Creates an option type.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OptionType({
    required String id,
    required String name,
    required String label,
    required int position,
    @JsonKey(unknownEnumValue: OptionTypeKind.unknown)
    required OptionTypeKind kind,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _OptionType;

  /// Parses an option type from its JSON shape.
  factory OptionType.fromJson(Map<String, Object?> json) =>
      _$OptionTypeFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Option type name.
  @override
  String get name;

  /// Merchant-facing label.
  @override
  String get label;

  /// Sort position.
  @override
  int get position;

  /// Presentation kind.
  @override
  OptionTypeKind get kind;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this option type back to its JSON shape.
}

/// One value of a product option type (e.g. `Red` for color).
///
/// Source: `packages/sdk/src/types/generated/OptionValue.ts`;
/// SPEC `store.yaml#/components/schemas/OptionValue`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class OptionValue with _$OptionValue {
  const OptionValue._();

  /// Creates an option value.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OptionValue({
    required String id,
    required String optionTypeId,
    required String name,
    required String label,
    required int position,
    String? colorCode,
    required String optionTypeName,
    required String optionTypeLabel,
    String? imageUrl,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _OptionValue;

  /// Parses an option value from its JSON shape.
  factory OptionValue.fromJson(Map<String, Object?> json) =>
      _$OptionValueFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning option type id.
  @override
  String get optionTypeId;

  /// Option value name.
  @override
  String get name;

  /// Merchant-facing label.
  @override
  String get label;

  /// Sort position.
  @override
  int get position;

  /// Swatch color code, when set.
  @override
  String? get colorCode;

  /// Denormalized owning option type name.
  @override
  String get optionTypeName;

  /// Denormalized owning option type label.
  @override
  String get optionTypeLabel;

  /// Swatch image URL, when set.
  @override
  String? get imageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this option value back to its JSON shape.
}

/// A purchasable variant of a product.
///
/// Source: `packages/sdk/src/types/generated/Variant.ts`;
/// SPEC `store.yaml#/components/schemas/Variant`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Variant with _$Variant {
  const Variant._();

  /// Creates a variant.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Variant({
    required String id,
    required String productId,
    String? sku,
    required String optionsText,
    required bool trackInventory,
    required int mediaCount,
    String? preorderShipsAt,
    String? thumbnailUrl,
    required bool purchasable,
    required bool inStock,
    required bool backorderable,
    required bool preorder,
    double? weight,
    double? height,
    double? width,
    double? depth,
    @JsonKey(unknownEnumValue: WeightUnit.unknown)
    required WeightUnit weightUnit,
    @JsonKey(unknownEnumValue: DimensionUnit.unknown)
    required DimensionUnit dimensionsUnit,
    required int minimumOrderQuantity,
    required int orderMultiple,
    @JsonKey(unknownEnumValue: PurchaseUnit.unknown)
    required PurchaseUnit purchaseUnit,
    int? unitsPerCarton,
    required Price price,
    Price? originalPrice,
    String? sellerId,
    Seller? seller,
    Media? primaryMedia,
    @JsonKey(includeIfNull: false) List<Media>? media,
    required List<OptionValue> optionValues,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
    PriceHistory? priorPrice,
  }) = _Variant;

  /// Parses a variant from its JSON shape.
  factory Variant.fromJson(Map<String, Object?> json) =>
      _$VariantFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Owning product id.
  @override
  String get productId;

  /// Stock-keeping unit, when set.
  @override
  String? get sku;

  /// Human-readable option summary.
  @override
  String get optionsText;

  /// Whether inventory is tracked for this variant.
  @override
  bool get trackInventory;

  /// Number of attached media.
  @override
  int get mediaCount;

  /// Preorder shipping date, when set.
  @override
  String? get preorderShipsAt;

  /// Thumbnail URL, when set.
  @override
  String? get thumbnailUrl;

  /// Whether this variant can currently be purchased.
  @override
  bool get purchasable;

  /// Whether this variant is in stock.
  @override
  bool get inStock;

  /// Whether this variant can be backordered.
  @override
  bool get backorderable;

  /// Whether this variant is a preorder.
  @override
  bool get preorder;

  /// Weight, when set.
  @override
  double? get weight;

  /// Height, when set.
  @override
  double? get height;

  /// Width, when set.
  @override
  double? get width;

  /// Depth, when set.
  @override
  double? get depth;

  /// Unit of [weight].
  @override
  WeightUnit get weightUnit;

  /// Unit of [height]/[width]/[depth].
  @override
  DimensionUnit get dimensionsUnit;

  /// Minimum orderable quantity.
  @override
  int get minimumOrderQuantity;

  /// Quantity multiple orders must respect.
  @override
  int get orderMultiple;

  /// Purchase unit (`unit` or `carton`).
  @override
  PurchaseUnit get purchaseUnit;

  /// Units per carton, when set.
  @override
  int? get unitsPerCarton;

  /// Current price.
  @override
  Price get price;

  /// Compare-at price, when set.
  @override
  Price? get originalPrice;

  /// Owning seller id, when set.
  @override
  String? get sellerId;

  /// Expanded seller, when requested via `expand`.
  @override
  Seller? get seller;

  /// Primary media, when expanded.
  @override
  Media? get primaryMedia;

  /// All media, when expanded.
  @override
  List<Media>? get media;

  /// Option values identifying this variant.
  @override
  List<OptionValue> get optionValues;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Lowest prior price, when reported.
  @override
  PriceHistory? get priorPrice;

  /// Serializes this variant back to its JSON shape.
}

/// A catalog product.
///
/// Source: `packages/sdk/src/types/generated/Product.ts`;
/// SPEC `store.yaml#/components/schemas/Product`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Product with _$Product {
  const Product._();

  /// Creates a product.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Product({
    required String id,
    required String name,
    required String slug,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
    required int variantCount,
    String? availableOn,
    String? preorderShipsAt,
    required bool purchasable,
    required bool preorder,
    required bool inStock,
    required bool backorderable,
    required bool available,
    String? description,
    String? descriptionHtml,
    required String defaultVariantId,
    String? buyBoxVariantId,
    String? thumbnailUrl,
    required List<String> tags,
    required Price price,
    Price? originalPrice,
    String? sellerId,
    Seller? seller,
    Media? primaryMedia,
    @JsonKey(includeIfNull: false) List<Media>? media,
    @JsonKey(includeIfNull: false) List<Variant>? variants,
    Variant? defaultVariant,
    @JsonKey(includeIfNull: false) List<OptionType>? optionTypes,
    @JsonKey(includeIfNull: false) List<OptionValue>? optionValues,
    @JsonKey(includeIfNull: false) List<Category>? categories,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
    PriceHistory? priorPrice,
  }) = _Product;

  /// Parses a product from its JSON shape.
  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Product name.
  @override
  String get name;

  /// URL slug (used by `products.get` in place of the id).
  @override
  String get slug;

  /// SEO title override, when set.
  @override
  String? get metaTitle;

  /// Meta description, when set.
  @override
  String? get metaDescription;

  /// Meta keywords, when set.
  @override
  String? get metaKeywords;

  /// Number of variants.
  @override
  int get variantCount;

  /// Availability date, when set.
  @override
  String? get availableOn;

  /// Preorder shipping date, when set.
  @override
  String? get preorderShipsAt;

  /// Whether the product can currently be purchased.
  @override
  bool get purchasable;

  /// Whether the product is a preorder.
  @override
  bool get preorder;

  /// Whether the product is in stock.
  @override
  bool get inStock;

  /// Whether the product can be backordered.
  @override
  bool get backorderable;

  /// Whether the product is available.
  @override
  bool get available;

  /// Plain-text description, when set.
  @override
  String? get description;

  /// Rendered HTML description, when set.
  @override
  String? get descriptionHtml;

  /// Default variant id.
  @override
  String get defaultVariantId;

  /// Buy-box variant id, when set.
  @override
  String? get buyBoxVariantId;

  /// Thumbnail URL, when set.
  @override
  String? get thumbnailUrl;

  /// Merchant-defined tags.
  @override
  List<String> get tags;

  /// Current price.
  @override
  Price get price;

  /// Compare-at price, when set.
  @override
  Price? get originalPrice;

  /// Owning seller id, when set.
  @override
  String? get sellerId;

  /// Expanded seller, when requested via `expand`.
  @override
  Seller? get seller;

  /// Primary media, when expanded.
  @override
  Media? get primaryMedia;

  /// All media, when expanded.
  @override
  List<Media>? get media;

  /// All variants, when expanded.
  @override
  List<Variant>? get variants;

  /// Expanded default variant, when requested via `expand`.
  @override
  Variant? get defaultVariant;

  /// Expanded option types, when requested via `expand`.
  @override
  List<OptionType>? get optionTypes;

  /// Expanded option values, when requested via `expand`.
  @override
  List<OptionValue>? get optionValues;

  /// Expanded categories, when requested via `expand`.
  @override
  List<Category>? get categories;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Lowest prior price, when reported.
  @override
  PriceHistory? get priorPrice;

  /// Serializes this product back to its JSON shape.
}

/// Base of the `GET /products/filters` response union.
///
/// Parsed via [ProductFilter.parse], which dispatches on the `type`
/// discriminator. Unrecognized `type` values yield [ProductFilterUnknown]
/// (fallback, never a throw), per the unknown-enum rule.
sealed class ProductFilter {
  /// Creates a filter member.
  const ProductFilter();

  /// Parses one filter from its JSON shape, dispatching on `type`.
  factory ProductFilter.parse(Map<String, Object?> json) {
    switch (ProductFilterType.fromJson(json['type'])) {
      case ProductFilterType.priceRange:
        return ProductFilterPriceRange.fromJson(json);
      case ProductFilterType.availability:
        return ProductFilterAvailability.fromJson(json);
      case ProductFilterType.option:
        return ProductFilterOption.fromJson(json);
      case ProductFilterType.category:
        return ProductFilterCategory.fromJson(json);
      case ProductFilterType.unknown:
        return ProductFilterUnknown.fromJson(json);
    }
  }

  /// Serializes this filter back to its JSON shape.
  Map<String, Object?> toJson();
}

/// Price-range facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterPriceRange.ts`.
@Freezed(fromJson: true, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterPriceRange extends ProductFilter
    with _$ProductFilterPriceRange {
  const ProductFilterPriceRange._() : super();

  /// Creates a price-range facet.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterPriceRange({
    required String id,
    required String min,
    required String max,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currency,
  }) = _ProductFilterPriceRange;

  /// Parses a price-range facet from its JSON shape.
  factory ProductFilterPriceRange.fromJson(Map<String, Object?> json) =>
      _$ProductFilterPriceRangeFromJson(json);

  /// Facet id.
  @override
  String get id;

  /// Minimum bound, decimal string.
  @override
  String get min;

  /// Maximum bound, decimal string.
  @override
  String get max;

  /// Pricing currency of the bounds.
  @override
  CurrencyCode get currency;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$ProductFilterPriceRangeToJson(this as _ProductFilterPriceRange),
    'type': ProductFilterType.priceRange.toJson(),
  };
}

/// One availability option of the availability facet.
///
/// Source:
/// `packages/sdk/src/types/generated/ProductFilterAvailabilityOption.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ProductFilterAvailabilityOption
    with _$ProductFilterAvailabilityOption {
  const ProductFilterAvailabilityOption._();

  /// Creates an availability option.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterAvailabilityOption({
    @JsonKey(unknownEnumValue: StockAvailability.unknown)
    required StockAvailability id,
    required int count,
  }) = _ProductFilterAvailabilityOption;

  /// Parses an availability option from its JSON shape.
  factory ProductFilterAvailabilityOption.fromJson(Map<String, Object?> json) =>
      _$ProductFilterAvailabilityOptionFromJson(json);

  /// Availability value.
  @override
  StockAvailability get id;

  /// Matching product count.
  @override
  int get count;
}

/// Availability facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterAvailability.ts`.
@Freezed(fromJson: true, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterAvailability extends ProductFilter
    with _$ProductFilterAvailability {
  const ProductFilterAvailability._() : super();

  /// Creates an availability facet.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterAvailability({
    required String id,
    required List<ProductFilterAvailabilityOption> options,
  }) = _ProductFilterAvailability;

  /// Parses an availability facet from its JSON shape.
  factory ProductFilterAvailability.fromJson(Map<String, Object?> json) =>
      _$ProductFilterAvailabilityFromJson(json);

  /// Facet id.
  @override
  String get id;

  /// Availability options with counts.
  @override
  List<ProductFilterAvailabilityOption> get options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$ProductFilterAvailabilityToJson(this as _ProductFilterAvailability),
    'type': ProductFilterType.availability.toJson(),
  };
}

/// One option value of the option facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOptionValue.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ProductFilterOptionValue with _$ProductFilterOptionValue {
  const ProductFilterOptionValue._();

  /// Creates an option-facet value.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterOptionValue({
    required String id,
    required String name,
    required String label,
    required int position,
    String? colorCode,
    String? imageUrl,
    required int count,
  }) = _ProductFilterOptionValue;

  /// Parses an option-facet value from its JSON shape.
  factory ProductFilterOptionValue.fromJson(Map<String, Object?> json) =>
      _$ProductFilterOptionValueFromJson(json);

  /// Value id.
  @override
  String get id;

  /// Value name.
  @override
  String get name;

  /// Merchant-facing label.
  @override
  String get label;

  /// Sort position.
  @override
  int get position;

  /// Swatch color code, when set.
  @override
  String? get colorCode;

  /// Swatch image URL, when set.
  @override
  String? get imageUrl;

  /// Matching product count.
  @override
  int get count;

  /// Serializes this value back to its JSON shape.
}

/// Option facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOption.ts`.
@Freezed(fromJson: true, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterOption extends ProductFilter
    with _$ProductFilterOption {
  const ProductFilterOption._() : super();

  /// Creates an option facet.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterOption({
    required String id,
    required String name,
    required String label,
    @JsonKey(unknownEnumValue: OptionTypeKind.unknown)
    required OptionTypeKind kind,
    required List<ProductFilterOptionValue> options,
  }) = _ProductFilterOption;

  /// Parses an option facet from its JSON shape.
  factory ProductFilterOption.fromJson(Map<String, Object?> json) =>
      _$ProductFilterOptionFromJson(json);

  /// Facet id.
  @override
  String get id;

  /// Option type name.
  @override
  String get name;

  /// Merchant-facing label.
  @override
  String get label;

  /// Presentation kind.
  @override
  OptionTypeKind get kind;

  /// Option values with counts.
  @override
  List<ProductFilterOptionValue> get options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$ProductFilterOptionToJson(this as _ProductFilterOption),
    'type': ProductFilterType.option.toJson(),
  };
}

/// One category option of the category facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategoryOption.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ProductFilterCategoryOption with _$ProductFilterCategoryOption {
  const ProductFilterCategoryOption._();

  /// Creates a category-facet option.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterCategoryOption({
    required String id,
    required String name,
    required String permalink,
    required int count,
  }) = _ProductFilterCategoryOption;

  /// Parses a category-facet option from its JSON shape.
  factory ProductFilterCategoryOption.fromJson(Map<String, Object?> json) =>
      _$ProductFilterCategoryOptionFromJson(json);

  /// Category id.
  @override
  String get id;

  /// Category name.
  @override
  String get name;

  /// Category permalink.
  @override
  String get permalink;

  /// Matching product count.
  @override
  int get count;

  /// Serializes this option back to its JSON shape.
}

/// Category facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategory.ts`.
@Freezed(fromJson: true, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterCategory extends ProductFilter
    with _$ProductFilterCategory {
  const ProductFilterCategory._() : super();

  /// Creates a category facet.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterCategory({
    required String id,
    required List<ProductFilterCategoryOption> options,
  }) = _ProductFilterCategory;

  /// Parses a category facet from its JSON shape.
  factory ProductFilterCategory.fromJson(Map<String, Object?> json) =>
      _$ProductFilterCategoryFromJson(json);

  /// Facet id.
  @override
  String get id;

  /// Category options with counts.
  @override
  List<ProductFilterCategoryOption> get options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    ..._$ProductFilterCategoryToJson(this as _ProductFilterCategory),
    'type': ProductFilterType.category.toJson(),
  };
}

/// Fallback carrier for a filter with an unrecognized `type`.
///
/// Keeps the raw payload so forward-compatible facets are not lost; see the
/// unknown-enum rule (ADR-002).
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterUnknown extends ProductFilter
    with _$ProductFilterUnknown {
  const ProductFilterUnknown._() : super();

  /// Creates an unknown-filter carrier.
  const factory ProductFilterUnknown({
    required String id,
    required Map<String, Object?> raw,
  }) = _ProductFilterUnknown;

  /// Parses an unknown filter, keeping the raw payload.
  factory ProductFilterUnknown.fromJson(Map<String, Object?> json) =>
      ProductFilterUnknown(
        id: json['id'] as String? ?? '',
        raw: Map<String, Object?>.unmodifiable(json),
      );

  /// Facet id, when present.
  @override
  String get id;

  /// The raw filter payload.
  @override
  Map<String, Object?> get raw;
  @override
  Map<String, Object?> toJson() => Map<String, Object?>.of(raw);
}

/// One sort option of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterSortOption.ts`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ProductFilterSortOption with _$ProductFilterSortOption {
  const ProductFilterSortOption._();

  /// Creates a sort option.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFilterSortOption({required String id, String? label}) =
      _ProductFilterSortOption;

  /// Parses a sort option from its JSON shape.
  factory ProductFilterSortOption.fromJson(Map<String, Object?> json) =>
      _$ProductFilterSortOptionFromJson(json);

  /// Sort key.
  @override
  String get id;

  /// Merchant-facing label, when set.
  @override
  String? get label;

  /// Serializes this sort option back to its JSON shape.
}

/// Response of `GET /products/filters`: facets and sort options describing
/// the current listing.
///
/// Source: `packages/sdk/src/types/generated/ProductFilters.ts`;
/// SPEC `store.yaml#/components/schemas/ProductFilters`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class ProductFiltersResponse with _$ProductFiltersResponse {
  const ProductFiltersResponse._();

  /// Creates a filters response.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductFiltersResponse({
    required String id,
    required String defaultSort,
    required int totalCount,
    @JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson)
    required List<ProductFilter> filters,
    required List<ProductFilterSortOption> sortOptions,
  }) = _ProductFiltersResponse;

  /// Parses a filters response from its JSON shape.
  factory ProductFiltersResponse.fromJson(Map<String, Object?> json) =>
      _$ProductFiltersResponseFromJson(json);

  /// Response id.
  @override
  String get id;

  /// Default sort key.
  @override
  String get defaultSort;

  /// Total matching product count.
  @override
  int get totalCount;

  /// Facets describing the listing.
  @override
  List<ProductFilter> get filters;

  /// Available sort options.
  @override
  List<ProductFilterSortOption> get sortOptions;

  /// Serializes this response back to its JSON shape.
}

List<ProductFilter> _productFiltersFromJson(List<Object?> json) => json
    .map((item) => ProductFilter.parse(item as Map<String, Object?>))
    .toList();

List<Map<String, Object?>> _productFiltersToJson(List<ProductFilter> filters) =>
    filters.map((filter) => filter.toJson()).toList();
