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
part 'taxons.g.dart';

/// A category of the catalog tree.
///
/// Source: `packages/sdk/src/types/generated/Category.ts`;
/// SPEC `store.yaml#/components/schemas/Category`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Category with _$Category {
  const Category._();

  /// Creates a category.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
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
    @JsonKey(includeIfNull: false) List<Category>? children,
    @JsonKey(includeIfNull: false) List<Category>? ancestors,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Category;

  /// Parses a category from its JSON shape.
  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Category name.
  @override
  String get name;

  /// URL permalink (used by `categories.get` in place of the id).
  @override
  String get permalink;

  /// Sort position among siblings.
  @override
  int get position;

  /// Depth in the category tree.
  @override
  int get depth;

  /// SEO title override, when set.
  @override
  String? get metaTitle;

  /// Meta description, when set.
  @override
  String? get metaDescription;

  /// Meta keywords, when set.
  @override
  String? get metaKeywords;

  /// Number of direct children.
  @override
  int get childrenCount;

  /// Parent id, `null` for roots.
  @override
  String? get parentId;

  /// Plain-text description.
  @override
  String get description;

  /// Rendered HTML description.
  @override
  String get descriptionHtml;

  /// Image URL, when set.
  @override
  String? get imageUrl;

  /// Square-cropped image URL, when set.
  @override
  String? get squareImageUrl;

  /// Whether this is a tree root.
  @override
  bool get isRoot;

  /// Whether this has a parent.
  @override
  bool get isChild;

  /// Whether this has no children.
  @override
  bool get isLeaf;

  /// Expanded parent, when requested via `expand`.
  @override
  Category? get parent;

  /// Expanded children, when requested via `expand`.
  @override
  List<Category>? get children;

  /// Expanded ancestors, when requested via `expand`.
  @override
  List<Category>? get ancestors;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this category back to its JSON shape.
}

/// A marketplace seller.
///
/// Source: `packages/sdk/src/types/generated/Seller.ts`;
/// SPEC `store.yaml#/components/schemas/Seller`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Seller with _$Seller {
  const Seller._();

  /// Creates a seller.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Seller({
    required String id,
    required String name,
    required String slug,
    required String about,
    required String aboutHtml,
    String? logoUrl,
    String? squareLogoUrl,
    String? coverPhotoUrl,
    @JsonKey(includeIfNull: false) List<Policy>? policies,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Seller;

  /// Parses a seller from its JSON shape.
  factory Seller.fromJson(Map<String, Object?> json) => _$SellerFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Seller name.
  @override
  String get name;

  /// URL slug (used by `sellers.get` in place of the id).
  @override
  String get slug;

  /// Plain-text presentation.
  @override
  String get about;

  /// Rendered HTML presentation.
  @override
  String get aboutHtml;

  /// Logo URL, when set.
  @override
  String? get logoUrl;

  /// Square-cropped logo URL, when set.
  @override
  String? get squareLogoUrl;

  /// Cover photo URL, when set.
  @override
  String? get coverPhotoUrl;

  /// Seller policies, when expanded.
  @override
  List<Policy>? get policies;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this seller back to its JSON shape.
}

/// A merchandising collection of products.
///
/// Source: `packages/sdk/src/types/generated/Collection.ts`;
/// SPEC `store.yaml#/components/schemas/Collection`.
@Freezed(fromJson: true, toJson: true, makeCollectionsUnmodifiable: false)
abstract class Collection with _$Collection {
  const Collection._();

  /// Creates a collection.
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Collection({
    required String id,
    required String name,
    required String permalink,
    required int position,
    @JsonKey(unknownEnumValue: CollectionSortOrder.unknown)
    required CollectionSortOrder sortOrder,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
    required int productsCount,
    required String description,
    required String descriptionHtml,
    String? imageUrl,
    String? squareImageUrl,
    @JsonKey(includeIfNull: false) List<CustomField>? customFields,
  }) = _Collection;

  /// Parses a collection from its JSON shape.
  factory Collection.fromJson(Map<String, Object?> json) =>
      _$CollectionFromJson(json);

  /// Unique identifier.
  @override
  String get id;

  /// Collection name.
  @override
  String get name;

  /// URL permalink (used by `collections.get` in place of the id).
  @override
  String get permalink;

  /// Sort position.
  @override
  int get position;

  /// Product ordering inside the collection.
  @override
  CollectionSortOrder get sortOrder;

  /// SEO title override, when set.
  @override
  String? get metaTitle;

  /// Meta description, when set.
  @override
  String? get metaDescription;

  /// Meta keywords, when set.
  @override
  String? get metaKeywords;

  /// Number of products in the collection.
  @override
  int get productsCount;

  /// Plain-text description.
  @override
  String get description;

  /// Rendered HTML description.
  @override
  String get descriptionHtml;

  /// Image URL, when set.
  @override
  String? get imageUrl;

  /// Square-cropped image URL, when set.
  @override
  String? get squareImageUrl;

  /// Merchant-defined custom fields, when present.
  @override
  List<CustomField>? get customFields;

  /// Serializes this collection back to its JSON shape.
}
