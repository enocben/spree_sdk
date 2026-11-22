/// Catalog product models.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
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

import 'meta.dart';
import 'taxons.dart';

/// Compares two lists element-wise; both `null` counts as equal.
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// A price in a currency: decimal-string amounts.
///
/// Source: `packages/sdk/src/types/generated/Price.ts`;
/// SPEC `store.yaml#/components/schemas/Price`.
class Price {
  /// Creates a price.
  const Price({
    required this.id,
    this.currency,
    this.amount,
    this.compareAtAmount,
    this.priceListId,
  });

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
  final String id;

  /// Pricing currency, when reported.
  final CurrencyCode? currency;

  /// Amount as a decimal string (never a number), when reported.
  final String? amount;

  /// Compare-at amount as a decimal string, when reported.
  final String? compareAtAmount;

  /// Owning price list, when reported.
  final String? priceListId;

  /// Serializes this price back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'currency': currency?.toJson(),
    'amount': amount,
    'compare_at_amount': compareAtAmount,
    'price_list_id': priceListId,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Price &&
          id == other.id &&
          currency == other.currency &&
          amount == other.amount &&
          compareAtAmount == other.compareAtAmount &&
          priceListId == other.priceListId;

  @override
  int get hashCode =>
      Object.hash(id, currency, amount, compareAtAmount, priceListId);
}

/// The lowest prior price of a variant (omnibus-style pricing history).
///
/// Source: `packages/sdk/src/types/generated/PriceHistory.ts`;
/// SPEC `store.yaml#/components/schemas/PriceHistory`.
class PriceHistory {
  /// Creates a price-history entry.
  const PriceHistory({
    required this.id,
    required this.currency,
    this.amount,
    required this.recordedAt,
  });

  /// Parses a price-history entry from its JSON shape.
  factory PriceHistory.fromJson(Map<String, Object?> json) => PriceHistory(
    id: json['id'] as String,
    currency: CurrencyCode.fromJson(json['currency']),
    amount: json['amount'] as String?,
    recordedAt: json['recorded_at'] as String,
  );

  /// Unique identifier.
  final String id;

  /// Pricing currency.
  final CurrencyCode currency;

  /// Amount as a decimal string, when reported.
  final String? amount;

  /// Recording timestamp, as reported by the API (kept as-is).
  final String recordedAt;

  /// Serializes this entry back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'currency': currency.toJson(),
    'amount': amount,
    'recorded_at': recordedAt,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceHistory &&
          id == other.id &&
          currency == other.currency &&
          amount == other.amount &&
          recordedAt == other.recordedAt;

  @override
  int get hashCode => Object.hash(id, currency, amount, recordedAt);
}

/// Media attached to a product or variant.
///
/// Source: `packages/sdk/src/types/generated/Media.ts`;
/// SPEC `store.yaml#/components/schemas/Media`.
class Media {
  /// Creates a media attachment.
  const Media({
    required this.id,
    this.productId,
    required this.variantIds,
    required this.position,
    this.alt,
    required this.mediaType,
    this.externalVideoUrl,
    this.focalPointX,
    this.focalPointY,
    this.videoProvider,
    this.videoEmbedUrl,
    this.videoUrl,
    this.posterUrl,
    this.originalUrl,
    this.miniUrl,
    this.smallUrl,
    this.mediumUrl,
    this.largeUrl,
    this.xlargeUrl,
    this.ogImageUrl,
    this.customFields,
  });

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
  final String id;

  /// Owning product id, when reported.
  final String? productId;

  /// Ids of the variants this media belongs to.
  final List<String> variantIds;

  /// Sort position.
  final int position;

  /// Alt text, when set.
  final String? alt;

  /// Media kind.
  final MediaType mediaType;

  /// External video URL, for `externalVideo` media.
  final String? externalVideoUrl;

  /// Horizontal focal point, when set.
  final double? focalPointX;

  /// Vertical focal point, when set.
  final double? focalPointY;

  /// Video provider name, when reported.
  final String? videoProvider;

  /// Embeddable video URL, when reported.
  final String? videoEmbedUrl;

  /// Video file URL, when reported.
  final String? videoUrl;

  /// Poster image URL, when reported.
  final String? posterUrl;

  /// Original image URL, when reported.
  final String? originalUrl;

  /// Mini rendition URL, when reported.
  final String? miniUrl;

  /// Small rendition URL, when reported.
  final String? smallUrl;

  /// Medium rendition URL, when reported.
  final String? mediumUrl;

  /// Large rendition URL, when reported.
  final String? largeUrl;

  /// Extra-large rendition URL, when reported.
  final String? xlargeUrl;

  /// Open-graph image URL, when reported.
  final String? ogImageUrl;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Media &&
          id == other.id &&
          productId == other.productId &&
          _listEquals(variantIds, other.variantIds) &&
          position == other.position &&
          alt == other.alt &&
          mediaType == other.mediaType &&
          externalVideoUrl == other.externalVideoUrl &&
          focalPointX == other.focalPointX &&
          focalPointY == other.focalPointY &&
          originalUrl == other.originalUrl &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, productId, position, mediaType);
}

/// A product option type (e.g. size, color).
///
/// Source: `packages/sdk/src/types/generated/OptionType.ts`;
/// SPEC `store.yaml#/components/schemas/OptionType`.
class OptionType {
  /// Creates an option type.
  const OptionType({
    required this.id,
    required this.name,
    required this.label,
    required this.position,
    required this.kind,
    this.customFields,
  });

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
  final String id;

  /// Option type name.
  final String name;

  /// Merchant-facing label.
  final String label;

  /// Sort position.
  final int position;

  /// Presentation kind.
  final OptionTypeKind kind;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionType &&
          id == other.id &&
          name == other.name &&
          label == other.label &&
          position == other.position &&
          kind == other.kind &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, name, label, position, kind);
}

/// One value of a product option type (e.g. `Red` for color).
///
/// Source: `packages/sdk/src/types/generated/OptionValue.ts`;
/// SPEC `store.yaml#/components/schemas/OptionValue`.
class OptionValue {
  /// Creates an option value.
  const OptionValue({
    required this.id,
    required this.optionTypeId,
    required this.name,
    required this.label,
    required this.position,
    this.colorCode,
    required this.optionTypeName,
    required this.optionTypeLabel,
    this.imageUrl,
    this.customFields,
  });

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
  final String id;

  /// Owning option type id.
  final String optionTypeId;

  /// Option value name.
  final String name;

  /// Merchant-facing label.
  final String label;

  /// Sort position.
  final int position;

  /// Swatch color code, when set.
  final String? colorCode;

  /// Denormalized owning option type name.
  final String optionTypeName;

  /// Denormalized owning option type label.
  final String optionTypeLabel;

  /// Swatch image URL, when set.
  final String? imageUrl;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionValue &&
          id == other.id &&
          optionTypeId == other.optionTypeId &&
          name == other.name &&
          label == other.label &&
          position == other.position &&
          colorCode == other.colorCode &&
          optionTypeName == other.optionTypeName &&
          optionTypeLabel == other.optionTypeLabel &&
          imageUrl == other.imageUrl &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, optionTypeId, name, position);
}

/// A purchasable variant of a product.
///
/// Source: `packages/sdk/src/types/generated/Variant.ts`;
/// SPEC `store.yaml#/components/schemas/Variant`.
class Variant {
  /// Creates a variant.
  const Variant({
    required this.id,
    required this.productId,
    this.sku,
    required this.optionsText,
    required this.trackInventory,
    required this.mediaCount,
    this.preorderShipsAt,
    this.thumbnailUrl,
    required this.purchasable,
    required this.inStock,
    required this.backorderable,
    required this.preorder,
    this.weight,
    this.height,
    this.width,
    this.depth,
    required this.weightUnit,
    required this.dimensionsUnit,
    required this.minimumOrderQuantity,
    required this.orderMultiple,
    required this.purchaseUnit,
    this.unitsPerCarton,
    required this.price,
    this.originalPrice,
    this.sellerId,
    this.seller,
    this.primaryMedia,
    this.media,
    required this.optionValues,
    this.customFields,
    this.priorPrice,
  });

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
  final String id;

  /// Owning product id.
  final String productId;

  /// Stock-keeping unit, when set.
  final String? sku;

  /// Human-readable option summary.
  final String optionsText;

  /// Whether inventory is tracked for this variant.
  final bool trackInventory;

  /// Number of attached media.
  final int mediaCount;

  /// Preorder shipping date, when set.
  final String? preorderShipsAt;

  /// Thumbnail URL, when set.
  final String? thumbnailUrl;

  /// Whether this variant can currently be purchased.
  final bool purchasable;

  /// Whether this variant is in stock.
  final bool inStock;

  /// Whether this variant can be backordered.
  final bool backorderable;

  /// Whether this variant is a preorder.
  final bool preorder;

  /// Weight, when set.
  final double? weight;

  /// Height, when set.
  final double? height;

  /// Width, when set.
  final double? width;

  /// Depth, when set.
  final double? depth;

  /// Unit of [weight].
  final WeightUnit weightUnit;

  /// Unit of [height]/[width]/[depth].
  final DimensionUnit dimensionsUnit;

  /// Minimum orderable quantity.
  final int minimumOrderQuantity;

  /// Quantity multiple orders must respect.
  final int orderMultiple;

  /// Purchase unit (`unit` or `carton`).
  final PurchaseUnit purchaseUnit;

  /// Units per carton, when set.
  final int? unitsPerCarton;

  /// Current price.
  final Price price;

  /// Compare-at price, when set.
  final Price? originalPrice;

  /// Owning seller id, when set.
  final String? sellerId;

  /// Expanded seller, when requested via `expand`.
  final Seller? seller;

  /// Primary media, when expanded.
  final Media? primaryMedia;

  /// All media, when expanded.
  final List<Media>? media;

  /// Option values identifying this variant.
  final List<OptionValue> optionValues;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Lowest prior price, when reported.
  final PriceHistory? priorPrice;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Variant &&
          id == other.id &&
          productId == other.productId &&
          sku == other.sku &&
          optionsText == other.optionsText &&
          trackInventory == other.trackInventory &&
          mediaCount == other.mediaCount &&
          preorderShipsAt == other.preorderShipsAt &&
          thumbnailUrl == other.thumbnailUrl &&
          purchasable == other.purchasable &&
          inStock == other.inStock &&
          backorderable == other.backorderable &&
          preorder == other.preorder &&
          weight == other.weight &&
          height == other.height &&
          width == other.width &&
          depth == other.depth &&
          weightUnit == other.weightUnit &&
          dimensionsUnit == other.dimensionsUnit &&
          minimumOrderQuantity == other.minimumOrderQuantity &&
          orderMultiple == other.orderMultiple &&
          purchaseUnit == other.purchaseUnit &&
          unitsPerCarton == other.unitsPerCarton &&
          price == other.price &&
          originalPrice == other.originalPrice &&
          sellerId == other.sellerId &&
          seller == other.seller &&
          primaryMedia == other.primaryMedia &&
          _listEquals(media, other.media) &&
          _listEquals(optionValues, other.optionValues) &&
          _listEquals(customFields, other.customFields) &&
          priorPrice == other.priorPrice;

  @override
  int get hashCode => Object.hash(id, productId, sku, price);
}

/// A catalog product.
///
/// Source: `packages/sdk/src/types/generated/Product.ts`;
/// SPEC `store.yaml#/components/schemas/Product`.
class Product {
  /// Creates a product.
  const Product({
    required this.id,
    required this.name,
    required this.slug,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    required this.variantCount,
    this.availableOn,
    this.preorderShipsAt,
    required this.purchasable,
    required this.preorder,
    required this.inStock,
    required this.backorderable,
    required this.available,
    this.description,
    this.descriptionHtml,
    required this.defaultVariantId,
    this.buyBoxVariantId,
    this.thumbnailUrl,
    required this.tags,
    required this.price,
    this.originalPrice,
    this.sellerId,
    this.seller,
    this.primaryMedia,
    this.media,
    this.variants,
    this.defaultVariant,
    this.optionTypes,
    this.optionValues,
    this.categories,
    this.customFields,
    this.priorPrice,
  });

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
  final String id;

  /// Product name.
  final String name;

  /// URL slug (used by `products.get` in place of the id).
  final String slug;

  /// SEO title override, when set.
  final String? metaTitle;

  /// Meta description, when set.
  final String? metaDescription;

  /// Meta keywords, when set.
  final String? metaKeywords;

  /// Number of variants.
  final int variantCount;

  /// Availability date, when set.
  final String? availableOn;

  /// Preorder shipping date, when set.
  final String? preorderShipsAt;

  /// Whether the product can currently be purchased.
  final bool purchasable;

  /// Whether the product is a preorder.
  final bool preorder;

  /// Whether the product is in stock.
  final bool inStock;

  /// Whether the product can be backordered.
  final bool backorderable;

  /// Whether the product is available.
  final bool available;

  /// Plain-text description, when set.
  final String? description;

  /// Rendered HTML description, when set.
  final String? descriptionHtml;

  /// Default variant id.
  final String defaultVariantId;

  /// Buy-box variant id, when set.
  final String? buyBoxVariantId;

  /// Thumbnail URL, when set.
  final String? thumbnailUrl;

  /// Merchant-defined tags.
  final List<String> tags;

  /// Current price.
  final Price price;

  /// Compare-at price, when set.
  final Price? originalPrice;

  /// Owning seller id, when set.
  final String? sellerId;

  /// Expanded seller, when requested via `expand`.
  final Seller? seller;

  /// Primary media, when expanded.
  final Media? primaryMedia;

  /// All media, when expanded.
  final List<Media>? media;

  /// All variants, when expanded.
  final List<Variant>? variants;

  /// Expanded default variant, when requested via `expand`.
  final Variant? defaultVariant;

  /// Expanded option types, when requested via `expand`.
  final List<OptionType>? optionTypes;

  /// Expanded option values, when requested via `expand`.
  final List<OptionValue>? optionValues;

  /// Expanded categories, when requested via `expand`.
  final List<Category>? categories;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

  /// Lowest prior price, when reported.
  final PriceHistory? priorPrice;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          id == other.id &&
          name == other.name &&
          slug == other.slug &&
          metaTitle == other.metaTitle &&
          metaDescription == other.metaDescription &&
          metaKeywords == other.metaKeywords &&
          variantCount == other.variantCount &&
          availableOn == other.availableOn &&
          preorderShipsAt == other.preorderShipsAt &&
          purchasable == other.purchasable &&
          preorder == other.preorder &&
          inStock == other.inStock &&
          backorderable == other.backorderable &&
          available == other.available &&
          description == other.description &&
          descriptionHtml == other.descriptionHtml &&
          defaultVariantId == other.defaultVariantId &&
          buyBoxVariantId == other.buyBoxVariantId &&
          thumbnailUrl == other.thumbnailUrl &&
          _listEquals(tags, other.tags) &&
          price == other.price &&
          originalPrice == other.originalPrice &&
          sellerId == other.sellerId &&
          seller == other.seller &&
          primaryMedia == other.primaryMedia &&
          _listEquals(media, other.media) &&
          _listEquals(variants, other.variants) &&
          defaultVariant == other.defaultVariant &&
          _listEquals(optionTypes, other.optionTypes) &&
          _listEquals(optionValues, other.optionValues) &&
          _listEquals(categories, other.categories) &&
          _listEquals(customFields, other.customFields) &&
          priorPrice == other.priorPrice;

  @override
  int get hashCode => Object.hash(id, name, slug, variantCount, price);
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
class ProductFilterPriceRange extends ProductFilter {
  /// Creates a price-range facet.
  const ProductFilterPriceRange({
    required this.id,
    required this.min,
    required this.max,
    required this.currency,
  });

  /// Parses a price-range facet from its JSON shape.
  factory ProductFilterPriceRange.fromJson(Map<String, Object?> json) =>
      ProductFilterPriceRange(
        id: json['id'] as String,
        min: json['min'] as String,
        max: json['max'] as String,
        currency: CurrencyCode.fromJson(json['currency']),
      );

  /// Facet id.
  final String id;

  /// Minimum bound, decimal string.
  final String min;

  /// Maximum bound, decimal string.
  final String max;

  /// Pricing currency of the bounds.
  final CurrencyCode currency;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.priceRange.toJson(),
    'min': min,
    'max': max,
    'currency': currency.toJson(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterPriceRange &&
          id == other.id &&
          min == other.min &&
          max == other.max &&
          currency == other.currency;

  @override
  int get hashCode => Object.hash(id, min, max, currency);
}

/// One availability option of the availability facet.
///
/// Source:
/// `packages/sdk/src/types/generated/ProductFilterAvailabilityOption.ts`.
class ProductFilterAvailabilityOption {
  /// Creates an availability option.
  const ProductFilterAvailabilityOption({
    required this.id,
    required this.count,
  });

  /// Parses an availability option from its JSON shape.
  factory ProductFilterAvailabilityOption.fromJson(Map<String, Object?> json) =>
      ProductFilterAvailabilityOption(
        id: StockAvailability.fromJson(json['id']),
        count: (json['count'] as num).toInt(),
      );

  /// Availability value.
  final StockAvailability id;

  /// Matching product count.
  final int count;

  /// Serializes this option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id.toJson(),
    'count': count,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterAvailabilityOption &&
          id == other.id &&
          count == other.count;

  @override
  int get hashCode => Object.hash(id, count);
}

/// Availability facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterAvailability.ts`.
class ProductFilterAvailability extends ProductFilter {
  /// Creates an availability facet.
  const ProductFilterAvailability({required this.id, required this.options});

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
  final String id;

  /// Availability options with counts.
  final List<ProductFilterAvailabilityOption> options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.availability.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterAvailability &&
          id == other.id &&
          _listEquals(options, other.options);

  @override
  int get hashCode => Object.hash(id, Object.hashAll(options));
}

/// One option value of the option facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOptionValue.ts`.
class ProductFilterOptionValue {
  /// Creates an option-facet value.
  const ProductFilterOptionValue({
    required this.id,
    required this.name,
    required this.label,
    required this.position,
    this.colorCode,
    this.imageUrl,
    required this.count,
  });

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
  final String id;

  /// Value name.
  final String name;

  /// Merchant-facing label.
  final String label;

  /// Sort position.
  final int position;

  /// Swatch color code, when set.
  final String? colorCode;

  /// Swatch image URL, when set.
  final String? imageUrl;

  /// Matching product count.
  final int count;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterOptionValue &&
          id == other.id &&
          name == other.name &&
          label == other.label &&
          position == other.position &&
          colorCode == other.colorCode &&
          imageUrl == other.imageUrl &&
          count == other.count;

  @override
  int get hashCode => Object.hash(id, name, position, count);
}

/// Option facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterOption.ts`.
class ProductFilterOption extends ProductFilter {
  /// Creates an option facet.
  const ProductFilterOption({
    required this.id,
    required this.name,
    required this.label,
    required this.kind,
    required this.options,
  });

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
  final String id;

  /// Option type name.
  final String name;

  /// Merchant-facing label.
  final String label;

  /// Presentation kind.
  final OptionTypeKind kind;

  /// Option values with counts.
  final List<ProductFilterOptionValue> options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.option.toJson(),
    'name': name,
    'label': label,
    'kind': kind.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterOption &&
          id == other.id &&
          name == other.name &&
          label == other.label &&
          kind == other.kind &&
          _listEquals(options, other.options);

  @override
  int get hashCode => Object.hash(id, name, kind);
}

/// One category option of the category facet.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategoryOption.ts`.
class ProductFilterCategoryOption {
  /// Creates a category-facet option.
  const ProductFilterCategoryOption({
    required this.id,
    required this.name,
    required this.permalink,
    required this.count,
  });

  /// Parses a category-facet option from its JSON shape.
  factory ProductFilterCategoryOption.fromJson(Map<String, Object?> json) =>
      ProductFilterCategoryOption(
        id: json['id'] as String,
        name: json['name'] as String,
        permalink: json['permalink'] as String,
        count: (json['count'] as num).toInt(),
      );

  /// Category id.
  final String id;

  /// Category name.
  final String name;

  /// Category permalink.
  final String permalink;

  /// Matching product count.
  final int count;

  /// Serializes this option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'permalink': permalink,
    'count': count,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterCategoryOption &&
          id == other.id &&
          name == other.name &&
          permalink == other.permalink &&
          count == other.count;

  @override
  int get hashCode => Object.hash(id, name, permalink, count);
}

/// Category facet of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterCategory.ts`.
class ProductFilterCategory extends ProductFilter {
  /// Creates a category facet.
  const ProductFilterCategory({required this.id, required this.options});

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
  final String id;

  /// Category options with counts.
  final List<ProductFilterCategoryOption> options;

  @override
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'type': ProductFilterType.category.toJson(),
    'options': options.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterCategory &&
          id == other.id &&
          _listEquals(options, other.options);

  @override
  int get hashCode => Object.hash(id, Object.hashAll(options));
}

/// Fallback carrier for a filter with an unrecognized `type`.
///
/// Keeps the raw payload so forward-compatible facets are not lost; see the
/// unknown-enum rule (ADR-002).
class ProductFilterUnknown extends ProductFilter {
  /// Creates an unknown-filter carrier.
  const ProductFilterUnknown({required this.id, required this.raw});

  /// Parses an unknown filter, keeping the raw payload.
  factory ProductFilterUnknown.fromJson(Map<String, Object?> json) =>
      ProductFilterUnknown(
        id: json['id'] as String? ?? '',
        raw: Map<String, Object?>.unmodifiable(json),
      );

  /// Facet id, when present.
  final String id;

  /// The raw filter payload.
  final Map<String, Object?> raw;

  @override
  Map<String, Object?> toJson() => Map<String, Object?>.of(raw);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterUnknown &&
          id == other.id &&
          raw.length == other.raw.length &&
          raw.entries.every(
            (e) => other.raw[e.key].toString() == e.value.toString(),
          );

  @override
  int get hashCode => Object.hash(id, raw.length);
}

/// One sort option of the filters response.
///
/// Source: `packages/sdk/src/types/generated/ProductFilterSortOption.ts`.
class ProductFilterSortOption {
  /// Creates a sort option.
  const ProductFilterSortOption({required this.id, this.label});

  /// Parses a sort option from its JSON shape.
  factory ProductFilterSortOption.fromJson(Map<String, Object?> json) =>
      ProductFilterSortOption(
        id: json['id'] as String,
        label: json['label'] as String?,
      );

  /// Sort key.
  final String id;

  /// Merchant-facing label, when set.
  final String? label;

  /// Serializes this sort option back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{'id': id, 'label': label};

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFilterSortOption &&
          id == other.id &&
          label == other.label;

  @override
  int get hashCode => Object.hash(id, label);
}

/// Response of `GET /products/filters`: facets and sort options describing
/// the current listing.
///
/// Source: `packages/sdk/src/types/generated/ProductFilters.ts`;
/// SPEC `store.yaml#/components/schemas/ProductFilters`.
class ProductFiltersResponse {
  /// Creates a filters response.
  const ProductFiltersResponse({
    required this.id,
    required this.defaultSort,
    required this.totalCount,
    required this.filters,
    required this.sortOptions,
  });

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
  final String id;

  /// Default sort key.
  final String defaultSort;

  /// Total matching product count.
  final int totalCount;

  /// Facets describing the listing.
  final List<ProductFilter> filters;

  /// Available sort options.
  final List<ProductFilterSortOption> sortOptions;

  /// Serializes this response back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'default_sort': defaultSort,
    'total_count': totalCount,
    'filters': filters.map((e) => e.toJson()).toList(),
    'sort_options': sortOptions.map((e) => e.toJson()).toList(),
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFiltersResponse &&
          id == other.id &&
          defaultSort == other.defaultSort &&
          totalCount == other.totalCount &&
          _listEquals(filters, other.filters) &&
          _listEquals(sortOptions, other.sortOptions);

  @override
  int get hashCode => Object.hash(id, defaultSort, totalCount);
}
