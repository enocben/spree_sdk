// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Price {

 String get id;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode? get currency; String? get amount; String? get compareAtAmount; String? get priceListId;
/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceCopyWith<Price> get copyWith => _$PriceCopyWithImpl<Price>(this as Price, _$identity);

  /// Serializes this Price to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Price;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Price&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.compareAtAmount, _this.compareAtAmount) || other.compareAtAmount == _this.compareAtAmount)&&(identical(other.priceListId, _this.priceListId) || other.priceListId == _this.priceListId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Price;
  return Object.hash(runtimeType,_this.id,_this.currency,_this.amount,_this.compareAtAmount,_this.priceListId);
}

@override
String toString() {
  final _this = this as Price;
  return 'Price(id: ${_this.id}, currency: ${_this.currency}, amount: ${_this.amount}, compareAtAmount: ${_this.compareAtAmount}, priceListId: ${_this.priceListId})';
}


}

/// @nodoc
abstract mixin class $PriceCopyWith<$Res>  {
  factory $PriceCopyWith(Price value, $Res Function(Price) _then) = _$PriceCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode? currency, String? amount, String? compareAtAmount, String? priceListId
});




}
/// @nodoc
class _$PriceCopyWithImpl<$Res>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._self, this._then);

  final Price _self;
  final $Res Function(Price) _then;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currency = freezed,Object? amount = freezed,Object? compareAtAmount = freezed,Object? priceListId = freezed,}) {
  return _then(Price(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,compareAtAmount: freezed == compareAtAmount ? _self.compareAtAmount : compareAtAmount // ignore: cast_nullable_to_non_nullable
as String?,priceListId: freezed == priceListId ? _self.priceListId : priceListId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Price].
extension PricePatterns on Price {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Price value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Price() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Price value)  $default,){
final _that = this;
switch (_that) {
case _Price():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Price value)?  $default,){
final _that = this;
switch (_that) {
case _Price() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode? currency,  String? amount,  String? compareAtAmount,  String? priceListId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that.id,_that.currency,_that.amount,_that.compareAtAmount,_that.priceListId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode? currency,  String? amount,  String? compareAtAmount,  String? priceListId)  $default,) {final _that = this;
switch (_that) {
case _Price():
return $default(_that.id,_that.currency,_that.amount,_that.compareAtAmount,_that.priceListId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode? currency,  String? amount,  String? compareAtAmount,  String? priceListId)?  $default,) {final _that = this;
switch (_that) {
case _Price() when $default != null:
return $default(_that.id,_that.currency,_that.amount,_that.compareAtAmount,_that.priceListId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Price extends Price {
  const _Price({required this.id, @JsonKey(unknownEnumValue: CurrencyCode.unknown) this.currency, this.amount, this.compareAtAmount, this.priceListId}): super._();
  factory _Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode? currency;
@override final  String? amount;
@override final  String? compareAtAmount;
@override final  String? priceListId;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceCopyWith<_Price> get copyWith => __$PriceCopyWithImpl<_Price>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Price&&(identical(other.id, id) || other.id == id)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.compareAtAmount, compareAtAmount) || other.compareAtAmount == compareAtAmount)&&(identical(other.priceListId, priceListId) || other.priceListId == priceListId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,currency,amount,compareAtAmount,priceListId);
}

@override
String toString() {
    return 'Price(id: $id, currency: $currency, amount: $amount, compareAtAmount: $compareAtAmount, priceListId: $priceListId)';
}


}

/// @nodoc
abstract mixin class _$PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$PriceCopyWith(_Price value, $Res Function(_Price) _then) = __$PriceCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode? currency, String? amount, String? compareAtAmount, String? priceListId
});




}
/// @nodoc
class __$PriceCopyWithImpl<$Res>
    implements _$PriceCopyWith<$Res> {
  __$PriceCopyWithImpl(this._self, this._then);

  final _Price _self;
  final $Res Function(_Price) _then;

/// Create a copy of Price
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currency = freezed,Object? amount = freezed,Object? compareAtAmount = freezed,Object? priceListId = freezed,}) {
  return _then(_Price(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,compareAtAmount: freezed == compareAtAmount ? _self.compareAtAmount : compareAtAmount // ignore: cast_nullable_to_non_nullable
as String?,priceListId: freezed == priceListId ? _self.priceListId : priceListId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PriceHistory {

 String get id;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency; String? get amount; String get recordedAt;
/// Create a copy of PriceHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceHistoryCopyWith<PriceHistory> get copyWith => _$PriceHistoryCopyWithImpl<PriceHistory>(this as PriceHistory, _$identity);

  /// Serializes this PriceHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PriceHistory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceHistory&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.recordedAt, _this.recordedAt) || other.recordedAt == _this.recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PriceHistory;
  return Object.hash(runtimeType,_this.id,_this.currency,_this.amount,_this.recordedAt);
}

@override
String toString() {
  final _this = this as PriceHistory;
  return 'PriceHistory(id: ${_this.id}, currency: ${_this.currency}, amount: ${_this.amount}, recordedAt: ${_this.recordedAt})';
}


}

/// @nodoc
abstract mixin class $PriceHistoryCopyWith<$Res>  {
  factory $PriceHistoryCopyWith(PriceHistory value, $Res Function(PriceHistory) _then) = _$PriceHistoryCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String? amount, String recordedAt
});




}
/// @nodoc
class _$PriceHistoryCopyWithImpl<$Res>
    implements $PriceHistoryCopyWith<$Res> {
  _$PriceHistoryCopyWithImpl(this._self, this._then);

  final PriceHistory _self;
  final $Res Function(PriceHistory) _then;

/// Create a copy of PriceHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currency = null,Object? amount = freezed,Object? recordedAt = null,}) {
  return _then(PriceHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceHistory].
extension PriceHistoryPatterns on PriceHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceHistory value)  $default,){
final _that = this;
switch (_that) {
case _PriceHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceHistory value)?  $default,){
final _that = this;
switch (_that) {
case _PriceHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String recordedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceHistory() when $default != null:
return $default(_that.id,_that.currency,_that.amount,_that.recordedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String recordedAt)  $default,) {final _that = this;
switch (_that) {
case _PriceHistory():
return $default(_that.id,_that.currency,_that.amount,_that.recordedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String recordedAt)?  $default,) {final _that = this;
switch (_that) {
case _PriceHistory() when $default != null:
return $default(_that.id,_that.currency,_that.amount,_that.recordedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _PriceHistory extends PriceHistory {
  const _PriceHistory({required this.id, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency, this.amount, required this.recordedAt}): super._();
  factory _PriceHistory.fromJson(Map<String, dynamic> json) => _$PriceHistoryFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;
@override final  String? amount;
@override final  String recordedAt;

/// Create a copy of PriceHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceHistoryCopyWith<_PriceHistory> get copyWith => __$PriceHistoryCopyWithImpl<_PriceHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceHistory&&(identical(other.id, id) || other.id == id)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.recordedAt, recordedAt) || other.recordedAt == recordedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,currency,amount,recordedAt);
}

@override
String toString() {
    return 'PriceHistory(id: $id, currency: $currency, amount: $amount, recordedAt: $recordedAt)';
}


}

/// @nodoc
abstract mixin class _$PriceHistoryCopyWith<$Res> implements $PriceHistoryCopyWith<$Res> {
  factory _$PriceHistoryCopyWith(_PriceHistory value, $Res Function(_PriceHistory) _then) = __$PriceHistoryCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String? amount, String recordedAt
});




}
/// @nodoc
class __$PriceHistoryCopyWithImpl<$Res>
    implements _$PriceHistoryCopyWith<$Res> {
  __$PriceHistoryCopyWithImpl(this._self, this._then);

  final _PriceHistory _self;
  final $Res Function(_PriceHistory) _then;

/// Create a copy of PriceHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currency = null,Object? amount = freezed,Object? recordedAt = null,}) {
  return _then(_PriceHistory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,recordedAt: null == recordedAt ? _self.recordedAt : recordedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Media {

 String get id; String? get productId; List<String> get variantIds; int get position; String? get alt;@JsonKey(unknownEnumValue: MediaType.unknown) MediaType get mediaType; String? get externalVideoUrl; double? get focalPointX; double? get focalPointY; String? get videoProvider; String? get videoEmbedUrl; String? get videoUrl; String? get posterUrl; String? get originalUrl; String? get miniUrl; String? get smallUrl; String? get mediumUrl; String? get largeUrl; String? get xlargeUrl; String? get ogImageUrl;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCopyWith<Media> get copyWith => _$MediaCopyWithImpl<Media>(this as Media, _$identity);

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Media;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Media&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&const DeepCollectionEquality().equals(other.variantIds, _this.variantIds)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.alt, _this.alt) || other.alt == _this.alt)&&(identical(other.mediaType, _this.mediaType) || other.mediaType == _this.mediaType)&&(identical(other.externalVideoUrl, _this.externalVideoUrl) || other.externalVideoUrl == _this.externalVideoUrl)&&(identical(other.focalPointX, _this.focalPointX) || other.focalPointX == _this.focalPointX)&&(identical(other.focalPointY, _this.focalPointY) || other.focalPointY == _this.focalPointY)&&(identical(other.videoProvider, _this.videoProvider) || other.videoProvider == _this.videoProvider)&&(identical(other.videoEmbedUrl, _this.videoEmbedUrl) || other.videoEmbedUrl == _this.videoEmbedUrl)&&(identical(other.videoUrl, _this.videoUrl) || other.videoUrl == _this.videoUrl)&&(identical(other.posterUrl, _this.posterUrl) || other.posterUrl == _this.posterUrl)&&(identical(other.originalUrl, _this.originalUrl) || other.originalUrl == _this.originalUrl)&&(identical(other.miniUrl, _this.miniUrl) || other.miniUrl == _this.miniUrl)&&(identical(other.smallUrl, _this.smallUrl) || other.smallUrl == _this.smallUrl)&&(identical(other.mediumUrl, _this.mediumUrl) || other.mediumUrl == _this.mediumUrl)&&(identical(other.largeUrl, _this.largeUrl) || other.largeUrl == _this.largeUrl)&&(identical(other.xlargeUrl, _this.xlargeUrl) || other.xlargeUrl == _this.xlargeUrl)&&(identical(other.ogImageUrl, _this.ogImageUrl) || other.ogImageUrl == _this.ogImageUrl)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Media;
  return Object.hashAll([runtimeType,_this.id,_this.productId,const DeepCollectionEquality().hash(_this.variantIds),_this.position,_this.alt,_this.mediaType,_this.externalVideoUrl,_this.focalPointX,_this.focalPointY,_this.videoProvider,_this.videoEmbedUrl,_this.videoUrl,_this.posterUrl,_this.originalUrl,_this.miniUrl,_this.smallUrl,_this.mediumUrl,_this.largeUrl,_this.xlargeUrl,_this.ogImageUrl,const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as Media;
  return 'Media(id: ${_this.id}, productId: ${_this.productId}, variantIds: ${_this.variantIds}, position: ${_this.position}, alt: ${_this.alt}, mediaType: ${_this.mediaType}, externalVideoUrl: ${_this.externalVideoUrl}, focalPointX: ${_this.focalPointX}, focalPointY: ${_this.focalPointY}, videoProvider: ${_this.videoProvider}, videoEmbedUrl: ${_this.videoEmbedUrl}, videoUrl: ${_this.videoUrl}, posterUrl: ${_this.posterUrl}, originalUrl: ${_this.originalUrl}, miniUrl: ${_this.miniUrl}, smallUrl: ${_this.smallUrl}, mediumUrl: ${_this.mediumUrl}, largeUrl: ${_this.largeUrl}, xlargeUrl: ${_this.xlargeUrl}, ogImageUrl: ${_this.ogImageUrl}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $MediaCopyWith<$Res>  {
  factory $MediaCopyWith(Media value, $Res Function(Media) _then) = _$MediaCopyWithImpl;
@useResult
$Res call({
 String id, String? productId, List<String> variantIds, int position, String? alt,@JsonKey(unknownEnumValue: MediaType.unknown) MediaType mediaType, String? externalVideoUrl, double? focalPointX, double? focalPointY, String? videoProvider, String? videoEmbedUrl, String? videoUrl, String? posterUrl, String? originalUrl, String? miniUrl, String? smallUrl, String? mediumUrl, String? largeUrl, String? xlargeUrl, String? ogImageUrl,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$MediaCopyWithImpl<$Res>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._self, this._then);

  final Media _self;
  final $Res Function(Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = freezed,Object? variantIds = null,Object? position = null,Object? alt = freezed,Object? mediaType = null,Object? externalVideoUrl = freezed,Object? focalPointX = freezed,Object? focalPointY = freezed,Object? videoProvider = freezed,Object? videoEmbedUrl = freezed,Object? videoUrl = freezed,Object? posterUrl = freezed,Object? originalUrl = freezed,Object? miniUrl = freezed,Object? smallUrl = freezed,Object? mediumUrl = freezed,Object? largeUrl = freezed,Object? xlargeUrl = freezed,Object? ogImageUrl = freezed,Object? customFields = freezed,}) {
  return _then(Media(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,variantIds: null == variantIds ? _self.variantIds : variantIds // ignore: cast_nullable_to_non_nullable
as List<String>,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as MediaType,externalVideoUrl: freezed == externalVideoUrl ? _self.externalVideoUrl : externalVideoUrl // ignore: cast_nullable_to_non_nullable
as String?,focalPointX: freezed == focalPointX ? _self.focalPointX : focalPointX // ignore: cast_nullable_to_non_nullable
as double?,focalPointY: freezed == focalPointY ? _self.focalPointY : focalPointY // ignore: cast_nullable_to_non_nullable
as double?,videoProvider: freezed == videoProvider ? _self.videoProvider : videoProvider // ignore: cast_nullable_to_non_nullable
as String?,videoEmbedUrl: freezed == videoEmbedUrl ? _self.videoEmbedUrl : videoEmbedUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,posterUrl: freezed == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String?,originalUrl: freezed == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String?,miniUrl: freezed == miniUrl ? _self.miniUrl : miniUrl // ignore: cast_nullable_to_non_nullable
as String?,smallUrl: freezed == smallUrl ? _self.smallUrl : smallUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,largeUrl: freezed == largeUrl ? _self.largeUrl : largeUrl // ignore: cast_nullable_to_non_nullable
as String?,xlargeUrl: freezed == xlargeUrl ? _self.xlargeUrl : xlargeUrl // ignore: cast_nullable_to_non_nullable
as String?,ogImageUrl: freezed == ogImageUrl ? _self.ogImageUrl : ogImageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Media].
extension MediaPatterns on Media {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Media value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Media value)  $default,){
final _that = this;
switch (_that) {
case _Media():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Media value)?  $default,){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? productId,  List<String> variantIds,  int position,  String? alt, @JsonKey(unknownEnumValue: MediaType.unknown)  MediaType mediaType,  String? externalVideoUrl,  double? focalPointX,  double? focalPointY,  String? videoProvider,  String? videoEmbedUrl,  String? videoUrl,  String? posterUrl,  String? originalUrl,  String? miniUrl,  String? smallUrl,  String? mediumUrl,  String? largeUrl,  String? xlargeUrl,  String? ogImageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.id,_that.productId,_that.variantIds,_that.position,_that.alt,_that.mediaType,_that.externalVideoUrl,_that.focalPointX,_that.focalPointY,_that.videoProvider,_that.videoEmbedUrl,_that.videoUrl,_that.posterUrl,_that.originalUrl,_that.miniUrl,_that.smallUrl,_that.mediumUrl,_that.largeUrl,_that.xlargeUrl,_that.ogImageUrl,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? productId,  List<String> variantIds,  int position,  String? alt, @JsonKey(unknownEnumValue: MediaType.unknown)  MediaType mediaType,  String? externalVideoUrl,  double? focalPointX,  double? focalPointY,  String? videoProvider,  String? videoEmbedUrl,  String? videoUrl,  String? posterUrl,  String? originalUrl,  String? miniUrl,  String? smallUrl,  String? mediumUrl,  String? largeUrl,  String? xlargeUrl,  String? ogImageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Media():
return $default(_that.id,_that.productId,_that.variantIds,_that.position,_that.alt,_that.mediaType,_that.externalVideoUrl,_that.focalPointX,_that.focalPointY,_that.videoProvider,_that.videoEmbedUrl,_that.videoUrl,_that.posterUrl,_that.originalUrl,_that.miniUrl,_that.smallUrl,_that.mediumUrl,_that.largeUrl,_that.xlargeUrl,_that.ogImageUrl,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? productId,  List<String> variantIds,  int position,  String? alt, @JsonKey(unknownEnumValue: MediaType.unknown)  MediaType mediaType,  String? externalVideoUrl,  double? focalPointX,  double? focalPointY,  String? videoProvider,  String? videoEmbedUrl,  String? videoUrl,  String? posterUrl,  String? originalUrl,  String? miniUrl,  String? smallUrl,  String? mediumUrl,  String? largeUrl,  String? xlargeUrl,  String? ogImageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.id,_that.productId,_that.variantIds,_that.position,_that.alt,_that.mediaType,_that.externalVideoUrl,_that.focalPointX,_that.focalPointY,_that.videoProvider,_that.videoEmbedUrl,_that.videoUrl,_that.posterUrl,_that.originalUrl,_that.miniUrl,_that.smallUrl,_that.mediumUrl,_that.largeUrl,_that.xlargeUrl,_that.ogImageUrl,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Media extends Media {
  const _Media({required this.id, this.productId, required this.variantIds, required this.position, this.alt, @JsonKey(unknownEnumValue: MediaType.unknown) required this.mediaType, this.externalVideoUrl, this.focalPointX, this.focalPointY, this.videoProvider, this.videoEmbedUrl, this.videoUrl, this.posterUrl, this.originalUrl, this.miniUrl, this.smallUrl, this.mediumUrl, this.largeUrl, this.xlargeUrl, this.ogImageUrl, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

@override final  String id;
@override final  String? productId;
@override final  List<String> variantIds;
@override final  int position;
@override final  String? alt;
@override@JsonKey(unknownEnumValue: MediaType.unknown) final  MediaType mediaType;
@override final  String? externalVideoUrl;
@override final  double? focalPointX;
@override final  double? focalPointY;
@override final  String? videoProvider;
@override final  String? videoEmbedUrl;
@override final  String? videoUrl;
@override final  String? posterUrl;
@override final  String? originalUrl;
@override final  String? miniUrl;
@override final  String? smallUrl;
@override final  String? mediumUrl;
@override final  String? largeUrl;
@override final  String? xlargeUrl;
@override final  String? ogImageUrl;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCopyWith<_Media> get copyWith => __$MediaCopyWithImpl<_Media>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Media&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&const DeepCollectionEquality().equals(other.variantIds, variantIds)&&(identical(other.position, position) || other.position == position)&&(identical(other.alt, alt) || other.alt == alt)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.externalVideoUrl, externalVideoUrl) || other.externalVideoUrl == externalVideoUrl)&&(identical(other.focalPointX, focalPointX) || other.focalPointX == focalPointX)&&(identical(other.focalPointY, focalPointY) || other.focalPointY == focalPointY)&&(identical(other.videoProvider, videoProvider) || other.videoProvider == videoProvider)&&(identical(other.videoEmbedUrl, videoEmbedUrl) || other.videoEmbedUrl == videoEmbedUrl)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.miniUrl, miniUrl) || other.miniUrl == miniUrl)&&(identical(other.smallUrl, smallUrl) || other.smallUrl == smallUrl)&&(identical(other.mediumUrl, mediumUrl) || other.mediumUrl == mediumUrl)&&(identical(other.largeUrl, largeUrl) || other.largeUrl == largeUrl)&&(identical(other.xlargeUrl, xlargeUrl) || other.xlargeUrl == xlargeUrl)&&(identical(other.ogImageUrl, ogImageUrl) || other.ogImageUrl == ogImageUrl)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,productId,const DeepCollectionEquality().hash(variantIds),position,alt,mediaType,externalVideoUrl,focalPointX,focalPointY,videoProvider,videoEmbedUrl,videoUrl,posterUrl,originalUrl,miniUrl,smallUrl,mediumUrl,largeUrl,xlargeUrl,ogImageUrl,const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'Media(id: $id, productId: $productId, variantIds: $variantIds, position: $position, alt: $alt, mediaType: $mediaType, externalVideoUrl: $externalVideoUrl, focalPointX: $focalPointX, focalPointY: $focalPointY, videoProvider: $videoProvider, videoEmbedUrl: $videoEmbedUrl, videoUrl: $videoUrl, posterUrl: $posterUrl, originalUrl: $originalUrl, miniUrl: $miniUrl, smallUrl: $smallUrl, mediumUrl: $mediumUrl, largeUrl: $largeUrl, xlargeUrl: $xlargeUrl, ogImageUrl: $ogImageUrl, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) = __$MediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String? productId, List<String> variantIds, int position, String? alt,@JsonKey(unknownEnumValue: MediaType.unknown) MediaType mediaType, String? externalVideoUrl, double? focalPointX, double? focalPointY, String? videoProvider, String? videoEmbedUrl, String? videoUrl, String? posterUrl, String? originalUrl, String? miniUrl, String? smallUrl, String? mediumUrl, String? largeUrl, String? xlargeUrl, String? ogImageUrl,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$MediaCopyWithImpl<$Res>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = freezed,Object? variantIds = null,Object? position = null,Object? alt = freezed,Object? mediaType = null,Object? externalVideoUrl = freezed,Object? focalPointX = freezed,Object? focalPointY = freezed,Object? videoProvider = freezed,Object? videoEmbedUrl = freezed,Object? videoUrl = freezed,Object? posterUrl = freezed,Object? originalUrl = freezed,Object? miniUrl = freezed,Object? smallUrl = freezed,Object? mediumUrl = freezed,Object? largeUrl = freezed,Object? xlargeUrl = freezed,Object? ogImageUrl = freezed,Object? customFields = freezed,}) {
  return _then(_Media(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,variantIds: null == variantIds ? _self.variantIds : variantIds // ignore: cast_nullable_to_non_nullable
as List<String>,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,alt: freezed == alt ? _self.alt : alt // ignore: cast_nullable_to_non_nullable
as String?,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as MediaType,externalVideoUrl: freezed == externalVideoUrl ? _self.externalVideoUrl : externalVideoUrl // ignore: cast_nullable_to_non_nullable
as String?,focalPointX: freezed == focalPointX ? _self.focalPointX : focalPointX // ignore: cast_nullable_to_non_nullable
as double?,focalPointY: freezed == focalPointY ? _self.focalPointY : focalPointY // ignore: cast_nullable_to_non_nullable
as double?,videoProvider: freezed == videoProvider ? _self.videoProvider : videoProvider // ignore: cast_nullable_to_non_nullable
as String?,videoEmbedUrl: freezed == videoEmbedUrl ? _self.videoEmbedUrl : videoEmbedUrl // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,posterUrl: freezed == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String?,originalUrl: freezed == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String?,miniUrl: freezed == miniUrl ? _self.miniUrl : miniUrl // ignore: cast_nullable_to_non_nullable
as String?,smallUrl: freezed == smallUrl ? _self.smallUrl : smallUrl // ignore: cast_nullable_to_non_nullable
as String?,mediumUrl: freezed == mediumUrl ? _self.mediumUrl : mediumUrl // ignore: cast_nullable_to_non_nullable
as String?,largeUrl: freezed == largeUrl ? _self.largeUrl : largeUrl // ignore: cast_nullable_to_non_nullable
as String?,xlargeUrl: freezed == xlargeUrl ? _self.xlargeUrl : xlargeUrl // ignore: cast_nullable_to_non_nullable
as String?,ogImageUrl: freezed == ogImageUrl ? _self.ogImageUrl : ogImageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$OptionType {

 String get id; String get name; String get label; int get position;@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind get kind;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of OptionType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionTypeCopyWith<OptionType> get copyWith => _$OptionTypeCopyWithImpl<OptionType>(this as OptionType, _$identity);

  /// Serializes this OptionType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OptionType;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionType&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OptionType;
  return Object.hash(runtimeType,_this.id,_this.name,_this.label,_this.position,_this.kind,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as OptionType;
  return 'OptionType(id: ${_this.id}, name: ${_this.name}, label: ${_this.label}, position: ${_this.position}, kind: ${_this.kind}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $OptionTypeCopyWith<$Res>  {
  factory $OptionTypeCopyWith(OptionType value, $Res Function(OptionType) _then) = _$OptionTypeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String label, int position,@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind kind,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$OptionTypeCopyWithImpl<$Res>
    implements $OptionTypeCopyWith<$Res> {
  _$OptionTypeCopyWithImpl(this._self, this._then);

  final OptionType _self;
  final $Res Function(OptionType) _then;

/// Create a copy of OptionType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? label = null,Object? position = null,Object? kind = null,Object? customFields = freezed,}) {
  return _then(OptionType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OptionTypeKind,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionType].
extension OptionTypePatterns on OptionType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionType value)  $default,){
final _that = this;
switch (_that) {
case _OptionType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionType value)?  $default,){
final _that = this;
switch (_that) {
case _OptionType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String label,  int position, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionType() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.position,_that.kind,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String label,  int position, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _OptionType():
return $default(_that.id,_that.name,_that.label,_that.position,_that.kind,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String label,  int position, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _OptionType() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.position,_that.kind,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OptionType extends OptionType {
  const _OptionType({required this.id, required this.name, required this.label, required this.position, @JsonKey(unknownEnumValue: OptionTypeKind.unknown) required this.kind, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _OptionType.fromJson(Map<String, dynamic> json) => _$OptionTypeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String label;
@override final  int position;
@override@JsonKey(unknownEnumValue: OptionTypeKind.unknown) final  OptionTypeKind kind;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of OptionType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionTypeCopyWith<_OptionType> get copyWith => __$OptionTypeCopyWithImpl<_OptionType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionTypeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.position, position) || other.position == position)&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,label,position,kind,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'OptionType(id: $id, name: $name, label: $label, position: $position, kind: $kind, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$OptionTypeCopyWith<$Res> implements $OptionTypeCopyWith<$Res> {
  factory _$OptionTypeCopyWith(_OptionType value, $Res Function(_OptionType) _then) = __$OptionTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String label, int position,@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind kind,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$OptionTypeCopyWithImpl<$Res>
    implements _$OptionTypeCopyWith<$Res> {
  __$OptionTypeCopyWithImpl(this._self, this._then);

  final _OptionType _self;
  final $Res Function(_OptionType) _then;

/// Create a copy of OptionType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? label = null,Object? position = null,Object? kind = null,Object? customFields = freezed,}) {
  return _then(_OptionType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OptionTypeKind,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$OptionValue {

 String get id; String get optionTypeId; String get name; String get label; int get position; String? get colorCode; String get optionTypeName; String get optionTypeLabel; String? get imageUrl;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of OptionValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionValueCopyWith<OptionValue> get copyWith => _$OptionValueCopyWithImpl<OptionValue>(this as OptionValue, _$identity);

  /// Serializes this OptionValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OptionValue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OptionValue&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.optionTypeId, _this.optionTypeId) || other.optionTypeId == _this.optionTypeId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.colorCode, _this.colorCode) || other.colorCode == _this.colorCode)&&(identical(other.optionTypeName, _this.optionTypeName) || other.optionTypeName == _this.optionTypeName)&&(identical(other.optionTypeLabel, _this.optionTypeLabel) || other.optionTypeLabel == _this.optionTypeLabel)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OptionValue;
  return Object.hash(runtimeType,_this.id,_this.optionTypeId,_this.name,_this.label,_this.position,_this.colorCode,_this.optionTypeName,_this.optionTypeLabel,_this.imageUrl,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as OptionValue;
  return 'OptionValue(id: ${_this.id}, optionTypeId: ${_this.optionTypeId}, name: ${_this.name}, label: ${_this.label}, position: ${_this.position}, colorCode: ${_this.colorCode}, optionTypeName: ${_this.optionTypeName}, optionTypeLabel: ${_this.optionTypeLabel}, imageUrl: ${_this.imageUrl}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $OptionValueCopyWith<$Res>  {
  factory $OptionValueCopyWith(OptionValue value, $Res Function(OptionValue) _then) = _$OptionValueCopyWithImpl;
@useResult
$Res call({
 String id, String optionTypeId, String name, String label, int position, String? colorCode, String optionTypeName, String optionTypeLabel, String? imageUrl,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$OptionValueCopyWithImpl<$Res>
    implements $OptionValueCopyWith<$Res> {
  _$OptionValueCopyWithImpl(this._self, this._then);

  final OptionValue _self;
  final $Res Function(OptionValue) _then;

/// Create a copy of OptionValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? optionTypeId = null,Object? name = null,Object? label = null,Object? position = null,Object? colorCode = freezed,Object? optionTypeName = null,Object? optionTypeLabel = null,Object? imageUrl = freezed,Object? customFields = freezed,}) {
  return _then(OptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,optionTypeId: null == optionTypeId ? _self.optionTypeId : optionTypeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,optionTypeName: null == optionTypeName ? _self.optionTypeName : optionTypeName // ignore: cast_nullable_to_non_nullable
as String,optionTypeLabel: null == optionTypeLabel ? _self.optionTypeLabel : optionTypeLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OptionValue].
extension OptionValuePatterns on OptionValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OptionValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OptionValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OptionValue value)  $default,){
final _that = this;
switch (_that) {
case _OptionValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OptionValue value)?  $default,){
final _that = this;
switch (_that) {
case _OptionValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String optionTypeId,  String name,  String label,  int position,  String? colorCode,  String optionTypeName,  String optionTypeLabel,  String? imageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OptionValue() when $default != null:
return $default(_that.id,_that.optionTypeId,_that.name,_that.label,_that.position,_that.colorCode,_that.optionTypeName,_that.optionTypeLabel,_that.imageUrl,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String optionTypeId,  String name,  String label,  int position,  String? colorCode,  String optionTypeName,  String optionTypeLabel,  String? imageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _OptionValue():
return $default(_that.id,_that.optionTypeId,_that.name,_that.label,_that.position,_that.colorCode,_that.optionTypeName,_that.optionTypeLabel,_that.imageUrl,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String optionTypeId,  String name,  String label,  int position,  String? colorCode,  String optionTypeName,  String optionTypeLabel,  String? imageUrl, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _OptionValue() when $default != null:
return $default(_that.id,_that.optionTypeId,_that.name,_that.label,_that.position,_that.colorCode,_that.optionTypeName,_that.optionTypeLabel,_that.imageUrl,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OptionValue extends OptionValue {
  const _OptionValue({required this.id, required this.optionTypeId, required this.name, required this.label, required this.position, this.colorCode, required this.optionTypeName, required this.optionTypeLabel, this.imageUrl, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _OptionValue.fromJson(Map<String, dynamic> json) => _$OptionValueFromJson(json);

@override final  String id;
@override final  String optionTypeId;
@override final  String name;
@override final  String label;
@override final  int position;
@override final  String? colorCode;
@override final  String optionTypeName;
@override final  String optionTypeLabel;
@override final  String? imageUrl;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of OptionValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionValueCopyWith<_OptionValue> get copyWith => __$OptionValueCopyWithImpl<_OptionValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionValueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OptionValue&&(identical(other.id, id) || other.id == id)&&(identical(other.optionTypeId, optionTypeId) || other.optionTypeId == optionTypeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.position, position) || other.position == position)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.optionTypeName, optionTypeName) || other.optionTypeName == optionTypeName)&&(identical(other.optionTypeLabel, optionTypeLabel) || other.optionTypeLabel == optionTypeLabel)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,optionTypeId,name,label,position,colorCode,optionTypeName,optionTypeLabel,imageUrl,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'OptionValue(id: $id, optionTypeId: $optionTypeId, name: $name, label: $label, position: $position, colorCode: $colorCode, optionTypeName: $optionTypeName, optionTypeLabel: $optionTypeLabel, imageUrl: $imageUrl, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$OptionValueCopyWith<$Res> implements $OptionValueCopyWith<$Res> {
  factory _$OptionValueCopyWith(_OptionValue value, $Res Function(_OptionValue) _then) = __$OptionValueCopyWithImpl;
@override @useResult
$Res call({
 String id, String optionTypeId, String name, String label, int position, String? colorCode, String optionTypeName, String optionTypeLabel, String? imageUrl,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$OptionValueCopyWithImpl<$Res>
    implements _$OptionValueCopyWith<$Res> {
  __$OptionValueCopyWithImpl(this._self, this._then);

  final _OptionValue _self;
  final $Res Function(_OptionValue) _then;

/// Create a copy of OptionValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? optionTypeId = null,Object? name = null,Object? label = null,Object? position = null,Object? colorCode = freezed,Object? optionTypeName = null,Object? optionTypeLabel = null,Object? imageUrl = freezed,Object? customFields = freezed,}) {
  return _then(_OptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,optionTypeId: null == optionTypeId ? _self.optionTypeId : optionTypeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,optionTypeName: null == optionTypeName ? _self.optionTypeName : optionTypeName // ignore: cast_nullable_to_non_nullable
as String,optionTypeLabel: null == optionTypeLabel ? _self.optionTypeLabel : optionTypeLabel // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$Variant {

 String get id; String get productId; String? get sku; String get optionsText; bool get trackInventory; int get mediaCount; String? get preorderShipsAt; String? get thumbnailUrl; bool get purchasable; bool get inStock; bool get backorderable; bool get preorder; double? get weight; double? get height; double? get width; double? get depth;@JsonKey(unknownEnumValue: WeightUnit.unknown) WeightUnit get weightUnit;@JsonKey(unknownEnumValue: DimensionUnit.unknown) DimensionUnit get dimensionsUnit; int get minimumOrderQuantity; int get orderMultiple;@JsonKey(unknownEnumValue: PurchaseUnit.unknown) PurchaseUnit get purchaseUnit; int? get unitsPerCarton; Price get price; Price? get originalPrice; String? get sellerId; Seller? get seller; Media? get primaryMedia;@JsonKey(includeIfNull: false) List<Media>? get media; List<OptionValue> get optionValues;@JsonKey(includeIfNull: false) List<CustomField>? get customFields; PriceHistory? get priorPrice;
/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantCopyWith<Variant> get copyWith => _$VariantCopyWithImpl<Variant>(this as Variant, _$identity);

  /// Serializes this Variant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Variant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variant&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.sku, _this.sku) || other.sku == _this.sku)&&(identical(other.optionsText, _this.optionsText) || other.optionsText == _this.optionsText)&&(identical(other.trackInventory, _this.trackInventory) || other.trackInventory == _this.trackInventory)&&(identical(other.mediaCount, _this.mediaCount) || other.mediaCount == _this.mediaCount)&&(identical(other.preorderShipsAt, _this.preorderShipsAt) || other.preorderShipsAt == _this.preorderShipsAt)&&(identical(other.thumbnailUrl, _this.thumbnailUrl) || other.thumbnailUrl == _this.thumbnailUrl)&&(identical(other.purchasable, _this.purchasable) || other.purchasable == _this.purchasable)&&(identical(other.inStock, _this.inStock) || other.inStock == _this.inStock)&&(identical(other.backorderable, _this.backorderable) || other.backorderable == _this.backorderable)&&(identical(other.preorder, _this.preorder) || other.preorder == _this.preorder)&&(identical(other.weight, _this.weight) || other.weight == _this.weight)&&(identical(other.height, _this.height) || other.height == _this.height)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.depth, _this.depth) || other.depth == _this.depth)&&(identical(other.weightUnit, _this.weightUnit) || other.weightUnit == _this.weightUnit)&&(identical(other.dimensionsUnit, _this.dimensionsUnit) || other.dimensionsUnit == _this.dimensionsUnit)&&(identical(other.minimumOrderQuantity, _this.minimumOrderQuantity) || other.minimumOrderQuantity == _this.minimumOrderQuantity)&&(identical(other.orderMultiple, _this.orderMultiple) || other.orderMultiple == _this.orderMultiple)&&(identical(other.purchaseUnit, _this.purchaseUnit) || other.purchaseUnit == _this.purchaseUnit)&&(identical(other.unitsPerCarton, _this.unitsPerCarton) || other.unitsPerCarton == _this.unitsPerCarton)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.originalPrice, _this.originalPrice) || other.originalPrice == _this.originalPrice)&&(identical(other.sellerId, _this.sellerId) || other.sellerId == _this.sellerId)&&(identical(other.seller, _this.seller) || other.seller == _this.seller)&&(identical(other.primaryMedia, _this.primaryMedia) || other.primaryMedia == _this.primaryMedia)&&const DeepCollectionEquality().equals(other.media, _this.media)&&const DeepCollectionEquality().equals(other.optionValues, _this.optionValues)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields)&&(identical(other.priorPrice, _this.priorPrice) || other.priorPrice == _this.priorPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Variant;
  return Object.hashAll([runtimeType,_this.id,_this.productId,_this.sku,_this.optionsText,_this.trackInventory,_this.mediaCount,_this.preorderShipsAt,_this.thumbnailUrl,_this.purchasable,_this.inStock,_this.backorderable,_this.preorder,_this.weight,_this.height,_this.width,_this.depth,_this.weightUnit,_this.dimensionsUnit,_this.minimumOrderQuantity,_this.orderMultiple,_this.purchaseUnit,_this.unitsPerCarton,_this.price,_this.originalPrice,_this.sellerId,_this.seller,_this.primaryMedia,const DeepCollectionEquality().hash(_this.media),const DeepCollectionEquality().hash(_this.optionValues),const DeepCollectionEquality().hash(_this.customFields),_this.priorPrice]);
}

@override
String toString() {
  final _this = this as Variant;
  return 'Variant(id: ${_this.id}, productId: ${_this.productId}, sku: ${_this.sku}, optionsText: ${_this.optionsText}, trackInventory: ${_this.trackInventory}, mediaCount: ${_this.mediaCount}, preorderShipsAt: ${_this.preorderShipsAt}, thumbnailUrl: ${_this.thumbnailUrl}, purchasable: ${_this.purchasable}, inStock: ${_this.inStock}, backorderable: ${_this.backorderable}, preorder: ${_this.preorder}, weight: ${_this.weight}, height: ${_this.height}, width: ${_this.width}, depth: ${_this.depth}, weightUnit: ${_this.weightUnit}, dimensionsUnit: ${_this.dimensionsUnit}, minimumOrderQuantity: ${_this.minimumOrderQuantity}, orderMultiple: ${_this.orderMultiple}, purchaseUnit: ${_this.purchaseUnit}, unitsPerCarton: ${_this.unitsPerCarton}, price: ${_this.price}, originalPrice: ${_this.originalPrice}, sellerId: ${_this.sellerId}, seller: ${_this.seller}, primaryMedia: ${_this.primaryMedia}, media: ${_this.media}, optionValues: ${_this.optionValues}, customFields: ${_this.customFields}, priorPrice: ${_this.priorPrice})';
}


}

/// @nodoc
abstract mixin class $VariantCopyWith<$Res>  {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) _then) = _$VariantCopyWithImpl;
@useResult
$Res call({
 String id, String productId, String? sku, String optionsText, bool trackInventory, int mediaCount, String? preorderShipsAt, String? thumbnailUrl, bool purchasable, bool inStock, bool backorderable, bool preorder, double? weight, double? height, double? width, double? depth,@JsonKey(unknownEnumValue: WeightUnit.unknown) WeightUnit weightUnit,@JsonKey(unknownEnumValue: DimensionUnit.unknown) DimensionUnit dimensionsUnit, int minimumOrderQuantity, int orderMultiple,@JsonKey(unknownEnumValue: PurchaseUnit.unknown) PurchaseUnit purchaseUnit, int? unitsPerCarton, Price price, Price? originalPrice, String? sellerId, Seller? seller, Media? primaryMedia,@JsonKey(includeIfNull: false) List<Media>? media, List<OptionValue> optionValues,@JsonKey(includeIfNull: false) List<CustomField>? customFields, PriceHistory? priorPrice
});


$PriceCopyWith<$Res> get price;$PriceCopyWith<$Res>? get originalPrice;$SellerCopyWith<$Res>? get seller;$MediaCopyWith<$Res>? get primaryMedia;$PriceHistoryCopyWith<$Res>? get priorPrice;

}
/// @nodoc
class _$VariantCopyWithImpl<$Res>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._self, this._then);

  final Variant _self;
  final $Res Function(Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? sku = freezed,Object? optionsText = null,Object? trackInventory = null,Object? mediaCount = null,Object? preorderShipsAt = freezed,Object? thumbnailUrl = freezed,Object? purchasable = null,Object? inStock = null,Object? backorderable = null,Object? preorder = null,Object? weight = freezed,Object? height = freezed,Object? width = freezed,Object? depth = freezed,Object? weightUnit = null,Object? dimensionsUnit = null,Object? minimumOrderQuantity = null,Object? orderMultiple = null,Object? purchaseUnit = null,Object? unitsPerCarton = freezed,Object? price = null,Object? originalPrice = freezed,Object? sellerId = freezed,Object? seller = freezed,Object? primaryMedia = freezed,Object? media = freezed,Object? optionValues = null,Object? customFields = freezed,Object? priorPrice = freezed,}) {
  return _then(Variant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,optionsText: null == optionsText ? _self.optionsText : optionsText // ignore: cast_nullable_to_non_nullable
as String,trackInventory: null == trackInventory ? _self.trackInventory : trackInventory // ignore: cast_nullable_to_non_nullable
as bool,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,purchasable: null == purchasable ? _self.purchasable : purchasable // ignore: cast_nullable_to_non_nullable
as bool,inStock: null == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool,backorderable: null == backorderable ? _self.backorderable : backorderable // ignore: cast_nullable_to_non_nullable
as bool,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double?,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as WeightUnit,dimensionsUnit: null == dimensionsUnit ? _self.dimensionsUnit : dimensionsUnit // ignore: cast_nullable_to_non_nullable
as DimensionUnit,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,orderMultiple: null == orderMultiple ? _self.orderMultiple : orderMultiple // ignore: cast_nullable_to_non_nullable
as int,purchaseUnit: null == purchaseUnit ? _self.purchaseUnit : purchaseUnit // ignore: cast_nullable_to_non_nullable
as PurchaseUnit,unitsPerCarton: freezed == unitsPerCarton ? _self.unitsPerCarton : unitsPerCarton // ignore: cast_nullable_to_non_nullable
as int?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as Price?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,primaryMedia: freezed == primaryMedia ? _self.primaryMedia : primaryMedia // ignore: cast_nullable_to_non_nullable
as Media?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Media>?,optionValues: null == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,priorPrice: freezed == priorPrice ? _self.priorPrice : priorPrice // ignore: cast_nullable_to_non_nullable
as PriceHistory?,
  ));
}
/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaCopyWith<$Res>? get primaryMedia {
    if (_self.primaryMedia == null) {
    return null;
  }

  return $MediaCopyWith<$Res>(_self.primaryMedia!, (value) {
    return _then(_self.copyWith(primaryMedia: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceHistoryCopyWith<$Res>? get priorPrice {
    if (_self.priorPrice == null) {
    return null;
  }

  return $PriceHistoryCopyWith<$Res>(_self.priorPrice!, (value) {
    return _then(_self.copyWith(priorPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [Variant].
extension VariantPatterns on Variant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Variant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Variant value)  $default,){
final _that = this;
switch (_that) {
case _Variant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Variant value)?  $default,){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  String? sku,  String optionsText,  bool trackInventory,  int mediaCount,  String? preorderShipsAt,  String? thumbnailUrl,  bool purchasable,  bool inStock,  bool backorderable,  bool preorder,  double? weight,  double? height,  double? width,  double? depth, @JsonKey(unknownEnumValue: WeightUnit.unknown)  WeightUnit weightUnit, @JsonKey(unknownEnumValue: DimensionUnit.unknown)  DimensionUnit dimensionsUnit,  int minimumOrderQuantity,  int orderMultiple, @JsonKey(unknownEnumValue: PurchaseUnit.unknown)  PurchaseUnit purchaseUnit,  int? unitsPerCarton,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
return $default(_that.id,_that.productId,_that.sku,_that.optionsText,_that.trackInventory,_that.mediaCount,_that.preorderShipsAt,_that.thumbnailUrl,_that.purchasable,_that.inStock,_that.backorderable,_that.preorder,_that.weight,_that.height,_that.width,_that.depth,_that.weightUnit,_that.dimensionsUnit,_that.minimumOrderQuantity,_that.orderMultiple,_that.purchaseUnit,_that.unitsPerCarton,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.optionValues,_that.customFields,_that.priorPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  String? sku,  String optionsText,  bool trackInventory,  int mediaCount,  String? preorderShipsAt,  String? thumbnailUrl,  bool purchasable,  bool inStock,  bool backorderable,  bool preorder,  double? weight,  double? height,  double? width,  double? depth, @JsonKey(unknownEnumValue: WeightUnit.unknown)  WeightUnit weightUnit, @JsonKey(unknownEnumValue: DimensionUnit.unknown)  DimensionUnit dimensionsUnit,  int minimumOrderQuantity,  int orderMultiple, @JsonKey(unknownEnumValue: PurchaseUnit.unknown)  PurchaseUnit purchaseUnit,  int? unitsPerCarton,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)  $default,) {final _that = this;
switch (_that) {
case _Variant():
return $default(_that.id,_that.productId,_that.sku,_that.optionsText,_that.trackInventory,_that.mediaCount,_that.preorderShipsAt,_that.thumbnailUrl,_that.purchasable,_that.inStock,_that.backorderable,_that.preorder,_that.weight,_that.height,_that.width,_that.depth,_that.weightUnit,_that.dimensionsUnit,_that.minimumOrderQuantity,_that.orderMultiple,_that.purchaseUnit,_that.unitsPerCarton,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.optionValues,_that.customFields,_that.priorPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  String? sku,  String optionsText,  bool trackInventory,  int mediaCount,  String? preorderShipsAt,  String? thumbnailUrl,  bool purchasable,  bool inStock,  bool backorderable,  bool preorder,  double? weight,  double? height,  double? width,  double? depth, @JsonKey(unknownEnumValue: WeightUnit.unknown)  WeightUnit weightUnit, @JsonKey(unknownEnumValue: DimensionUnit.unknown)  DimensionUnit dimensionsUnit,  int minimumOrderQuantity,  int orderMultiple, @JsonKey(unknownEnumValue: PurchaseUnit.unknown)  PurchaseUnit purchaseUnit,  int? unitsPerCarton,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)?  $default,) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
return $default(_that.id,_that.productId,_that.sku,_that.optionsText,_that.trackInventory,_that.mediaCount,_that.preorderShipsAt,_that.thumbnailUrl,_that.purchasable,_that.inStock,_that.backorderable,_that.preorder,_that.weight,_that.height,_that.width,_that.depth,_that.weightUnit,_that.dimensionsUnit,_that.minimumOrderQuantity,_that.orderMultiple,_that.purchaseUnit,_that.unitsPerCarton,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.optionValues,_that.customFields,_that.priorPrice);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Variant extends Variant {
  const _Variant({required this.id, required this.productId, this.sku, required this.optionsText, required this.trackInventory, required this.mediaCount, this.preorderShipsAt, this.thumbnailUrl, required this.purchasable, required this.inStock, required this.backorderable, required this.preorder, this.weight, this.height, this.width, this.depth, @JsonKey(unknownEnumValue: WeightUnit.unknown) required this.weightUnit, @JsonKey(unknownEnumValue: DimensionUnit.unknown) required this.dimensionsUnit, required this.minimumOrderQuantity, required this.orderMultiple, @JsonKey(unknownEnumValue: PurchaseUnit.unknown) required this.purchaseUnit, this.unitsPerCarton, required this.price, this.originalPrice, this.sellerId, this.seller, this.primaryMedia, @JsonKey(includeIfNull: false) this.media, required this.optionValues, @JsonKey(includeIfNull: false) this.customFields, this.priorPrice}): super._();
  factory _Variant.fromJson(Map<String, dynamic> json) => _$VariantFromJson(json);

@override final  String id;
@override final  String productId;
@override final  String? sku;
@override final  String optionsText;
@override final  bool trackInventory;
@override final  int mediaCount;
@override final  String? preorderShipsAt;
@override final  String? thumbnailUrl;
@override final  bool purchasable;
@override final  bool inStock;
@override final  bool backorderable;
@override final  bool preorder;
@override final  double? weight;
@override final  double? height;
@override final  double? width;
@override final  double? depth;
@override@JsonKey(unknownEnumValue: WeightUnit.unknown) final  WeightUnit weightUnit;
@override@JsonKey(unknownEnumValue: DimensionUnit.unknown) final  DimensionUnit dimensionsUnit;
@override final  int minimumOrderQuantity;
@override final  int orderMultiple;
@override@JsonKey(unknownEnumValue: PurchaseUnit.unknown) final  PurchaseUnit purchaseUnit;
@override final  int? unitsPerCarton;
@override final  Price price;
@override final  Price? originalPrice;
@override final  String? sellerId;
@override final  Seller? seller;
@override final  Media? primaryMedia;
@override@JsonKey(includeIfNull: false) final  List<Media>? media;
@override final  List<OptionValue> optionValues;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;
@override final  PriceHistory? priorPrice;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantCopyWith<_Variant> get copyWith => __$VariantCopyWithImpl<_Variant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variant&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.optionsText, optionsText) || other.optionsText == optionsText)&&(identical(other.trackInventory, trackInventory) || other.trackInventory == trackInventory)&&(identical(other.mediaCount, mediaCount) || other.mediaCount == mediaCount)&&(identical(other.preorderShipsAt, preorderShipsAt) || other.preorderShipsAt == preorderShipsAt)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.purchasable, purchasable) || other.purchasable == purchasable)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&(identical(other.backorderable, backorderable) || other.backorderable == backorderable)&&(identical(other.preorder, preorder) || other.preorder == preorder)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.width, width) || other.width == width)&&(identical(other.depth, depth) || other.depth == depth)&&(identical(other.weightUnit, weightUnit) || other.weightUnit == weightUnit)&&(identical(other.dimensionsUnit, dimensionsUnit) || other.dimensionsUnit == dimensionsUnit)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.orderMultiple, orderMultiple) || other.orderMultiple == orderMultiple)&&(identical(other.purchaseUnit, purchaseUnit) || other.purchaseUnit == purchaseUnit)&&(identical(other.unitsPerCarton, unitsPerCarton) || other.unitsPerCarton == unitsPerCarton)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.primaryMedia, primaryMedia) || other.primaryMedia == primaryMedia)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.optionValues, optionValues)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&(identical(other.priorPrice, priorPrice) || other.priorPrice == priorPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,productId,sku,optionsText,trackInventory,mediaCount,preorderShipsAt,thumbnailUrl,purchasable,inStock,backorderable,preorder,weight,height,width,depth,weightUnit,dimensionsUnit,minimumOrderQuantity,orderMultiple,purchaseUnit,unitsPerCarton,price,originalPrice,sellerId,seller,primaryMedia,const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(optionValues),const DeepCollectionEquality().hash(customFields),priorPrice]);
}

@override
String toString() {
    return 'Variant(id: $id, productId: $productId, sku: $sku, optionsText: $optionsText, trackInventory: $trackInventory, mediaCount: $mediaCount, preorderShipsAt: $preorderShipsAt, thumbnailUrl: $thumbnailUrl, purchasable: $purchasable, inStock: $inStock, backorderable: $backorderable, preorder: $preorder, weight: $weight, height: $height, width: $width, depth: $depth, weightUnit: $weightUnit, dimensionsUnit: $dimensionsUnit, minimumOrderQuantity: $minimumOrderQuantity, orderMultiple: $orderMultiple, purchaseUnit: $purchaseUnit, unitsPerCarton: $unitsPerCarton, price: $price, originalPrice: $originalPrice, sellerId: $sellerId, seller: $seller, primaryMedia: $primaryMedia, media: $media, optionValues: $optionValues, customFields: $customFields, priorPrice: $priorPrice)';
}


}

/// @nodoc
abstract mixin class _$VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$VariantCopyWith(_Variant value, $Res Function(_Variant) _then) = __$VariantCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, String? sku, String optionsText, bool trackInventory, int mediaCount, String? preorderShipsAt, String? thumbnailUrl, bool purchasable, bool inStock, bool backorderable, bool preorder, double? weight, double? height, double? width, double? depth,@JsonKey(unknownEnumValue: WeightUnit.unknown) WeightUnit weightUnit,@JsonKey(unknownEnumValue: DimensionUnit.unknown) DimensionUnit dimensionsUnit, int minimumOrderQuantity, int orderMultiple,@JsonKey(unknownEnumValue: PurchaseUnit.unknown) PurchaseUnit purchaseUnit, int? unitsPerCarton, Price price, Price? originalPrice, String? sellerId, Seller? seller, Media? primaryMedia,@JsonKey(includeIfNull: false) List<Media>? media, List<OptionValue> optionValues,@JsonKey(includeIfNull: false) List<CustomField>? customFields, PriceHistory? priorPrice
});


@override $PriceCopyWith<$Res> get price;@override $PriceCopyWith<$Res>? get originalPrice;@override $SellerCopyWith<$Res>? get seller;@override $MediaCopyWith<$Res>? get primaryMedia;@override $PriceHistoryCopyWith<$Res>? get priorPrice;

}
/// @nodoc
class __$VariantCopyWithImpl<$Res>
    implements _$VariantCopyWith<$Res> {
  __$VariantCopyWithImpl(this._self, this._then);

  final _Variant _self;
  final $Res Function(_Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? sku = freezed,Object? optionsText = null,Object? trackInventory = null,Object? mediaCount = null,Object? preorderShipsAt = freezed,Object? thumbnailUrl = freezed,Object? purchasable = null,Object? inStock = null,Object? backorderable = null,Object? preorder = null,Object? weight = freezed,Object? height = freezed,Object? width = freezed,Object? depth = freezed,Object? weightUnit = null,Object? dimensionsUnit = null,Object? minimumOrderQuantity = null,Object? orderMultiple = null,Object? purchaseUnit = null,Object? unitsPerCarton = freezed,Object? price = null,Object? originalPrice = freezed,Object? sellerId = freezed,Object? seller = freezed,Object? primaryMedia = freezed,Object? media = freezed,Object? optionValues = null,Object? customFields = freezed,Object? priorPrice = freezed,}) {
  return _then(_Variant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,optionsText: null == optionsText ? _self.optionsText : optionsText // ignore: cast_nullable_to_non_nullable
as String,trackInventory: null == trackInventory ? _self.trackInventory : trackInventory // ignore: cast_nullable_to_non_nullable
as bool,mediaCount: null == mediaCount ? _self.mediaCount : mediaCount // ignore: cast_nullable_to_non_nullable
as int,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,purchasable: null == purchasable ? _self.purchasable : purchasable // ignore: cast_nullable_to_non_nullable
as bool,inStock: null == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool,backorderable: null == backorderable ? _self.backorderable : backorderable // ignore: cast_nullable_to_non_nullable
as bool,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double?,weightUnit: null == weightUnit ? _self.weightUnit : weightUnit // ignore: cast_nullable_to_non_nullable
as WeightUnit,dimensionsUnit: null == dimensionsUnit ? _self.dimensionsUnit : dimensionsUnit // ignore: cast_nullable_to_non_nullable
as DimensionUnit,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,orderMultiple: null == orderMultiple ? _self.orderMultiple : orderMultiple // ignore: cast_nullable_to_non_nullable
as int,purchaseUnit: null == purchaseUnit ? _self.purchaseUnit : purchaseUnit // ignore: cast_nullable_to_non_nullable
as PurchaseUnit,unitsPerCarton: freezed == unitsPerCarton ? _self.unitsPerCarton : unitsPerCarton // ignore: cast_nullable_to_non_nullable
as int?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as Price?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,primaryMedia: freezed == primaryMedia ? _self.primaryMedia : primaryMedia // ignore: cast_nullable_to_non_nullable
as Media?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Media>?,optionValues: null == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,priorPrice: freezed == priorPrice ? _self.priorPrice : priorPrice // ignore: cast_nullable_to_non_nullable
as PriceHistory?,
  ));
}

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaCopyWith<$Res>? get primaryMedia {
    if (_self.primaryMedia == null) {
    return null;
  }

  return $MediaCopyWith<$Res>(_self.primaryMedia!, (value) {
    return _then(_self.copyWith(primaryMedia: value));
  });
}/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceHistoryCopyWith<$Res>? get priorPrice {
    if (_self.priorPrice == null) {
    return null;
  }

  return $PriceHistoryCopyWith<$Res>(_self.priorPrice!, (value) {
    return _then(_self.copyWith(priorPrice: value));
  });
}
}


/// @nodoc
mixin _$Product {

 String get id; String get name; String get slug; String? get metaTitle; String? get metaDescription; String? get metaKeywords; int get variantCount; String? get availableOn; String? get preorderShipsAt; bool get purchasable; bool get preorder; bool get inStock; bool get backorderable; bool get available; String? get description; String? get descriptionHtml; String get defaultVariantId; String? get buyBoxVariantId; String? get thumbnailUrl; List<String> get tags; Price get price; Price? get originalPrice; String? get sellerId; Seller? get seller; Media? get primaryMedia;@JsonKey(includeIfNull: false) List<Media>? get media;@JsonKey(includeIfNull: false) List<Variant>? get variants; Variant? get defaultVariant;@JsonKey(includeIfNull: false) List<OptionType>? get optionTypes;@JsonKey(includeIfNull: false) List<OptionValue>? get optionValues;@JsonKey(includeIfNull: false) List<Category>? get categories;@JsonKey(includeIfNull: false) List<CustomField>? get customFields; PriceHistory? get priorPrice;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Product;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.metaTitle, _this.metaTitle) || other.metaTitle == _this.metaTitle)&&(identical(other.metaDescription, _this.metaDescription) || other.metaDescription == _this.metaDescription)&&(identical(other.metaKeywords, _this.metaKeywords) || other.metaKeywords == _this.metaKeywords)&&(identical(other.variantCount, _this.variantCount) || other.variantCount == _this.variantCount)&&(identical(other.availableOn, _this.availableOn) || other.availableOn == _this.availableOn)&&(identical(other.preorderShipsAt, _this.preorderShipsAt) || other.preorderShipsAt == _this.preorderShipsAt)&&(identical(other.purchasable, _this.purchasable) || other.purchasable == _this.purchasable)&&(identical(other.preorder, _this.preorder) || other.preorder == _this.preorder)&&(identical(other.inStock, _this.inStock) || other.inStock == _this.inStock)&&(identical(other.backorderable, _this.backorderable) || other.backorderable == _this.backorderable)&&(identical(other.available, _this.available) || other.available == _this.available)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.descriptionHtml, _this.descriptionHtml) || other.descriptionHtml == _this.descriptionHtml)&&(identical(other.defaultVariantId, _this.defaultVariantId) || other.defaultVariantId == _this.defaultVariantId)&&(identical(other.buyBoxVariantId, _this.buyBoxVariantId) || other.buyBoxVariantId == _this.buyBoxVariantId)&&(identical(other.thumbnailUrl, _this.thumbnailUrl) || other.thumbnailUrl == _this.thumbnailUrl)&&const DeepCollectionEquality().equals(other.tags, _this.tags)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.originalPrice, _this.originalPrice) || other.originalPrice == _this.originalPrice)&&(identical(other.sellerId, _this.sellerId) || other.sellerId == _this.sellerId)&&(identical(other.seller, _this.seller) || other.seller == _this.seller)&&(identical(other.primaryMedia, _this.primaryMedia) || other.primaryMedia == _this.primaryMedia)&&const DeepCollectionEquality().equals(other.media, _this.media)&&const DeepCollectionEquality().equals(other.variants, _this.variants)&&(identical(other.defaultVariant, _this.defaultVariant) || other.defaultVariant == _this.defaultVariant)&&const DeepCollectionEquality().equals(other.optionTypes, _this.optionTypes)&&const DeepCollectionEquality().equals(other.optionValues, _this.optionValues)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields)&&(identical(other.priorPrice, _this.priorPrice) || other.priorPrice == _this.priorPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Product;
  return Object.hashAll([runtimeType,_this.id,_this.name,_this.slug,_this.metaTitle,_this.metaDescription,_this.metaKeywords,_this.variantCount,_this.availableOn,_this.preorderShipsAt,_this.purchasable,_this.preorder,_this.inStock,_this.backorderable,_this.available,_this.description,_this.descriptionHtml,_this.defaultVariantId,_this.buyBoxVariantId,_this.thumbnailUrl,const DeepCollectionEquality().hash(_this.tags),_this.price,_this.originalPrice,_this.sellerId,_this.seller,_this.primaryMedia,const DeepCollectionEquality().hash(_this.media),const DeepCollectionEquality().hash(_this.variants),_this.defaultVariant,const DeepCollectionEquality().hash(_this.optionTypes),const DeepCollectionEquality().hash(_this.optionValues),const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.customFields),_this.priorPrice]);
}

@override
String toString() {
  final _this = this as Product;
  return 'Product(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, metaTitle: ${_this.metaTitle}, metaDescription: ${_this.metaDescription}, metaKeywords: ${_this.metaKeywords}, variantCount: ${_this.variantCount}, availableOn: ${_this.availableOn}, preorderShipsAt: ${_this.preorderShipsAt}, purchasable: ${_this.purchasable}, preorder: ${_this.preorder}, inStock: ${_this.inStock}, backorderable: ${_this.backorderable}, available: ${_this.available}, description: ${_this.description}, descriptionHtml: ${_this.descriptionHtml}, defaultVariantId: ${_this.defaultVariantId}, buyBoxVariantId: ${_this.buyBoxVariantId}, thumbnailUrl: ${_this.thumbnailUrl}, tags: ${_this.tags}, price: ${_this.price}, originalPrice: ${_this.originalPrice}, sellerId: ${_this.sellerId}, seller: ${_this.seller}, primaryMedia: ${_this.primaryMedia}, media: ${_this.media}, variants: ${_this.variants}, defaultVariant: ${_this.defaultVariant}, optionTypes: ${_this.optionTypes}, optionValues: ${_this.optionValues}, categories: ${_this.categories}, customFields: ${_this.customFields}, priorPrice: ${_this.priorPrice})';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? metaTitle, String? metaDescription, String? metaKeywords, int variantCount, String? availableOn, String? preorderShipsAt, bool purchasable, bool preorder, bool inStock, bool backorderable, bool available, String? description, String? descriptionHtml, String defaultVariantId, String? buyBoxVariantId, String? thumbnailUrl, List<String> tags, Price price, Price? originalPrice, String? sellerId, Seller? seller, Media? primaryMedia,@JsonKey(includeIfNull: false) List<Media>? media,@JsonKey(includeIfNull: false) List<Variant>? variants, Variant? defaultVariant,@JsonKey(includeIfNull: false) List<OptionType>? optionTypes,@JsonKey(includeIfNull: false) List<OptionValue>? optionValues,@JsonKey(includeIfNull: false) List<Category>? categories,@JsonKey(includeIfNull: false) List<CustomField>? customFields, PriceHistory? priorPrice
});


$PriceCopyWith<$Res> get price;$PriceCopyWith<$Res>? get originalPrice;$SellerCopyWith<$Res>? get seller;$MediaCopyWith<$Res>? get primaryMedia;$VariantCopyWith<$Res>? get defaultVariant;$PriceHistoryCopyWith<$Res>? get priorPrice;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? variantCount = null,Object? availableOn = freezed,Object? preorderShipsAt = freezed,Object? purchasable = null,Object? preorder = null,Object? inStock = null,Object? backorderable = null,Object? available = null,Object? description = freezed,Object? descriptionHtml = freezed,Object? defaultVariantId = null,Object? buyBoxVariantId = freezed,Object? thumbnailUrl = freezed,Object? tags = null,Object? price = null,Object? originalPrice = freezed,Object? sellerId = freezed,Object? seller = freezed,Object? primaryMedia = freezed,Object? media = freezed,Object? variants = freezed,Object? defaultVariant = freezed,Object? optionTypes = freezed,Object? optionValues = freezed,Object? categories = freezed,Object? customFields = freezed,Object? priorPrice = freezed,}) {
  return _then(Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,variantCount: null == variantCount ? _self.variantCount : variantCount // ignore: cast_nullable_to_non_nullable
as int,availableOn: freezed == availableOn ? _self.availableOn : availableOn // ignore: cast_nullable_to_non_nullable
as String?,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,purchasable: null == purchasable ? _self.purchasable : purchasable // ignore: cast_nullable_to_non_nullable
as bool,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,inStock: null == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool,backorderable: null == backorderable ? _self.backorderable : backorderable // ignore: cast_nullable_to_non_nullable
as bool,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionHtml: freezed == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String?,defaultVariantId: null == defaultVariantId ? _self.defaultVariantId : defaultVariantId // ignore: cast_nullable_to_non_nullable
as String,buyBoxVariantId: freezed == buyBoxVariantId ? _self.buyBoxVariantId : buyBoxVariantId // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as Price?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,primaryMedia: freezed == primaryMedia ? _self.primaryMedia : primaryMedia // ignore: cast_nullable_to_non_nullable
as Media?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Media>?,variants: freezed == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<Variant>?,defaultVariant: freezed == defaultVariant ? _self.defaultVariant : defaultVariant // ignore: cast_nullable_to_non_nullable
as Variant?,optionTypes: freezed == optionTypes ? _self.optionTypes : optionTypes // ignore: cast_nullable_to_non_nullable
as List<OptionType>?,optionValues: freezed == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,priorPrice: freezed == priorPrice ? _self.priorPrice : priorPrice // ignore: cast_nullable_to_non_nullable
as PriceHistory?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaCopyWith<$Res>? get primaryMedia {
    if (_self.primaryMedia == null) {
    return null;
  }

  return $MediaCopyWith<$Res>(_self.primaryMedia!, (value) {
    return _then(_self.copyWith(primaryMedia: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariantCopyWith<$Res>? get defaultVariant {
    if (_self.defaultVariant == null) {
    return null;
  }

  return $VariantCopyWith<$Res>(_self.defaultVariant!, (value) {
    return _then(_self.copyWith(defaultVariant: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceHistoryCopyWith<$Res>? get priorPrice {
    if (_self.priorPrice == null) {
    return null;
  }

  return $PriceHistoryCopyWith<$Res>(_self.priorPrice!, (value) {
    return _then(_self.copyWith(priorPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int variantCount,  String? availableOn,  String? preorderShipsAt,  bool purchasable,  bool preorder,  bool inStock,  bool backorderable,  bool available,  String? description,  String? descriptionHtml,  String defaultVariantId,  String? buyBoxVariantId,  String? thumbnailUrl,  List<String> tags,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media, @JsonKey(includeIfNull: false)  List<Variant>? variants,  Variant? defaultVariant, @JsonKey(includeIfNull: false)  List<OptionType>? optionTypes, @JsonKey(includeIfNull: false)  List<OptionValue>? optionValues, @JsonKey(includeIfNull: false)  List<Category>? categories, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.variantCount,_that.availableOn,_that.preorderShipsAt,_that.purchasable,_that.preorder,_that.inStock,_that.backorderable,_that.available,_that.description,_that.descriptionHtml,_that.defaultVariantId,_that.buyBoxVariantId,_that.thumbnailUrl,_that.tags,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.variants,_that.defaultVariant,_that.optionTypes,_that.optionValues,_that.categories,_that.customFields,_that.priorPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int variantCount,  String? availableOn,  String? preorderShipsAt,  bool purchasable,  bool preorder,  bool inStock,  bool backorderable,  bool available,  String? description,  String? descriptionHtml,  String defaultVariantId,  String? buyBoxVariantId,  String? thumbnailUrl,  List<String> tags,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media, @JsonKey(includeIfNull: false)  List<Variant>? variants,  Variant? defaultVariant, @JsonKey(includeIfNull: false)  List<OptionType>? optionTypes, @JsonKey(includeIfNull: false)  List<OptionValue>? optionValues, @JsonKey(includeIfNull: false)  List<Category>? categories, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.slug,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.variantCount,_that.availableOn,_that.preorderShipsAt,_that.purchasable,_that.preorder,_that.inStock,_that.backorderable,_that.available,_that.description,_that.descriptionHtml,_that.defaultVariantId,_that.buyBoxVariantId,_that.thumbnailUrl,_that.tags,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.variants,_that.defaultVariant,_that.optionTypes,_that.optionValues,_that.categories,_that.customFields,_that.priorPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? metaTitle,  String? metaDescription,  String? metaKeywords,  int variantCount,  String? availableOn,  String? preorderShipsAt,  bool purchasable,  bool preorder,  bool inStock,  bool backorderable,  bool available,  String? description,  String? descriptionHtml,  String defaultVariantId,  String? buyBoxVariantId,  String? thumbnailUrl,  List<String> tags,  Price price,  Price? originalPrice,  String? sellerId,  Seller? seller,  Media? primaryMedia, @JsonKey(includeIfNull: false)  List<Media>? media, @JsonKey(includeIfNull: false)  List<Variant>? variants,  Variant? defaultVariant, @JsonKey(includeIfNull: false)  List<OptionType>? optionTypes, @JsonKey(includeIfNull: false)  List<OptionValue>? optionValues, @JsonKey(includeIfNull: false)  List<Category>? categories, @JsonKey(includeIfNull: false)  List<CustomField>? customFields,  PriceHistory? priorPrice)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.metaTitle,_that.metaDescription,_that.metaKeywords,_that.variantCount,_that.availableOn,_that.preorderShipsAt,_that.purchasable,_that.preorder,_that.inStock,_that.backorderable,_that.available,_that.description,_that.descriptionHtml,_that.defaultVariantId,_that.buyBoxVariantId,_that.thumbnailUrl,_that.tags,_that.price,_that.originalPrice,_that.sellerId,_that.seller,_that.primaryMedia,_that.media,_that.variants,_that.defaultVariant,_that.optionTypes,_that.optionValues,_that.categories,_that.customFields,_that.priorPrice);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Product extends Product {
  const _Product({required this.id, required this.name, required this.slug, this.metaTitle, this.metaDescription, this.metaKeywords, required this.variantCount, this.availableOn, this.preorderShipsAt, required this.purchasable, required this.preorder, required this.inStock, required this.backorderable, required this.available, this.description, this.descriptionHtml, required this.defaultVariantId, this.buyBoxVariantId, this.thumbnailUrl, required this.tags, required this.price, this.originalPrice, this.sellerId, this.seller, this.primaryMedia, @JsonKey(includeIfNull: false) this.media, @JsonKey(includeIfNull: false) this.variants, this.defaultVariant, @JsonKey(includeIfNull: false) this.optionTypes, @JsonKey(includeIfNull: false) this.optionValues, @JsonKey(includeIfNull: false) this.categories, @JsonKey(includeIfNull: false) this.customFields, this.priorPrice}): super._();
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? metaTitle;
@override final  String? metaDescription;
@override final  String? metaKeywords;
@override final  int variantCount;
@override final  String? availableOn;
@override final  String? preorderShipsAt;
@override final  bool purchasable;
@override final  bool preorder;
@override final  bool inStock;
@override final  bool backorderable;
@override final  bool available;
@override final  String? description;
@override final  String? descriptionHtml;
@override final  String defaultVariantId;
@override final  String? buyBoxVariantId;
@override final  String? thumbnailUrl;
@override final  List<String> tags;
@override final  Price price;
@override final  Price? originalPrice;
@override final  String? sellerId;
@override final  Seller? seller;
@override final  Media? primaryMedia;
@override@JsonKey(includeIfNull: false) final  List<Media>? media;
@override@JsonKey(includeIfNull: false) final  List<Variant>? variants;
@override final  Variant? defaultVariant;
@override@JsonKey(includeIfNull: false) final  List<OptionType>? optionTypes;
@override@JsonKey(includeIfNull: false) final  List<OptionValue>? optionValues;
@override@JsonKey(includeIfNull: false) final  List<Category>? categories;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;
@override final  PriceHistory? priorPrice;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.variantCount, variantCount) || other.variantCount == variantCount)&&(identical(other.availableOn, availableOn) || other.availableOn == availableOn)&&(identical(other.preorderShipsAt, preorderShipsAt) || other.preorderShipsAt == preorderShipsAt)&&(identical(other.purchasable, purchasable) || other.purchasable == purchasable)&&(identical(other.preorder, preorder) || other.preorder == preorder)&&(identical(other.inStock, inStock) || other.inStock == inStock)&&(identical(other.backorderable, backorderable) || other.backorderable == backorderable)&&(identical(other.available, available) || other.available == available)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionHtml, descriptionHtml) || other.descriptionHtml == descriptionHtml)&&(identical(other.defaultVariantId, defaultVariantId) || other.defaultVariantId == defaultVariantId)&&(identical(other.buyBoxVariantId, buyBoxVariantId) || other.buyBoxVariantId == buyBoxVariantId)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.price, price) || other.price == price)&&(identical(other.originalPrice, originalPrice) || other.originalPrice == originalPrice)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.primaryMedia, primaryMedia) || other.primaryMedia == primaryMedia)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.variants, variants)&&(identical(other.defaultVariant, defaultVariant) || other.defaultVariant == defaultVariant)&&const DeepCollectionEquality().equals(other.optionTypes, optionTypes)&&const DeepCollectionEquality().equals(other.optionValues, optionValues)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.customFields, customFields)&&(identical(other.priorPrice, priorPrice) || other.priorPrice == priorPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,name,slug,metaTitle,metaDescription,metaKeywords,variantCount,availableOn,preorderShipsAt,purchasable,preorder,inStock,backorderable,available,description,descriptionHtml,defaultVariantId,buyBoxVariantId,thumbnailUrl,const DeepCollectionEquality().hash(tags),price,originalPrice,sellerId,seller,primaryMedia,const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(variants),defaultVariant,const DeepCollectionEquality().hash(optionTypes),const DeepCollectionEquality().hash(optionValues),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(customFields),priorPrice]);
}

@override
String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, metaTitle: $metaTitle, metaDescription: $metaDescription, metaKeywords: $metaKeywords, variantCount: $variantCount, availableOn: $availableOn, preorderShipsAt: $preorderShipsAt, purchasable: $purchasable, preorder: $preorder, inStock: $inStock, backorderable: $backorderable, available: $available, description: $description, descriptionHtml: $descriptionHtml, defaultVariantId: $defaultVariantId, buyBoxVariantId: $buyBoxVariantId, thumbnailUrl: $thumbnailUrl, tags: $tags, price: $price, originalPrice: $originalPrice, sellerId: $sellerId, seller: $seller, primaryMedia: $primaryMedia, media: $media, variants: $variants, defaultVariant: $defaultVariant, optionTypes: $optionTypes, optionValues: $optionValues, categories: $categories, customFields: $customFields, priorPrice: $priorPrice)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? metaTitle, String? metaDescription, String? metaKeywords, int variantCount, String? availableOn, String? preorderShipsAt, bool purchasable, bool preorder, bool inStock, bool backorderable, bool available, String? description, String? descriptionHtml, String defaultVariantId, String? buyBoxVariantId, String? thumbnailUrl, List<String> tags, Price price, Price? originalPrice, String? sellerId, Seller? seller, Media? primaryMedia,@JsonKey(includeIfNull: false) List<Media>? media,@JsonKey(includeIfNull: false) List<Variant>? variants, Variant? defaultVariant,@JsonKey(includeIfNull: false) List<OptionType>? optionTypes,@JsonKey(includeIfNull: false) List<OptionValue>? optionValues,@JsonKey(includeIfNull: false) List<Category>? categories,@JsonKey(includeIfNull: false) List<CustomField>? customFields, PriceHistory? priorPrice
});


@override $PriceCopyWith<$Res> get price;@override $PriceCopyWith<$Res>? get originalPrice;@override $SellerCopyWith<$Res>? get seller;@override $MediaCopyWith<$Res>? get primaryMedia;@override $VariantCopyWith<$Res>? get defaultVariant;@override $PriceHistoryCopyWith<$Res>? get priorPrice;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? metaTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? variantCount = null,Object? availableOn = freezed,Object? preorderShipsAt = freezed,Object? purchasable = null,Object? preorder = null,Object? inStock = null,Object? backorderable = null,Object? available = null,Object? description = freezed,Object? descriptionHtml = freezed,Object? defaultVariantId = null,Object? buyBoxVariantId = freezed,Object? thumbnailUrl = freezed,Object? tags = null,Object? price = null,Object? originalPrice = freezed,Object? sellerId = freezed,Object? seller = freezed,Object? primaryMedia = freezed,Object? media = freezed,Object? variants = freezed,Object? defaultVariant = freezed,Object? optionTypes = freezed,Object? optionValues = freezed,Object? categories = freezed,Object? customFields = freezed,Object? priorPrice = freezed,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,metaTitle: freezed == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,variantCount: null == variantCount ? _self.variantCount : variantCount // ignore: cast_nullable_to_non_nullable
as int,availableOn: freezed == availableOn ? _self.availableOn : availableOn // ignore: cast_nullable_to_non_nullable
as String?,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,purchasable: null == purchasable ? _self.purchasable : purchasable // ignore: cast_nullable_to_non_nullable
as bool,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,inStock: null == inStock ? _self.inStock : inStock // ignore: cast_nullable_to_non_nullable
as bool,backorderable: null == backorderable ? _self.backorderable : backorderable // ignore: cast_nullable_to_non_nullable
as bool,available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionHtml: freezed == descriptionHtml ? _self.descriptionHtml : descriptionHtml // ignore: cast_nullable_to_non_nullable
as String?,defaultVariantId: null == defaultVariantId ? _self.defaultVariantId : defaultVariantId // ignore: cast_nullable_to_non_nullable
as String,buyBoxVariantId: freezed == buyBoxVariantId ? _self.buyBoxVariantId : buyBoxVariantId // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price,originalPrice: freezed == originalPrice ? _self.originalPrice : originalPrice // ignore: cast_nullable_to_non_nullable
as Price?,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,primaryMedia: freezed == primaryMedia ? _self.primaryMedia : primaryMedia // ignore: cast_nullable_to_non_nullable
as Media?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<Media>?,variants: freezed == variants ? _self.variants : variants // ignore: cast_nullable_to_non_nullable
as List<Variant>?,defaultVariant: freezed == defaultVariant ? _self.defaultVariant : defaultVariant // ignore: cast_nullable_to_non_nullable
as Variant?,optionTypes: freezed == optionTypes ? _self.optionTypes : optionTypes // ignore: cast_nullable_to_non_nullable
as List<OptionType>?,optionValues: freezed == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,priorPrice: freezed == priorPrice ? _self.priorPrice : priorPrice // ignore: cast_nullable_to_non_nullable
as PriceHistory?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res> get price {
  
  return $PriceCopyWith<$Res>(_self.price, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get originalPrice {
    if (_self.originalPrice == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.originalPrice!, (value) {
    return _then(_self.copyWith(originalPrice: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaCopyWith<$Res>? get primaryMedia {
    if (_self.primaryMedia == null) {
    return null;
  }

  return $MediaCopyWith<$Res>(_self.primaryMedia!, (value) {
    return _then(_self.copyWith(primaryMedia: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VariantCopyWith<$Res>? get defaultVariant {
    if (_self.defaultVariant == null) {
    return null;
  }

  return $VariantCopyWith<$Res>(_self.defaultVariant!, (value) {
    return _then(_self.copyWith(defaultVariant: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceHistoryCopyWith<$Res>? get priorPrice {
    if (_self.priorPrice == null) {
    return null;
  }

  return $PriceHistoryCopyWith<$Res>(_self.priorPrice!, (value) {
    return _then(_self.copyWith(priorPrice: value));
  });
}
}


/// @nodoc
mixin _$ProductFilterPriceRange {

 String get id; String get min; String get max;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency;
/// Create a copy of ProductFilterPriceRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterPriceRangeCopyWith<ProductFilterPriceRange> get copyWith => _$ProductFilterPriceRangeCopyWithImpl<ProductFilterPriceRange>(this as ProductFilterPriceRange, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterPriceRange;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterPriceRange&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.min, _this.min) || other.min == _this.min)&&(identical(other.max, _this.max) || other.max == _this.max)&&(identical(other.currency, _this.currency) || other.currency == _this.currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterPriceRange;
  return Object.hash(runtimeType,_this.id,_this.min,_this.max,_this.currency);
}

@override
String toString() {
  final _this = this as ProductFilterPriceRange;
  return 'ProductFilterPriceRange(id: ${_this.id}, min: ${_this.min}, max: ${_this.max}, currency: ${_this.currency})';
}


}

/// @nodoc
abstract mixin class $ProductFilterPriceRangeCopyWith<$Res>  {
  factory $ProductFilterPriceRangeCopyWith(ProductFilterPriceRange value, $Res Function(ProductFilterPriceRange) _then) = _$ProductFilterPriceRangeCopyWithImpl;
@useResult
$Res call({
 String id, String min, String max,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency
});




}
/// @nodoc
class _$ProductFilterPriceRangeCopyWithImpl<$Res>
    implements $ProductFilterPriceRangeCopyWith<$Res> {
  _$ProductFilterPriceRangeCopyWithImpl(this._self, this._then);

  final ProductFilterPriceRange _self;
  final $Res Function(ProductFilterPriceRange) _then;

/// Create a copy of ProductFilterPriceRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? min = null,Object? max = null,Object? currency = null,}) {
  return _then(ProductFilterPriceRange(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterPriceRange].
extension ProductFilterPriceRangePatterns on ProductFilterPriceRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterPriceRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterPriceRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterPriceRange value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterPriceRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterPriceRange value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterPriceRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String min,  String max, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterPriceRange() when $default != null:
return $default(_that.id,_that.min,_that.max,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String min,  String max, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterPriceRange():
return $default(_that.id,_that.min,_that.max,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String min,  String max, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterPriceRange() when $default != null:
return $default(_that.id,_that.min,_that.max,_that.currency);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterPriceRange extends ProductFilterPriceRange {
  const _ProductFilterPriceRange({required this.id, required this.min, required this.max, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency}): super._();
  factory _ProductFilterPriceRange.fromJson(Map<String, dynamic> json) => _$ProductFilterPriceRangeFromJson(json);

@override final  String id;
@override final  String min;
@override final  String max;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;

/// Create a copy of ProductFilterPriceRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterPriceRangeCopyWith<_ProductFilterPriceRange> get copyWith => __$ProductFilterPriceRangeCopyWithImpl<_ProductFilterPriceRange>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterPriceRange&&(identical(other.id, id) || other.id == id)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,min,max,currency);
}

@override
String toString() {
    return 'ProductFilterPriceRange(id: $id, min: $min, max: $max, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterPriceRangeCopyWith<$Res> implements $ProductFilterPriceRangeCopyWith<$Res> {
  factory _$ProductFilterPriceRangeCopyWith(_ProductFilterPriceRange value, $Res Function(_ProductFilterPriceRange) _then) = __$ProductFilterPriceRangeCopyWithImpl;
@override @useResult
$Res call({
 String id, String min, String max,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency
});




}
/// @nodoc
class __$ProductFilterPriceRangeCopyWithImpl<$Res>
    implements _$ProductFilterPriceRangeCopyWith<$Res> {
  __$ProductFilterPriceRangeCopyWithImpl(this._self, this._then);

  final _ProductFilterPriceRange _self;
  final $Res Function(_ProductFilterPriceRange) _then;

/// Create a copy of ProductFilterPriceRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? min = null,Object? max = null,Object? currency = null,}) {
  return _then(_ProductFilterPriceRange(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as String,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,
  ));
}


}


/// @nodoc
mixin _$ProductFilterAvailabilityOption {

@JsonKey(unknownEnumValue: StockAvailability.unknown) StockAvailability get id; int get count;
/// Create a copy of ProductFilterAvailabilityOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterAvailabilityOptionCopyWith<ProductFilterAvailabilityOption> get copyWith => _$ProductFilterAvailabilityOptionCopyWithImpl<ProductFilterAvailabilityOption>(this as ProductFilterAvailabilityOption, _$identity);

  /// Serializes this ProductFilterAvailabilityOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductFilterAvailabilityOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterAvailabilityOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterAvailabilityOption;
  return Object.hash(runtimeType,_this.id,_this.count);
}

@override
String toString() {
  final _this = this as ProductFilterAvailabilityOption;
  return 'ProductFilterAvailabilityOption(id: ${_this.id}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $ProductFilterAvailabilityOptionCopyWith<$Res>  {
  factory $ProductFilterAvailabilityOptionCopyWith(ProductFilterAvailabilityOption value, $Res Function(ProductFilterAvailabilityOption) _then) = _$ProductFilterAvailabilityOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: StockAvailability.unknown) StockAvailability id, int count
});




}
/// @nodoc
class _$ProductFilterAvailabilityOptionCopyWithImpl<$Res>
    implements $ProductFilterAvailabilityOptionCopyWith<$Res> {
  _$ProductFilterAvailabilityOptionCopyWithImpl(this._self, this._then);

  final ProductFilterAvailabilityOption _self;
  final $Res Function(ProductFilterAvailabilityOption) _then;

/// Create a copy of ProductFilterAvailabilityOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? count = null,}) {
  return _then(ProductFilterAvailabilityOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as StockAvailability,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterAvailabilityOption].
extension ProductFilterAvailabilityOptionPatterns on ProductFilterAvailabilityOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterAvailabilityOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterAvailabilityOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterAvailabilityOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: StockAvailability.unknown)  StockAvailability id,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption() when $default != null:
return $default(_that.id,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: StockAvailability.unknown)  StockAvailability id,  int count)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption():
return $default(_that.id,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: StockAvailability.unknown)  StockAvailability id,  int count)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterAvailabilityOption() when $default != null:
return $default(_that.id,_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterAvailabilityOption extends ProductFilterAvailabilityOption {
  const _ProductFilterAvailabilityOption({@JsonKey(unknownEnumValue: StockAvailability.unknown) required this.id, required this.count}): super._();
  factory _ProductFilterAvailabilityOption.fromJson(Map<String, dynamic> json) => _$ProductFilterAvailabilityOptionFromJson(json);

@override@JsonKey(unknownEnumValue: StockAvailability.unknown) final  StockAvailability id;
@override final  int count;

/// Create a copy of ProductFilterAvailabilityOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterAvailabilityOptionCopyWith<_ProductFilterAvailabilityOption> get copyWith => __$ProductFilterAvailabilityOptionCopyWithImpl<_ProductFilterAvailabilityOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductFilterAvailabilityOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterAvailabilityOption&&(identical(other.id, id) || other.id == id)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,count);
}

@override
String toString() {
    return 'ProductFilterAvailabilityOption(id: $id, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterAvailabilityOptionCopyWith<$Res> implements $ProductFilterAvailabilityOptionCopyWith<$Res> {
  factory _$ProductFilterAvailabilityOptionCopyWith(_ProductFilterAvailabilityOption value, $Res Function(_ProductFilterAvailabilityOption) _then) = __$ProductFilterAvailabilityOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: StockAvailability.unknown) StockAvailability id, int count
});




}
/// @nodoc
class __$ProductFilterAvailabilityOptionCopyWithImpl<$Res>
    implements _$ProductFilterAvailabilityOptionCopyWith<$Res> {
  __$ProductFilterAvailabilityOptionCopyWithImpl(this._self, this._then);

  final _ProductFilterAvailabilityOption _self;
  final $Res Function(_ProductFilterAvailabilityOption) _then;

/// Create a copy of ProductFilterAvailabilityOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? count = null,}) {
  return _then(_ProductFilterAvailabilityOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as StockAvailability,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductFilterAvailability {

 String get id; List<ProductFilterAvailabilityOption> get options;
/// Create a copy of ProductFilterAvailability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterAvailabilityCopyWith<ProductFilterAvailability> get copyWith => _$ProductFilterAvailabilityCopyWithImpl<ProductFilterAvailability>(this as ProductFilterAvailability, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterAvailability;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterAvailability&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterAvailability;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as ProductFilterAvailability;
  return 'ProductFilterAvailability(id: ${_this.id}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $ProductFilterAvailabilityCopyWith<$Res>  {
  factory $ProductFilterAvailabilityCopyWith(ProductFilterAvailability value, $Res Function(ProductFilterAvailability) _then) = _$ProductFilterAvailabilityCopyWithImpl;
@useResult
$Res call({
 String id, List<ProductFilterAvailabilityOption> options
});




}
/// @nodoc
class _$ProductFilterAvailabilityCopyWithImpl<$Res>
    implements $ProductFilterAvailabilityCopyWith<$Res> {
  _$ProductFilterAvailabilityCopyWithImpl(this._self, this._then);

  final ProductFilterAvailability _self;
  final $Res Function(ProductFilterAvailability) _then;

/// Create a copy of ProductFilterAvailability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? options = null,}) {
  return _then(ProductFilterAvailability(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterAvailabilityOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterAvailability].
extension ProductFilterAvailabilityPatterns on ProductFilterAvailability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterAvailability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterAvailability() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterAvailability value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterAvailability():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterAvailability value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterAvailability() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<ProductFilterAvailabilityOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterAvailability() when $default != null:
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<ProductFilterAvailabilityOption> options)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterAvailability():
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<ProductFilterAvailabilityOption> options)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterAvailability() when $default != null:
return $default(_that.id,_that.options);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterAvailability extends ProductFilterAvailability {
  const _ProductFilterAvailability({required this.id, required this.options}): super._();
  factory _ProductFilterAvailability.fromJson(Map<String, dynamic> json) => _$ProductFilterAvailabilityFromJson(json);

@override final  String id;
@override final  List<ProductFilterAvailabilityOption> options;

/// Create a copy of ProductFilterAvailability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterAvailabilityCopyWith<_ProductFilterAvailability> get copyWith => __$ProductFilterAvailabilityCopyWithImpl<_ProductFilterAvailability>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterAvailability&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(options));
}

@override
String toString() {
    return 'ProductFilterAvailability(id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterAvailabilityCopyWith<$Res> implements $ProductFilterAvailabilityCopyWith<$Res> {
  factory _$ProductFilterAvailabilityCopyWith(_ProductFilterAvailability value, $Res Function(_ProductFilterAvailability) _then) = __$ProductFilterAvailabilityCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ProductFilterAvailabilityOption> options
});




}
/// @nodoc
class __$ProductFilterAvailabilityCopyWithImpl<$Res>
    implements _$ProductFilterAvailabilityCopyWith<$Res> {
  __$ProductFilterAvailabilityCopyWithImpl(this._self, this._then);

  final _ProductFilterAvailability _self;
  final $Res Function(_ProductFilterAvailability) _then;

/// Create a copy of ProductFilterAvailability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? options = null,}) {
  return _then(_ProductFilterAvailability(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterAvailabilityOption>,
  ));
}


}


/// @nodoc
mixin _$ProductFilterOptionValue {

 String get id; String get name; String get label; int get position; String? get colorCode; String? get imageUrl; int get count;
/// Create a copy of ProductFilterOptionValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterOptionValueCopyWith<ProductFilterOptionValue> get copyWith => _$ProductFilterOptionValueCopyWithImpl<ProductFilterOptionValue>(this as ProductFilterOptionValue, _$identity);

  /// Serializes this ProductFilterOptionValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductFilterOptionValue;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterOptionValue&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.position, _this.position) || other.position == _this.position)&&(identical(other.colorCode, _this.colorCode) || other.colorCode == _this.colorCode)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterOptionValue;
  return Object.hash(runtimeType,_this.id,_this.name,_this.label,_this.position,_this.colorCode,_this.imageUrl,_this.count);
}

@override
String toString() {
  final _this = this as ProductFilterOptionValue;
  return 'ProductFilterOptionValue(id: ${_this.id}, name: ${_this.name}, label: ${_this.label}, position: ${_this.position}, colorCode: ${_this.colorCode}, imageUrl: ${_this.imageUrl}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $ProductFilterOptionValueCopyWith<$Res>  {
  factory $ProductFilterOptionValueCopyWith(ProductFilterOptionValue value, $Res Function(ProductFilterOptionValue) _then) = _$ProductFilterOptionValueCopyWithImpl;
@useResult
$Res call({
 String id, String name, String label, int position, String? colorCode, String? imageUrl, int count
});




}
/// @nodoc
class _$ProductFilterOptionValueCopyWithImpl<$Res>
    implements $ProductFilterOptionValueCopyWith<$Res> {
  _$ProductFilterOptionValueCopyWithImpl(this._self, this._then);

  final ProductFilterOptionValue _self;
  final $Res Function(ProductFilterOptionValue) _then;

/// Create a copy of ProductFilterOptionValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? label = null,Object? position = null,Object? colorCode = freezed,Object? imageUrl = freezed,Object? count = null,}) {
  return _then(ProductFilterOptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterOptionValue].
extension ProductFilterOptionValuePatterns on ProductFilterOptionValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterOptionValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterOptionValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterOptionValue value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterOptionValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterOptionValue value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterOptionValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String label,  int position,  String? colorCode,  String? imageUrl,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterOptionValue() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.position,_that.colorCode,_that.imageUrl,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String label,  int position,  String? colorCode,  String? imageUrl,  int count)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterOptionValue():
return $default(_that.id,_that.name,_that.label,_that.position,_that.colorCode,_that.imageUrl,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String label,  int position,  String? colorCode,  String? imageUrl,  int count)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterOptionValue() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.position,_that.colorCode,_that.imageUrl,_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterOptionValue extends ProductFilterOptionValue {
  const _ProductFilterOptionValue({required this.id, required this.name, required this.label, required this.position, this.colorCode, this.imageUrl, required this.count}): super._();
  factory _ProductFilterOptionValue.fromJson(Map<String, dynamic> json) => _$ProductFilterOptionValueFromJson(json);

@override final  String id;
@override final  String name;
@override final  String label;
@override final  int position;
@override final  String? colorCode;
@override final  String? imageUrl;
@override final  int count;

/// Create a copy of ProductFilterOptionValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterOptionValueCopyWith<_ProductFilterOptionValue> get copyWith => __$ProductFilterOptionValueCopyWithImpl<_ProductFilterOptionValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductFilterOptionValueToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterOptionValue&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.position, position) || other.position == position)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,label,position,colorCode,imageUrl,count);
}

@override
String toString() {
    return 'ProductFilterOptionValue(id: $id, name: $name, label: $label, position: $position, colorCode: $colorCode, imageUrl: $imageUrl, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterOptionValueCopyWith<$Res> implements $ProductFilterOptionValueCopyWith<$Res> {
  factory _$ProductFilterOptionValueCopyWith(_ProductFilterOptionValue value, $Res Function(_ProductFilterOptionValue) _then) = __$ProductFilterOptionValueCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String label, int position, String? colorCode, String? imageUrl, int count
});




}
/// @nodoc
class __$ProductFilterOptionValueCopyWithImpl<$Res>
    implements _$ProductFilterOptionValueCopyWith<$Res> {
  __$ProductFilterOptionValueCopyWithImpl(this._self, this._then);

  final _ProductFilterOptionValue _self;
  final $Res Function(_ProductFilterOptionValue) _then;

/// Create a copy of ProductFilterOptionValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? label = null,Object? position = null,Object? colorCode = freezed,Object? imageUrl = freezed,Object? count = null,}) {
  return _then(_ProductFilterOptionValue(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,colorCode: freezed == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductFilterOption {

 String get id; String get name; String get label;@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind get kind; List<ProductFilterOptionValue> get options;
/// Create a copy of ProductFilterOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterOptionCopyWith<ProductFilterOption> get copyWith => _$ProductFilterOptionCopyWithImpl<ProductFilterOption>(this as ProductFilterOption, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterOption;
  return Object.hash(runtimeType,_this.id,_this.name,_this.label,_this.kind,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as ProductFilterOption;
  return 'ProductFilterOption(id: ${_this.id}, name: ${_this.name}, label: ${_this.label}, kind: ${_this.kind}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $ProductFilterOptionCopyWith<$Res>  {
  factory $ProductFilterOptionCopyWith(ProductFilterOption value, $Res Function(ProductFilterOption) _then) = _$ProductFilterOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String label,@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind kind, List<ProductFilterOptionValue> options
});




}
/// @nodoc
class _$ProductFilterOptionCopyWithImpl<$Res>
    implements $ProductFilterOptionCopyWith<$Res> {
  _$ProductFilterOptionCopyWithImpl(this._self, this._then);

  final ProductFilterOption _self;
  final $Res Function(ProductFilterOption) _then;

/// Create a copy of ProductFilterOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? label = null,Object? kind = null,Object? options = null,}) {
  return _then(ProductFilterOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OptionTypeKind,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterOptionValue>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterOption].
extension ProductFilterOptionPatterns on ProductFilterOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String label, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind,  List<ProductFilterOptionValue> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterOption() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.kind,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String label, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind,  List<ProductFilterOptionValue> options)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterOption():
return $default(_that.id,_that.name,_that.label,_that.kind,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String label, @JsonKey(unknownEnumValue: OptionTypeKind.unknown)  OptionTypeKind kind,  List<ProductFilterOptionValue> options)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterOption() when $default != null:
return $default(_that.id,_that.name,_that.label,_that.kind,_that.options);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterOption extends ProductFilterOption {
  const _ProductFilterOption({required this.id, required this.name, required this.label, @JsonKey(unknownEnumValue: OptionTypeKind.unknown) required this.kind, required this.options}): super._();
  factory _ProductFilterOption.fromJson(Map<String, dynamic> json) => _$ProductFilterOptionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String label;
@override@JsonKey(unknownEnumValue: OptionTypeKind.unknown) final  OptionTypeKind kind;
@override final  List<ProductFilterOptionValue> options;

/// Create a copy of ProductFilterOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterOptionCopyWith<_ProductFilterOption> get copyWith => __$ProductFilterOptionCopyWithImpl<_ProductFilterOption>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,label,kind,const DeepCollectionEquality().hash(options));
}

@override
String toString() {
    return 'ProductFilterOption(id: $id, name: $name, label: $label, kind: $kind, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterOptionCopyWith<$Res> implements $ProductFilterOptionCopyWith<$Res> {
  factory _$ProductFilterOptionCopyWith(_ProductFilterOption value, $Res Function(_ProductFilterOption) _then) = __$ProductFilterOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String label,@JsonKey(unknownEnumValue: OptionTypeKind.unknown) OptionTypeKind kind, List<ProductFilterOptionValue> options
});




}
/// @nodoc
class __$ProductFilterOptionCopyWithImpl<$Res>
    implements _$ProductFilterOptionCopyWith<$Res> {
  __$ProductFilterOptionCopyWithImpl(this._self, this._then);

  final _ProductFilterOption _self;
  final $Res Function(_ProductFilterOption) _then;

/// Create a copy of ProductFilterOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? label = null,Object? kind = null,Object? options = null,}) {
  return _then(_ProductFilterOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as OptionTypeKind,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterOptionValue>,
  ));
}


}


/// @nodoc
mixin _$ProductFilterCategoryOption {

 String get id; String get name; String get permalink; int get count;
/// Create a copy of ProductFilterCategoryOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterCategoryOptionCopyWith<ProductFilterCategoryOption> get copyWith => _$ProductFilterCategoryOptionCopyWithImpl<ProductFilterCategoryOption>(this as ProductFilterCategoryOption, _$identity);

  /// Serializes this ProductFilterCategoryOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductFilterCategoryOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterCategoryOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.permalink, _this.permalink) || other.permalink == _this.permalink)&&(identical(other.count, _this.count) || other.count == _this.count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterCategoryOption;
  return Object.hash(runtimeType,_this.id,_this.name,_this.permalink,_this.count);
}

@override
String toString() {
  final _this = this as ProductFilterCategoryOption;
  return 'ProductFilterCategoryOption(id: ${_this.id}, name: ${_this.name}, permalink: ${_this.permalink}, count: ${_this.count})';
}


}

/// @nodoc
abstract mixin class $ProductFilterCategoryOptionCopyWith<$Res>  {
  factory $ProductFilterCategoryOptionCopyWith(ProductFilterCategoryOption value, $Res Function(ProductFilterCategoryOption) _then) = _$ProductFilterCategoryOptionCopyWithImpl;
@useResult
$Res call({
 String id, String name, String permalink, int count
});




}
/// @nodoc
class _$ProductFilterCategoryOptionCopyWithImpl<$Res>
    implements $ProductFilterCategoryOptionCopyWith<$Res> {
  _$ProductFilterCategoryOptionCopyWithImpl(this._self, this._then);

  final ProductFilterCategoryOption _self;
  final $Res Function(ProductFilterCategoryOption) _then;

/// Create a copy of ProductFilterCategoryOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? count = null,}) {
  return _then(ProductFilterCategoryOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterCategoryOption].
extension ProductFilterCategoryOptionPatterns on ProductFilterCategoryOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterCategoryOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterCategoryOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterCategoryOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterCategoryOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterCategoryOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterCategoryOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterCategoryOption() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String permalink,  int count)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterCategoryOption():
return $default(_that.id,_that.name,_that.permalink,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String permalink,  int count)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterCategoryOption() when $default != null:
return $default(_that.id,_that.name,_that.permalink,_that.count);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterCategoryOption extends ProductFilterCategoryOption {
  const _ProductFilterCategoryOption({required this.id, required this.name, required this.permalink, required this.count}): super._();
  factory _ProductFilterCategoryOption.fromJson(Map<String, dynamic> json) => _$ProductFilterCategoryOptionFromJson(json);

@override final  String id;
@override final  String name;
@override final  String permalink;
@override final  int count;

/// Create a copy of ProductFilterCategoryOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterCategoryOptionCopyWith<_ProductFilterCategoryOption> get copyWith => __$ProductFilterCategoryOptionCopyWithImpl<_ProductFilterCategoryOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductFilterCategoryOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterCategoryOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.permalink, permalink) || other.permalink == permalink)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,permalink,count);
}

@override
String toString() {
    return 'ProductFilterCategoryOption(id: $id, name: $name, permalink: $permalink, count: $count)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterCategoryOptionCopyWith<$Res> implements $ProductFilterCategoryOptionCopyWith<$Res> {
  factory _$ProductFilterCategoryOptionCopyWith(_ProductFilterCategoryOption value, $Res Function(_ProductFilterCategoryOption) _then) = __$ProductFilterCategoryOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String permalink, int count
});




}
/// @nodoc
class __$ProductFilterCategoryOptionCopyWithImpl<$Res>
    implements _$ProductFilterCategoryOptionCopyWith<$Res> {
  __$ProductFilterCategoryOptionCopyWithImpl(this._self, this._then);

  final _ProductFilterCategoryOption _self;
  final $Res Function(_ProductFilterCategoryOption) _then;

/// Create a copy of ProductFilterCategoryOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? permalink = null,Object? count = null,}) {
  return _then(_ProductFilterCategoryOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,permalink: null == permalink ? _self.permalink : permalink // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ProductFilterCategory {

 String get id; List<ProductFilterCategoryOption> get options;
/// Create a copy of ProductFilterCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterCategoryCopyWith<ProductFilterCategory> get copyWith => _$ProductFilterCategoryCopyWithImpl<ProductFilterCategory>(this as ProductFilterCategory, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterCategory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterCategory&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterCategory;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as ProductFilterCategory;
  return 'ProductFilterCategory(id: ${_this.id}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $ProductFilterCategoryCopyWith<$Res>  {
  factory $ProductFilterCategoryCopyWith(ProductFilterCategory value, $Res Function(ProductFilterCategory) _then) = _$ProductFilterCategoryCopyWithImpl;
@useResult
$Res call({
 String id, List<ProductFilterCategoryOption> options
});




}
/// @nodoc
class _$ProductFilterCategoryCopyWithImpl<$Res>
    implements $ProductFilterCategoryCopyWith<$Res> {
  _$ProductFilterCategoryCopyWithImpl(this._self, this._then);

  final ProductFilterCategory _self;
  final $Res Function(ProductFilterCategory) _then;

/// Create a copy of ProductFilterCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? options = null,}) {
  return _then(ProductFilterCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterCategoryOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterCategory].
extension ProductFilterCategoryPatterns on ProductFilterCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterCategory value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterCategory value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<ProductFilterCategoryOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterCategory() when $default != null:
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<ProductFilterCategoryOption> options)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterCategory():
return $default(_that.id,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<ProductFilterCategoryOption> options)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterCategory() when $default != null:
return $default(_that.id,_that.options);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterCategory extends ProductFilterCategory {
  const _ProductFilterCategory({required this.id, required this.options}): super._();
  factory _ProductFilterCategory.fromJson(Map<String, dynamic> json) => _$ProductFilterCategoryFromJson(json);

@override final  String id;
@override final  List<ProductFilterCategoryOption> options;

/// Create a copy of ProductFilterCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterCategoryCopyWith<_ProductFilterCategory> get copyWith => __$ProductFilterCategoryCopyWithImpl<_ProductFilterCategory>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterCategory&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(options));
}

@override
String toString() {
    return 'ProductFilterCategory(id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterCategoryCopyWith<$Res> implements $ProductFilterCategoryCopyWith<$Res> {
  factory _$ProductFilterCategoryCopyWith(_ProductFilterCategory value, $Res Function(_ProductFilterCategory) _then) = __$ProductFilterCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, List<ProductFilterCategoryOption> options
});




}
/// @nodoc
class __$ProductFilterCategoryCopyWithImpl<$Res>
    implements _$ProductFilterCategoryCopyWith<$Res> {
  __$ProductFilterCategoryCopyWithImpl(this._self, this._then);

  final _ProductFilterCategory _self;
  final $Res Function(_ProductFilterCategory) _then;

/// Create a copy of ProductFilterCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? options = null,}) {
  return _then(_ProductFilterCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<ProductFilterCategoryOption>,
  ));
}


}

/// @nodoc
mixin _$ProductFilterUnknown {

 String get id; Map<String, Object?> get raw;
/// Create a copy of ProductFilterUnknown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterUnknownCopyWith<ProductFilterUnknown> get copyWith => _$ProductFilterUnknownCopyWithImpl<ProductFilterUnknown>(this as ProductFilterUnknown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductFilterUnknown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterUnknown&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.raw, _this.raw));
}


@override
int get hashCode {
  final _this = this as ProductFilterUnknown;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.raw));
}

@override
String toString() {
  final _this = this as ProductFilterUnknown;
  return 'ProductFilterUnknown(id: ${_this.id}, raw: ${_this.raw})';
}


}

/// @nodoc
abstract mixin class $ProductFilterUnknownCopyWith<$Res>  {
  factory $ProductFilterUnknownCopyWith(ProductFilterUnknown value, $Res Function(ProductFilterUnknown) _then) = _$ProductFilterUnknownCopyWithImpl;
@useResult
$Res call({
 String id, Map<String, Object?> raw
});




}
/// @nodoc
class _$ProductFilterUnknownCopyWithImpl<$Res>
    implements $ProductFilterUnknownCopyWith<$Res> {
  _$ProductFilterUnknownCopyWithImpl(this._self, this._then);

  final ProductFilterUnknown _self;
  final $Res Function(ProductFilterUnknown) _then;

/// Create a copy of ProductFilterUnknown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? raw = null,}) {
  return _then(ProductFilterUnknown(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterUnknown].
extension ProductFilterUnknownPatterns on ProductFilterUnknown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterUnknown value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterUnknown() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterUnknown value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterUnknown():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterUnknown value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterUnknown() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Map<String, Object?> raw)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterUnknown() when $default != null:
return $default(_that.id,_that.raw);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Map<String, Object?> raw)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterUnknown():
return $default(_that.id,_that.raw);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Map<String, Object?> raw)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterUnknown() when $default != null:
return $default(_that.id,_that.raw);case _:
  return null;

}
}

}

/// @nodoc


class _ProductFilterUnknown extends ProductFilterUnknown {
  const _ProductFilterUnknown({required this.id, required this.raw}): super._();
  

@override final  String id;
@override final  Map<String, Object?> raw;

/// Create a copy of ProductFilterUnknown
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterUnknownCopyWith<_ProductFilterUnknown> get copyWith => __$ProductFilterUnknownCopyWithImpl<_ProductFilterUnknown>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterUnknown&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.raw, raw));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(raw));
}

@override
String toString() {
    return 'ProductFilterUnknown(id: $id, raw: $raw)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterUnknownCopyWith<$Res> implements $ProductFilterUnknownCopyWith<$Res> {
  factory _$ProductFilterUnknownCopyWith(_ProductFilterUnknown value, $Res Function(_ProductFilterUnknown) _then) = __$ProductFilterUnknownCopyWithImpl;
@override @useResult
$Res call({
 String id, Map<String, Object?> raw
});




}
/// @nodoc
class __$ProductFilterUnknownCopyWithImpl<$Res>
    implements _$ProductFilterUnknownCopyWith<$Res> {
  __$ProductFilterUnknownCopyWithImpl(this._self, this._then);

  final _ProductFilterUnknown _self;
  final $Res Function(_ProductFilterUnknown) _then;

/// Create a copy of ProductFilterUnknown
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? raw = null,}) {
  return _then(_ProductFilterUnknown(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,raw: null == raw ? _self.raw : raw // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}


/// @nodoc
mixin _$ProductFilterSortOption {

 String get id; String? get label;
/// Create a copy of ProductFilterSortOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFilterSortOptionCopyWith<ProductFilterSortOption> get copyWith => _$ProductFilterSortOptionCopyWithImpl<ProductFilterSortOption>(this as ProductFilterSortOption, _$identity);

  /// Serializes this ProductFilterSortOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductFilterSortOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFilterSortOption&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFilterSortOption;
  return Object.hash(runtimeType,_this.id,_this.label);
}

@override
String toString() {
  final _this = this as ProductFilterSortOption;
  return 'ProductFilterSortOption(id: ${_this.id}, label: ${_this.label})';
}


}

/// @nodoc
abstract mixin class $ProductFilterSortOptionCopyWith<$Res>  {
  factory $ProductFilterSortOptionCopyWith(ProductFilterSortOption value, $Res Function(ProductFilterSortOption) _then) = _$ProductFilterSortOptionCopyWithImpl;
@useResult
$Res call({
 String id, String? label
});




}
/// @nodoc
class _$ProductFilterSortOptionCopyWithImpl<$Res>
    implements $ProductFilterSortOptionCopyWith<$Res> {
  _$ProductFilterSortOptionCopyWithImpl(this._self, this._then);

  final ProductFilterSortOption _self;
  final $Res Function(ProductFilterSortOption) _then;

/// Create a copy of ProductFilterSortOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = freezed,}) {
  return _then(ProductFilterSortOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFilterSortOption].
extension ProductFilterSortOptionPatterns on ProductFilterSortOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFilterSortOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFilterSortOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFilterSortOption value)  $default,){
final _that = this;
switch (_that) {
case _ProductFilterSortOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFilterSortOption value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFilterSortOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFilterSortOption() when $default != null:
return $default(_that.id,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? label)  $default,) {final _that = this;
switch (_that) {
case _ProductFilterSortOption():
return $default(_that.id,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? label)?  $default,) {final _that = this;
switch (_that) {
case _ProductFilterSortOption() when $default != null:
return $default(_that.id,_that.label);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFilterSortOption extends ProductFilterSortOption {
  const _ProductFilterSortOption({required this.id, this.label}): super._();
  factory _ProductFilterSortOption.fromJson(Map<String, dynamic> json) => _$ProductFilterSortOptionFromJson(json);

@override final  String id;
@override final  String? label;

/// Create a copy of ProductFilterSortOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFilterSortOptionCopyWith<_ProductFilterSortOption> get copyWith => __$ProductFilterSortOptionCopyWithImpl<_ProductFilterSortOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductFilterSortOptionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFilterSortOption&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,label);
}

@override
String toString() {
    return 'ProductFilterSortOption(id: $id, label: $label)';
}


}

/// @nodoc
abstract mixin class _$ProductFilterSortOptionCopyWith<$Res> implements $ProductFilterSortOptionCopyWith<$Res> {
  factory _$ProductFilterSortOptionCopyWith(_ProductFilterSortOption value, $Res Function(_ProductFilterSortOption) _then) = __$ProductFilterSortOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String? label
});




}
/// @nodoc
class __$ProductFilterSortOptionCopyWithImpl<$Res>
    implements _$ProductFilterSortOptionCopyWith<$Res> {
  __$ProductFilterSortOptionCopyWithImpl(this._self, this._then);

  final _ProductFilterSortOption _self;
  final $Res Function(_ProductFilterSortOption) _then;

/// Create a copy of ProductFilterSortOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = freezed,}) {
  return _then(_ProductFilterSortOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductFiltersResponse {

 String get id; String get defaultSort; int get totalCount;@JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson) List<ProductFilter> get filters; List<ProductFilterSortOption> get sortOptions;
/// Create a copy of ProductFiltersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFiltersResponseCopyWith<ProductFiltersResponse> get copyWith => _$ProductFiltersResponseCopyWithImpl<ProductFiltersResponse>(this as ProductFiltersResponse, _$identity);

  /// Serializes this ProductFiltersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProductFiltersResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFiltersResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.defaultSort, _this.defaultSort) || other.defaultSort == _this.defaultSort)&&(identical(other.totalCount, _this.totalCount) || other.totalCount == _this.totalCount)&&const DeepCollectionEquality().equals(other.filters, _this.filters)&&const DeepCollectionEquality().equals(other.sortOptions, _this.sortOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProductFiltersResponse;
  return Object.hash(runtimeType,_this.id,_this.defaultSort,_this.totalCount,const DeepCollectionEquality().hash(_this.filters),const DeepCollectionEquality().hash(_this.sortOptions));
}

@override
String toString() {
  final _this = this as ProductFiltersResponse;
  return 'ProductFiltersResponse(id: ${_this.id}, defaultSort: ${_this.defaultSort}, totalCount: ${_this.totalCount}, filters: ${_this.filters}, sortOptions: ${_this.sortOptions})';
}


}

/// @nodoc
abstract mixin class $ProductFiltersResponseCopyWith<$Res>  {
  factory $ProductFiltersResponseCopyWith(ProductFiltersResponse value, $Res Function(ProductFiltersResponse) _then) = _$ProductFiltersResponseCopyWithImpl;
@useResult
$Res call({
 String id, String defaultSort, int totalCount,@JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson) List<ProductFilter> filters, List<ProductFilterSortOption> sortOptions
});




}
/// @nodoc
class _$ProductFiltersResponseCopyWithImpl<$Res>
    implements $ProductFiltersResponseCopyWith<$Res> {
  _$ProductFiltersResponseCopyWithImpl(this._self, this._then);

  final ProductFiltersResponse _self;
  final $Res Function(ProductFiltersResponse) _then;

/// Create a copy of ProductFiltersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? defaultSort = null,Object? totalCount = null,Object? filters = null,Object? sortOptions = null,}) {
  return _then(ProductFiltersResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,defaultSort: null == defaultSort ? _self.defaultSort : defaultSort // ignore: cast_nullable_to_non_nullable
as String,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as List<ProductFilter>,sortOptions: null == sortOptions ? _self.sortOptions : sortOptions // ignore: cast_nullable_to_non_nullable
as List<ProductFilterSortOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFiltersResponse].
extension ProductFiltersResponsePatterns on ProductFiltersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductFiltersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductFiltersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductFiltersResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductFiltersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductFiltersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductFiltersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String defaultSort,  int totalCount, @JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson)  List<ProductFilter> filters,  List<ProductFilterSortOption> sortOptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductFiltersResponse() when $default != null:
return $default(_that.id,_that.defaultSort,_that.totalCount,_that.filters,_that.sortOptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String defaultSort,  int totalCount, @JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson)  List<ProductFilter> filters,  List<ProductFilterSortOption> sortOptions)  $default,) {final _that = this;
switch (_that) {
case _ProductFiltersResponse():
return $default(_that.id,_that.defaultSort,_that.totalCount,_that.filters,_that.sortOptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String defaultSort,  int totalCount, @JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson)  List<ProductFilter> filters,  List<ProductFilterSortOption> sortOptions)?  $default,) {final _that = this;
switch (_that) {
case _ProductFiltersResponse() when $default != null:
return $default(_that.id,_that.defaultSort,_that.totalCount,_that.filters,_that.sortOptions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProductFiltersResponse extends ProductFiltersResponse {
  const _ProductFiltersResponse({required this.id, required this.defaultSort, required this.totalCount, @JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson) required this.filters, required this.sortOptions}): super._();
  factory _ProductFiltersResponse.fromJson(Map<String, dynamic> json) => _$ProductFiltersResponseFromJson(json);

@override final  String id;
@override final  String defaultSort;
@override final  int totalCount;
@override@JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson) final  List<ProductFilter> filters;
@override final  List<ProductFilterSortOption> sortOptions;

/// Create a copy of ProductFiltersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductFiltersResponseCopyWith<_ProductFiltersResponse> get copyWith => __$ProductFiltersResponseCopyWithImpl<_ProductFiltersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductFiltersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductFiltersResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.defaultSort, defaultSort) || other.defaultSort == defaultSort)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&const DeepCollectionEquality().equals(other.filters, filters)&&const DeepCollectionEquality().equals(other.sortOptions, sortOptions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,defaultSort,totalCount,const DeepCollectionEquality().hash(filters),const DeepCollectionEquality().hash(sortOptions));
}

@override
String toString() {
    return 'ProductFiltersResponse(id: $id, defaultSort: $defaultSort, totalCount: $totalCount, filters: $filters, sortOptions: $sortOptions)';
}


}

/// @nodoc
abstract mixin class _$ProductFiltersResponseCopyWith<$Res> implements $ProductFiltersResponseCopyWith<$Res> {
  factory _$ProductFiltersResponseCopyWith(_ProductFiltersResponse value, $Res Function(_ProductFiltersResponse) _then) = __$ProductFiltersResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String defaultSort, int totalCount,@JsonKey(fromJson: _productFiltersFromJson, toJson: _productFiltersToJson) List<ProductFilter> filters, List<ProductFilterSortOption> sortOptions
});




}
/// @nodoc
class __$ProductFiltersResponseCopyWithImpl<$Res>
    implements _$ProductFiltersResponseCopyWith<$Res> {
  __$ProductFiltersResponseCopyWithImpl(this._self, this._then);

  final _ProductFiltersResponse _self;
  final $Res Function(_ProductFiltersResponse) _then;

/// Create a copy of ProductFiltersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? defaultSort = null,Object? totalCount = null,Object? filters = null,Object? sortOptions = null,}) {
  return _then(_ProductFiltersResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,defaultSort: null == defaultSort ? _self.defaultSort : defaultSort // ignore: cast_nullable_to_non_nullable
as String,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as List<ProductFilter>,sortOptions: null == sortOptions ? _self.sortOptions : sortOptions // ignore: cast_nullable_to_non_nullable
as List<ProductFilterSortOption>,
  ));
}


}

// dart format on
