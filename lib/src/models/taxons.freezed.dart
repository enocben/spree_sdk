// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Category {

 String get id; String get name; String get permalink; int get position; int get depth; String? get metaTitle; String? get metaDescription; String? get metaKeywords; int get childrenCount; String? get parentId; String get description; String get descriptionHtml; String? get imageUrl; String? get squareImageUrl; bool get isRoot; bool get isChild; bool get isLeaf; Category? get parent; List<Category>? get children; List<Category>? get ancestors; List<CustomField>? get customFields;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Category;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.permalink, _this.permalink) || other.permalink == _this.permalink)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.depth, _this.depth) || other.depth == _this.depth)&&(identical(other.metaTitle, _this.metaTitle) || other.metaTitle == _this.metaTitle)&&(identical(other.metaDescription, _this.metaDescription) || other.metaDescription == _this.metaDescription)&&(identical(other.metaKeywords, _this.metaKeywords) || other.metaKeywords == _this.metaKeywords)&&(identical(other.childrenCount, _this.childrenCount) || other.childrenCount == _this.childrenCount)&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.descriptionHtml, _this.descriptionHtml) || other.descriptionHtml == _this.descriptionHtml)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.squareImageUrl, _this.squareImageUrl) || other.squareImageUrl == _this.squareImageUrl)&&(identical(other.isRoot, _this.isRoot) || other.isRoot == _this.isRoot)&&(identical(other.isChild, _this.isChild) || other.isChild == _this.isChild)&&(identical(other.isLeaf, _this.isLeaf) || other.isLeaf == _this.isLeaf)&&(identical(other.parent, _this.parent) || other.parent == _this.parent)&&const DeepCollectionEquality().equals(other.children, _this.children)&&const DeepCollectionEquality().equals(other.ancestors, _this.ancestors)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Category;
  return Object.hashAll([runtimeType,_this.id,_this.name,_this.permalink,_this.position,_this.depth,_this.metaTitle,_this.metaDescription,_this.metaKeywords,_this.childrenCount,_this.parentId,_this.description,_this.descriptionHtml,_this.imageUrl,_this.squareImageUrl,_this.isRoot,_this.isChild,_this.isLeaf,_this.parent,const DeepCollectionEquality().hash(_this.children),const DeepCollectionEquality().hash(_this.ancestors),const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as Category;
  return 'Category(id: ${_this.id}, name: ${_this.name}, permalink: ${_this.permalink}, position: ${_this.position}, depth: ${_this.depth}, metaTitle: ${_this.metaTitle}, metaDescription: ${_this.metaDescription}, metaKeywords: ${_this.metaKeywords}, childrenCount: ${_this.childrenCount}, parentId: ${_this.parentId}, description: ${_this.description}, descriptionHtml: ${_this.descriptionHtml}, imageUrl: ${_this.imageUrl}, squareImageUrl: ${_this.squareImageUrl}, isRoot: ${_this.isRoot}, isChild: ${_this.isChild}, isLeaf: ${_this.isLeaf}, parent: ${_this.parent}, children: ${_this.children}, ancestors: ${_this.ancestors}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String permalink, int position, int depth, String? metaTitle, String? metaDescription, String? metaKeywords, int childrenCount, String? parentId, String description, String descriptionHtml, String? imageUrl, String? squareImageUrl, bool isRoot, bool isChild, bool isLeaf, Category? parent, List<Category>? children, List<Category>? ancestors, List<CustomField>? customFields
});


$CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? position = null,Object? depth = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? childrenCount = null,Object? parentId = freezed,Object? description = null,Object? descriptionHtml = null,Object? imageUrl = freezed,Object? squareImageUrl = freezed,Object? isRoot = null,Object? isChild = null,Object? isLeaf = null,Object? parent = freezed,Object? children = freezed,Object? ancestors = freezed,Object? customFields = freezed,}) {
  return _then(Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,childrenCount: null == childrenCount ? _self.childrenCount : childrenCount // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,squareImageUrl: freezed == squareImageUrl ? _self.squareImageUrl : squareImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isRoot: null == isRoot ? _self.isRoot : isRoot // ignore: cast_nullable_to_non_nullable
as bool,isChild: null == isChild ? _self.isChild : isChild // ignore: cast_nullable_to_non_nullable
as bool,isLeaf: null == isLeaf ? _self.isLeaf : isLeaf // ignore: cast_nullable_to_non_nullable
as bool,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Category>?,ancestors: freezed == ancestors ? _self.ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<Category>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int position,  int depth,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int childrenCount,  String? parentId,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  bool isRoot,  bool isChild,  bool isLeaf,  Category? parent,  List<Category>? children,  List<Category>? ancestors,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.depth,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.childrenCount,_that.parentId,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.isRoot,_that.isChild,_that.isLeaf,_that.parent,_that.children,_that.ancestors,_that.customFields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int position,  int depth,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int childrenCount,  String? parentId,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  bool isRoot,  bool isChild,  bool isLeaf,  Category? parent,  List<Category>? children,  List<Category>? ancestors,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.depth,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.childrenCount,_that.parentId,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.isRoot,_that.isChild,_that.isLeaf,_that.parent,_that.children,_that.ancestors,_that.customFields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String permalink,  int position,  int depth,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int childrenCount,  String? parentId,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  bool isRoot,  bool isChild,  bool isLeaf,  Category? parent,  List<Category>? children,  List<Category>? ancestors,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.depth,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.childrenCount,_that.parentId,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.isRoot,_that.isChild,_that.isLeaf,_that.parent,_that.children,_that.ancestors,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Category extends Category {
  const _Category({required this.id, required this.name, required this.permalink, required this.position, required this.depth, this.metaTitle, this.metaDescription, this.metaKeywords, required this.childrenCount, this.parentId, required this.description, required this.descriptionHtml, this.imageUrl, this.squareImageUrl, required this.isRoot, required this.isChild, required this.isLeaf, this.parent, this.children, this.ancestors, this.customFields}): super._();
  

@override final  String id;
@override final  String name;
@override final  String permalink;
@override final  int position;
@override final  int depth;
@override final  String? metaTitle;
@override final  String? metaDescription;
@override final  String? metaKeywords;
@override final  int childrenCount;
@override final  String? parentId;
@override final  String description;
@override final  String descriptionHtml;
@override final  String? imageUrl;
@override final  String? squareImageUrl;
@override final  bool isRoot;
@override final  bool isChild;
@override final  bool isLeaf;
@override final  Category? parent;
@override final  List<Category>? children;
@override final  List<Category>? ancestors;
@override final  List<CustomField>? customFields;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.permalink, permalink) || other.permalink == permalink)&&(identical(other.position, position) || other.position == position)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.childrenCount, childrenCount) || other.childrenCount == childrenCount)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.squareImageUrl, squareImageUrl) || other.squareImageUrl == squareImageUrl)&&(identical(other.isRoot, isRoot) || other.isRoot == isRoot)&&(identical(other.isChild, isChild) || other.isChild == isChild)&&(identical(other.isLeaf, isLeaf) || other.isLeaf == isLeaf)&&(identical(other.parent, parent) || other.parent == parent)&&const DeepCollectionEquality().equals(other.children, children)&&const DeepCollectionEquality().equals(other.ancestors, ancestors)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,name,permalink,position,depth,metaTitle,metaDescription,metaKeywords,childrenCount,parentId,description,descriptionHtml,imageUrl,squareImageUrl,isRoot,isChild,isLeaf,parent,const DeepCollectionEquality().hash(children),const DeepCollectionEquality().hash(ancestors),const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'Category(id: $id, name: $name, permalink: $permalink, position: $position, depth: $depth, metaTitle: $metaTitle, metaDescription: $metaDescription, metaKeywords: $metaKeywords, childrenCount: $childrenCount, parentId: $parentId, description: $description, descriptionHtml: $descriptionHtml, imageUrl: $imageUrl, squareImageUrl: $squareImageUrl, isRoot: $isRoot, isChild: $isChild, isLeaf: $isLeaf, parent: $parent, children: $children, ancestors: $ancestors, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String permalink, int position, int depth, String? metaTitle, String? metaDescription, String? metaKeywords, int childrenCount, String? parentId, String description, String descriptionHtml, String? imageUrl, String? squareImageUrl, bool isRoot, bool isChild, bool isLeaf, Category? parent, List<Category>? children, List<Category>? ancestors, List<CustomField>? customFields
});


@override $CategoryCopyWith<$Res>? get parent;

}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? position = null,Object? depth = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? childrenCount = null,Object? parentId = freezed,Object? description = null,Object? descriptionHtml = null,Object? imageUrl = freezed,Object? squareImageUrl = freezed,Object? isRoot = null,Object? isChild = null,Object? isLeaf = null,Object? parent = freezed,Object? children = freezed,Object? ancestors = freezed,Object? customFields = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,childrenCount: null == childrenCount ? _self.childrenCount : childrenCount // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,squareImageUrl: freezed == squareImageUrl ? _self.squareImageUrl : squareImageUrl // ignore: cast_nullable_to_non_nullable
as String?,isRoot: null == isRoot ? _self.isRoot : isRoot // ignore: cast_nullable_to_non_nullable
as bool,isChild: null == isChild ? _self.isChild : isChild // ignore: cast_nullable_to_non_nullable
as bool,isLeaf: null == isLeaf ? _self.isLeaf : isLeaf // ignore: cast_nullable_to_non_nullable
as bool,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as Category?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Category>?,ancestors: freezed == ancestors ? _self.ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<Category>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}

/// @nodoc
mixin _$Seller {

 String get id; String get name; String get slug; String get about; String get aboutHtml; String? get logoUrl; String? get squareLogoUrl; String? get coverPhotoUrl; List<Policy>? get policies; List<CustomField>? get customFields;
/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerCopyWith<Seller> get copyWith => _$SellerCopyWithImpl<Seller>(this as Seller, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Seller;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Seller&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.about, _this.about) || other.about == _this.about)&&(identical(other.aboutHtml, _this.aboutHtml) || other.aboutHtml == _this.aboutHtml)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl)&&(identical(other.squareLogoUrl, _this.squareLogoUrl) || other.squareLogoUrl == _this.squareLogoUrl)&&(identical(other.coverPhotoUrl, _this.coverPhotoUrl) || other.coverPhotoUrl == _this.coverPhotoUrl)&&const DeepCollectionEquality().equals(other.policies, _this.policies)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Seller;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.about,_this.aboutHtml,_this.logoUrl,_this.squareLogoUrl,_this.coverPhotoUrl,const DeepCollectionEquality().hash(_this.policies),const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Seller;
  return 'Seller(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, about: ${_this.about}, aboutHtml: ${_this.aboutHtml}, logoUrl: ${_this.logoUrl}, squareLogoUrl: ${_this.squareLogoUrl}, coverPhotoUrl: ${_this.coverPhotoUrl}, policies: ${_this.policies}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $SellerCopyWith<$Res>  {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) _then) = _$SellerCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String about, String aboutHtml, String? logoUrl, String? squareLogoUrl, String? coverPhotoUrl, List<Policy>? policies, List<CustomField>? customFields
});




}
/// @nodoc
class _$SellerCopyWithImpl<$Res>
    implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._self, this._then);

  final Seller _self;
  final $Res Function(Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? about = null,Object? aboutHtml = null,Object? logoUrl = freezed,Object? squareLogoUrl = freezed,Object? coverPhotoUrl = freezed,Object? policies = freezed,Object? customFields = freezed,}) {
  return _then(Seller(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,aboutHtml: null == aboutHtml ? _self.aboutHtml : aboutHtml // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,squareLogoUrl: freezed == squareLogoUrl ? _self.squareLogoUrl : squareLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,policies: freezed == policies ? _self.policies : policies // ignore: cast_nullable_to_non_nullable
as List<Policy>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Seller].
extension SellerPatterns on Seller {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Seller value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Seller value)  $default,){
final _that = this;
switch (_that) {
case _Seller():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Seller value)?  $default,){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String about,  String aboutHtml,  String? logoUrl,  String? squareLogoUrl,  String? coverPhotoUrl,  List<Policy>? policies,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.about,_that.aboutHtml,_that.logoUrl,_that.squareLogoUrl,_that.coverPhotoUrl,_that.policies,_that.customFields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String about,  String aboutHtml,  String? logoUrl,  String? squareLogoUrl,  String? coverPhotoUrl,  List<Policy>? policies,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Seller():
return $default(_that.id,_that.name,_that.slug,_that.about,_that.aboutHtml,_that.logoUrl,_that.squareLogoUrl,_that.coverPhotoUrl,_that.policies,_that.customFields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String about,  String aboutHtml,  String? logoUrl,  String? squareLogoUrl,  String? coverPhotoUrl,  List<Policy>? policies,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.about,_that.aboutHtml,_that.logoUrl,_that.squareLogoUrl,_that.coverPhotoUrl,_that.policies,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Seller extends Seller {
  const _Seller({required this.id, required this.name, required this.slug, required this.about, required this.aboutHtml, this.logoUrl, this.squareLogoUrl, this.coverPhotoUrl, this.policies, this.customFields}): super._();
  

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String about;
@override final  String aboutHtml;
@override final  String? logoUrl;
@override final  String? squareLogoUrl;
@override final  String? coverPhotoUrl;
@override final  List<Policy>? policies;
@override final  List<CustomField>? customFields;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerCopyWith<_Seller> get copyWith => __$SellerCopyWithImpl<_Seller>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seller&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.about, about) || other.about == about)&&(identical(other.aboutHtml, aboutHtml) || other.aboutHtml == aboutHtml)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.squareLogoUrl, squareLogoUrl) || other.squareLogoUrl == squareLogoUrl)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&const DeepCollectionEquality().equals(other.policies, policies)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,about,aboutHtml,logoUrl,squareLogoUrl,coverPhotoUrl,const DeepCollectionEquality().hash(policies),const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Seller(id: $id, name: $name, slug: $slug, about: $about, aboutHtml: $aboutHtml, logoUrl: $logoUrl, squareLogoUrl: $squareLogoUrl, coverPhotoUrl: $coverPhotoUrl, policies: $policies, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$SellerCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$SellerCopyWith(_Seller value, $Res Function(_Seller) _then) = __$SellerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String about, String aboutHtml, String? logoUrl, String? squareLogoUrl, String? coverPhotoUrl, List<Policy>? policies, List<CustomField>? customFields
});




}
/// @nodoc
class __$SellerCopyWithImpl<$Res>
    implements _$SellerCopyWith<$Res> {
  __$SellerCopyWithImpl(this._self, this._then);

  final _Seller _self;
  final $Res Function(_Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? about = null,Object? aboutHtml = null,Object? logoUrl = freezed,Object? squareLogoUrl = freezed,Object? coverPhotoUrl = freezed,Object? policies = freezed,Object? customFields = freezed,}) {
  return _then(_Seller(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,aboutHtml: null == aboutHtml ? _self.aboutHtml : aboutHtml // ignore: cast_nullable_to_non_nullable
as String,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,squareLogoUrl: freezed == squareLogoUrl ? _self.squareLogoUrl : squareLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,policies: freezed == policies ? _self.policies : policies // ignore: cast_nullable_to_non_nullable
as List<Policy>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}

/// @nodoc
mixin _$Collection {

 String get id; String get name; String get permalink; int get position; CollectionSortOrder get sortOrder; String? get metaTitle; String? get metaDescription; String? get metaKeywords; int get productsCount; String get description; String get descriptionHtml; String? get imageUrl; String? get squareImageUrl; List<CustomField>? get customFields;
/// Create a copy of Collection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionCopyWith<Collection> get copyWith => _$CollectionCopyWithImpl<Collection>(this as Collection, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Collection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Collection&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.permalink, _this.permalink) || other.permalink == _this.permalink)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.metaTitle, _this.metaTitle) || other.metaTitle == _this.metaTitle)&&(identical(other.metaDescription, _this.metaDescription) || other.metaDescription == _this.metaDescription)&&(identical(other.metaKeywords, _this.metaKeywords) || other.metaKeywords == _this.metaKeywords)&&(identical(other.productsCount, _this.productsCount) || other.productsCount == _this.productsCount)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.descriptionHtml, _this.descriptionHtml) || other.descriptionHtml == _this.descriptionHtml)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.squareImageUrl, _this.squareImageUrl) || other.squareImageUrl == _this.squareImageUrl)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Collection;
  return Object.hash(runtimeType,_this.id,_this.name,_this.permalink,_this.position,_this.sortOrder,_this.metaTitle,_this.metaDescription,_this.metaKeywords,_this.productsCount,_this.description,_this.descriptionHtml,_this.imageUrl,_this.squareImageUrl,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Collection;
  return 'Collection(id: ${_this.id}, name: ${_this.name}, permalink: ${_this.permalink}, position: ${_this.position}, sortOrder: ${_this.sortOrder}, metaTitle: ${_this.metaTitle}, metaDescription: ${_this.metaDescription}, metaKeywords: ${_this.metaKeywords}, productsCount: ${_this.productsCount}, description: ${_this.description}, descriptionHtml: ${_this.descriptionHtml}, imageUrl: ${_this.imageUrl}, squareImageUrl: ${_this.squareImageUrl}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $CollectionCopyWith<$Res>  {
  factory $CollectionCopyWith(Collection value, $Res Function(Collection) _then) = _$CollectionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String permalink, int position, CollectionSortOrder sortOrder, String? metaTitle, String? metaDescription, String? metaKeywords, int productsCount, String description, String descriptionHtml, String? imageUrl, String? squareImageUrl, List<CustomField>? customFields
});




}
/// @nodoc
class _$CollectionCopyWithImpl<$Res>
    implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._self, this._then);

  final Collection _self;
  final $Res Function(Collection) _then;

/// Create a copy of Collection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? position = null,Object? sortOrder = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? productsCount = null,Object? description = null,Object? descriptionHtml = null,Object? imageUrl = freezed,Object? squareImageUrl = freezed,Object? customFields = freezed,}) {
  return _then(Collection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CollectionSortOrder,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,productsCount: null == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,squareImageUrl: freezed == squareImageUrl ? _self.squareImageUrl : squareImageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Collection].
extension CollectionPatterns on Collection {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Collection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Collection() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Collection value)  $default,){
final _that = this;
switch (_that) {
case _Collection():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Collection value)?  $default,){
final _that = this;
switch (_that) {
case _Collection() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int position,  CollectionSortOrder sortOrder,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int productsCount,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Collection() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.sortOrder,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.productsCount,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.customFields);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int position,  CollectionSortOrder sortOrder,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int productsCount,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Collection():
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.sortOrder,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.productsCount,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.customFields);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String permalink,  int position,  CollectionSortOrder sortOrder,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int productsCount,  String description,  String descriptionHtml,  String? imageUrl,  String? squareImageUrl,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Collection() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.position,_that.sortOrder,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.productsCount,_that.description,_that.descriptionHtml,_that.imageUrl,_that.squareImageUrl,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Collection extends Collection {
  const _Collection({required this.id, required this.name, required this.permalink, required this.position, required this.sortOrder, this.metaTitle, this.metaDescription, this.metaKeywords, required this.productsCount, required this.description, required this.descriptionHtml, this.imageUrl, this.squareImageUrl, this.customFields}): super._();
  

@override final  String id;
@override final  String name;
@override final  String permalink;
@override final  int position;
@override final  CollectionSortOrder sortOrder;
@override final  String? metaTitle;
@override final  String? metaDescription;
@override final  String? metaKeywords;
@override final  int productsCount;
@override final  String description;
@override final  String descriptionHtml;
@override final  String? imageUrl;
@override final  String? squareImageUrl;
@override final  List<CustomField>? customFields;

/// Create a copy of Collection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionCopyWith<_Collection> get copyWith => __$CollectionCopyWithImpl<_Collection>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Collection&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.permalink, permalink) || other.permalink == permalink)&&(identical(other.position, position) || other.position == position)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.productsCount, productsCount) || other.productsCount == productsCount)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.squareImageUrl, squareImageUrl) || other.squareImageUrl == squareImageUrl)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,permalink,position,sortOrder,metaTitle,metaDescription,metaKeywords,productsCount,description,descriptionHtml,imageUrl,squareImageUrl,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Collection(id: $id, name: $name, permalink: $permalink, position: $position, sortOrder: $sortOrder, metaTitle: $metaTitle, metaDescription: $metaDescription, metaKeywords: $metaKeywords, productsCount: $productsCount, description: $description, descriptionHtml: $descriptionHtml, imageUrl: $imageUrl, squareImageUrl: $squareImageUrl, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$CollectionCopyWith<$Res> implements $CollectionCopyWith<$Res> {
  factory _$CollectionCopyWith(_Collection value, $Res Function(_Collection) _then) = __$CollectionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String permalink, int position, CollectionSortOrder sortOrder, String? metaTitle, String? metaDescription, String? metaKeywords, int productsCount, String description, String descriptionHtml, String? imageUrl, String? squareImageUrl, List<CustomField>? customFields
});




}
/// @nodoc
class __$CollectionCopyWithImpl<$Res>
    implements _$CollectionCopyWith<$Res> {
  __$CollectionCopyWithImpl(this._self, this._then);

  final _Collection _self;
  final $Res Function(_Collection) _then;

/// Create a copy of Collection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? position = null,Object? sortOrder = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? productsCount = null,Object? description = null,Object? descriptionHtml = null,Object? imageUrl = freezed,Object? squareImageUrl = freezed,Object? customFields = freezed,}) {
  return _then(_Collection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CollectionSortOrder,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,productsCount: null == productsCount ? _self.productsCount : productsCount // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionHtml: null == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,squareImageUrl: freezed == squareImageUrl ? _self.squareImageUrl : squareImageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}

// dart format on
