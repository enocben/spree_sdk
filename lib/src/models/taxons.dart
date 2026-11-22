/// Catalog taxonomy models: categories, sellers, collections.
///
/// Freezed immutable models with explicit, contract-verified JSON mappings.
///
/// Evidence (consulted 2026-11-22, upstream SHA
/// `d2f38e6ab47618bb57a0062e5640fed3c9b63eb2`):
/// * shapes: `packages/sdk/src/types/generated/{Category,Seller,Collection}.ts`
///   and `packages/sdk/src/types/index.ts` (re-exports);
/// * SPEC `store.yaml#/components/schemas/{Category,Seller,Collection}`;
/// * contracts: `doc/research/store-api-contract.md` §2
///   (`GET /categories[/{id}]`, `GET /sellers[/{id}]`,
///   `GET /collections[/{id}]`,
///   `GET /collections/{id}/products`).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta.dart';

part 'taxons.freezed.dart';

/// A category of the catalog tree.
///
/// Source: `packages/sdk/src/types/generated/Category.ts`;
/// SPEC `store.yaml#/components/schemas/Category`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Category with _$Category {
  const Category._();

  /// Creates a category.
  const factory Category({
    required String id,
    required String name,
    required String permalink,
    required int position,
    required int depth,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
    required int childrenCount,
    String? parentId,
    required String description,
    required String descriptionHtml,
    String? imageUrl,
    String? squareImageUrl,
    required bool isRoot,
    required bool isChild,
    required bool isLeaf,
    Category? parent,
    List<Category>? children,
    List<Category>? ancestors,
    List<CustomField>? customFields,
  }) = _Category;

  /// Parses a category from its JSON shape.
  factory Category.fromJson(Map<String, Object?> json) => Category(
    id: json['id'] as String,
    name: json['name'] as String,
    permalink: json['permalink'] as String,
    position: (json['position'] as num).toInt(),
    depth: (json['depth'] as num).toInt(),
    metaTitle: json['meta_title'] as String?,
    metaDescription: json['meta_description'] as String?,
    metaKeywords: json['meta_keywords'] as String?,
    childrenCount: (json['children_count'] as num).toInt(),
    parentId: json['parent_id'] as String?,
    description: json['description'] as String,
    descriptionHtml: json['description_html'] as String,
    imageUrl: json['image_url'] as String?,
    squareImageUrl: json['square_image_url'] as String?,
    isRoot: json['is_root'] as bool,
    isChild: json['is_child'] as bool,
    isLeaf: json['is_leaf'] as bool,
    parent: json['parent'] == null
        ? null
        : Category.fromJson(json['parent'] as Map<String, Object?>),
    children: (json['children'] as List?)
        ?.map((e) => Category.fromJson(e as Map<String, Object?>))
        .toList(),
    ancestors: (json['ancestors'] as List?)
        ?.map((e) => Category.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Category name.
  @override
  @override
  String get name;

  /// URL permalink (used by `categories.get` in place of the id).
  @override
  @override
  String get permalink;

  /// Sort position among siblings.
  @override
  @override
  int get position;

  /// Depth in the category tree.
  @override
  @override
  int get depth;

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

  /// Number of direct children.
  @override
  @override
  int get childrenCount;

  /// Parent id, `null` for roots.
  @override
  @override
  String? get parentId;

  /// Plain-text description.
  @override
  @override
  String get description;

  /// Rendered HTML description.
  @override
  @override
  String get descriptionHtml;

  /// Image URL, when set.
  @override
  @override
  String? get imageUrl;

  /// Square-cropped image URL, when set.
  @override
  @override
  String? get squareImageUrl;

  /// Whether this is a tree root.
  @override
  @override
  bool get isRoot;

  /// Whether this has a parent.
  @override
  @override
  bool get isChild;

  /// Whether this has no children.
  @override
  @override
  bool get isLeaf;

  /// Expanded parent, when requested via `expand`.
  @override
  @override
  Category? get parent;

  /// Expanded children, when requested via `expand`.
  @override
  @override
  List<Category>? get children;

  /// Expanded ancestors, when requested via `expand`.
  @override
  @override
  List<Category>? get ancestors;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this category back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'permalink': permalink,
    'position': position,
    'depth': depth,
    'meta_title': metaTitle,
    'meta_description': metaDescription,
    'meta_keywords': metaKeywords,
    'children_count': childrenCount,
    'parent_id': parentId,
    'description': description,
    'description_html': descriptionHtml,
    'image_url': imageUrl,
    'square_image_url': squareImageUrl,
    'is_root': isRoot,
    'is_child': isChild,
    'is_leaf': isLeaf,
    'parent': parent?.toJson(),
    if (children != null) 'children': children!.map((e) => e.toJson()).toList(),
    if (ancestors != null)
      'ancestors': ancestors!.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A marketplace seller.
///
/// Source: `packages/sdk/src/types/generated/Seller.ts`;
/// SPEC `store.yaml#/components/schemas/Seller`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Seller with _$Seller {
  const Seller._();

  /// Creates a seller.
  const factory Seller({
    required String id,
    required String name,
    required String slug,
    required String about,
    required String aboutHtml,
    String? logoUrl,
    String? squareLogoUrl,
    String? coverPhotoUrl,
    List<Policy>? policies,
    List<CustomField>? customFields,
  }) = _Seller;

  /// Parses a seller from its JSON shape.
  factory Seller.fromJson(Map<String, Object?> json) => Seller(
    id: json['id'] as String,
    name: json['name'] as String,
    slug: json['slug'] as String,
    about: json['about'] as String,
    aboutHtml: json['about_html'] as String,
    logoUrl: json['logo_url'] as String?,
    squareLogoUrl: json['square_logo_url'] as String?,
    coverPhotoUrl: json['cover_photo_url'] as String?,
    policies: (json['policies'] as List?)
        ?.map((e) => Policy.fromJson(e as Map<String, Object?>))
        .toList(),
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Seller name.
  @override
  @override
  String get name;

  /// URL slug (used by `sellers.get` in place of the id).
  @override
  @override
  String get slug;

  /// Plain-text presentation.
  @override
  @override
  String get about;

  /// Rendered HTML presentation.
  @override
  @override
  String get aboutHtml;

  /// Logo URL, when set.
  @override
  @override
  String? get logoUrl;

  /// Square-cropped logo URL, when set.
  @override
  @override
  String? get squareLogoUrl;

  /// Cover photo URL, when set.
  @override
  @override
  String? get coverPhotoUrl;

  /// Seller policies, when expanded.
  @override
  @override
  List<Policy>? get policies;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this seller back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'slug': slug,
    'about': about,
    'about_html': aboutHtml,
    'logo_url': logoUrl,
    'square_logo_url': squareLogoUrl,
    'cover_photo_url': coverPhotoUrl,
    if (policies != null) 'policies': policies!.map((e) => e.toJson()).toList(),
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}

/// A merchandising collection of products.
///
/// Source: `packages/sdk/src/types/generated/Collection.ts`;
/// SPEC `store.yaml#/components/schemas/Collection`.
@Freezed(fromJson: false, toJson: false, makeCollectionsUnmodifiable: false)
abstract class Collection with _$Collection {
  const Collection._();

  /// Creates a collection.
  const factory Collection({
    required String id,
    required String name,
    required String permalink,
    required int position,
    required CollectionSortOrder sortOrder,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
    required int productsCount,
    required String description,
    required String descriptionHtml,
    String? imageUrl,
    String? squareImageUrl,
    List<CustomField>? customFields,
  }) = _Collection;

  /// Parses a collection from its JSON shape.
  factory Collection.fromJson(Map<String, Object?> json) => Collection(
    id: json['id'] as String,
    name: json['name'] as String,
    permalink: json['permalink'] as String,
    position: (json['position'] as num).toInt(),
    sortOrder: CollectionSortOrder.fromJson(json['sort_order']),
    metaTitle: json['meta_title'] as String?,
    metaDescription: json['meta_description'] as String?,
    metaKeywords: json['meta_keywords'] as String?,
    productsCount: (json['products_count'] as num).toInt(),
    description: json['description'] as String,
    descriptionHtml: json['description_html'] as String,
    imageUrl: json['image_url'] as String?,
    squareImageUrl: json['square_image_url'] as String?,
    customFields: (json['custom_fields'] as List?)
        ?.map((e) => CustomField.fromJson(e as Map<String, Object?>))
        .toList(),
  );

  /// Unique identifier.
  @override
  @override
  String get id;

  /// Collection name.
  @override
  @override
  String get name;

  /// URL permalink (used by `collections.get` in place of the id).
  @override
  @override
  String get permalink;

  /// Sort position.
  @override
  @override
  int get position;

  /// Product ordering inside the collection.
  @override
  @override
  CollectionSortOrder get sortOrder;

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

  /// Number of products in the collection.
  @override
  @override
  int get productsCount;

  /// Plain-text description.
  @override
  @override
  String get description;

  /// Rendered HTML description.
  @override
  @override
  String get descriptionHtml;

  /// Image URL, when set.
  @override
  @override
  String? get imageUrl;

  /// Square-cropped image URL, when set.
  @override
  @override
  String? get squareImageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  @override
  List<CustomField>? get customFields;

  /// Serializes this collection back to its JSON shape.
  Map<String, Object?> toJson() => <String, Object?>{
    'id': id,
    'name': name,
    'permalink': permalink,
    'position': position,
    'sort_order': sortOrder.toJson(),
    'meta_title': metaTitle,
    'meta_description': metaDescription,
    'meta_keywords': metaKeywords,
    'products_count': productsCount,
    'description': description,
    'description_html': descriptionHtml,
    'image_url': imageUrl,
    'square_image_url': squareImageUrl,
    if (customFields != null)
      'custom_fields': customFields!.map((e) => e.toJson()).toList(),
  };
}
