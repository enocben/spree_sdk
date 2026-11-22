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

/// A price in a currency: decimal-string amounts.
///
/// Source: `packages/sdk/src/types/generated/Price.ts`;
/// SPEC `store.yaml#/components/schemas/Price`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Price with _$Price {
  const Price._();

  /// Creates a price.
  const factory Price({
    required String id,
    CurrencyCode? currency,
    String? amount,
    String? compareAtAmount,
    String? priceListId,
  }) = _Price;

  /// Parses a price from its JSON shape.
  factory Price.fromJson(Map<String, Object?> json) => Price(
    id: json['id'] as String,
    currency: json['currency'] == null
        ? null
        : CurrencyCode.fromJson(json['currency']),
    amount: json['amount'] as String?,
    compareAtAmount: json['compare_at_amount'] as String?,
    priceListId: json['price_list_id'] as String?,
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Pricing currency, when reported.
  @override
  @override
  CurrencyCode? get currency;

  /// Amount as a decimal string (never a number), when reported.
  @override
  @override
  String? get amount;

  /// Compare-at amount as a decimal string, when reported.
  @override
  @override
  String? get compareAtAmount;

  /// Owning price list, when reported.
  @override
  @override
  String? get priceListId;

  /// Serializes this price back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'currency': currency?.toJson(),
    'amount': amount,
    'compare_at_amount': compareAtAmount,
    'price_list_id': priceListId,
  };
}

/// The lowest prior price of a variant (omnibus-style pricing history).
///
/// Source: `packages/sdk/src/types/generated/PriceHistory.ts`;
/// SPEC `store.yaml#/components/schemas/PriceHistory`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class PriceHistory with _$PriceHistory {
  const PriceHistory._();

  /// Creates a price-history entry.
  const factory PriceHistory({
    required String id,
    required CurrencyCode currency,
    String? amount,
    required String recordedAt,
  }) = _PriceHistory;

  /// Parses a price-history entry from its JSON shape.
  factory PriceHistory.fromJson(Map<String, Object?> json) => PriceHistory(
    id: json['id'] as String,
    currency: CurrencyCode.fromJson(json['currency']),
    amount: json['amount'] as String?,
    recordedAt: json['recorded_at'] as String,
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Pricing currency.
  @override
  @override
  CurrencyCode get currency;

  /// Amount as a decimal string, when reported.
  @override
  @override
  String? get amount;

  /// Recording timestamp, as reported by the API (kept as-is).
  @override
  @override
  String get recordedAt;

  /// Serializes this entry back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'currency': currency.toJson(),
    'amount': amount,
    'recorded_at': recordedAt,
  };
}

/// Media attached to a product or variant.
///
/// Source: `packages/sdk/src/types/generated/Media.ts`;
/// SPEC `store.yaml#/components/schemas/Media`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Media with _$Media {
  const Media._();

  /// Creates a media attachment.
  const factory Media({
    required String id,
    String? productId,
    required List<String> variantIds,
    required int position,
    String? alt,
    required MediaType mediaType,
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
    List<CustomField>? customFields,
  }) = _Media;

  /// Parses media from its JSON shape.
  factory Media.fromJson(Map<String, Object?> json) => Media(
    id: json['id'] as String,
    productId: json['product_id'] as String?,
    variantIds: (json['variant_ids'] as List).cast<String>(),
    position: (json['position'] as num).toInt(),
    alt: json['alt'] as String?,
    mediaType: MediaType.fromJson(json['media_type']),
    externalVideoUrl: json['external_video_url'] as String?,
    focalPointX: (json['focal_point_x'] as num?)?.toDouble(),
    focalPointY: (json['focal_point_y'] as num?)?.toDouble(),
    videoProvider: json['video_provider'] as String?,
    videoEmbedUrl: json['video_embed_url'] as String?,
    videoUrl: json['video_url'] as String?,
    posterUrl: json['poster_url'] as String?,
    originalUrl: json['original_url'] as String?,
    miniUrl: json['mini_url'] as String?,
    smallUrl: json['small_url'] as String?,
    mediumUrl: json['medium_url'] as String?,
    largeUrl: json['large_url'] as String?,
    xlargeUrl: json['xlarge_url'] as String?,
    ogImageUrl: json['og_image_url'] as String?,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Owning product id, when reported.
  @override
  @override
  String? get productId;

  /// Ids of the variants this media belongs to.
  @override
  @override
  List<String> get variantIds;

  /// Sort position.
  @override
  @override
  int get position;

  /// Alt text, when set.
  @override
  @override
  String? get alt;

  /// Media kind.
  @override
  @override
  MediaType get mediaType;

  /// External video URL, for `externalVideo` media.
  @override
  @override
  String? get externalVideoUrl;

  /// Horizontal focal point, when set.
  @override
  @override
  double? get focalPointX;

  /// Vertical focal point, when set.
  @override
  @override
  double? get focalPointY;

  /// Video provider name, when reported.
  @override
  @override
  String? get videoProvider;

  /// Embeddable video URL, when reported.
  @override
  @override
  String? get videoEmbedUrl;

  /// Video file URL, when reported.
  @override
  @override
  String? get videoUrl;

  /// Poster image URL, when reported.
  @override
  @override
  String? get posterUrl;

  /// Original image URL, when reported.
  @override
  @override
  String? get originalUrl;

  /// Mini rendition URL, when reported.
  @override
  @override
  String? get miniUrl;

  /// Small rendition URL, when reported.
  @override
  @override
  String? get smallUrl;

  /// Medium rendition URL, when reported.
  @override
  @override
  String? get mediumUrl;

  /// Large rendition URL, when reported.
  @override
  @override
  String? get largeUrl;

  /// Extra-large rendition URL, when reported.
  @override
  @override
  String? get xlargeUrl;

  /// Open-graph image URL, when reported.
  @override
  @override
  String? get ogImageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this media back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'product_id': productId,
    'variant_ids': variantIds,
    'position': position,
    'alt': alt,
    'media_type': mediaType.toJson(),
    'external_video_url': externalVideoUrl,
    'focal_point_x': focalPointX,
    'focal_point_y': focalPointY,
    'video_provider': videoProvider,
    'video_embed_url': videoEmbedUrl,
    'video_url': videoUrl,
    'poster_url': posterUrl,
    'original_url': originalUrl,
    'mini_url': miniUrl,
    'small_url': smallUrl,
    'medium_url': mediumUrl,
    'large_url': largeUrl,
    'xlarge_url': xlargeUrl,
    'og_image_url': ogImageUrl,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A product option type (e.g. size, color).
///
/// Source: `packages/sdk/src/types/generated/OptionType.ts`;
/// SPEC `store.yaml#/components/schemas/OptionType`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class OptionType with _$OptionType {
  const OptionType._();

  /// Creates an option type.
  const factory OptionType({
    required String id,
    required String name,
    required String label,
    required int position,
    required OptionTypeKind kind,
    List<CustomField>? customFields,
  }) = _OptionType;

  /// Parses an option type from its JSON shape.
  factory OptionType.fromJson(Map<String, Object?> json) => OptionType(
    id: json['id'] as String,
    name: json['name'] as String,
    label: json['label'] as String,
    position: (json['position'] as num).toInt(),
    kind: OptionTypeKind.fromJson(json['kind']),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Option type name.
  @override
  @override
  String get name;

  /// Merchant-facing label.
  @override
  @override
  String get label;

  /// Sort position.
  @override
  @override
  int get position;

  /// Presentation kind.
  @override
  @override
  OptionTypeKind get kind;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this option type back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'label': label,
    'position': position,
    'kind': kind.toJson(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// One value of a product option type (e.g. `Red` for color).
///
/// Source: `packages/sdk/src/types/generated/OptionValue.ts`;
/// SPEC `store.yaml#/components/schemas/OptionValue`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class OptionValue with _$OptionValue {
  const OptionValue._();

  /// Creates an option value.
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
    List<CustomField>? customFields,
  }) = _OptionValue;

  /// Parses an option value from its JSON shape.
  factory OptionValue.fromJson(Map<String, Object?> json) => OptionValue(
    id: json['id'] as String,
    optionTypeId: json['option_type_id'] as String,
    name: json['name'] as String,
    label: json['label'] as String,
    position: (json['position'] as num).toInt(),
    colorCode: json['color_code'] as String?,
    optionTypeName: json['option_type_name'] as String,
    optionTypeLabel: json['option_type_label'] as String,
    imageUrl: json['image_url'] as String?,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Owning option type id.
  @override
  @override
  String get optionTypeId;

  /// Option value name.
  @override
  @override
  String get name;

  /// Merchant-facing label.
  @override
  @override
  String get label;

  /// Sort position.
  @override
  @override
  int get position;

  /// Swatch color code, when set.
  @override
  @override
  String? get colorCode;

  /// Denormalized owning option type name.
  @override
  @override
  String get optionTypeName;

  /// Denormalized owning option type label.
  @override
  @override
  String get optionTypeLabel;

  /// Swatch image URL, when set.
  @override
  @override
  String? get imageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this option value back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'option_type_id': optionTypeId,
    'name': name,
    'label': label,
    'position': position,
    'color_code': colorCode,
    'option_type_name': optionTypeName,
    'option_type_label': optionTypeLabel,
    'image_url': imageUrl,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A purchasable variant of a product.
///
/// Source: `packages/sdk/src/types/generated/Variant.ts`;
/// SPEC `store.yaml#/components/schemas/Variant`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Variant with _$Variant {
  const Variant._();

  /// Creates a variant.
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
    required WeightUnit weightUnit,
    required DimensionUnit dimensionsUnit,
    required int minimumOrderQuantity,
    required int orderMultiple,
    required PurchaseUnit purchaseUnit,
    int? unitsPerCarton,
    required Price price,
    Price? originalPrice,
    String? sellerId,
    Seller? seller,
    Media? primaryMedia,
    List<Media>? media,
    required List<OptionValue> optionValues,
    List<CustomField>? customFields,
    PriceHistory? priorPrice,
  }) = _Variant;

  /// Parses a variant from its JSON shape.
  factory Variant.fromJson(Map<String, Object?> json) => Variant(
    id: json['id'] as String,
    productId: json['product_id'] as String,
    sku: json['sku'] as String?,
    optionsText: json['options_text'] as String,
    trackInventory: json['track_inventory'] as bool,
    mediaCount: (json['media_count'] as num).toInt(),
    preorderShipsAt: json['preorder_ships_at'] as String?,
    thumbnailUrl: json['thumbnail_url'] as String?,
    purchasable: json['purchasable'] as bool,
    inStock: json['in_stock'] as bool,
    backorderable: json['backorderable'] as bool,
    preorder: json['preorder'] as bool,
    weight: (json['weight'] as num?)?.toDouble(),
    height: (json['height'] as num?)?.toDouble(),
    width: (json['width'] as num?)?.toDouble(),
    depth: (json['depth'] as num?)?.toDouble(),
    weightUnit: WeightUnit.fromJson(json['weight_unit']),
    dimensionsUnit: DimensionUnit.fromJson(json['dimensions_unit']),
    minimumOrderQuantity: (json['minimum_order_quantity'] as num).toInt(),
    orderMultiple: (json['order_multiple'] as num).toInt(),
    purchaseUnit: PurchaseUnit.fromJson(json['purchase_unit']),
    unitsPerCarton: (json['units_per_carton'] as num?)?.toInt(),
    price: Price.fromJson(json['price'] as Map<String, Object?>),
    originalPrice: json['original_price'] == null
        ? null
        : Price.fromJson(json['original_price'] as Map<String, Object?>),
    sellerId: json['seller_id'] as String?,
    seller: json['seller'] == null
        ? null
        : Seller.fromJson(json['seller'] as Map<String, Object?>),
    primaryMedia: json['primary_media'] == null
        ? null
        : Media.fromJson(json['primary_media'] as Map<String, Object?>),
    media: (json['media'] as List?)
        ?.map((e) => Media.fromJson(e as Map<String, Object?>))
        .toList(),
    optionValues: (json['option_values'] as List)
        .map((e) => OptionValue.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
    priorPrice: json['prior_price'] == null
        ? null
        : PriceHistory.fromJson(json['prior_price'] as Map<String, Object?>),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Owning product id.
  @override
  @override
  String get productId;

  /// Stock-keeping unit, when set.
  @override
  @override
  String? get sku;

  /// Human-readable option summary.
  @override
  @override
  String get optionsText;

  /// Whether inventory is tracked for this variant.
  @override
  @override
  bool get trackInventory;

  /// Number of attached media.
  @override
  @override
  int get mediaCount;

  /// Preorder shipping date, when set.
  @override
  @override
  String? get preorderShipsAt;

  /// Thumbnail URL, when set.
  @override
  @override
  String? get thumbnailUrl;

  /// Whether this variant can currently be purchased.
  @override
  @override
  bool get purchasable;

  /// Whether this variant is in stock.
  @override
  @override
  bool get inStock;

  /// Whether this variant can be backordered.
  @override
  @override
  bool get backorderable;

  /// Whether this variant is a preorder.
  @override
  @override
  bool get preorder;

  /// Weight, when set.
  @override
  @override
  double? get weight;

  /// Height, when set.
  @override
  @override
  double? get height;

  /// Width, when set.
  @override
  @override
  double? get width;

  /// Depth, when set.
  @override
  @override
  double? get depth;

  /// Unit of [weight].
  @override
  @override
  WeightUnit get weightUnit;

  /// Unit of [height]/[width]/[depth].
  @override
  @override
  DimensionUnit get dimensionsUnit;

  /// Minimum orderable quantity.
  @override
  @override
  int get minimumOrderQuantity;

  /// Quantity multiple orders must respect.
  @override
  @override
  int get orderMultiple;

  /// Purchase unit (`unit` or `carton`).
  @override
  @override
  PurchaseUnit get purchaseUnit;

  /// Units per carton, when set.
  @override
  @override
  int? get unitsPerCarton;

  /// Current price.
  @override
  @override
  Price get price;

  /// Compare-at price, when set.
  @override
  @override
  Price? get originalPrice;

  /// Owning seller id, when set.
  @override
  @override
  String? get sellerId;

  /// Expanded seller, when requested via `expand`.
  @override
  @override
  Seller? get seller;

  /// Primary media, when expanded.
  @override
  @override
  Media? get primaryMedia;

  /// All media, when expanded.
  @override
  @override
  List<Media>? get media;

  /// Option values identifying this variant.
  @override
  @override
  List<OptionValue> get optionValues;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Lowest prior price, when reported.
  @override
  @override
  PriceHistory? get priorPrice;

  /// Serializes this variant back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'product_id': productId,
    'sku': sku,
    'options_text': optionsText,
    'track_inventory': trackInventory,
    'media_count': mediaCount,
    'preorder_ships_at': preorderShipsAt,
    'thumbnail_url': thumbnailUrl,
    'purchasable': purchasable,
    'in_stock': inStock,
    'backorderable': backorderable,
    'preorder': preorder,
    'weight': weight,
    'height': height,
    'width': width,
    'depth': depth,
    'weight_unit': weightUnit.toJson(),
    'dimensions_unit': dimensionsUnit.toJson(),
    'minimum_order_quantity': minimumOrderQuantity,
    'order_multiple': orderMultiple,
    'purchase_unit': purchaseUnit.toJson(),
    'units_per_carton': unitsPerCarton,
    'price': price.toJson(),
    'original_price': originalPrice?.toJson(),
    'seller_id': sellerId,
    'seller': seller?.toJson(),
    'primary_media': primaryMedia?.toJson(),
    if (media != null) 'media': media!.map((e) => e.toJson()).toList(),
    'option_values': optionValues.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
    'prior_price': priorPrice?.toJson(),
  };
}

/// A catalog product.
///
/// Source: `packages/sdk/src/types/generated/Product.ts`;
/// SPEC `store.yaml#/components/schemas/Product`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Product with _$Product {
  const Product._();

  /// Creates a product.
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
    List<Media>? media,
    List<Variant>? variants,
    Variant? defaultVariant,
    List<OptionType>? optionTypes,
    List<OptionValue>? optionValues,
    List<Category>? categories,
    List<CustomField>? customFields,
    PriceHistory? priorPrice,
  }) = _Product;

  /// Parses a product from its JSON shape.
  factory Product.fromJson(Map<String, Object?> json) => Product(
    id: json['id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    metaTitle: json['meta_title'] as String?,
    metaDescription: json['meta_description'] as String?,
    metaKeywords: json['meta_keywords'] as String?,
    variantCount: (json['variant_count'] as num).toInt(),
    availableOn: json['available_on'] as String?,
    preorderShipsAt: json['preorder_ships_at'] as String?,
    purchasable: json['purchasable'] as bool,
    preorder: json['preorder'] as bool,
    inStock: json['in_stock'] as bool,
    backorderable: json['backorderable'] as bool,
    available: json['available'] as bool,
    description: json['description'] as String?,
    descriptionHtml: json['description_html'] as String?,
    defaultVariantId: json['default_variant_id'] as String,
    buyBoxVariantId: json['buy_box_variant_id'] as String?,
    thumbnailUrl: json['thumbnail_url'] as String?,
    tags: (json['tags'] as List).cast<String>(),
    price: Price.fromJson(json['price'] as Map<String, Object?>),
    originalPrice: json['original_price'] == null
        ? null
        : Price.fromJson(json['original_price'] as Map<String, Object?>),
    sellerId: json['seller_id'] as String?,
    seller: json['seller'] == null
        ? null
        : Seller.fromJson(json['seller'] as Map<String, Object?>),
    primaryMedia: json['primary_media'] == null
        ? null
        : Media.fromJson(json['primary_media'] as Map<String, Object?>),
    media: (json['media'] as List?)
        ?.map((e) => Media.fromJson(e as Map<String, Object?>))
        .toList(),
    variants: (json['variants'] as List?)
        ?.map((e) => Variant.fromJson(e as Map<String, Object?>))
        .toList(),
    defaultVariant: json['default_variant'] == null
        ? null
        : Variant.fromJson(json['default_variant'] as Map<String, Object?>),
    optionTypes: (json['option_types'] as List?)
        ?.map((e) => OptionType.fromJson(e as Map<String, Object?>))
        .toList(),
    optionValues: (json['option_values'] as List?)
        ?.map((e) => OptionValue.fromJson(e as Map<String, Object?>))
        .toList(),
    categories: (json['categories'] as List?)
        ?.map((e) => Category.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
    priorPrice: json['prior_price'] == null
        ? null
        : PriceHistory.fromJson(json['prior_price'] as Map<String, Object?>),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Product name.
  @override
  @override
  String get name;

  /// URL slug (used by `products.get` in place of the id).
  @override
  @override
  String get slug;

  /// SEO title override, when set.
  @override
  @override
  String? get metaTitle;

  /// Meta description, when set.
  @override
  @override
  String? get metaDescription;

  /// Meta keywords, when set.
  @override
  @override
  String? get metaKeywords;

  /// Number of variants.
  @override
  @override
  int get variantCount;

  /// Availability date, when set.
  @override
  @override
  String? get availableOn;

  /// Preorder shipping date, when set.
  @override
  @override
  String? get preorderShipsAt;

  /// Whether the product can currently be purchased.
  @override
  @override
  bool get purchasable;

  /// Whether the product is a preorder.
  @override
  @override
  bool get preorder;

  /// Whether the product is in stock.
  @override
  @override
  bool get inStock;

  /// Whether the product can be backordered.
  @override
  @override
  bool get backorderable;

  /// Whether the product is available.
  @override
  @override
  bool get available;

  /// Plain-text description, when set.
  @override
  @override
  String? get description;

  /// Rendered HTML description, when set.
  @override
  @override
  String? get descriptionHtml;

  /// Default variant id.
  @override
  @override
  String get defaultVariantId;

  /// Buy-box variant id, when set.
  @override
  @override
  String? get buyBoxVariantId;

  /// Thumbnail URL, when set.
  @override
  @override
  String? get thumbnailUrl;

  /// Merchant-defined tags.
  @override
  @override
  List<String> get tags;

  /// Current price.
  @override
  @override
  Price get price;

  /// Compare-at price, when set.
  @override
  @override
  Price? get originalPrice;

  /// Owning seller id, when set.
  @override
  @override
  String? get sellerId;

  /// Expanded seller, when requested via `expand`.
  @override
  @override
  Seller? get seller;

  /// Primary media, when expanded.
  @override
  @override
  Media? get primaryMedia;

  /// All media, when expanded.
  @override
  @override
  List<Media>? get media;

  /// All variants, when expanded.
  @override
  @override
  List<Variant>? get variants;

  /// Expanded default variant, when requested via `expand`.
  @override
  @override
  Variant? get defaultVariant;

  /// Expanded option types, when requested via `expand`.
  @override
  @override
  List<OptionType>? get optionTypes;

  /// Expanded option values, when requested via `expand`.
  @override
  @override
  List<OptionValue>? get optionValues;

  /// Expanded categories, when requested via `expand`.
  @override
  @override
  List<Category>? get categories;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Lowest prior price, when reported.
  @override
  @override
  PriceHistory? get priorPrice;

  /// Serializes this product back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'slug': slug,
    'meta_title': metaTitle,
    'meta_description': metaDescription,
    'meta_keywords': metaKeywords,
    'variant_count': variantCount,
    'available_on': availableOn,
    'preorder_ships_at': preorderShipsAt,
    'purchasable': purchasable,
    'preorder': preorder,
    'in_stock': inStock,
    'backorderable': backorderable,
    'available': available,
    'description': description,
    'description_html': descriptionHtml,
    'default_variant_id': defaultVariantId,
    'buy_box_variant_id': buyBoxVariantId,
    'thumbnail_url': thumbnailUrl,
    'tags': tags,
    'price': price.toJson(),
    'original_price': originalPrice?.toJson(),
    'seller_id': sellerId,
    'seller': seller?.toJson(),
    'primary_media': primaryMedia?.toJson(),
    if (media != null) 'media': media!.map((e) => e.toJson()).toList(),
    if (variants != null) 'variants': variants!.map((e) => e.toJson()).toList(),
    'default_variant': defaultVariant?.toJson(),
    if (optionTypes != null)
      'option_types': optionTypes!.map((e) => e.toJson()).toList(),
    if (optionValues != null)
      'option_values': optionValues!.map((e) => e.toJson()).toList(),
    if (categories != null)
      'categories': categories!.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
    'prior_price': priorPrice?.toJson(),
  };
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
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterPriceRange extends ProductFilter
    with _$ProductFilterPriceRange {
  const ProductFilterPriceRange._() : super();

  /// Creates a price-range facet.
  const factory ProductFilterPriceRange({
    required String id,
    required String min,
    required String max,
    required CurrencyCode currency,
  }) = _ProductFilterPriceRange;

  /// Parses a price-range facet from its JSON shape.
  factory ProductFilterPriceRange.fromJson(Map<String, Object?> json) =>
      ProductFilterPriceRange(
        id: json['id'] as String,
        min: json['min'] as String,
        max: json['max'] as String,
        currency: CurrencyCode.fromJson(json['currency']),
      );

  /// Facet id.
  @override
  @override
  String get id;

  /// Minimum bound, decimal string.
  @override
  @override
  String get min;

  /// Maximum bound, decimal string.
  @override
  @override
  String get max;

  /// Pricing currency of the bounds.
  @override
  @override
  CurrencyCode get currency;
  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.priceRange.toJson(),
    'min': min,
    'max': max,
    'currency': currency.toJson(),
  };
}

/// One availability option of the availability facet.
///
/// Source:
/// `packages/sdk/src/types/generated/ProductFilterAvailabilityOption.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterAvailabilityOption
    with _$ProductFilterAvailabilityOption {
  const ProductFilterAvailabilityOption._();

  /// Creates an availability option.
  const factory ProductFilterAvailabilityOption({
    required StockAvailability id,
    required int count,
  }) = _ProductFilterAvailabilityOption;

  /// Parses an availability option from its JSON shape.
  factory ProductFilterAvailabilityOption.fromJson(Map<String, Object?> json) =>
      ProductFilterAvailabilityOption(
        id: StockAvailability.fromJson(json['id']),
        count: (json['count'] as num).toInt(),
      );

  /// Availability value.
  @override
  @override
  StockAvailability get id;

  /// Matching product count.
  @override
  @override
  int get count;

  /// Serializes this option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id.toJson(),
    'count': count,
  };
}

/// Availability facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterAvailability.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterAvailability extends ProductFilter
    with _$ProductFilterAvailability {
  const ProductFilterAvailability._() : super();

  /// Creates an availability facet.
  const factory ProductFilterAvailability({
    required String id,
    required List<ProductFilterAvailabilityOption> options,
  }) = _ProductFilterAvailability;

  /// Parses an availability facet from its JSON shape.
  factory ProductFilterAvailability.fromJson(Map<String, Object?> json) =>
      ProductFilterAvailability(
        id: json['id'] as String,
        options: (json['options'] as List)
            .map(
              (e) => ProductFilterAvailabilityOption.fromJson(
                e as Map<String, Object?>,
              ),
            )
            .toList(),
      );

  /// Facet id.
  @override
  @override
  String get id;

  /// Availability options with counts.
  @override
  @override
  List<ProductFilterAvailabilityOption> get options;
  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.availability.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
  };
}

/// One option value of the option facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOptionValue.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterOptionValue with _$ProductFilterOptionValue {
  const ProductFilterOptionValue._();

  /// Creates an option-facet value.
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
      ProductFilterOptionValue(
        id: json['id'] as String,
        name: json['name'] as String,
        label: json['label'] as String,
        position: (json['position'] as num).toInt(),
        colorCode: json['color_code'] as String?,
        imageUrl: json['image_url'] as String?,
        count: (json['count'] as num).toInt(),
      );

  /// Value id.
  @override
  @override
  String get id;

  /// Value name.
  @override
  @override
  String get name;

  /// Merchant-facing label.
  @override
  @override
  String get label;

  /// Sort position.
  @override
  @override
  int get position;

  /// Swatch color code, when set.
  @override
  @override
  String? get colorCode;

  /// Swatch image URL, when set.
  @override
  @override
  String? get imageUrl;

  /// Matching product count.
  @override
  @override
  int get count;

  /// Serializes this value back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'label': label,
    'position': position,
    'color_code': colorCode,
    'image_url': imageUrl,
    'count': count,
  };
}

/// Option facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOption.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterOption extends ProductFilter
    with _$ProductFilterOption {
  const ProductFilterOption._() : super();

  /// Creates an option facet.
  const factory ProductFilterOption({
    required String id,
    required String name,
    required String label,
    required OptionTypeKind kind,
    required List<ProductFilterOptionValue> options,
  }) = _ProductFilterOption;

  /// Parses an option facet from its JSON shape.
  factory ProductFilterOption.fromJson(Map<String, Object?> json) =>
      ProductFilterOption(
        id: json['id'] as String,
        name: json['name'] as String,
        label: json['label'] as String,
        kind: OptionTypeKind.fromJson(json['kind']),
        options: (json['options'] as List)
            .map(
              (e) =>
                  ProductFilterOptionValue.fromJson(e as Map<String, Object?>),
            )
            .toList(),
      );

  /// Facet id.
  @override
  @override
  String get id;

  /// Option type name.
  @override
  @override
  String get name;

  /// Merchant-facing label.
  @override
  @override
  String get label;

  /// Presentation kind.
  @override
  @override
  OptionTypeKind get kind;

  /// Option values with counts.
  @override
  @override
  List<ProductFilterOptionValue> get options;
  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.option.toJson(),
    'name': name,
    'label': label,
    'kind': kind.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
  };
}

/// One category option of the category facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategoryOption.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterCategoryOption with _$ProductFilterCategoryOption {
  const ProductFilterCategoryOption._();

  /// Creates a category-facet option.
  const factory ProductFilterCategoryOption({
    required String id,
    required String name,
    required String permalink,
    required int count,
  }) = _ProductFilterCategoryOption;

  /// Parses a category-facet option from its JSON shape.
  factory ProductFilterCategoryOption.fromJson(Map<String, Object?> json) =>
      ProductFilterCategoryOption(
        id: json['id'] as String,
        name: json['name'] as String,
        permalink: json['permalink'] as String,
        count: (json['count'] as num).toInt(),
      );

  /// Category id.
  @override
  @override
  String get id;

  /// Category name.
  @override
  @override
  String get name;

  /// Category permalink.
  @override
  @override
  String get permalink;

  /// Matching product count.
  @override
  @override
  int get count;

  /// Serializes this option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'permalink': permalink,
    'count': count,
  };
}

/// Category facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategory.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterCategory extends ProductFilter
    with _$ProductFilterCategory {
  const ProductFilterCategory._() : super();

  /// Creates a category facet.
  const factory ProductFilterCategory({
    required String id,
    required List<ProductFilterCategoryOption> options,
  }) = _ProductFilterCategory;

  /// Parses a category facet from its JSON shape.
  factory ProductFilterCategory.fromJson(Map<String, Object?> json) =>
      ProductFilterCategory(
        id: json['id'] as String,
        options: (json['options'] as List)
            .map(
              (e) => ProductFilterCategoryOption.fromJson(
                e as Map<String, Object?>,
              ),
            )
            .toList(),
      );

  /// Facet id.
  @override
  @override
  String get id;

  /// Category options with counts.
  @override
  @override
  List<ProductFilterCategoryOption> get options;
  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.category.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
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
  @override
  String get id;

  /// The raw filter payload.
  @override
  @override
  Map<String, Object?> get raw;
  @override
  Map<String, Object?> toJson() => Map<String, Object?>.of(raw);
}

/// One sort option of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterSortOption.ts`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFilterSortOption with _$ProductFilterSortOption {
  const ProductFilterSortOption._();

  /// Creates a sort option.
  const factory ProductFilterSortOption({required String id, String? label}) =
      _ProductFilterSortOption;

  /// Parses a sort option from its JSON shape.
  factory ProductFilterSortOption.fromJson(Map<String, Object?> json) =>
      ProductFilterSortOption(
        id: json['id'] as String,
        label: json['label'] as String?,
      );

  /// Sort key.
  @override
  @override
  String get id;

  /// Merchant-facing label, when set.
  @override
  @override
  String? get label;

  /// Serializes this sort option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{'id': id, 'label': label};
}

/// Response of `GET /products/filters`: facets and sort options describing
/// the current listing.
///
/// Source: `packages/sdk/src/types/generated/ProductFilters.ts`;
/// SPEC `store.yaml#/components/schemas/ProductFilters`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class ProductFiltersResponse with _$ProductFiltersResponse {
  const ProductFiltersResponse._();

  /// Creates a filters response.
  const factory ProductFiltersResponse({
    required String id,
    required String defaultSort,
    required int totalCount,
    required List<ProductFilter> filters,
    required List<ProductFilterSortOption> sortOptions,
  }) = _ProductFiltersResponse;

  /// Parses a filters response from its JSON shape.
  factory ProductFiltersResponse.fromJson(Map<String, Object?> json) =>
      ProductFiltersResponse(
        id: json['id'] as String,
        defaultSort: json['default_sort'] as String,
        totalCount: (json['total_count'] as num).toInt(),
        filters: (json['filters'] as List)
            .map((e) => ProductFilter.parse(e as Map<String, Object?>))
            .toList(),
        sortOptions: (json['sort_options'] as List)
            .map(
              (e) =>
                  ProductFilterSortOption.fromJson(e as Map<String, Object?>),
            )
            .toList(),
      );

  /// Response id.
  @override
  @override
  String get id;

  /// Default sort key.
  @override
  @override
  String get defaultSort;

  /// Total matching product count.
  @override
  @override
  int get totalCount;

  /// Facets describing the listing.
  @override
  @override
  List<ProductFilter> get filters;

  /// Available sort options.
  @override
  @override
  List<ProductFilterSortOption> get sortOptions;

  /// Serializes this response back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'default_sort': defaultSort,
    'total_count': totalCount,
    'filters': filters.map((e) => e.toJson()).toList(),
    'sort_options': sortOptions.map((e) => e.toJson()).toList(),
  };
}
