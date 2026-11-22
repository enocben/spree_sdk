/// Catalog taxonomy models: categories, sellers, collections.
///
/// Hand-written immutable models with manual `fromJson`/`toJson`
/// (ADR-002: no codegen).
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

import 'meta.dart';

/// Compares two lists element-wise; both `null` counts as equal.
bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (identical(a, b)) return true;
  if (a == null || b == null || a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}

/// A category of the catalog tree.
///
/// Source: `packages/sdk/src/types/generated/Category.ts`;
/// SPEC `store.yaml#/components/schemas/Category`.
class Category {
  /// Creates a category.
  const Category({
    required this.id,
    required this.name,
    required this.permalink,
    required this.position,
    required this.depth,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    required this.childrenCount,
    this.parentId,
    required this.description,
    required this.descriptionHtml,
    this.imageUrl,
    this.squareImageUrl,
    required this.isRoot,
    required this.isChild,
    required this.isLeaf,
    this.parent,
    this.children,
    this.ancestors,
    this.customFields,
  });

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
  final String id;

  /// Category name.
  final String name;

  /// URL permalink (used by `categories.get` in place of the id).
  final String permalink;

  /// Sort position among siblings.
  final int position;

  /// Depth in the category tree.
  final int depth;

  /// SEO title override, when set.
  final String? metaTitle;

  /// Meta description, when set.
  final String? metaDescription;

  /// Meta keywords, when set.
  final String? metaKeywords;

  /// Number of direct children.
  final int childrenCount;

  /// Parent id, `null` for roots.
  final String? parentId;

  /// Plain-text description.
  final String description;

  /// Rendered HTML description.
  final String descriptionHtml;

  /// Image URL, when set.
  final String? imageUrl;

  /// Square-cropped image URL, when set.
  final String? squareImageUrl;

  /// Whether this is a tree root.
  final bool isRoot;

  /// Whether this has a parent.
  final bool isChild;

  /// Whether this has no children.
  final bool isLeaf;

  /// Expanded parent, when requested via `expand`.
  final Category? parent;

  /// Expanded children, when requested via `expand`.
  final List<Category>? children;

  /// Expanded ancestors, when requested via `expand`.
  final List<Category>? ancestors;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Category &&
          id == other.id &&
          name == other.name &&
          permalink == other.permalink &&
          position == other.position &&
          depth == other.depth &&
          metaTitle == other.metaTitle &&
          metaDescription == other.metaDescription &&
          metaKeywords == other.metaKeywords &&
          childrenCount == other.childrenCount &&
          parentId == other.parentId &&
          description == other.description &&
          descriptionHtml == other.descriptionHtml &&
          imageUrl == other.imageUrl &&
          squareImageUrl == other.squareImageUrl &&
          isRoot == other.isRoot &&
          isChild == other.isChild &&
          isLeaf == other.isLeaf &&
          parent == other.parent &&
          _listEquals(children, other.children) &&
          _listEquals(ancestors, other.ancestors) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(
    id,
    name,
    permalink,
    position,
    depth,
    childrenCount,
    parentId,
    isRoot,
    isChild,
    isLeaf,
  );
}

/// A marketplace seller.
///
/// Source: `packages/sdk/src/types/generated/Seller.ts`;
/// SPEC `store.yaml#/components/schemas/Seller`.
class Seller {
  /// Creates a seller.
  const Seller({
    required this.id,
    required this.name,
    required this.slug,
    required this.about,
    required this.aboutHtml,
    this.logoUrl,
    this.squareLogoUrl,
    this.coverPhotoUrl,
    this.policies,
    this.customFields,
  });

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
  final String id;

  /// Seller name.
  final String name;

  /// URL slug (used by `sellers.get` in place of the id).
  final String slug;

  /// Plain-text presentation.
  final String about;

  /// Rendered HTML presentation.
  final String aboutHtml;

  /// Logo URL, when set.
  final String? logoUrl;

  /// Square-cropped logo URL, when set.
  final String? squareLogoUrl;

  /// Cover photo URL, when set.
  final String? coverPhotoUrl;

  /// Seller policies, when expanded.
  final List<Policy>? policies;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Seller &&
          id == other.id &&
          name == other.name &&
          slug == other.slug &&
          about == other.about &&
          aboutHtml == other.aboutHtml &&
          logoUrl == other.logoUrl &&
          squareLogoUrl == other.squareLogoUrl &&
          coverPhotoUrl == other.coverPhotoUrl &&
          _listEquals(policies, other.policies) &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode => Object.hash(id, name, slug, about, aboutHtml);
}

/// A merchandising collection of products.
///
/// Source: `packages/sdk/src/types/generated/Collection.ts`;
/// SPEC `store.yaml#/components/schemas/Collection`.
class Collection {
  /// Creates a collection.
  const Collection({
    required this.id,
    required this.name,
    required this.permalink,
    required this.position,
    required this.sortOrder,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    required this.productsCount,
    required this.description,
    required this.descriptionHtml,
    this.imageUrl,
    this.squareImageUrl,
    this.customFields,
  });

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
  final String id;

  /// Collection name.
  final String name;

  /// URL permalink (used by `collections.get` in place of the id).
  final String permalink;

  /// Sort position.
  final int position;

  /// Product ordering inside the collection.
  final CollectionSortOrder sortOrder;

  /// SEO title override, when set.
  final String? metaTitle;

  /// Meta description, when set.
  final String? metaDescription;

  /// Meta keywords, when set.
  final String? metaKeywords;

  /// Number of products in the collection.
  final int productsCount;

  /// Plain-text description.
  final String description;

  /// Rendered HTML description.
  final String descriptionHtml;

  /// Image URL, when set.
  final String? imageUrl;

  /// Square-cropped image URL, when set.
  final String? squareImageUrl;

  /// Merchant-defined custom fields, when present.
  final List<CustomField>? customFields;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Collection &&
          id == other.id &&
          name == other.name &&
          permalink == other.permalink &&
          position == other.position &&
          sortOrder == other.sortOrder &&
          metaTitle == other.metaTitle &&
          metaDescription == other.metaDescription &&
          metaKeywords == other.metaKeywords &&
          productsCount == other.productsCount &&
          description == other.description &&
          descriptionHtml == other.descriptionHtml &&
          imageUrl == other.imageUrl &&
          squareImageUrl == other.squareImageUrl &&
          _listEquals(customFields, other.customFields);

  @override
  int get hashCode =>
      Object.hash(id, name, permalink, position, sortOrder, productsCount);
}
