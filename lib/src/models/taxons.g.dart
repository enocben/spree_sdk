// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
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
      : Category.fromJson(json['parent'] as Map<String, dynamic>),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  ancestors: (json['ancestors'] as List<dynamic>?)
      ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'permalink': instance.permalink,
  'position': instance.position,
  'depth': instance.depth,
  'meta_title': instance.metaTitle,
  'meta_description': instance.metaDescription,
  'meta_keywords': instance.metaKeywords,
  'children_count': instance.childrenCount,
  'parent_id': instance.parentId,
  'description': instance.description,
  'description_html': instance.descriptionHtml,
  'image_url': instance.imageUrl,
  'square_image_url': instance.squareImageUrl,
  'is_root': instance.isRoot,
  'is_child': instance.isChild,
  'is_leaf': instance.isLeaf,
  'parent': instance.parent?.toJson(),
  'children': ?instance.children?.map((e) => e.toJson()).toList(),
  'ancestors': ?instance.ancestors?.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

_Seller _$SellerFromJson(Map<String, dynamic> json) => _Seller(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  about: json['about'] as String,
  aboutHtml: json['about_html'] as String,
  logoUrl: json['logo_url'] as String?,
  squareLogoUrl: json['square_logo_url'] as String?,
  coverPhotoUrl: json['cover_photo_url'] as String?,
  policies: (json['policies'] as List<dynamic>?)
      ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SellerToJson(_Seller instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'about': instance.about,
  'about_html': instance.aboutHtml,
  'logo_url': instance.logoUrl,
  'square_logo_url': instance.squareLogoUrl,
  'cover_photo_url': instance.coverPhotoUrl,
  'policies': ?instance.policies?.map((e) => e.toJson()).toList(),
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
};

_Collection _$CollectionFromJson(Map<String, dynamic> json) => _Collection(
  id: json['id'] as String,
  name: json['name'] as String,
  permalink: json['permalink'] as String,
  position: (json['position'] as num).toInt(),
  sortOrder: $enumDecode(
    _$CollectionSortOrderEnumMap,
    json['sort_order'],
    unknownValue: CollectionSortOrder.unknown,
  ),
  metaTitle: json['meta_title'] as String?,
  metaDescription: json['meta_description'] as String?,
  metaKeywords: json['meta_keywords'] as String?,
  productsCount: (json['products_count'] as num).toInt(),
  description: json['description'] as String,
  descriptionHtml: json['description_html'] as String,
  imageUrl: json['image_url'] as String?,
  squareImageUrl: json['square_image_url'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CollectionToJson(_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'position': instance.position,
      'sort_order': instance.sortOrder.toJson(),
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'products_count': instance.productsCount,
      'description': instance.description,
      'description_html': instance.descriptionHtml,
      'image_url': instance.imageUrl,
      'square_image_url': instance.squareImageUrl,
      'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
    };

const _$CollectionSortOrderEnumMap = {
  CollectionSortOrder.manual: 'manual',
  CollectionSortOrder.bestSelling: 'best_selling',
  CollectionSortOrder.priceAsc: 'price asc',
  CollectionSortOrder.priceDesc: 'price desc',
  CollectionSortOrder.availableOnDesc: 'available_on desc',
  CollectionSortOrder.availableOnAsc: 'available_on asc',
  CollectionSortOrder.nameAsc: 'name asc',
  CollectionSortOrder.nameDesc: 'name desc',
  CollectionSortOrder.unknown: '',
};
