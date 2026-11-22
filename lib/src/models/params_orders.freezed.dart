// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params_orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReturnReason {

 String get id; String get name; bool get active;
/// Create a copy of ReturnReason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnReasonCopyWith<ReturnReason> get copyWith => _$ReturnReasonCopyWithImpl<ReturnReason>(this as ReturnReason, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReturnReason;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnReason&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.active, _this.active) || other.active == _this.active));
}


@override
int get hashCode {
  final _this = this as ReturnReason;
  return Object.hash(runtimeType,_this.id,_this.name,_this.active);
}

@override
String toString() {
  final _this = this as ReturnReason;
  return 'ReturnReason(id: ${_this.id}, name: ${_this.name}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $ReturnReasonCopyWith<$Res>  {
  factory $ReturnReasonCopyWith(ReturnReason value, $Res Function(ReturnReason) _then) = _$ReturnReasonCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class _$ReturnReasonCopyWithImpl<$Res>
    implements $ReturnReasonCopyWith<$Res> {
  _$ReturnReasonCopyWithImpl(this._self, this._then);

  final ReturnReason _self;
  final $Res Function(ReturnReason) _then;

/// Create a copy of ReturnReason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(ReturnReason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnReason].
extension ReturnReasonPatterns on ReturnReason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnReason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnReason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnReason value)  $default,){
final _that = this;
switch (_that) {
case _ReturnReason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnReason value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnReason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnReason() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool active)  $default,) {final _that = this;
switch (_that) {
case _ReturnReason():
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _ReturnReason() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
  return null;

}
}

}

/// @nodoc


class _ReturnReason extends ReturnReason {
  const _ReturnReason({required this.id, required this.name, required this.active}): super._();
  

@override final  String id;
@override final  String name;
@override final  bool active;

/// Create a copy of ReturnReason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnReasonCopyWith<_ReturnReason> get copyWith => __$ReturnReasonCopyWithImpl<_ReturnReason>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnReason&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,active);
}

@override
String toString() {
    return 'ReturnReason(id: $id, name: $name, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ReturnReasonCopyWith<$Res> implements $ReturnReasonCopyWith<$Res> {
  factory _$ReturnReasonCopyWith(_ReturnReason value, $Res Function(_ReturnReason) _then) = __$ReturnReasonCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class __$ReturnReasonCopyWithImpl<$Res>
    implements _$ReturnReasonCopyWith<$Res> {
  __$ReturnReasonCopyWithImpl(this._self, this._then);

  final _ReturnReason _self;
  final $Res Function(_ReturnReason) _then;

/// Create a copy of ReturnReason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(_ReturnReason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ClaimReason {

 String get id; String get name; bool get active;
/// Create a copy of ClaimReason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimReasonCopyWith<ClaimReason> get copyWith => _$ClaimReasonCopyWithImpl<ClaimReason>(this as ClaimReason, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClaimReason;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimReason&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.active, _this.active) || other.active == _this.active));
}


@override
int get hashCode {
  final _this = this as ClaimReason;
  return Object.hash(runtimeType,_this.id,_this.name,_this.active);
}

@override
String toString() {
  final _this = this as ClaimReason;
  return 'ClaimReason(id: ${_this.id}, name: ${_this.name}, active: ${_this.active})';
}


}

/// @nodoc
abstract mixin class $ClaimReasonCopyWith<$Res>  {
  factory $ClaimReasonCopyWith(ClaimReason value, $Res Function(ClaimReason) _then) = _$ClaimReasonCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class _$ClaimReasonCopyWithImpl<$Res>
    implements $ClaimReasonCopyWith<$Res> {
  _$ClaimReasonCopyWithImpl(this._self, this._then);

  final ClaimReason _self;
  final $Res Function(ClaimReason) _then;

/// Create a copy of ClaimReason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(ClaimReason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimReason].
extension ClaimReasonPatterns on ClaimReason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimReason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimReason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimReason value)  $default,){
final _that = this;
switch (_that) {
case _ClaimReason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimReason value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimReason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimReason() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool active)  $default,) {final _that = this;
switch (_that) {
case _ClaimReason():
return $default(_that.id,_that.name,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _ClaimReason() when $default != null:
return $default(_that.id,_that.name,_that.active);case _:
  return null;

}
}

}

/// @nodoc


class _ClaimReason extends ClaimReason {
  const _ClaimReason({required this.id, required this.name, required this.active}): super._();
  

@override final  String id;
@override final  String name;
@override final  bool active;

/// Create a copy of ClaimReason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimReasonCopyWith<_ClaimReason> get copyWith => __$ClaimReasonCopyWithImpl<_ClaimReason>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimReason&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,active);
}

@override
String toString() {
    return 'ClaimReason(id: $id, name: $name, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ClaimReasonCopyWith<$Res> implements $ClaimReasonCopyWith<$Res> {
  factory _$ClaimReasonCopyWith(_ClaimReason value, $Res Function(_ClaimReason) _then) = __$ClaimReasonCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool active
});




}
/// @nodoc
class __$ClaimReasonCopyWithImpl<$Res>
    implements _$ClaimReasonCopyWith<$Res> {
  __$ClaimReasonCopyWithImpl(this._self, this._then);

  final _ClaimReason _self;
  final $Res Function(_ClaimReason) _then;

/// Create a copy of ClaimReason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? active = null,}) {
  return _then(_ClaimReason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ReturnLineItem {

 String get id; int get quantity; int get receivedQuantity; bool get resellable; String? get preTaxAmount; String? get includedTaxTotal; String? get additionalTaxTotal; String? get taxTotal; String? get refundAmount; String? get variantId; String? get lineItemId; String? get fulfillmentItemId; Map<String, Object?>? get variant;
/// Create a copy of ReturnLineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnLineItemCopyWith<ReturnLineItem> get copyWith => _$ReturnLineItemCopyWithImpl<ReturnLineItem>(this as ReturnLineItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReturnLineItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReturnLineItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.receivedQuantity, _this.receivedQuantity) || other.receivedQuantity == _this.receivedQuantity)&&(identical(other.resellable, _this.resellable) || other.resellable == _this.resellable)&&(identical(other.preTaxAmount, _this.preTaxAmount) || other.preTaxAmount == _this.preTaxAmount)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.refundAmount, _this.refundAmount) || other.refundAmount == _this.refundAmount)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.fulfillmentItemId, _this.fulfillmentItemId) || other.fulfillmentItemId == _this.fulfillmentItemId)&&const DeepCollectionEquality().equals(other.variant, _this.variant));
}


@override
int get hashCode {
  final _this = this as ReturnLineItem;
  return Object.hash(runtimeType,_this.id,_this.quantity,_this.receivedQuantity,_this.resellable,_this.preTaxAmount,_this.includedTaxTotal,_this.additionalTaxTotal,_this.taxTotal,_this.refundAmount,_this.variantId,_this.lineItemId,_this.fulfillmentItemId,const DeepCollectionEquality().hash(_this.variant));
}

@override
String toString() {
  final _this = this as ReturnLineItem;
  return 'ReturnLineItem(id: ${_this.id}, quantity: ${_this.quantity}, receivedQuantity: ${_this.receivedQuantity}, resellable: ${_this.resellable}, preTaxAmount: ${_this.preTaxAmount}, includedTaxTotal: ${_this.includedTaxTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, taxTotal: ${_this.taxTotal}, refundAmount: ${_this.refundAmount}, variantId: ${_this.variantId}, lineItemId: ${_this.lineItemId}, fulfillmentItemId: ${_this.fulfillmentItemId}, variant: ${_this.variant})';
}


}

/// @nodoc
abstract mixin class $ReturnLineItemCopyWith<$Res>  {
  factory $ReturnLineItemCopyWith(ReturnLineItem value, $Res Function(ReturnLineItem) _then) = _$ReturnLineItemCopyWithImpl;
@useResult
$Res call({
 String id, int quantity, int receivedQuantity, bool resellable, String? preTaxAmount, String? includedTaxTotal, String? additionalTaxTotal, String? taxTotal, String? refundAmount, String? variantId, String? lineItemId, String? fulfillmentItemId, Map<String, Object?>? variant
});




}
/// @nodoc
class _$ReturnLineItemCopyWithImpl<$Res>
    implements $ReturnLineItemCopyWith<$Res> {
  _$ReturnLineItemCopyWithImpl(this._self, this._then);

  final ReturnLineItem _self;
  final $Res Function(ReturnLineItem) _then;

/// Create a copy of ReturnLineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quantity = null,Object? receivedQuantity = null,Object? resellable = null,Object? preTaxAmount = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? taxTotal = freezed,Object? refundAmount = freezed,Object? variantId = freezed,Object? lineItemId = freezed,Object? fulfillmentItemId = freezed,Object? variant = freezed,}) {
  return _then(ReturnLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,receivedQuantity: null == receivedQuantity ? _self.receivedQuantity : receivedQuantity // ignore: cast_nullable_to_non_nullable
as int,resellable: null == resellable ? _self.resellable : resellable // ignore: cast_nullable_to_non_nullable
as bool,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentItemId: freezed == fulfillmentItemId ? _self.fulfillmentItemId : fulfillmentItemId // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReturnLineItem].
extension ReturnLineItemPatterns on ReturnLineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReturnLineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReturnLineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReturnLineItem value)  $default,){
final _that = this;
switch (_that) {
case _ReturnLineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReturnLineItem value)?  $default,){
final _that = this;
switch (_that) {
case _ReturnLineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int quantity,  int receivedQuantity,  bool resellable,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? refundAmount,  String? variantId,  String? lineItemId,  String? fulfillmentItemId,  Map<String, Object?>? variant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReturnLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.receivedQuantity,_that.resellable,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.refundAmount,_that.variantId,_that.lineItemId,_that.fulfillmentItemId,_that.variant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int quantity,  int receivedQuantity,  bool resellable,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? refundAmount,  String? variantId,  String? lineItemId,  String? fulfillmentItemId,  Map<String, Object?>? variant)  $default,) {final _that = this;
switch (_that) {
case _ReturnLineItem():
return $default(_that.id,_that.quantity,_that.receivedQuantity,_that.resellable,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.refundAmount,_that.variantId,_that.lineItemId,_that.fulfillmentItemId,_that.variant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int quantity,  int receivedQuantity,  bool resellable,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? refundAmount,  String? variantId,  String? lineItemId,  String? fulfillmentItemId,  Map<String, Object?>? variant)?  $default,) {final _that = this;
switch (_that) {
case _ReturnLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.receivedQuantity,_that.resellable,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.refundAmount,_that.variantId,_that.lineItemId,_that.fulfillmentItemId,_that.variant);case _:
  return null;

}
}

}

/// @nodoc


class _ReturnLineItem extends ReturnLineItem {
  const _ReturnLineItem({required this.id, required this.quantity, required this.receivedQuantity, required this.resellable, this.preTaxAmount, this.includedTaxTotal, this.additionalTaxTotal, this.taxTotal, this.refundAmount, this.variantId, this.lineItemId, this.fulfillmentItemId, this.variant}): super._();
  

@override final  String id;
@override final  int quantity;
@override final  int receivedQuantity;
@override final  bool resellable;
@override final  String? preTaxAmount;
@override final  String? includedTaxTotal;
@override final  String? additionalTaxTotal;
@override final  String? taxTotal;
@override final  String? refundAmount;
@override final  String? variantId;
@override final  String? lineItemId;
@override final  String? fulfillmentItemId;
@override final  Map<String, Object?>? variant;

/// Create a copy of ReturnLineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnLineItemCopyWith<_ReturnLineItem> get copyWith => __$ReturnLineItemCopyWithImpl<_ReturnLineItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReturnLineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.receivedQuantity, receivedQuantity) || other.receivedQuantity == receivedQuantity)&&(identical(other.resellable, resellable) || other.resellable == resellable)&&(identical(other.preTaxAmount, preTaxAmount) || other.preTaxAmount == preTaxAmount)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.fulfillmentItemId, fulfillmentItemId) || other.fulfillmentItemId == fulfillmentItemId)&&const DeepCollectionEquality().equals(other.variant, variant));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,quantity,receivedQuantity,resellable,preTaxAmount,includedTaxTotal,additionalTaxTotal,taxTotal,refundAmount,variantId,lineItemId,fulfillmentItemId,const DeepCollectionEquality().hash(variant));
}

@override
String toString() {
    return 'ReturnLineItem(id: $id, quantity: $quantity, receivedQuantity: $receivedQuantity, resellable: $resellable, preTaxAmount: $preTaxAmount, includedTaxTotal: $includedTaxTotal, additionalTaxTotal: $additionalTaxTotal, taxTotal: $taxTotal, refundAmount: $refundAmount, variantId: $variantId, lineItemId: $lineItemId, fulfillmentItemId: $fulfillmentItemId, variant: $variant)';
}


}

/// @nodoc
abstract mixin class _$ReturnLineItemCopyWith<$Res> implements $ReturnLineItemCopyWith<$Res> {
  factory _$ReturnLineItemCopyWith(_ReturnLineItem value, $Res Function(_ReturnLineItem) _then) = __$ReturnLineItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int quantity, int receivedQuantity, bool resellable, String? preTaxAmount, String? includedTaxTotal, String? additionalTaxTotal, String? taxTotal, String? refundAmount, String? variantId, String? lineItemId, String? fulfillmentItemId, Map<String, Object?>? variant
});




}
/// @nodoc
class __$ReturnLineItemCopyWithImpl<$Res>
    implements _$ReturnLineItemCopyWith<$Res> {
  __$ReturnLineItemCopyWithImpl(this._self, this._then);

  final _ReturnLineItem _self;
  final $Res Function(_ReturnLineItem) _then;

/// Create a copy of ReturnLineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quantity = null,Object? receivedQuantity = null,Object? resellable = null,Object? preTaxAmount = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? taxTotal = freezed,Object? refundAmount = freezed,Object? variantId = freezed,Object? lineItemId = freezed,Object? fulfillmentItemId = freezed,Object? variant = freezed,}) {
  return _then(_ReturnLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,receivedQuantity: null == receivedQuantity ? _self.receivedQuantity : receivedQuantity // ignore: cast_nullable_to_non_nullable
as int,resellable: null == resellable ? _self.resellable : resellable // ignore: cast_nullable_to_non_nullable
as bool,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentItemId: freezed == fulfillmentItemId ? _self.fulfillmentItemId : fulfillmentItemId // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
mixin _$Return {

 String get id; String get number; ReturnStatus get status; String? get orderId; String? get reasonId; String? get refundTotal; String? get refundTaxTotal; String? get approvedAt; String? get receivedAt; String? get refundedAt; String? get canceledAt; ReturnReason? get reason; List<ReturnLineItem>? get returnLineItems; List<CustomField>? get customFields;
/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReturnCopyWith<Return> get copyWith => _$ReturnCopyWithImpl<Return>(this as Return, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Return;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Return&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.reasonId, _this.reasonId) || other.reasonId == _this.reasonId)&&(identical(other.refundTotal, _this.refundTotal) || other.refundTotal == _this.refundTotal)&&(identical(other.refundTaxTotal, _this.refundTaxTotal) || other.refundTaxTotal == _this.refundTaxTotal)&&(identical(other.approvedAt, _this.approvedAt) || other.approvedAt == _this.approvedAt)&&(identical(other.receivedAt, _this.receivedAt) || other.receivedAt == _this.receivedAt)&&(identical(other.refundedAt, _this.refundedAt) || other.refundedAt == _this.refundedAt)&&(identical(other.canceledAt, _this.canceledAt) || other.canceledAt == _this.canceledAt)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&const DeepCollectionEquality().equals(other.returnLineItems, _this.returnLineItems)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Return;
  return Object.hash(runtimeType,_this.id,_this.number,_this.status,_this.orderId,_this.reasonId,_this.refundTotal,_this.refundTaxTotal,_this.approvedAt,_this.receivedAt,_this.refundedAt,_this.canceledAt,_this.reason,const DeepCollectionEquality().hash(_this.returnLineItems),const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Return;
  return 'Return(id: ${_this.id}, number: ${_this.number}, status: ${_this.status}, orderId: ${_this.orderId}, reasonId: ${_this.reasonId}, refundTotal: ${_this.refundTotal}, refundTaxTotal: ${_this.refundTaxTotal}, approvedAt: ${_this.approvedAt}, receivedAt: ${_this.receivedAt}, refundedAt: ${_this.refundedAt}, canceledAt: ${_this.canceledAt}, reason: ${_this.reason}, returnLineItems: ${_this.returnLineItems}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $ReturnCopyWith<$Res>  {
  factory $ReturnCopyWith(Return value, $Res Function(Return) _then) = _$ReturnCopyWithImpl;
@useResult
$Res call({
 String id, String number, ReturnStatus status, String? orderId, String? reasonId, String? refundTotal, String? refundTaxTotal, String? approvedAt, String? receivedAt, String? refundedAt, String? canceledAt, ReturnReason? reason, List<ReturnLineItem>? returnLineItems, List<CustomField>? customFields
});


$ReturnReasonCopyWith<$Res>? get reason;

}
/// @nodoc
class _$ReturnCopyWithImpl<$Res>
    implements $ReturnCopyWith<$Res> {
  _$ReturnCopyWithImpl(this._self, this._then);

  final Return _self;
  final $Res Function(Return) _then;

/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? status = null,Object? orderId = freezed,Object? reasonId = freezed,Object? refundTotal = freezed,Object? refundTaxTotal = freezed,Object? approvedAt = freezed,Object? receivedAt = freezed,Object? refundedAt = freezed,Object? canceledAt = freezed,Object? reason = freezed,Object? returnLineItems = freezed,Object? customFields = freezed,}) {
  return _then(Return(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReturnStatus,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: freezed == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as String?,refundTaxTotal: freezed == refundTaxTotal ? _self.refundTaxTotal : refundTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as String?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReturnReason?,returnLineItems: freezed == returnLineItems ? _self.returnLineItems : returnLineItems // ignore: cast_nullable_to_non_nullable
as List<ReturnLineItem>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReturnReasonCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $ReturnReasonCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}


/// Adds pattern-matching-related methods to [Return].
extension ReturnPatterns on Return {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Return value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Return() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Return value)  $default,){
final _that = this;
switch (_that) {
case _Return():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Return value)?  $default,){
final _that = this;
switch (_that) {
case _Return() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  ReturnStatus status,  String? orderId,  String? reasonId,  String? refundTotal,  String? refundTaxTotal,  String? approvedAt,  String? receivedAt,  String? refundedAt,  String? canceledAt,  ReturnReason? reason,  List<ReturnLineItem>? returnLineItems,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Return() when $default != null:
return $default(_that.id,_that.number,_that.status,_that.orderId,_that.reasonId,_that.refundTotal,_that.refundTaxTotal,_that.approvedAt,_that.receivedAt,_that.refundedAt,_that.canceledAt,_that.reason,_that.returnLineItems,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  ReturnStatus status,  String? orderId,  String? reasonId,  String? refundTotal,  String? refundTaxTotal,  String? approvedAt,  String? receivedAt,  String? refundedAt,  String? canceledAt,  ReturnReason? reason,  List<ReturnLineItem>? returnLineItems,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Return():
return $default(_that.id,_that.number,_that.status,_that.orderId,_that.reasonId,_that.refundTotal,_that.refundTaxTotal,_that.approvedAt,_that.receivedAt,_that.refundedAt,_that.canceledAt,_that.reason,_that.returnLineItems,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  ReturnStatus status,  String? orderId,  String? reasonId,  String? refundTotal,  String? refundTaxTotal,  String? approvedAt,  String? receivedAt,  String? refundedAt,  String? canceledAt,  ReturnReason? reason,  List<ReturnLineItem>? returnLineItems,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Return() when $default != null:
return $default(_that.id,_that.number,_that.status,_that.orderId,_that.reasonId,_that.refundTotal,_that.refundTaxTotal,_that.approvedAt,_that.receivedAt,_that.refundedAt,_that.canceledAt,_that.reason,_that.returnLineItems,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Return extends Return {
  const _Return({required this.id, required this.number, required this.status, this.orderId, this.reasonId, this.refundTotal, this.refundTaxTotal, this.approvedAt, this.receivedAt, this.refundedAt, this.canceledAt, this.reason, this.returnLineItems, this.customFields}): super._();
  

@override final  String id;
@override final  String number;
@override final  ReturnStatus status;
@override final  String? orderId;
@override final  String? reasonId;
@override final  String? refundTotal;
@override final  String? refundTaxTotal;
@override final  String? approvedAt;
@override final  String? receivedAt;
@override final  String? refundedAt;
@override final  String? canceledAt;
@override final  ReturnReason? reason;
@override final  List<ReturnLineItem>? returnLineItems;
@override final  List<CustomField>? customFields;

/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReturnCopyWith<_Return> get copyWith => __$ReturnCopyWithImpl<_Return>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Return&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.refundTotal, refundTotal) || other.refundTotal == refundTotal)&&(identical(other.refundTaxTotal, refundTaxTotal) || other.refundTaxTotal == refundTaxTotal)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.receivedAt, receivedAt) || other.receivedAt == receivedAt)&&(identical(other.refundedAt, refundedAt) || other.refundedAt == refundedAt)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.returnLineItems, returnLineItems)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,number,status,orderId,reasonId,refundTotal,refundTaxTotal,approvedAt,receivedAt,refundedAt,canceledAt,reason,const DeepCollectionEquality().hash(returnLineItems),const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Return(id: $id, number: $number, status: $status, orderId: $orderId, reasonId: $reasonId, refundTotal: $refundTotal, refundTaxTotal: $refundTaxTotal, approvedAt: $approvedAt, receivedAt: $receivedAt, refundedAt: $refundedAt, canceledAt: $canceledAt, reason: $reason, returnLineItems: $returnLineItems, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$ReturnCopyWith<$Res> implements $ReturnCopyWith<$Res> {
  factory _$ReturnCopyWith(_Return value, $Res Function(_Return) _then) = __$ReturnCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, ReturnStatus status, String? orderId, String? reasonId, String? refundTotal, String? refundTaxTotal, String? approvedAt, String? receivedAt, String? refundedAt, String? canceledAt, ReturnReason? reason, List<ReturnLineItem>? returnLineItems, List<CustomField>? customFields
});


@override $ReturnReasonCopyWith<$Res>? get reason;

}
/// @nodoc
class __$ReturnCopyWithImpl<$Res>
    implements _$ReturnCopyWith<$Res> {
  __$ReturnCopyWithImpl(this._self, this._then);

  final _Return _self;
  final $Res Function(_Return) _then;

/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? status = null,Object? orderId = freezed,Object? reasonId = freezed,Object? refundTotal = freezed,Object? refundTaxTotal = freezed,Object? approvedAt = freezed,Object? receivedAt = freezed,Object? refundedAt = freezed,Object? canceledAt = freezed,Object? reason = freezed,Object? returnLineItems = freezed,Object? customFields = freezed,}) {
  return _then(_Return(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReturnStatus,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: freezed == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as String?,refundTaxTotal: freezed == refundTaxTotal ? _self.refundTaxTotal : refundTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,receivedAt: freezed == receivedAt ? _self.receivedAt : receivedAt // ignore: cast_nullable_to_non_nullable
as String?,refundedAt: freezed == refundedAt ? _self.refundedAt : refundedAt // ignore: cast_nullable_to_non_nullable
as String?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ReturnReason?,returnLineItems: freezed == returnLineItems ? _self.returnLineItems : returnLineItems // ignore: cast_nullable_to_non_nullable
as List<ReturnLineItem>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Return
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReturnReasonCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $ReturnReasonCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

/// @nodoc
mixin _$ClaimLineItem {

 String get id; int get quantity; bool get sendReplacement; String? get description; String? get refundAmount; String? get paidAmount; String? get preTaxAmount; String? get includedTaxTotal; String? get additionalTaxTotal; String? get taxTotal; String? get variantId; String? get replacementVariantId; String? get lineItemId; Map<String, Object?>? get variant;
/// Create a copy of ClaimLineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimLineItemCopyWith<ClaimLineItem> get copyWith => _$ClaimLineItemCopyWithImpl<ClaimLineItem>(this as ClaimLineItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ClaimLineItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClaimLineItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.sendReplacement, _this.sendReplacement) || other.sendReplacement == _this.sendReplacement)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.refundAmount, _this.refundAmount) || other.refundAmount == _this.refundAmount)&&(identical(other.paidAmount, _this.paidAmount) || other.paidAmount == _this.paidAmount)&&(identical(other.preTaxAmount, _this.preTaxAmount) || other.preTaxAmount == _this.preTaxAmount)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.replacementVariantId, _this.replacementVariantId) || other.replacementVariantId == _this.replacementVariantId)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&const DeepCollectionEquality().equals(other.variant, _this.variant));
}


@override
int get hashCode {
  final _this = this as ClaimLineItem;
  return Object.hash(runtimeType,_this.id,_this.quantity,_this.sendReplacement,_this.description,_this.refundAmount,_this.paidAmount,_this.preTaxAmount,_this.includedTaxTotal,_this.additionalTaxTotal,_this.taxTotal,_this.variantId,_this.replacementVariantId,_this.lineItemId,const DeepCollectionEquality().hash(_this.variant));
}

@override
String toString() {
  final _this = this as ClaimLineItem;
  return 'ClaimLineItem(id: ${_this.id}, quantity: ${_this.quantity}, sendReplacement: ${_this.sendReplacement}, description: ${_this.description}, refundAmount: ${_this.refundAmount}, paidAmount: ${_this.paidAmount}, preTaxAmount: ${_this.preTaxAmount}, includedTaxTotal: ${_this.includedTaxTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, taxTotal: ${_this.taxTotal}, variantId: ${_this.variantId}, replacementVariantId: ${_this.replacementVariantId}, lineItemId: ${_this.lineItemId}, variant: ${_this.variant})';
}


}

/// @nodoc
abstract mixin class $ClaimLineItemCopyWith<$Res>  {
  factory $ClaimLineItemCopyWith(ClaimLineItem value, $Res Function(ClaimLineItem) _then) = _$ClaimLineItemCopyWithImpl;
@useResult
$Res call({
 String id, int quantity, bool sendReplacement, String? description, String? refundAmount, String? paidAmount, String? preTaxAmount, String? includedTaxTotal, String? additionalTaxTotal, String? taxTotal, String? variantId, String? replacementVariantId, String? lineItemId, Map<String, Object?>? variant
});




}
/// @nodoc
class _$ClaimLineItemCopyWithImpl<$Res>
    implements $ClaimLineItemCopyWith<$Res> {
  _$ClaimLineItemCopyWithImpl(this._self, this._then);

  final ClaimLineItem _self;
  final $Res Function(ClaimLineItem) _then;

/// Create a copy of ClaimLineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? quantity = null,Object? sendReplacement = null,Object? description = freezed,Object? refundAmount = freezed,Object? paidAmount = freezed,Object? preTaxAmount = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? taxTotal = freezed,Object? variantId = freezed,Object? replacementVariantId = freezed,Object? lineItemId = freezed,Object? variant = freezed,}) {
  return _then(ClaimLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sendReplacement: null == sendReplacement ? _self.sendReplacement : sendReplacement // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,replacementVariantId: freezed == replacementVariantId ? _self.replacementVariantId : replacementVariantId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClaimLineItem].
extension ClaimLineItemPatterns on ClaimLineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClaimLineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClaimLineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClaimLineItem value)  $default,){
final _that = this;
switch (_that) {
case _ClaimLineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClaimLineItem value)?  $default,){
final _that = this;
switch (_that) {
case _ClaimLineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int quantity,  bool sendReplacement,  String? description,  String? refundAmount,  String? paidAmount,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? variantId,  String? replacementVariantId,  String? lineItemId,  Map<String, Object?>? variant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClaimLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.sendReplacement,_that.description,_that.refundAmount,_that.paidAmount,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.variantId,_that.replacementVariantId,_that.lineItemId,_that.variant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int quantity,  bool sendReplacement,  String? description,  String? refundAmount,  String? paidAmount,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? variantId,  String? replacementVariantId,  String? lineItemId,  Map<String, Object?>? variant)  $default,) {final _that = this;
switch (_that) {
case _ClaimLineItem():
return $default(_that.id,_that.quantity,_that.sendReplacement,_that.description,_that.refundAmount,_that.paidAmount,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.variantId,_that.replacementVariantId,_that.lineItemId,_that.variant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int quantity,  bool sendReplacement,  String? description,  String? refundAmount,  String? paidAmount,  String? preTaxAmount,  String? includedTaxTotal,  String? additionalTaxTotal,  String? taxTotal,  String? variantId,  String? replacementVariantId,  String? lineItemId,  Map<String, Object?>? variant)?  $default,) {final _that = this;
switch (_that) {
case _ClaimLineItem() when $default != null:
return $default(_that.id,_that.quantity,_that.sendReplacement,_that.description,_that.refundAmount,_that.paidAmount,_that.preTaxAmount,_that.includedTaxTotal,_that.additionalTaxTotal,_that.taxTotal,_that.variantId,_that.replacementVariantId,_that.lineItemId,_that.variant);case _:
  return null;

}
}

}

/// @nodoc


class _ClaimLineItem extends ClaimLineItem {
  const _ClaimLineItem({required this.id, required this.quantity, required this.sendReplacement, this.description, this.refundAmount, this.paidAmount, this.preTaxAmount, this.includedTaxTotal, this.additionalTaxTotal, this.taxTotal, this.variantId, this.replacementVariantId, this.lineItemId, this.variant}): super._();
  

@override final  String id;
@override final  int quantity;
@override final  bool sendReplacement;
@override final  String? description;
@override final  String? refundAmount;
@override final  String? paidAmount;
@override final  String? preTaxAmount;
@override final  String? includedTaxTotal;
@override final  String? additionalTaxTotal;
@override final  String? taxTotal;
@override final  String? variantId;
@override final  String? replacementVariantId;
@override final  String? lineItemId;
@override final  Map<String, Object?>? variant;

/// Create a copy of ClaimLineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimLineItemCopyWith<_ClaimLineItem> get copyWith => __$ClaimLineItemCopyWithImpl<_ClaimLineItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClaimLineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sendReplacement, sendReplacement) || other.sendReplacement == sendReplacement)&&(identical(other.description, description) || other.description == description)&&(identical(other.refundAmount, refundAmount) || other.refundAmount == refundAmount)&&(identical(other.paidAmount, paidAmount) || other.paidAmount == paidAmount)&&(identical(other.preTaxAmount, preTaxAmount) || other.preTaxAmount == preTaxAmount)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.replacementVariantId, replacementVariantId) || other.replacementVariantId == replacementVariantId)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&const DeepCollectionEquality().equals(other.variant, variant));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,quantity,sendReplacement,description,refundAmount,paidAmount,preTaxAmount,includedTaxTotal,additionalTaxTotal,taxTotal,variantId,replacementVariantId,lineItemId,const DeepCollectionEquality().hash(variant));
}

@override
String toString() {
    return 'ClaimLineItem(id: $id, quantity: $quantity, sendReplacement: $sendReplacement, description: $description, refundAmount: $refundAmount, paidAmount: $paidAmount, preTaxAmount: $preTaxAmount, includedTaxTotal: $includedTaxTotal, additionalTaxTotal: $additionalTaxTotal, taxTotal: $taxTotal, variantId: $variantId, replacementVariantId: $replacementVariantId, lineItemId: $lineItemId, variant: $variant)';
}


}

/// @nodoc
abstract mixin class _$ClaimLineItemCopyWith<$Res> implements $ClaimLineItemCopyWith<$Res> {
  factory _$ClaimLineItemCopyWith(_ClaimLineItem value, $Res Function(_ClaimLineItem) _then) = __$ClaimLineItemCopyWithImpl;
@override @useResult
$Res call({
 String id, int quantity, bool sendReplacement, String? description, String? refundAmount, String? paidAmount, String? preTaxAmount, String? includedTaxTotal, String? additionalTaxTotal, String? taxTotal, String? variantId, String? replacementVariantId, String? lineItemId, Map<String, Object?>? variant
});




}
/// @nodoc
class __$ClaimLineItemCopyWithImpl<$Res>
    implements _$ClaimLineItemCopyWith<$Res> {
  __$ClaimLineItemCopyWithImpl(this._self, this._then);

  final _ClaimLineItem _self;
  final $Res Function(_ClaimLineItem) _then;

/// Create a copy of ClaimLineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? quantity = null,Object? sendReplacement = null,Object? description = freezed,Object? refundAmount = freezed,Object? paidAmount = freezed,Object? preTaxAmount = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? taxTotal = freezed,Object? variantId = freezed,Object? replacementVariantId = freezed,Object? lineItemId = freezed,Object? variant = freezed,}) {
  return _then(_ClaimLineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sendReplacement: null == sendReplacement ? _self.sendReplacement : sendReplacement // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,refundAmount: freezed == refundAmount ? _self.refundAmount : refundAmount // ignore: cast_nullable_to_non_nullable
as String?,paidAmount: freezed == paidAmount ? _self.paidAmount : paidAmount // ignore: cast_nullable_to_non_nullable
as String?,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,replacementVariantId: freezed == replacementVariantId ? _self.replacementVariantId : replacementVariantId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
mixin _$Claim {

 String get id; String get number; ClaimStatus get status; ClaimResolution? get resolution; String? get orderId; String? get reasonId; String? get refundTotal; String? get approvedAt; String? get resolvedAt; String? get deniedAt; String? get canceledAt; ClaimReason? get reason; List<ClaimLineItem>? get claimLineItems; List<CustomField>? get customFields;
/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClaimCopyWith<Claim> get copyWith => _$ClaimCopyWithImpl<Claim>(this as Claim, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Claim;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Claim&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.resolution, _this.resolution) || other.resolution == _this.resolution)&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.reasonId, _this.reasonId) || other.reasonId == _this.reasonId)&&(identical(other.refundTotal, _this.refundTotal) || other.refundTotal == _this.refundTotal)&&(identical(other.approvedAt, _this.approvedAt) || other.approvedAt == _this.approvedAt)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt)&&(identical(other.deniedAt, _this.deniedAt) || other.deniedAt == _this.deniedAt)&&(identical(other.canceledAt, _this.canceledAt) || other.canceledAt == _this.canceledAt)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&const DeepCollectionEquality().equals(other.claimLineItems, _this.claimLineItems)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Claim;
  return Object.hash(runtimeType,_this.id,_this.number,_this.status,_this.resolution,_this.orderId,_this.reasonId,_this.refundTotal,_this.approvedAt,_this.resolvedAt,_this.deniedAt,_this.canceledAt,_this.reason,const DeepCollectionEquality().hash(_this.claimLineItems),const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Claim;
  return 'Claim(id: ${_this.id}, number: ${_this.number}, status: ${_this.status}, resolution: ${_this.resolution}, orderId: ${_this.orderId}, reasonId: ${_this.reasonId}, refundTotal: ${_this.refundTotal}, approvedAt: ${_this.approvedAt}, resolvedAt: ${_this.resolvedAt}, deniedAt: ${_this.deniedAt}, canceledAt: ${_this.canceledAt}, reason: ${_this.reason}, claimLineItems: ${_this.claimLineItems}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $ClaimCopyWith<$Res>  {
  factory $ClaimCopyWith(Claim value, $Res Function(Claim) _then) = _$ClaimCopyWithImpl;
@useResult
$Res call({
 String id, String number, ClaimStatus status, ClaimResolution? resolution, String? orderId, String? reasonId, String? refundTotal, String? approvedAt, String? resolvedAt, String? deniedAt, String? canceledAt, ClaimReason? reason, List<ClaimLineItem>? claimLineItems, List<CustomField>? customFields
});


$ClaimReasonCopyWith<$Res>? get reason;

}
/// @nodoc
class _$ClaimCopyWithImpl<$Res>
    implements $ClaimCopyWith<$Res> {
  _$ClaimCopyWithImpl(this._self, this._then);

  final Claim _self;
  final $Res Function(Claim) _then;

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? status = null,Object? resolution = freezed,Object? orderId = freezed,Object? reasonId = freezed,Object? refundTotal = freezed,Object? approvedAt = freezed,Object? resolvedAt = freezed,Object? deniedAt = freezed,Object? canceledAt = freezed,Object? reason = freezed,Object? claimLineItems = freezed,Object? customFields = freezed,}) {
  return _then(Claim(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as ClaimResolution?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: freezed == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,deniedAt: freezed == deniedAt ? _self.deniedAt : deniedAt // ignore: cast_nullable_to_non_nullable
as String?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ClaimReason?,claimLineItems: freezed == claimLineItems ? _self.claimLineItems : claimLineItems // ignore: cast_nullable_to_non_nullable
as List<ClaimLineItem>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClaimReasonCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $ClaimReasonCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}


/// Adds pattern-matching-related methods to [Claim].
extension ClaimPatterns on Claim {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Claim value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Claim() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Claim value)  $default,){
final _that = this;
switch (_that) {
case _Claim():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Claim value)?  $default,){
final _that = this;
switch (_that) {
case _Claim() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  ClaimStatus status,  ClaimResolution? resolution,  String? orderId,  String? reasonId,  String? refundTotal,  String? approvedAt,  String? resolvedAt,  String? deniedAt,  String? canceledAt,  ClaimReason? reason,  List<ClaimLineItem>? claimLineItems,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Claim() when $default != null:
return $default(_that.id,_that.number,_that.status,_that.resolution,_that.orderId,_that.reasonId,_that.refundTotal,_that.approvedAt,_that.resolvedAt,_that.deniedAt,_that.canceledAt,_that.reason,_that.claimLineItems,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  ClaimStatus status,  ClaimResolution? resolution,  String? orderId,  String? reasonId,  String? refundTotal,  String? approvedAt,  String? resolvedAt,  String? deniedAt,  String? canceledAt,  ClaimReason? reason,  List<ClaimLineItem>? claimLineItems,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Claim():
return $default(_that.id,_that.number,_that.status,_that.resolution,_that.orderId,_that.reasonId,_that.refundTotal,_that.approvedAt,_that.resolvedAt,_that.deniedAt,_that.canceledAt,_that.reason,_that.claimLineItems,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  ClaimStatus status,  ClaimResolution? resolution,  String? orderId,  String? reasonId,  String? refundTotal,  String? approvedAt,  String? resolvedAt,  String? deniedAt,  String? canceledAt,  ClaimReason? reason,  List<ClaimLineItem>? claimLineItems,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Claim() when $default != null:
return $default(_that.id,_that.number,_that.status,_that.resolution,_that.orderId,_that.reasonId,_that.refundTotal,_that.approvedAt,_that.resolvedAt,_that.deniedAt,_that.canceledAt,_that.reason,_that.claimLineItems,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Claim extends Claim {
  const _Claim({required this.id, required this.number, required this.status, this.resolution, this.orderId, this.reasonId, this.refundTotal, this.approvedAt, this.resolvedAt, this.deniedAt, this.canceledAt, this.reason, this.claimLineItems, this.customFields}): super._();
  

@override final  String id;
@override final  String number;
@override final  ClaimStatus status;
@override final  ClaimResolution? resolution;
@override final  String? orderId;
@override final  String? reasonId;
@override final  String? refundTotal;
@override final  String? approvedAt;
@override final  String? resolvedAt;
@override final  String? deniedAt;
@override final  String? canceledAt;
@override final  ClaimReason? reason;
@override final  List<ClaimLineItem>? claimLineItems;
@override final  List<CustomField>? customFields;

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClaimCopyWith<_Claim> get copyWith => __$ClaimCopyWithImpl<_Claim>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Claim&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.refundTotal, refundTotal) || other.refundTotal == refundTotal)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.deniedAt, deniedAt) || other.deniedAt == deniedAt)&&(identical(other.canceledAt, canceledAt) || other.canceledAt == canceledAt)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.claimLineItems, claimLineItems)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,number,status,resolution,orderId,reasonId,refundTotal,approvedAt,resolvedAt,deniedAt,canceledAt,reason,const DeepCollectionEquality().hash(claimLineItems),const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Claim(id: $id, number: $number, status: $status, resolution: $resolution, orderId: $orderId, reasonId: $reasonId, refundTotal: $refundTotal, approvedAt: $approvedAt, resolvedAt: $resolvedAt, deniedAt: $deniedAt, canceledAt: $canceledAt, reason: $reason, claimLineItems: $claimLineItems, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$ClaimCopyWith<$Res> implements $ClaimCopyWith<$Res> {
  factory _$ClaimCopyWith(_Claim value, $Res Function(_Claim) _then) = __$ClaimCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, ClaimStatus status, ClaimResolution? resolution, String? orderId, String? reasonId, String? refundTotal, String? approvedAt, String? resolvedAt, String? deniedAt, String? canceledAt, ClaimReason? reason, List<ClaimLineItem>? claimLineItems, List<CustomField>? customFields
});


@override $ClaimReasonCopyWith<$Res>? get reason;

}
/// @nodoc
class __$ClaimCopyWithImpl<$Res>
    implements _$ClaimCopyWith<$Res> {
  __$ClaimCopyWithImpl(this._self, this._then);

  final _Claim _self;
  final $Res Function(_Claim) _then;

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? status = null,Object? resolution = freezed,Object? orderId = freezed,Object? reasonId = freezed,Object? refundTotal = freezed,Object? approvedAt = freezed,Object? resolvedAt = freezed,Object? deniedAt = freezed,Object? canceledAt = freezed,Object? reason = freezed,Object? claimLineItems = freezed,Object? customFields = freezed,}) {
  return _then(_Claim(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClaimStatus,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as ClaimResolution?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,refundTotal: freezed == refundTotal ? _self.refundTotal : refundTotal // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,deniedAt: freezed == deniedAt ? _self.deniedAt : deniedAt // ignore: cast_nullable_to_non_nullable
as String?,canceledAt: freezed == canceledAt ? _self.canceledAt : canceledAt // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as ClaimReason?,claimLineItems: freezed == claimLineItems ? _self.claimLineItems : claimLineItems // ignore: cast_nullable_to_non_nullable
as List<ClaimLineItem>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Claim
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClaimReasonCopyWith<$Res>? get reason {
    if (_self.reason == null) {
    return null;
  }

  return $ClaimReasonCopyWith<$Res>(_self.reason!, (value) {
    return _then(_self.copyWith(reason: value));
  });
}
}

/// @nodoc
mixin _$CreditCard {

 String get id; String get brand; String get last4; int get month; int get year; String? get name; bool get isDefault; String? get gatewayPaymentProfileId; String? get paymentMethodId; List<CustomField>? get customFields;
/// Create a copy of CreditCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditCardCopyWith<CreditCard> get copyWith => _$CreditCardCopyWithImpl<CreditCard>(this as CreditCard, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreditCard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditCard&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.last4, _this.last4) || other.last4 == _this.last4)&&(identical(other.month, _this.month) || other.month == _this.month)&&(identical(other.year, _this.year) || other.year == _this.year)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&(identical(other.gatewayPaymentProfileId, _this.gatewayPaymentProfileId) || other.gatewayPaymentProfileId == _this.gatewayPaymentProfileId)&&(identical(other.paymentMethodId, _this.paymentMethodId) || other.paymentMethodId == _this.paymentMethodId)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as CreditCard;
  return Object.hash(runtimeType,_this.id,_this.brand,_this.last4,_this.month,_this.year,_this.name,_this.isDefault,_this.gatewayPaymentProfileId,_this.paymentMethodId,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as CreditCard;
  return 'CreditCard(id: ${_this.id}, brand: ${_this.brand}, last4: ${_this.last4}, month: ${_this.month}, year: ${_this.year}, name: ${_this.name}, isDefault: ${_this.isDefault}, gatewayPaymentProfileId: ${_this.gatewayPaymentProfileId}, paymentMethodId: ${_this.paymentMethodId}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $CreditCardCopyWith<$Res>  {
  factory $CreditCardCopyWith(CreditCard value, $Res Function(CreditCard) _then) = _$CreditCardCopyWithImpl;
@useResult
$Res call({
 String id, String brand, String last4, int month, int year, String? name, bool isDefault, String? gatewayPaymentProfileId, String? paymentMethodId, List<CustomField>? customFields
});




}
/// @nodoc
class _$CreditCardCopyWithImpl<$Res>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._self, this._then);

  final CreditCard _self;
  final $Res Function(CreditCard) _then;

/// Create a copy of CreditCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? brand = null,Object? last4 = null,Object? month = null,Object? year = null,Object? name = freezed,Object? isDefault = null,Object? gatewayPaymentProfileId = freezed,Object? paymentMethodId = freezed,Object? customFields = freezed,}) {
  return _then(CreditCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,last4: null == last4 ? _self.last4 : last4 // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,gatewayPaymentProfileId: freezed == gatewayPaymentProfileId ? _self.gatewayPaymentProfileId : gatewayPaymentProfileId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditCard].
extension CreditCardPatterns on CreditCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditCard value)  $default,){
final _that = this;
switch (_that) {
case _CreditCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditCard value)?  $default,){
final _that = this;
switch (_that) {
case _CreditCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String brand,  String last4,  int month,  int year,  String? name,  bool isDefault,  String? gatewayPaymentProfileId,  String? paymentMethodId,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditCard() when $default != null:
return $default(_that.id,_that.brand,_that.last4,_that.month,_that.year,_that.name,_that.isDefault,_that.gatewayPaymentProfileId,_that.paymentMethodId,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String brand,  String last4,  int month,  int year,  String? name,  bool isDefault,  String? gatewayPaymentProfileId,  String? paymentMethodId,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _CreditCard():
return $default(_that.id,_that.brand,_that.last4,_that.month,_that.year,_that.name,_that.isDefault,_that.gatewayPaymentProfileId,_that.paymentMethodId,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String brand,  String last4,  int month,  int year,  String? name,  bool isDefault,  String? gatewayPaymentProfileId,  String? paymentMethodId,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _CreditCard() when $default != null:
return $default(_that.id,_that.brand,_that.last4,_that.month,_that.year,_that.name,_that.isDefault,_that.gatewayPaymentProfileId,_that.paymentMethodId,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _CreditCard extends CreditCard {
  const _CreditCard({required this.id, required this.brand, required this.last4, required this.month, required this.year, this.name, required this.isDefault, this.gatewayPaymentProfileId, this.paymentMethodId, this.customFields}): super._();
  

@override final  String id;
@override final  String brand;
@override final  String last4;
@override final  int month;
@override final  int year;
@override final  String? name;
@override final  bool isDefault;
@override final  String? gatewayPaymentProfileId;
@override final  String? paymentMethodId;
@override final  List<CustomField>? customFields;

/// Create a copy of CreditCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditCardCopyWith<_CreditCard> get copyWith => __$CreditCardCopyWithImpl<_CreditCard>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditCard&&(identical(other.id, id) || other.id == id)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.last4, last4) || other.last4 == last4)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.gatewayPaymentProfileId, gatewayPaymentProfileId) || other.gatewayPaymentProfileId == gatewayPaymentProfileId)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,brand,last4,month,year,name,isDefault,gatewayPaymentProfileId,paymentMethodId,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'CreditCard(id: $id, brand: $brand, last4: $last4, month: $month, year: $year, name: $name, isDefault: $isDefault, gatewayPaymentProfileId: $gatewayPaymentProfileId, paymentMethodId: $paymentMethodId, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$CreditCardCopyWith<$Res> implements $CreditCardCopyWith<$Res> {
  factory _$CreditCardCopyWith(_CreditCard value, $Res Function(_CreditCard) _then) = __$CreditCardCopyWithImpl;
@override @useResult
$Res call({
 String id, String brand, String last4, int month, int year, String? name, bool isDefault, String? gatewayPaymentProfileId, String? paymentMethodId, List<CustomField>? customFields
});




}
/// @nodoc
class __$CreditCardCopyWithImpl<$Res>
    implements _$CreditCardCopyWith<$Res> {
  __$CreditCardCopyWithImpl(this._self, this._then);

  final _CreditCard _self;
  final $Res Function(_CreditCard) _then;

/// Create a copy of CreditCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? brand = null,Object? last4 = null,Object? month = null,Object? year = null,Object? name = freezed,Object? isDefault = null,Object? gatewayPaymentProfileId = freezed,Object? paymentMethodId = freezed,Object? customFields = freezed,}) {
  return _then(_CreditCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,last4: null == last4 ? _self.last4 : last4 // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,gatewayPaymentProfileId: freezed == gatewayPaymentProfileId ? _self.gatewayPaymentProfileId : gatewayPaymentProfileId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}

/// @nodoc
mixin _$PaymentSetupSession {

 String get id; PaymentSetupSessionStatus get status; String? get externalId; String? get externalClientSecret; Map<String, Object?> get externalData; String? get paymentMethodId; String? get paymentSourceId; String? get paymentSourceType; String? get customerId; PaymentMethod get paymentMethod;
/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentSetupSessionCopyWith<PaymentSetupSession> get copyWith => _$PaymentSetupSessionCopyWithImpl<PaymentSetupSession>(this as PaymentSetupSession, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PaymentSetupSession;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentSetupSession&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.externalId, _this.externalId) || other.externalId == _this.externalId)&&(identical(other.externalClientSecret, _this.externalClientSecret) || other.externalClientSecret == _this.externalClientSecret)&&const DeepCollectionEquality().equals(other.externalData, _this.externalData)&&(identical(other.paymentMethodId, _this.paymentMethodId) || other.paymentMethodId == _this.paymentMethodId)&&(identical(other.paymentSourceId, _this.paymentSourceId) || other.paymentSourceId == _this.paymentSourceId)&&(identical(other.paymentSourceType, _this.paymentSourceType) || other.paymentSourceType == _this.paymentSourceType)&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod));
}


@override
int get hashCode {
  final _this = this as PaymentSetupSession;
  return Object.hash(runtimeType,_this.id,_this.status,_this.externalId,_this.externalClientSecret,const DeepCollectionEquality().hash(_this.externalData),_this.paymentMethodId,_this.paymentSourceId,_this.paymentSourceType,_this.customerId,_this.paymentMethod);
}

@override
String toString() {
  final _this = this as PaymentSetupSession;
  return 'PaymentSetupSession(id: ${_this.id}, status: ${_this.status}, externalId: ${_this.externalId}, externalClientSecret: ${_this.externalClientSecret}, externalData: ${_this.externalData}, paymentMethodId: ${_this.paymentMethodId}, paymentSourceId: ${_this.paymentSourceId}, paymentSourceType: ${_this.paymentSourceType}, customerId: ${_this.customerId}, paymentMethod: ${_this.paymentMethod})';
}


}

/// @nodoc
abstract mixin class $PaymentSetupSessionCopyWith<$Res>  {
  factory $PaymentSetupSessionCopyWith(PaymentSetupSession value, $Res Function(PaymentSetupSession) _then) = _$PaymentSetupSessionCopyWithImpl;
@useResult
$Res call({
 String id, PaymentSetupSessionStatus status, String? externalId, String? externalClientSecret, Map<String, Object?> externalData, String? paymentMethodId, String? paymentSourceId, String? paymentSourceType, String? customerId, PaymentMethod paymentMethod
});


$PaymentMethodCopyWith<$Res> get paymentMethod;

}
/// @nodoc
class _$PaymentSetupSessionCopyWithImpl<$Res>
    implements $PaymentSetupSessionCopyWith<$Res> {
  _$PaymentSetupSessionCopyWithImpl(this._self, this._then);

  final PaymentSetupSession _self;
  final $Res Function(PaymentSetupSession) _then;

/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? externalId = freezed,Object? externalClientSecret = freezed,Object? externalData = null,Object? paymentMethodId = freezed,Object? paymentSourceId = freezed,Object? paymentSourceType = freezed,Object? customerId = freezed,Object? paymentMethod = null,}) {
  return _then(PaymentSetupSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentSetupSessionStatus,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,externalClientSecret: freezed == externalClientSecret ? _self.externalClientSecret : externalClientSecret // ignore: cast_nullable_to_non_nullable
as String?,externalData: null == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,paymentSourceId: freezed == paymentSourceId ? _self.paymentSourceId : paymentSourceId // ignore: cast_nullable_to_non_nullable
as String?,paymentSourceType: freezed == paymentSourceType ? _self.paymentSourceType : paymentSourceType // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}
/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res> get paymentMethod {
  
  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentSetupSession].
extension PaymentSetupSessionPatterns on PaymentSetupSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentSetupSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentSetupSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentSetupSession value)  $default,){
final _that = this;
switch (_that) {
case _PaymentSetupSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentSetupSession value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentSetupSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PaymentSetupSessionStatus status,  String? externalId,  String? externalClientSecret,  Map<String, Object?> externalData,  String? paymentMethodId,  String? paymentSourceId,  String? paymentSourceType,  String? customerId,  PaymentMethod paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentSetupSession() when $default != null:
return $default(_that.id,_that.status,_that.externalId,_that.externalClientSecret,_that.externalData,_that.paymentMethodId,_that.paymentSourceId,_that.paymentSourceType,_that.customerId,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PaymentSetupSessionStatus status,  String? externalId,  String? externalClientSecret,  Map<String, Object?> externalData,  String? paymentMethodId,  String? paymentSourceId,  String? paymentSourceType,  String? customerId,  PaymentMethod paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _PaymentSetupSession():
return $default(_that.id,_that.status,_that.externalId,_that.externalClientSecret,_that.externalData,_that.paymentMethodId,_that.paymentSourceId,_that.paymentSourceType,_that.customerId,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PaymentSetupSessionStatus status,  String? externalId,  String? externalClientSecret,  Map<String, Object?> externalData,  String? paymentMethodId,  String? paymentSourceId,  String? paymentSourceType,  String? customerId,  PaymentMethod paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _PaymentSetupSession() when $default != null:
return $default(_that.id,_that.status,_that.externalId,_that.externalClientSecret,_that.externalData,_that.paymentMethodId,_that.paymentSourceId,_that.paymentSourceType,_that.customerId,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _PaymentSetupSession extends PaymentSetupSession {
  const _PaymentSetupSession({required this.id, required this.status, this.externalId, this.externalClientSecret, required this.externalData, this.paymentMethodId, this.paymentSourceId, this.paymentSourceType, this.customerId, required this.paymentMethod}): super._();
  

@override final  String id;
@override final  PaymentSetupSessionStatus status;
@override final  String? externalId;
@override final  String? externalClientSecret;
@override final  Map<String, Object?> externalData;
@override final  String? paymentMethodId;
@override final  String? paymentSourceId;
@override final  String? paymentSourceType;
@override final  String? customerId;
@override final  PaymentMethod paymentMethod;

/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSetupSessionCopyWith<_PaymentSetupSession> get copyWith => __$PaymentSetupSessionCopyWithImpl<_PaymentSetupSession>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSetupSession&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.externalClientSecret, externalClientSecret) || other.externalClientSecret == externalClientSecret)&&const DeepCollectionEquality().equals(other.externalData, externalData)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.paymentSourceId, paymentSourceId) || other.paymentSourceId == paymentSourceId)&&(identical(other.paymentSourceType, paymentSourceType) || other.paymentSourceType == paymentSourceType)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,status,externalId,externalClientSecret,const DeepCollectionEquality().hash(externalData),paymentMethodId,paymentSourceId,paymentSourceType,customerId,paymentMethod);
}

@override
String toString() {
    return 'PaymentSetupSession(id: $id, status: $status, externalId: $externalId, externalClientSecret: $externalClientSecret, externalData: $externalData, paymentMethodId: $paymentMethodId, paymentSourceId: $paymentSourceId, paymentSourceType: $paymentSourceType, customerId: $customerId, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$PaymentSetupSessionCopyWith<$Res> implements $PaymentSetupSessionCopyWith<$Res> {
  factory _$PaymentSetupSessionCopyWith(_PaymentSetupSession value, $Res Function(_PaymentSetupSession) _then) = __$PaymentSetupSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, PaymentSetupSessionStatus status, String? externalId, String? externalClientSecret, Map<String, Object?> externalData, String? paymentMethodId, String? paymentSourceId, String? paymentSourceType, String? customerId, PaymentMethod paymentMethod
});


@override $PaymentMethodCopyWith<$Res> get paymentMethod;

}
/// @nodoc
class __$PaymentSetupSessionCopyWithImpl<$Res>
    implements _$PaymentSetupSessionCopyWith<$Res> {
  __$PaymentSetupSessionCopyWithImpl(this._self, this._then);

  final _PaymentSetupSession _self;
  final $Res Function(_PaymentSetupSession) _then;

/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? externalId = freezed,Object? externalClientSecret = freezed,Object? externalData = null,Object? paymentMethodId = freezed,Object? paymentSourceId = freezed,Object? paymentSourceType = freezed,Object? customerId = freezed,Object? paymentMethod = null,}) {
  return _then(_PaymentSetupSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentSetupSessionStatus,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,externalClientSecret: freezed == externalClientSecret ? _self.externalClientSecret : externalClientSecret // ignore: cast_nullable_to_non_nullable
as String?,externalData: null == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,paymentMethodId: freezed == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,paymentSourceId: freezed == paymentSourceId ? _self.paymentSourceId : paymentSourceId // ignore: cast_nullable_to_non_nullable
as String?,paymentSourceType: freezed == paymentSourceType ? _self.paymentSourceType : paymentSourceType // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,
  ));
}

/// Create a copy of PaymentSetupSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res> get paymentMethod {
  
  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}

/// @nodoc
mixin _$Wishlist {

 String get id; String get name; String get token; bool get isDefault; bool get isPrivate; List<WishlistItem>? get items;
/// Create a copy of Wishlist
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistCopyWith<Wishlist> get copyWith => _$WishlistCopyWithImpl<Wishlist>(this as Wishlist, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Wishlist;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Wishlist&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&(identical(other.isPrivate, _this.isPrivate) || other.isPrivate == _this.isPrivate)&&const DeepCollectionEquality().equals(other.items, _this.items));
}


@override
int get hashCode {
  final _this = this as Wishlist;
  return Object.hash(runtimeType,_this.id,_this.name,_this.token,_this.isDefault,_this.isPrivate,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as Wishlist;
  return 'Wishlist(id: ${_this.id}, name: ${_this.name}, token: ${_this.token}, isDefault: ${_this.isDefault}, isPrivate: ${_this.isPrivate}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $WishlistCopyWith<$Res>  {
  factory $WishlistCopyWith(Wishlist value, $Res Function(Wishlist) _then) = _$WishlistCopyWithImpl;
@useResult
$Res call({
 String id, String name, String token, bool isDefault, bool isPrivate, List<WishlistItem>? items
});




}
/// @nodoc
class _$WishlistCopyWithImpl<$Res>
    implements $WishlistCopyWith<$Res> {
  _$WishlistCopyWithImpl(this._self, this._then);

  final Wishlist _self;
  final $Res Function(Wishlist) _then;

/// Create a copy of Wishlist
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? token = null,Object? isDefault = null,Object? isPrivate = null,Object? items = freezed,}) {
  return _then(Wishlist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Wishlist].
extension WishlistPatterns on Wishlist {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Wishlist value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Wishlist() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Wishlist value)  $default,){
final _that = this;
switch (_that) {
case _Wishlist():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Wishlist value)?  $default,){
final _that = this;
switch (_that) {
case _Wishlist() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String token,  bool isDefault,  bool isPrivate,  List<WishlistItem>? items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Wishlist() when $default != null:
return $default(_that.id,_that.name,_that.token,_that.isDefault,_that.isPrivate,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String token,  bool isDefault,  bool isPrivate,  List<WishlistItem>? items)  $default,) {final _that = this;
switch (_that) {
case _Wishlist():
return $default(_that.id,_that.name,_that.token,_that.isDefault,_that.isPrivate,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String token,  bool isDefault,  bool isPrivate,  List<WishlistItem>? items)?  $default,) {final _that = this;
switch (_that) {
case _Wishlist() when $default != null:
return $default(_that.id,_that.name,_that.token,_that.isDefault,_that.isPrivate,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _Wishlist extends Wishlist {
  const _Wishlist({required this.id, required this.name, required this.token, required this.isDefault, required this.isPrivate, this.items}): super._();
  

@override final  String id;
@override final  String name;
@override final  String token;
@override final  bool isDefault;
@override final  bool isPrivate;
@override final  List<WishlistItem>? items;

/// Create a copy of Wishlist
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistCopyWith<_Wishlist> get copyWith => __$WishlistCopyWithImpl<_Wishlist>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Wishlist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.token, token) || other.token == token)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,token,isDefault,isPrivate,const DeepCollectionEquality().hash(items));
}

@override
String toString() {
    return 'Wishlist(id: $id, name: $name, token: $token, isDefault: $isDefault, isPrivate: $isPrivate, items: $items)';
}


}

/// @nodoc
abstract mixin class _$WishlistCopyWith<$Res> implements $WishlistCopyWith<$Res> {
  factory _$WishlistCopyWith(_Wishlist value, $Res Function(_Wishlist) _then) = __$WishlistCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String token, bool isDefault, bool isPrivate, List<WishlistItem>? items
});




}
/// @nodoc
class __$WishlistCopyWithImpl<$Res>
    implements _$WishlistCopyWith<$Res> {
  __$WishlistCopyWithImpl(this._self, this._then);

  final _Wishlist _self;
  final $Res Function(_Wishlist) _then;

/// Create a copy of Wishlist
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? token = null,Object? isDefault = null,Object? isPrivate = null,Object? items = freezed,}) {
  return _then(_Wishlist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<WishlistItem>?,
  ));
}


}

/// @nodoc
mixin _$WishlistItem {

 String get id; String get variantId; String get productId; String get wishlistId; int get quantity; Map<String, Object?>? get variant; Map<String, Object?>? get product;
/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistItemCopyWith<WishlistItem> get copyWith => _$WishlistItemCopyWithImpl<WishlistItem>(this as WishlistItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WishlistItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.wishlistId, _this.wishlistId) || other.wishlistId == _this.wishlistId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&const DeepCollectionEquality().equals(other.variant, _this.variant)&&const DeepCollectionEquality().equals(other.product, _this.product));
}


@override
int get hashCode {
  final _this = this as WishlistItem;
  return Object.hash(runtimeType,_this.id,_this.variantId,_this.productId,_this.wishlistId,_this.quantity,const DeepCollectionEquality().hash(_this.variant),const DeepCollectionEquality().hash(_this.product));
}

@override
String toString() {
  final _this = this as WishlistItem;
  return 'WishlistItem(id: ${_this.id}, variantId: ${_this.variantId}, productId: ${_this.productId}, wishlistId: ${_this.wishlistId}, quantity: ${_this.quantity}, variant: ${_this.variant}, product: ${_this.product})';
}


}

/// @nodoc
abstract mixin class $WishlistItemCopyWith<$Res>  {
  factory $WishlistItemCopyWith(WishlistItem value, $Res Function(WishlistItem) _then) = _$WishlistItemCopyWithImpl;
@useResult
$Res call({
 String id, String variantId, String productId, String wishlistId, int quantity, Map<String, Object?>? variant, Map<String, Object?>? product
});




}
/// @nodoc
class _$WishlistItemCopyWithImpl<$Res>
    implements $WishlistItemCopyWith<$Res> {
  _$WishlistItemCopyWithImpl(this._self, this._then);

  final WishlistItem _self;
  final $Res Function(WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? variantId = null,Object? productId = null,Object? wishlistId = null,Object? quantity = null,Object? variant = freezed,Object? product = freezed,}) {
  return _then(WishlistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,wishlistId: null == wishlistId ? _self.wishlistId : wishlistId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WishlistItem].
extension WishlistItemPatterns on WishlistItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WishlistItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WishlistItem value)  $default,){
final _that = this;
switch (_that) {
case _WishlistItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WishlistItem value)?  $default,){
final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String variantId,  String productId,  String wishlistId,  int quantity,  Map<String, Object?>? variant,  Map<String, Object?>? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.variantId,_that.productId,_that.wishlistId,_that.quantity,_that.variant,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String variantId,  String productId,  String wishlistId,  int quantity,  Map<String, Object?>? variant,  Map<String, Object?>? product)  $default,) {final _that = this;
switch (_that) {
case _WishlistItem():
return $default(_that.id,_that.variantId,_that.productId,_that.wishlistId,_that.quantity,_that.variant,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String variantId,  String productId,  String wishlistId,  int quantity,  Map<String, Object?>? variant,  Map<String, Object?>? product)?  $default,) {final _that = this;
switch (_that) {
case _WishlistItem() when $default != null:
return $default(_that.id,_that.variantId,_that.productId,_that.wishlistId,_that.quantity,_that.variant,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _WishlistItem extends WishlistItem {
  const _WishlistItem({required this.id, required this.variantId, required this.productId, required this.wishlistId, required this.quantity, this.variant, this.product}): super._();
  

@override final  String id;
@override final  String variantId;
@override final  String productId;
@override final  String wishlistId;
@override final  int quantity;
@override final  Map<String, Object?>? variant;
@override final  Map<String, Object?>? product;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WishlistItemCopyWith<_WishlistItem> get copyWith => __$WishlistItemCopyWithImpl<_WishlistItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WishlistItem&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.wishlistId, wishlistId) || other.wishlistId == wishlistId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.variant, variant)&&const DeepCollectionEquality().equals(other.product, product));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,variantId,productId,wishlistId,quantity,const DeepCollectionEquality().hash(variant),const DeepCollectionEquality().hash(product));
}

@override
String toString() {
    return 'WishlistItem(id: $id, variantId: $variantId, productId: $productId, wishlistId: $wishlistId, quantity: $quantity, variant: $variant, product: $product)';
}


}

/// @nodoc
abstract mixin class _$WishlistItemCopyWith<$Res> implements $WishlistItemCopyWith<$Res> {
  factory _$WishlistItemCopyWith(_WishlistItem value, $Res Function(_WishlistItem) _then) = __$WishlistItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String variantId, String productId, String wishlistId, int quantity, Map<String, Object?>? variant, Map<String, Object?>? product
});




}
/// @nodoc
class __$WishlistItemCopyWithImpl<$Res>
    implements _$WishlistItemCopyWith<$Res> {
  __$WishlistItemCopyWithImpl(this._self, this._then);

  final _WishlistItem _self;
  final $Res Function(_WishlistItem) _then;

/// Create a copy of WishlistItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? variantId = null,Object? productId = null,Object? wishlistId = null,Object? quantity = null,Object? variant = freezed,Object? product = freezed,}) {
  return _then(_WishlistItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,wishlistId: null == wishlistId ? _self.wishlistId : wishlistId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,variant: freezed == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
mixin _$CompanyAncestor {

 String get id; String get name; String get kind;
/// Create a copy of CompanyAncestor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAncestorCopyWith<CompanyAncestor> get copyWith => _$CompanyAncestorCopyWithImpl<CompanyAncestor>(this as CompanyAncestor, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyAncestor;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAncestor&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.kind, _this.kind) || other.kind == _this.kind));
}


@override
int get hashCode {
  final _this = this as CompanyAncestor;
  return Object.hash(runtimeType,_this.id,_this.name,_this.kind);
}

@override
String toString() {
  final _this = this as CompanyAncestor;
  return 'CompanyAncestor(id: ${_this.id}, name: ${_this.name}, kind: ${_this.kind})';
}


}

/// @nodoc
abstract mixin class $CompanyAncestorCopyWith<$Res>  {
  factory $CompanyAncestorCopyWith(CompanyAncestor value, $Res Function(CompanyAncestor) _then) = _$CompanyAncestorCopyWithImpl;
@useResult
$Res call({
 String id, String name, String kind
});




}
/// @nodoc
class _$CompanyAncestorCopyWithImpl<$Res>
    implements $CompanyAncestorCopyWith<$Res> {
  _$CompanyAncestorCopyWithImpl(this._self, this._then);

  final CompanyAncestor _self;
  final $Res Function(CompanyAncestor) _then;

/// Create a copy of CompanyAncestor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,}) {
  return _then(CompanyAncestor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAncestor].
extension CompanyAncestorPatterns on CompanyAncestor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAncestor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAncestor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAncestor value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAncestor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAncestor value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAncestor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String kind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAncestor() when $default != null:
return $default(_that.id,_that.name,_that.kind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String kind)  $default,) {final _that = this;
switch (_that) {
case _CompanyAncestor():
return $default(_that.id,_that.name,_that.kind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String kind)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAncestor() when $default != null:
return $default(_that.id,_that.name,_that.kind);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyAncestor extends CompanyAncestor {
  const _CompanyAncestor({required this.id, required this.name, required this.kind}): super._();
  

@override final  String id;
@override final  String name;
@override final  String kind;

/// Create a copy of CompanyAncestor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAncestorCopyWith<_CompanyAncestor> get copyWith => __$CompanyAncestorCopyWithImpl<_CompanyAncestor>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAncestor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,kind);
}

@override
String toString() {
    return 'CompanyAncestor(id: $id, name: $name, kind: $kind)';
}


}

/// @nodoc
abstract mixin class _$CompanyAncestorCopyWith<$Res> implements $CompanyAncestorCopyWith<$Res> {
  factory _$CompanyAncestorCopyWith(_CompanyAncestor value, $Res Function(_CompanyAncestor) _then) = __$CompanyAncestorCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String kind
});




}
/// @nodoc
class __$CompanyAncestorCopyWithImpl<$Res>
    implements _$CompanyAncestorCopyWith<$Res> {
  __$CompanyAncestorCopyWithImpl(this._self, this._then);

  final _CompanyAncestor _self;
  final $Res Function(_CompanyAncestor) _then;

/// Create a copy of CompanyAncestor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,}) {
  return _then(_CompanyAncestor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Company {

 String get id; String get name; CompanyKind get kind; bool get poNumberRequired; String? get parentId; List<CompanyAncestor> get ancestors; List<CustomField>? get customFields;
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCopyWith<Company> get copyWith => _$CompanyCopyWithImpl<Company>(this as Company, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Company;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Company&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.poNumberRequired, _this.poNumberRequired) || other.poNumberRequired == _this.poNumberRequired)&&(identical(other.parentId, _this.parentId) || other.parentId == _this.parentId)&&const DeepCollectionEquality().equals(other.ancestors, _this.ancestors)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Company;
  return Object.hash(runtimeType,_this.id,_this.name,_this.kind,_this.poNumberRequired,_this.parentId,const DeepCollectionEquality().hash(_this.ancestors),const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Company;
  return 'Company(id: ${_this.id}, name: ${_this.name}, kind: ${_this.kind}, poNumberRequired: ${_this.poNumberRequired}, parentId: ${_this.parentId}, ancestors: ${_this.ancestors}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res>  {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) = _$CompanyCopyWithImpl;
@useResult
$Res call({
 String id, String name, CompanyKind kind, bool poNumberRequired, String? parentId, List<CompanyAncestor> ancestors, List<CustomField>? customFields
});




}
/// @nodoc
class _$CompanyCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? poNumberRequired = null,Object? parentId = freezed,Object? ancestors = null,Object? customFields = freezed,}) {
  return _then(Company(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CompanyKind,poNumberRequired: null == poNumberRequired ? _self.poNumberRequired : poNumberRequired // ignore: cast_nullable_to_non_nullable
as bool,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,ancestors: null == ancestors ? _self.ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<CompanyAncestor>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Company].
extension CompanyPatterns on Company {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Company value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Company value)  $default,){
final _that = this;
switch (_that) {
case _Company():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Company value)?  $default,){
final _that = this;
switch (_that) {
case _Company() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CompanyKind kind,  bool poNumberRequired,  String? parentId,  List<CompanyAncestor> ancestors,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.poNumberRequired,_that.parentId,_that.ancestors,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CompanyKind kind,  bool poNumberRequired,  String? parentId,  List<CompanyAncestor> ancestors,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Company():
return $default(_that.id,_that.name,_that.kind,_that.poNumberRequired,_that.parentId,_that.ancestors,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CompanyKind kind,  bool poNumberRequired,  String? parentId,  List<CompanyAncestor> ancestors,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.id,_that.name,_that.kind,_that.poNumberRequired,_that.parentId,_that.ancestors,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Company extends Company {
  const _Company({required this.id, required this.name, required this.kind, required this.poNumberRequired, this.parentId, required this.ancestors, this.customFields}): super._();
  

@override final  String id;
@override final  String name;
@override final  CompanyKind kind;
@override final  bool poNumberRequired;
@override final  String? parentId;
@override final  List<CompanyAncestor> ancestors;
@override final  List<CustomField>? customFields;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.poNumberRequired, poNumberRequired) || other.poNumberRequired == poNumberRequired)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.ancestors, ancestors)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,kind,poNumberRequired,parentId,const DeepCollectionEquality().hash(ancestors),const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Company(id: $id, name: $name, kind: $kind, poNumberRequired: $poNumberRequired, parentId: $parentId, ancestors: $ancestors, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CompanyKind kind, bool poNumberRequired, String? parentId, List<CompanyAncestor> ancestors, List<CustomField>? customFields
});




}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? kind = null,Object? poNumberRequired = null,Object? parentId = freezed,Object? ancestors = null,Object? customFields = freezed,}) {
  return _then(_Company(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as CompanyKind,poNumberRequired: null == poNumberRequired ? _self.poNumberRequired : poNumberRequired // ignore: cast_nullable_to_non_nullable
as bool,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,ancestors: null == ancestors ? _self.ancestors : ancestors // ignore: cast_nullable_to_non_nullable
as List<CompanyAncestor>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}

/// @nodoc
mixin _$CompanyMembership {

 String get id; String get companyId; String get customerId; String? get email;
/// Create a copy of CompanyMembership
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyMembershipCopyWith<CompanyMembership> get copyWith => _$CompanyMembershipCopyWithImpl<CompanyMembership>(this as CompanyMembership, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyMembership;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyMembership&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.companyId, _this.companyId) || other.companyId == _this.companyId)&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&(identical(other.email, _this.email) || other.email == _this.email));
}


@override
int get hashCode {
  final _this = this as CompanyMembership;
  return Object.hash(runtimeType,_this.id,_this.companyId,_this.customerId,_this.email);
}

@override
String toString() {
  final _this = this as CompanyMembership;
  return 'CompanyMembership(id: ${_this.id}, companyId: ${_this.companyId}, customerId: ${_this.customerId}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $CompanyMembershipCopyWith<$Res>  {
  factory $CompanyMembershipCopyWith(CompanyMembership value, $Res Function(CompanyMembership) _then) = _$CompanyMembershipCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String customerId, String? email
});




}
/// @nodoc
class _$CompanyMembershipCopyWithImpl<$Res>
    implements $CompanyMembershipCopyWith<$Res> {
  _$CompanyMembershipCopyWithImpl(this._self, this._then);

  final CompanyMembership _self;
  final $Res Function(CompanyMembership) _then;

/// Create a copy of CompanyMembership
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? customerId = null,Object? email = freezed,}) {
  return _then(CompanyMembership(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyMembership].
extension CompanyMembershipPatterns on CompanyMembership {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyMembership value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyMembership() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyMembership value)  $default,){
final _that = this;
switch (_that) {
case _CompanyMembership():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyMembership value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyMembership() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String customerId,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyMembership() when $default != null:
return $default(_that.id,_that.companyId,_that.customerId,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String customerId,  String? email)  $default,) {final _that = this;
switch (_that) {
case _CompanyMembership():
return $default(_that.id,_that.companyId,_that.customerId,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String customerId,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _CompanyMembership() when $default != null:
return $default(_that.id,_that.companyId,_that.customerId,_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyMembership extends CompanyMembership {
  const _CompanyMembership({required this.id, required this.companyId, required this.customerId, this.email}): super._();
  

@override final  String id;
@override final  String companyId;
@override final  String customerId;
@override final  String? email;

/// Create a copy of CompanyMembership
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyMembershipCopyWith<_CompanyMembership> get copyWith => __$CompanyMembershipCopyWithImpl<_CompanyMembership>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyMembership&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,companyId,customerId,email);
}

@override
String toString() {
    return 'CompanyMembership(id: $id, companyId: $companyId, customerId: $customerId, email: $email)';
}


}

/// @nodoc
abstract mixin class _$CompanyMembershipCopyWith<$Res> implements $CompanyMembershipCopyWith<$Res> {
  factory _$CompanyMembershipCopyWith(_CompanyMembership value, $Res Function(_CompanyMembership) _then) = __$CompanyMembershipCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String customerId, String? email
});




}
/// @nodoc
class __$CompanyMembershipCopyWithImpl<$Res>
    implements _$CompanyMembershipCopyWith<$Res> {
  __$CompanyMembershipCopyWithImpl(this._self, this._then);

  final _CompanyMembership _self;
  final $Res Function(_CompanyMembership) _then;

/// Create a copy of CompanyMembership
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? customerId = null,Object? email = freezed,}) {
  return _then(_CompanyMembership(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CompanyInvitation {

 String get id; String get email; String? get expiresAt; String get companyId; CompanyInvitationStatus get status;
/// Create a copy of CompanyInvitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyInvitationCopyWith<CompanyInvitation> get copyWith => _$CompanyInvitationCopyWithImpl<CompanyInvitation>(this as CompanyInvitation, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyInvitation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyInvitation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.companyId, _this.companyId) || other.companyId == _this.companyId)&&(identical(other.status, _this.status) || other.status == _this.status));
}


@override
int get hashCode {
  final _this = this as CompanyInvitation;
  return Object.hash(runtimeType,_this.id,_this.email,_this.expiresAt,_this.companyId,_this.status);
}

@override
String toString() {
  final _this = this as CompanyInvitation;
  return 'CompanyInvitation(id: ${_this.id}, email: ${_this.email}, expiresAt: ${_this.expiresAt}, companyId: ${_this.companyId}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $CompanyInvitationCopyWith<$Res>  {
  factory $CompanyInvitationCopyWith(CompanyInvitation value, $Res Function(CompanyInvitation) _then) = _$CompanyInvitationCopyWithImpl;
@useResult
$Res call({
 String id, String email, String? expiresAt, String companyId, CompanyInvitationStatus status
});




}
/// @nodoc
class _$CompanyInvitationCopyWithImpl<$Res>
    implements $CompanyInvitationCopyWith<$Res> {
  _$CompanyInvitationCopyWithImpl(this._self, this._then);

  final CompanyInvitation _self;
  final $Res Function(CompanyInvitation) _then;

/// Create a copy of CompanyInvitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? expiresAt = freezed,Object? companyId = null,Object? status = null,}) {
  return _then(CompanyInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CompanyInvitationStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyInvitation].
extension CompanyInvitationPatterns on CompanyInvitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyInvitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyInvitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyInvitation value)  $default,){
final _that = this;
switch (_that) {
case _CompanyInvitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyInvitation value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyInvitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String? expiresAt,  String companyId,  CompanyInvitationStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyInvitation() when $default != null:
return $default(_that.id,_that.email,_that.expiresAt,_that.companyId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String? expiresAt,  String companyId,  CompanyInvitationStatus status)  $default,) {final _that = this;
switch (_that) {
case _CompanyInvitation():
return $default(_that.id,_that.email,_that.expiresAt,_that.companyId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String? expiresAt,  String companyId,  CompanyInvitationStatus status)?  $default,) {final _that = this;
switch (_that) {
case _CompanyInvitation() when $default != null:
return $default(_that.id,_that.email,_that.expiresAt,_that.companyId,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyInvitation extends CompanyInvitation {
  const _CompanyInvitation({required this.id, required this.email, this.expiresAt, required this.companyId, required this.status}): super._();
  

@override final  String id;
@override final  String email;
@override final  String? expiresAt;
@override final  String companyId;
@override final  CompanyInvitationStatus status;

/// Create a copy of CompanyInvitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyInvitationCopyWith<_CompanyInvitation> get copyWith => __$CompanyInvitationCopyWithImpl<_CompanyInvitation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,email,expiresAt,companyId,status);
}

@override
String toString() {
    return 'CompanyInvitation(id: $id, email: $email, expiresAt: $expiresAt, companyId: $companyId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$CompanyInvitationCopyWith<$Res> implements $CompanyInvitationCopyWith<$Res> {
  factory _$CompanyInvitationCopyWith(_CompanyInvitation value, $Res Function(_CompanyInvitation) _then) = __$CompanyInvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String? expiresAt, String companyId, CompanyInvitationStatus status
});




}
/// @nodoc
class __$CompanyInvitationCopyWithImpl<$Res>
    implements _$CompanyInvitationCopyWith<$Res> {
  __$CompanyInvitationCopyWithImpl(this._self, this._then);

  final _CompanyInvitation _self;
  final $Res Function(_CompanyInvitation) _then;

/// Create a copy of CompanyInvitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? expiresAt = freezed,Object? companyId = null,Object? status = null,}) {
  return _then(_CompanyInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CompanyInvitationStatus,
  ));
}


}

/// @nodoc
mixin _$AccountCompany {

 CompanyMembership get membership; Company get company;
/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCompanyCopyWith<AccountCompany> get copyWith => _$AccountCompanyCopyWithImpl<AccountCompany>(this as AccountCompany, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AccountCompany;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountCompany&&(identical(other.membership, _this.membership) || other.membership == _this.membership)&&(identical(other.company, _this.company) || other.company == _this.company));
}


@override
int get hashCode {
  final _this = this as AccountCompany;
  return Object.hash(runtimeType,_this.membership,_this.company);
}

@override
String toString() {
  final _this = this as AccountCompany;
  return 'AccountCompany(membership: ${_this.membership}, company: ${_this.company})';
}


}

/// @nodoc
abstract mixin class $AccountCompanyCopyWith<$Res>  {
  factory $AccountCompanyCopyWith(AccountCompany value, $Res Function(AccountCompany) _then) = _$AccountCompanyCopyWithImpl;
@useResult
$Res call({
 CompanyMembership membership, Company company
});


$CompanyMembershipCopyWith<$Res> get membership;$CompanyCopyWith<$Res> get company;

}
/// @nodoc
class _$AccountCompanyCopyWithImpl<$Res>
    implements $AccountCompanyCopyWith<$Res> {
  _$AccountCompanyCopyWithImpl(this._self, this._then);

  final AccountCompany _self;
  final $Res Function(AccountCompany) _then;

/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? membership = null,Object? company = null,}) {
  return _then(AccountCompany(
membership: null == membership ? _self.membership : membership // ignore: cast_nullable_to_non_nullable
as CompanyMembership,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,
  ));
}
/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyMembershipCopyWith<$Res> get membership {
  
  return $CompanyMembershipCopyWith<$Res>(_self.membership, (value) {
    return _then(_self.copyWith(membership: value));
  });
}/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountCompany].
extension AccountCompanyPatterns on AccountCompany {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountCompany value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountCompany() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountCompany value)  $default,){
final _that = this;
switch (_that) {
case _AccountCompany():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountCompany value)?  $default,){
final _that = this;
switch (_that) {
case _AccountCompany() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyMembership membership,  Company company)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountCompany() when $default != null:
return $default(_that.membership,_that.company);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyMembership membership,  Company company)  $default,) {final _that = this;
switch (_that) {
case _AccountCompany():
return $default(_that.membership,_that.company);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyMembership membership,  Company company)?  $default,) {final _that = this;
switch (_that) {
case _AccountCompany() when $default != null:
return $default(_that.membership,_that.company);case _:
  return null;

}
}

}

/// @nodoc


class _AccountCompany extends AccountCompany {
  const _AccountCompany({required this.membership, required this.company}): super._();
  

@override final  CompanyMembership membership;
@override final  Company company;

/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCompanyCopyWith<_AccountCompany> get copyWith => __$AccountCompanyCopyWithImpl<_AccountCompany>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountCompany&&(identical(other.membership, membership) || other.membership == membership)&&(identical(other.company, company) || other.company == company));
}


@override
int get hashCode {
    return Object.hash(runtimeType,membership,company);
}

@override
String toString() {
    return 'AccountCompany(membership: $membership, company: $company)';
}


}

/// @nodoc
abstract mixin class _$AccountCompanyCopyWith<$Res> implements $AccountCompanyCopyWith<$Res> {
  factory _$AccountCompanyCopyWith(_AccountCompany value, $Res Function(_AccountCompany) _then) = __$AccountCompanyCopyWithImpl;
@override @useResult
$Res call({
 CompanyMembership membership, Company company
});


@override $CompanyMembershipCopyWith<$Res> get membership;@override $CompanyCopyWith<$Res> get company;

}
/// @nodoc
class __$AccountCompanyCopyWithImpl<$Res>
    implements _$AccountCompanyCopyWith<$Res> {
  __$AccountCompanyCopyWithImpl(this._self, this._then);

  final _AccountCompany _self;
  final $Res Function(_AccountCompany) _then;

/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? membership = null,Object? company = null,}) {
  return _then(_AccountCompany(
membership: null == membership ? _self.membership : membership // ignore: cast_nullable_to_non_nullable
as CompanyMembership,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,
  ));
}

/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyMembershipCopyWith<$Res> get membership {
  
  return $CompanyMembershipCopyWith<$Res>(_self.membership, (value) {
    return _then(_self.copyWith(membership: value));
  });
}/// Create a copy of AccountCompany
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}

/// @nodoc
mixin _$CompanyInvitationLookup {

 CompanyInvitation get invitation; String get companyName; String get storeName;
/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyInvitationLookupCopyWith<CompanyInvitationLookup> get copyWith => _$CompanyInvitationLookupCopyWithImpl<CompanyInvitationLookup>(this as CompanyInvitationLookup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyInvitationLookup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyInvitationLookup&&(identical(other.invitation, _this.invitation) || other.invitation == _this.invitation)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.storeName, _this.storeName) || other.storeName == _this.storeName));
}


@override
int get hashCode {
  final _this = this as CompanyInvitationLookup;
  return Object.hash(runtimeType,_this.invitation,_this.companyName,_this.storeName);
}

@override
String toString() {
  final _this = this as CompanyInvitationLookup;
  return 'CompanyInvitationLookup(invitation: ${_this.invitation}, companyName: ${_this.companyName}, storeName: ${_this.storeName})';
}


}

/// @nodoc
abstract mixin class $CompanyInvitationLookupCopyWith<$Res>  {
  factory $CompanyInvitationLookupCopyWith(CompanyInvitationLookup value, $Res Function(CompanyInvitationLookup) _then) = _$CompanyInvitationLookupCopyWithImpl;
@useResult
$Res call({
 CompanyInvitation invitation, String companyName, String storeName
});


$CompanyInvitationCopyWith<$Res> get invitation;

}
/// @nodoc
class _$CompanyInvitationLookupCopyWithImpl<$Res>
    implements $CompanyInvitationLookupCopyWith<$Res> {
  _$CompanyInvitationLookupCopyWithImpl(this._self, this._then);

  final CompanyInvitationLookup _self;
  final $Res Function(CompanyInvitationLookup) _then;

/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? invitation = null,Object? companyName = null,Object? storeName = null,}) {
  return _then(CompanyInvitationLookup(
invitation: null == invitation ? _self.invitation : invitation // ignore: cast_nullable_to_non_nullable
as CompanyInvitation,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyInvitationCopyWith<$Res> get invitation {
  
  return $CompanyInvitationCopyWith<$Res>(_self.invitation, (value) {
    return _then(_self.copyWith(invitation: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyInvitationLookup].
extension CompanyInvitationLookupPatterns on CompanyInvitationLookup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyInvitationLookup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyInvitationLookup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyInvitationLookup value)  $default,){
final _that = this;
switch (_that) {
case _CompanyInvitationLookup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyInvitationLookup value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyInvitationLookup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyInvitation invitation,  String companyName,  String storeName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyInvitationLookup() when $default != null:
return $default(_that.invitation,_that.companyName,_that.storeName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyInvitation invitation,  String companyName,  String storeName)  $default,) {final _that = this;
switch (_that) {
case _CompanyInvitationLookup():
return $default(_that.invitation,_that.companyName,_that.storeName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyInvitation invitation,  String companyName,  String storeName)?  $default,) {final _that = this;
switch (_that) {
case _CompanyInvitationLookup() when $default != null:
return $default(_that.invitation,_that.companyName,_that.storeName);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyInvitationLookup extends CompanyInvitationLookup {
  const _CompanyInvitationLookup({required this.invitation, required this.companyName, required this.storeName}): super._();
  

@override final  CompanyInvitation invitation;
@override final  String companyName;
@override final  String storeName;

/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyInvitationLookupCopyWith<_CompanyInvitationLookup> get copyWith => __$CompanyInvitationLookupCopyWithImpl<_CompanyInvitationLookup>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyInvitationLookup&&(identical(other.invitation, invitation) || other.invitation == invitation)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.storeName, storeName) || other.storeName == storeName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,invitation,companyName,storeName);
}

@override
String toString() {
    return 'CompanyInvitationLookup(invitation: $invitation, companyName: $companyName, storeName: $storeName)';
}


}

/// @nodoc
abstract mixin class _$CompanyInvitationLookupCopyWith<$Res> implements $CompanyInvitationLookupCopyWith<$Res> {
  factory _$CompanyInvitationLookupCopyWith(_CompanyInvitationLookup value, $Res Function(_CompanyInvitationLookup) _then) = __$CompanyInvitationLookupCopyWithImpl;
@override @useResult
$Res call({
 CompanyInvitation invitation, String companyName, String storeName
});


@override $CompanyInvitationCopyWith<$Res> get invitation;

}
/// @nodoc
class __$CompanyInvitationLookupCopyWithImpl<$Res>
    implements _$CompanyInvitationLookupCopyWith<$Res> {
  __$CompanyInvitationLookupCopyWithImpl(this._self, this._then);

  final _CompanyInvitationLookup _self;
  final $Res Function(_CompanyInvitationLookup) _then;

/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? invitation = null,Object? companyName = null,Object? storeName = null,}) {
  return _then(_CompanyInvitationLookup(
invitation: null == invitation ? _self.invitation : invitation // ignore: cast_nullable_to_non_nullable
as CompanyInvitation,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CompanyInvitationLookup
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyInvitationCopyWith<$Res> get invitation {
  
  return $CompanyInvitationCopyWith<$Res>(_self.invitation, (value) {
    return _then(_self.copyWith(invitation: value));
  });
}
}

/// @nodoc
mixin _$CreateReturnItem {

 String get fulfillmentItemId; int get quantity;
/// Create a copy of CreateReturnItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReturnItemCopyWith<CreateReturnItem> get copyWith => _$CreateReturnItemCopyWithImpl<CreateReturnItem>(this as CreateReturnItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateReturnItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReturnItem&&(identical(other.fulfillmentItemId, _this.fulfillmentItemId) || other.fulfillmentItemId == _this.fulfillmentItemId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}


@override
int get hashCode {
  final _this = this as CreateReturnItem;
  return Object.hash(runtimeType,_this.fulfillmentItemId,_this.quantity);
}

@override
String toString() {
  final _this = this as CreateReturnItem;
  return 'CreateReturnItem(fulfillmentItemId: ${_this.fulfillmentItemId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $CreateReturnItemCopyWith<$Res>  {
  factory $CreateReturnItemCopyWith(CreateReturnItem value, $Res Function(CreateReturnItem) _then) = _$CreateReturnItemCopyWithImpl;
@useResult
$Res call({
 String fulfillmentItemId, int quantity
});




}
/// @nodoc
class _$CreateReturnItemCopyWithImpl<$Res>
    implements $CreateReturnItemCopyWith<$Res> {
  _$CreateReturnItemCopyWithImpl(this._self, this._then);

  final CreateReturnItem _self;
  final $Res Function(CreateReturnItem) _then;

/// Create a copy of CreateReturnItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fulfillmentItemId = null,Object? quantity = null,}) {
  return _then(CreateReturnItem(
fulfillmentItemId: null == fulfillmentItemId ? _self.fulfillmentItemId : fulfillmentItemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReturnItem].
extension CreateReturnItemPatterns on CreateReturnItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReturnItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReturnItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReturnItem value)  $default,){
final _that = this;
switch (_that) {
case _CreateReturnItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReturnItem value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReturnItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fulfillmentItemId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReturnItem() when $default != null:
return $default(_that.fulfillmentItemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fulfillmentItemId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _CreateReturnItem():
return $default(_that.fulfillmentItemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fulfillmentItemId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CreateReturnItem() when $default != null:
return $default(_that.fulfillmentItemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CreateReturnItem extends CreateReturnItem {
  const _CreateReturnItem({required this.fulfillmentItemId, required this.quantity}): super._();
  

@override final  String fulfillmentItemId;
@override final  int quantity;

/// Create a copy of CreateReturnItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReturnItemCopyWith<_CreateReturnItem> get copyWith => __$CreateReturnItemCopyWithImpl<_CreateReturnItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReturnItem&&(identical(other.fulfillmentItemId, fulfillmentItemId) || other.fulfillmentItemId == fulfillmentItemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,fulfillmentItemId,quantity);
}

@override
String toString() {
    return 'CreateReturnItem(fulfillmentItemId: $fulfillmentItemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CreateReturnItemCopyWith<$Res> implements $CreateReturnItemCopyWith<$Res> {
  factory _$CreateReturnItemCopyWith(_CreateReturnItem value, $Res Function(_CreateReturnItem) _then) = __$CreateReturnItemCopyWithImpl;
@override @useResult
$Res call({
 String fulfillmentItemId, int quantity
});




}
/// @nodoc
class __$CreateReturnItemCopyWithImpl<$Res>
    implements _$CreateReturnItemCopyWith<$Res> {
  __$CreateReturnItemCopyWithImpl(this._self, this._then);

  final _CreateReturnItem _self;
  final $Res Function(_CreateReturnItem) _then;

/// Create a copy of CreateReturnItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fulfillmentItemId = null,Object? quantity = null,}) {
  return _then(_CreateReturnItem(
fulfillmentItemId: null == fulfillmentItemId ? _self.fulfillmentItemId : fulfillmentItemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CreateReturnParams {

 List<CreateReturnItem> get items; String? get reasonId; String? get memo;
/// Create a copy of CreateReturnParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReturnParamsCopyWith<CreateReturnParams> get copyWith => _$CreateReturnParamsCopyWithImpl<CreateReturnParams>(this as CreateReturnParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateReturnParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReturnParams&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.reasonId, _this.reasonId) || other.reasonId == _this.reasonId)&&(identical(other.memo, _this.memo) || other.memo == _this.memo));
}


@override
int get hashCode {
  final _this = this as CreateReturnParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.reasonId,_this.memo);
}

@override
String toString() {
  final _this = this as CreateReturnParams;
  return 'CreateReturnParams(items: ${_this.items}, reasonId: ${_this.reasonId}, memo: ${_this.memo})';
}


}

/// @nodoc
abstract mixin class $CreateReturnParamsCopyWith<$Res>  {
  factory $CreateReturnParamsCopyWith(CreateReturnParams value, $Res Function(CreateReturnParams) _then) = _$CreateReturnParamsCopyWithImpl;
@useResult
$Res call({
 List<CreateReturnItem> items, String? reasonId, String? memo
});




}
/// @nodoc
class _$CreateReturnParamsCopyWithImpl<$Res>
    implements $CreateReturnParamsCopyWith<$Res> {
  _$CreateReturnParamsCopyWithImpl(this._self, this._then);

  final CreateReturnParams _self;
  final $Res Function(CreateReturnParams) _then;

/// Create a copy of CreateReturnParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? reasonId = freezed,Object? memo = freezed,}) {
  return _then(CreateReturnParams(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CreateReturnItem>,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReturnParams].
extension CreateReturnParamsPatterns on CreateReturnParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReturnParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReturnParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReturnParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateReturnParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReturnParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReturnParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CreateReturnItem> items,  String? reasonId,  String? memo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReturnParams() when $default != null:
return $default(_that.items,_that.reasonId,_that.memo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CreateReturnItem> items,  String? reasonId,  String? memo)  $default,) {final _that = this;
switch (_that) {
case _CreateReturnParams():
return $default(_that.items,_that.reasonId,_that.memo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CreateReturnItem> items,  String? reasonId,  String? memo)?  $default,) {final _that = this;
switch (_that) {
case _CreateReturnParams() when $default != null:
return $default(_that.items,_that.reasonId,_that.memo);case _:
  return null;

}
}

}

/// @nodoc


class _CreateReturnParams extends CreateReturnParams {
  const _CreateReturnParams({required this.items, this.reasonId, this.memo}): super._();
  

@override final  List<CreateReturnItem> items;
@override final  String? reasonId;
@override final  String? memo;

/// Create a copy of CreateReturnParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReturnParamsCopyWith<_CreateReturnParams> get copyWith => __$CreateReturnParamsCopyWithImpl<_CreateReturnParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReturnParams&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.memo, memo) || other.memo == memo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(items),reasonId,memo);
}

@override
String toString() {
    return 'CreateReturnParams(items: $items, reasonId: $reasonId, memo: $memo)';
}


}

/// @nodoc
abstract mixin class _$CreateReturnParamsCopyWith<$Res> implements $CreateReturnParamsCopyWith<$Res> {
  factory _$CreateReturnParamsCopyWith(_CreateReturnParams value, $Res Function(_CreateReturnParams) _then) = __$CreateReturnParamsCopyWithImpl;
@override @useResult
$Res call({
 List<CreateReturnItem> items, String? reasonId, String? memo
});




}
/// @nodoc
class __$CreateReturnParamsCopyWithImpl<$Res>
    implements _$CreateReturnParamsCopyWith<$Res> {
  __$CreateReturnParamsCopyWithImpl(this._self, this._then);

  final _CreateReturnParams _self;
  final $Res Function(_CreateReturnParams) _then;

/// Create a copy of CreateReturnParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? reasonId = freezed,Object? memo = freezed,}) {
  return _then(_CreateReturnParams(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CreateReturnItem>,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateClaimItem {

 String get lineItemId; int get quantity; String? get description;
/// Create a copy of CreateClaimItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClaimItemCopyWith<CreateClaimItem> get copyWith => _$CreateClaimItemCopyWithImpl<CreateClaimItem>(this as CreateClaimItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateClaimItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClaimItem&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.description, _this.description) || other.description == _this.description));
}


@override
int get hashCode {
  final _this = this as CreateClaimItem;
  return Object.hash(runtimeType,_this.lineItemId,_this.quantity,_this.description);
}

@override
String toString() {
  final _this = this as CreateClaimItem;
  return 'CreateClaimItem(lineItemId: ${_this.lineItemId}, quantity: ${_this.quantity}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $CreateClaimItemCopyWith<$Res>  {
  factory $CreateClaimItemCopyWith(CreateClaimItem value, $Res Function(CreateClaimItem) _then) = _$CreateClaimItemCopyWithImpl;
@useResult
$Res call({
 String lineItemId, int quantity, String? description
});




}
/// @nodoc
class _$CreateClaimItemCopyWithImpl<$Res>
    implements $CreateClaimItemCopyWith<$Res> {
  _$CreateClaimItemCopyWithImpl(this._self, this._then);

  final CreateClaimItem _self;
  final $Res Function(CreateClaimItem) _then;

/// Create a copy of CreateClaimItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineItemId = null,Object? quantity = null,Object? description = freezed,}) {
  return _then(CreateClaimItem(
lineItemId: null == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateClaimItem].
extension CreateClaimItemPatterns on CreateClaimItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateClaimItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateClaimItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateClaimItem value)  $default,){
final _that = this;
switch (_that) {
case _CreateClaimItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateClaimItem value)?  $default,){
final _that = this;
switch (_that) {
case _CreateClaimItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lineItemId,  int quantity,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateClaimItem() when $default != null:
return $default(_that.lineItemId,_that.quantity,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lineItemId,  int quantity,  String? description)  $default,) {final _that = this;
switch (_that) {
case _CreateClaimItem():
return $default(_that.lineItemId,_that.quantity,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lineItemId,  int quantity,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CreateClaimItem() when $default != null:
return $default(_that.lineItemId,_that.quantity,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _CreateClaimItem extends CreateClaimItem {
  const _CreateClaimItem({required this.lineItemId, required this.quantity, this.description}): super._();
  

@override final  String lineItemId;
@override final  int quantity;
@override final  String? description;

/// Create a copy of CreateClaimItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateClaimItemCopyWith<_CreateClaimItem> get copyWith => __$CreateClaimItemCopyWithImpl<_CreateClaimItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClaimItem&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode {
    return Object.hash(runtimeType,lineItemId,quantity,description);
}

@override
String toString() {
    return 'CreateClaimItem(lineItemId: $lineItemId, quantity: $quantity, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreateClaimItemCopyWith<$Res> implements $CreateClaimItemCopyWith<$Res> {
  factory _$CreateClaimItemCopyWith(_CreateClaimItem value, $Res Function(_CreateClaimItem) _then) = __$CreateClaimItemCopyWithImpl;
@override @useResult
$Res call({
 String lineItemId, int quantity, String? description
});




}
/// @nodoc
class __$CreateClaimItemCopyWithImpl<$Res>
    implements _$CreateClaimItemCopyWith<$Res> {
  __$CreateClaimItemCopyWithImpl(this._self, this._then);

  final _CreateClaimItem _self;
  final $Res Function(_CreateClaimItem) _then;

/// Create a copy of CreateClaimItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineItemId = null,Object? quantity = null,Object? description = freezed,}) {
  return _then(_CreateClaimItem(
lineItemId: null == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateClaimParams {

 List<CreateClaimItem> get items; String? get reasonId; String? get memo;
/// Create a copy of CreateClaimParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClaimParamsCopyWith<CreateClaimParams> get copyWith => _$CreateClaimParamsCopyWithImpl<CreateClaimParams>(this as CreateClaimParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateClaimParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClaimParams&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.reasonId, _this.reasonId) || other.reasonId == _this.reasonId)&&(identical(other.memo, _this.memo) || other.memo == _this.memo));
}


@override
int get hashCode {
  final _this = this as CreateClaimParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.reasonId,_this.memo);
}

@override
String toString() {
  final _this = this as CreateClaimParams;
  return 'CreateClaimParams(items: ${_this.items}, reasonId: ${_this.reasonId}, memo: ${_this.memo})';
}


}

/// @nodoc
abstract mixin class $CreateClaimParamsCopyWith<$Res>  {
  factory $CreateClaimParamsCopyWith(CreateClaimParams value, $Res Function(CreateClaimParams) _then) = _$CreateClaimParamsCopyWithImpl;
@useResult
$Res call({
 List<CreateClaimItem> items, String? reasonId, String? memo
});




}
/// @nodoc
class _$CreateClaimParamsCopyWithImpl<$Res>
    implements $CreateClaimParamsCopyWith<$Res> {
  _$CreateClaimParamsCopyWithImpl(this._self, this._then);

  final CreateClaimParams _self;
  final $Res Function(CreateClaimParams) _then;

/// Create a copy of CreateClaimParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? reasonId = freezed,Object? memo = freezed,}) {
  return _then(CreateClaimParams(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CreateClaimItem>,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateClaimParams].
extension CreateClaimParamsPatterns on CreateClaimParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateClaimParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateClaimParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateClaimParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateClaimParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateClaimParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateClaimParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CreateClaimItem> items,  String? reasonId,  String? memo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateClaimParams() when $default != null:
return $default(_that.items,_that.reasonId,_that.memo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CreateClaimItem> items,  String? reasonId,  String? memo)  $default,) {final _that = this;
switch (_that) {
case _CreateClaimParams():
return $default(_that.items,_that.reasonId,_that.memo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CreateClaimItem> items,  String? reasonId,  String? memo)?  $default,) {final _that = this;
switch (_that) {
case _CreateClaimParams() when $default != null:
return $default(_that.items,_that.reasonId,_that.memo);case _:
  return null;

}
}

}

/// @nodoc


class _CreateClaimParams extends CreateClaimParams {
  const _CreateClaimParams({required this.items, this.reasonId, this.memo}): super._();
  

@override final  List<CreateClaimItem> items;
@override final  String? reasonId;
@override final  String? memo;

/// Create a copy of CreateClaimParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateClaimParamsCopyWith<_CreateClaimParams> get copyWith => __$CreateClaimParamsCopyWithImpl<_CreateClaimParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClaimParams&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.memo, memo) || other.memo == memo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(items),reasonId,memo);
}

@override
String toString() {
    return 'CreateClaimParams(items: $items, reasonId: $reasonId, memo: $memo)';
}


}

/// @nodoc
abstract mixin class _$CreateClaimParamsCopyWith<$Res> implements $CreateClaimParamsCopyWith<$Res> {
  factory _$CreateClaimParamsCopyWith(_CreateClaimParams value, $Res Function(_CreateClaimParams) _then) = __$CreateClaimParamsCopyWithImpl;
@override @useResult
$Res call({
 List<CreateClaimItem> items, String? reasonId, String? memo
});




}
/// @nodoc
class __$CreateClaimParamsCopyWithImpl<$Res>
    implements _$CreateClaimParamsCopyWith<$Res> {
  __$CreateClaimParamsCopyWithImpl(this._self, this._then);

  final _CreateClaimParams _self;
  final $Res Function(_CreateClaimParams) _then;

/// Create a copy of CreateClaimParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? reasonId = freezed,Object? memo = freezed,}) {
  return _then(_CreateClaimParams(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CreateClaimItem>,reasonId: freezed == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String?,memo: freezed == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateWishlistParams {

 String get name; bool? get isPrivate; bool? get isDefault;
/// Create a copy of CreateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateWishlistParamsCopyWith<CreateWishlistParams> get copyWith => _$CreateWishlistParamsCopyWithImpl<CreateWishlistParams>(this as CreateWishlistParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateWishlistParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWishlistParams&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isPrivate, _this.isPrivate) || other.isPrivate == _this.isPrivate)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault));
}


@override
int get hashCode {
  final _this = this as CreateWishlistParams;
  return Object.hash(runtimeType,_this.name,_this.isPrivate,_this.isDefault);
}

@override
String toString() {
  final _this = this as CreateWishlistParams;
  return 'CreateWishlistParams(name: ${_this.name}, isPrivate: ${_this.isPrivate}, isDefault: ${_this.isDefault})';
}


}

/// @nodoc
abstract mixin class $CreateWishlistParamsCopyWith<$Res>  {
  factory $CreateWishlistParamsCopyWith(CreateWishlistParams value, $Res Function(CreateWishlistParams) _then) = _$CreateWishlistParamsCopyWithImpl;
@useResult
$Res call({
 String name, bool? isPrivate, bool? isDefault
});




}
/// @nodoc
class _$CreateWishlistParamsCopyWithImpl<$Res>
    implements $CreateWishlistParamsCopyWith<$Res> {
  _$CreateWishlistParamsCopyWithImpl(this._self, this._then);

  final CreateWishlistParams _self;
  final $Res Function(CreateWishlistParams) _then;

/// Create a copy of CreateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isPrivate = freezed,Object? isDefault = freezed,}) {
  return _then(CreateWishlistParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateWishlistParams].
extension CreateWishlistParamsPatterns on CreateWishlistParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateWishlistParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateWishlistParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateWishlistParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateWishlistParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateWishlistParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateWishlistParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool? isPrivate,  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateWishlistParams() when $default != null:
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool? isPrivate,  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _CreateWishlistParams():
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool? isPrivate,  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _CreateWishlistParams() when $default != null:
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _CreateWishlistParams extends CreateWishlistParams {
  const _CreateWishlistParams({required this.name, this.isPrivate, this.isDefault}): super._();
  

@override final  String name;
@override final  bool? isPrivate;
@override final  bool? isDefault;

/// Create a copy of CreateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateWishlistParamsCopyWith<_CreateWishlistParams> get copyWith => __$CreateWishlistParamsCopyWithImpl<_CreateWishlistParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateWishlistParams&&(identical(other.name, name) || other.name == name)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,isPrivate,isDefault);
}

@override
String toString() {
    return 'CreateWishlistParams(name: $name, isPrivate: $isPrivate, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$CreateWishlistParamsCopyWith<$Res> implements $CreateWishlistParamsCopyWith<$Res> {
  factory _$CreateWishlistParamsCopyWith(_CreateWishlistParams value, $Res Function(_CreateWishlistParams) _then) = __$CreateWishlistParamsCopyWithImpl;
@override @useResult
$Res call({
 String name, bool? isPrivate, bool? isDefault
});




}
/// @nodoc
class __$CreateWishlistParamsCopyWithImpl<$Res>
    implements _$CreateWishlistParamsCopyWith<$Res> {
  __$CreateWishlistParamsCopyWithImpl(this._self, this._then);

  final _CreateWishlistParams _self;
  final $Res Function(_CreateWishlistParams) _then;

/// Create a copy of CreateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? isPrivate = freezed,Object? isDefault = freezed,}) {
  return _then(_CreateWishlistParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$UpdateWishlistParams {

 String? get name; bool? get isPrivate; bool? get isDefault;
/// Create a copy of UpdateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateWishlistParamsCopyWith<UpdateWishlistParams> get copyWith => _$UpdateWishlistParamsCopyWithImpl<UpdateWishlistParams>(this as UpdateWishlistParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateWishlistParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateWishlistParams&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isPrivate, _this.isPrivate) || other.isPrivate == _this.isPrivate)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault));
}


@override
int get hashCode {
  final _this = this as UpdateWishlistParams;
  return Object.hash(runtimeType,_this.name,_this.isPrivate,_this.isDefault);
}

@override
String toString() {
  final _this = this as UpdateWishlistParams;
  return 'UpdateWishlistParams(name: ${_this.name}, isPrivate: ${_this.isPrivate}, isDefault: ${_this.isDefault})';
}


}

/// @nodoc
abstract mixin class $UpdateWishlistParamsCopyWith<$Res>  {
  factory $UpdateWishlistParamsCopyWith(UpdateWishlistParams value, $Res Function(UpdateWishlistParams) _then) = _$UpdateWishlistParamsCopyWithImpl;
@useResult
$Res call({
 String? name, bool? isPrivate, bool? isDefault
});




}
/// @nodoc
class _$UpdateWishlistParamsCopyWithImpl<$Res>
    implements $UpdateWishlistParamsCopyWith<$Res> {
  _$UpdateWishlistParamsCopyWithImpl(this._self, this._then);

  final UpdateWishlistParams _self;
  final $Res Function(UpdateWishlistParams) _then;

/// Create a copy of UpdateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? isPrivate = freezed,Object? isDefault = freezed,}) {
  return _then(UpdateWishlistParams(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateWishlistParams].
extension UpdateWishlistParamsPatterns on UpdateWishlistParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateWishlistParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateWishlistParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateWishlistParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateWishlistParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateWishlistParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateWishlistParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  bool? isPrivate,  bool? isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateWishlistParams() when $default != null:
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  bool? isPrivate,  bool? isDefault)  $default,) {final _that = this;
switch (_that) {
case _UpdateWishlistParams():
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  bool? isPrivate,  bool? isDefault)?  $default,) {final _that = this;
switch (_that) {
case _UpdateWishlistParams() when $default != null:
return $default(_that.name,_that.isPrivate,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateWishlistParams extends UpdateWishlistParams {
  const _UpdateWishlistParams({this.name, this.isPrivate, this.isDefault}): super._();
  

@override final  String? name;
@override final  bool? isPrivate;
@override final  bool? isDefault;

/// Create a copy of UpdateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWishlistParamsCopyWith<_UpdateWishlistParams> get copyWith => __$UpdateWishlistParamsCopyWithImpl<_UpdateWishlistParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWishlistParams&&(identical(other.name, name) || other.name == name)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,isPrivate,isDefault);
}

@override
String toString() {
    return 'UpdateWishlistParams(name: $name, isPrivate: $isPrivate, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$UpdateWishlistParamsCopyWith<$Res> implements $UpdateWishlistParamsCopyWith<$Res> {
  factory _$UpdateWishlistParamsCopyWith(_UpdateWishlistParams value, $Res Function(_UpdateWishlistParams) _then) = __$UpdateWishlistParamsCopyWithImpl;
@override @useResult
$Res call({
 String? name, bool? isPrivate, bool? isDefault
});




}
/// @nodoc
class __$UpdateWishlistParamsCopyWithImpl<$Res>
    implements _$UpdateWishlistParamsCopyWith<$Res> {
  __$UpdateWishlistParamsCopyWithImpl(this._self, this._then);

  final _UpdateWishlistParams _self;
  final $Res Function(_UpdateWishlistParams) _then;

/// Create a copy of UpdateWishlistParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? isPrivate = freezed,Object? isDefault = freezed,}) {
  return _then(_UpdateWishlistParams(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$CreateWishlistItemParams {

 String get variantId; int? get quantity;
/// Create a copy of CreateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateWishlistItemParamsCopyWith<CreateWishlistItemParams> get copyWith => _$CreateWishlistItemParamsCopyWithImpl<CreateWishlistItemParams>(this as CreateWishlistItemParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateWishlistItemParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWishlistItemParams&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}


@override
int get hashCode {
  final _this = this as CreateWishlistItemParams;
  return Object.hash(runtimeType,_this.variantId,_this.quantity);
}

@override
String toString() {
  final _this = this as CreateWishlistItemParams;
  return 'CreateWishlistItemParams(variantId: ${_this.variantId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $CreateWishlistItemParamsCopyWith<$Res>  {
  factory $CreateWishlistItemParamsCopyWith(CreateWishlistItemParams value, $Res Function(CreateWishlistItemParams) _then) = _$CreateWishlistItemParamsCopyWithImpl;
@useResult
$Res call({
 String variantId, int? quantity
});




}
/// @nodoc
class _$CreateWishlistItemParamsCopyWithImpl<$Res>
    implements $CreateWishlistItemParamsCopyWith<$Res> {
  _$CreateWishlistItemParamsCopyWithImpl(this._self, this._then);

  final CreateWishlistItemParams _self;
  final $Res Function(CreateWishlistItemParams) _then;

/// Create a copy of CreateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? quantity = freezed,}) {
  return _then(CreateWishlistItemParams(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateWishlistItemParams].
extension CreateWishlistItemParamsPatterns on CreateWishlistItemParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateWishlistItemParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateWishlistItemParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateWishlistItemParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateWishlistItemParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateWishlistItemParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateWishlistItemParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String variantId,  int? quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateWishlistItemParams() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String variantId,  int? quantity)  $default,) {final _that = this;
switch (_that) {
case _CreateWishlistItemParams():
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String variantId,  int? quantity)?  $default,) {final _that = this;
switch (_that) {
case _CreateWishlistItemParams() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CreateWishlistItemParams extends CreateWishlistItemParams {
  const _CreateWishlistItemParams({required this.variantId, this.quantity}): super._();
  

@override final  String variantId;
@override final  int? quantity;

/// Create a copy of CreateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateWishlistItemParamsCopyWith<_CreateWishlistItemParams> get copyWith => __$CreateWishlistItemParamsCopyWithImpl<_CreateWishlistItemParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateWishlistItemParams&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,variantId,quantity);
}

@override
String toString() {
    return 'CreateWishlistItemParams(variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CreateWishlistItemParamsCopyWith<$Res> implements $CreateWishlistItemParamsCopyWith<$Res> {
  factory _$CreateWishlistItemParamsCopyWith(_CreateWishlistItemParams value, $Res Function(_CreateWishlistItemParams) _then) = __$CreateWishlistItemParamsCopyWithImpl;
@override @useResult
$Res call({
 String variantId, int? quantity
});




}
/// @nodoc
class __$CreateWishlistItemParamsCopyWithImpl<$Res>
    implements _$CreateWishlistItemParamsCopyWith<$Res> {
  __$CreateWishlistItemParamsCopyWithImpl(this._self, this._then);

  final _CreateWishlistItemParams _self;
  final $Res Function(_CreateWishlistItemParams) _then;

/// Create a copy of CreateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? quantity = freezed,}) {
  return _then(_CreateWishlistItemParams(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$UpdateWishlistItemParams {

 String? get variantId; int? get quantity;
/// Create a copy of UpdateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateWishlistItemParamsCopyWith<UpdateWishlistItemParams> get copyWith => _$UpdateWishlistItemParamsCopyWithImpl<UpdateWishlistItemParams>(this as UpdateWishlistItemParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateWishlistItemParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateWishlistItemParams&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}


@override
int get hashCode {
  final _this = this as UpdateWishlistItemParams;
  return Object.hash(runtimeType,_this.variantId,_this.quantity);
}

@override
String toString() {
  final _this = this as UpdateWishlistItemParams;
  return 'UpdateWishlistItemParams(variantId: ${_this.variantId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $UpdateWishlistItemParamsCopyWith<$Res>  {
  factory $UpdateWishlistItemParamsCopyWith(UpdateWishlistItemParams value, $Res Function(UpdateWishlistItemParams) _then) = _$UpdateWishlistItemParamsCopyWithImpl;
@useResult
$Res call({
 String? variantId, int? quantity
});




}
/// @nodoc
class _$UpdateWishlistItemParamsCopyWithImpl<$Res>
    implements $UpdateWishlistItemParamsCopyWith<$Res> {
  _$UpdateWishlistItemParamsCopyWithImpl(this._self, this._then);

  final UpdateWishlistItemParams _self;
  final $Res Function(UpdateWishlistItemParams) _then;

/// Create a copy of UpdateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = freezed,Object? quantity = freezed,}) {
  return _then(UpdateWishlistItemParams(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateWishlistItemParams].
extension UpdateWishlistItemParamsPatterns on UpdateWishlistItemParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateWishlistItemParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateWishlistItemParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateWishlistItemParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateWishlistItemParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateWishlistItemParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateWishlistItemParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? variantId,  int? quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateWishlistItemParams() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? variantId,  int? quantity)  $default,) {final _that = this;
switch (_that) {
case _UpdateWishlistItemParams():
return $default(_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? variantId,  int? quantity)?  $default,) {final _that = this;
switch (_that) {
case _UpdateWishlistItemParams() when $default != null:
return $default(_that.variantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateWishlistItemParams extends UpdateWishlistItemParams {
  const _UpdateWishlistItemParams({this.variantId, this.quantity}): super._();
  

@override final  String? variantId;
@override final  int? quantity;

/// Create a copy of UpdateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWishlistItemParamsCopyWith<_UpdateWishlistItemParams> get copyWith => __$UpdateWishlistItemParamsCopyWithImpl<_UpdateWishlistItemParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWishlistItemParams&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,variantId,quantity);
}

@override
String toString() {
    return 'UpdateWishlistItemParams(variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$UpdateWishlistItemParamsCopyWith<$Res> implements $UpdateWishlistItemParamsCopyWith<$Res> {
  factory _$UpdateWishlistItemParamsCopyWith(_UpdateWishlistItemParams value, $Res Function(_UpdateWishlistItemParams) _then) = __$UpdateWishlistItemParamsCopyWithImpl;
@override @useResult
$Res call({
 String? variantId, int? quantity
});




}
/// @nodoc
class __$UpdateWishlistItemParamsCopyWithImpl<$Res>
    implements _$UpdateWishlistItemParamsCopyWith<$Res> {
  __$UpdateWishlistItemParamsCopyWithImpl(this._self, this._then);

  final _UpdateWishlistItemParams _self;
  final $Res Function(_UpdateWishlistItemParams) _then;

/// Create a copy of UpdateWishlistItemParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = freezed,Object? quantity = freezed,}) {
  return _then(_UpdateWishlistItemParams(
variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$CreatePaymentSetupSessionParams {

 String get paymentMethodId; Map<String, Object?>? get externalData;
/// Create a copy of CreatePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentSetupSessionParamsCopyWith<CreatePaymentSetupSessionParams> get copyWith => _$CreatePaymentSetupSessionParamsCopyWithImpl<CreatePaymentSetupSessionParams>(this as CreatePaymentSetupSessionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreatePaymentSetupSessionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentSetupSessionParams&&(identical(other.paymentMethodId, _this.paymentMethodId) || other.paymentMethodId == _this.paymentMethodId)&&const DeepCollectionEquality().equals(other.externalData, _this.externalData));
}


@override
int get hashCode {
  final _this = this as CreatePaymentSetupSessionParams;
  return Object.hash(runtimeType,_this.paymentMethodId,const DeepCollectionEquality().hash(_this.externalData));
}

@override
String toString() {
  final _this = this as CreatePaymentSetupSessionParams;
  return 'CreatePaymentSetupSessionParams(paymentMethodId: ${_this.paymentMethodId}, externalData: ${_this.externalData})';
}


}

/// @nodoc
abstract mixin class $CreatePaymentSetupSessionParamsCopyWith<$Res>  {
  factory $CreatePaymentSetupSessionParamsCopyWith(CreatePaymentSetupSessionParams value, $Res Function(CreatePaymentSetupSessionParams) _then) = _$CreatePaymentSetupSessionParamsCopyWithImpl;
@useResult
$Res call({
 String paymentMethodId, Map<String, Object?>? externalData
});




}
/// @nodoc
class _$CreatePaymentSetupSessionParamsCopyWithImpl<$Res>
    implements $CreatePaymentSetupSessionParamsCopyWith<$Res> {
  _$CreatePaymentSetupSessionParamsCopyWithImpl(this._self, this._then);

  final CreatePaymentSetupSessionParams _self;
  final $Res Function(CreatePaymentSetupSessionParams) _then;

/// Create a copy of CreatePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentMethodId = null,Object? externalData = freezed,}) {
  return _then(CreatePaymentSetupSessionParams(
paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,externalData: freezed == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePaymentSetupSessionParams].
extension CreatePaymentSetupSessionParamsPatterns on CreatePaymentSetupSessionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentSetupSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentSetupSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentSetupSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentMethodId,  Map<String, Object?>? externalData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams() when $default != null:
return $default(_that.paymentMethodId,_that.externalData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentMethodId,  Map<String, Object?>? externalData)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams():
return $default(_that.paymentMethodId,_that.externalData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentMethodId,  Map<String, Object?>? externalData)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentSetupSessionParams() when $default != null:
return $default(_that.paymentMethodId,_that.externalData);case _:
  return null;

}
}

}

/// @nodoc


class _CreatePaymentSetupSessionParams extends CreatePaymentSetupSessionParams {
  const _CreatePaymentSetupSessionParams({required this.paymentMethodId, this.externalData}): super._();
  

@override final  String paymentMethodId;
@override final  Map<String, Object?>? externalData;

/// Create a copy of CreatePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentSetupSessionParamsCopyWith<_CreatePaymentSetupSessionParams> get copyWith => __$CreatePaymentSetupSessionParamsCopyWithImpl<_CreatePaymentSetupSessionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentSetupSessionParams&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&const DeepCollectionEquality().equals(other.externalData, externalData));
}


@override
int get hashCode {
    return Object.hash(runtimeType,paymentMethodId,const DeepCollectionEquality().hash(externalData));
}

@override
String toString() {
    return 'CreatePaymentSetupSessionParams(paymentMethodId: $paymentMethodId, externalData: $externalData)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentSetupSessionParamsCopyWith<$Res> implements $CreatePaymentSetupSessionParamsCopyWith<$Res> {
  factory _$CreatePaymentSetupSessionParamsCopyWith(_CreatePaymentSetupSessionParams value, $Res Function(_CreatePaymentSetupSessionParams) _then) = __$CreatePaymentSetupSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 String paymentMethodId, Map<String, Object?>? externalData
});




}
/// @nodoc
class __$CreatePaymentSetupSessionParamsCopyWithImpl<$Res>
    implements _$CreatePaymentSetupSessionParamsCopyWith<$Res> {
  __$CreatePaymentSetupSessionParamsCopyWithImpl(this._self, this._then);

  final _CreatePaymentSetupSessionParams _self;
  final $Res Function(_CreatePaymentSetupSessionParams) _then;

/// Create a copy of CreatePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentMethodId = null,Object? externalData = freezed,}) {
  return _then(_CreatePaymentSetupSessionParams(
paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,externalData: freezed == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
mixin _$CompletePaymentSetupSessionParams {

 Map<String, Object?>? get externalData;
/// Create a copy of CompletePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletePaymentSetupSessionParamsCopyWith<CompletePaymentSetupSessionParams> get copyWith => _$CompletePaymentSetupSessionParamsCopyWithImpl<CompletePaymentSetupSessionParams>(this as CompletePaymentSetupSessionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompletePaymentSetupSessionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompletePaymentSetupSessionParams&&const DeepCollectionEquality().equals(other.externalData, _this.externalData));
}


@override
int get hashCode {
  final _this = this as CompletePaymentSetupSessionParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.externalData));
}

@override
String toString() {
  final _this = this as CompletePaymentSetupSessionParams;
  return 'CompletePaymentSetupSessionParams(externalData: ${_this.externalData})';
}


}

/// @nodoc
abstract mixin class $CompletePaymentSetupSessionParamsCopyWith<$Res>  {
  factory $CompletePaymentSetupSessionParamsCopyWith(CompletePaymentSetupSessionParams value, $Res Function(CompletePaymentSetupSessionParams) _then) = _$CompletePaymentSetupSessionParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?>? externalData
});




}
/// @nodoc
class _$CompletePaymentSetupSessionParamsCopyWithImpl<$Res>
    implements $CompletePaymentSetupSessionParamsCopyWith<$Res> {
  _$CompletePaymentSetupSessionParamsCopyWithImpl(this._self, this._then);

  final CompletePaymentSetupSessionParams _self;
  final $Res Function(CompletePaymentSetupSessionParams) _then;

/// Create a copy of CompletePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? externalData = freezed,}) {
  return _then(CompletePaymentSetupSessionParams(
externalData: freezed == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompletePaymentSetupSessionParams].
extension CompletePaymentSetupSessionParamsPatterns on CompletePaymentSetupSessionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompletePaymentSetupSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompletePaymentSetupSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompletePaymentSetupSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?>? externalData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams() when $default != null:
return $default(_that.externalData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?>? externalData)  $default,) {final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams():
return $default(_that.externalData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?>? externalData)?  $default,) {final _that = this;
switch (_that) {
case _CompletePaymentSetupSessionParams() when $default != null:
return $default(_that.externalData);case _:
  return null;

}
}

}

/// @nodoc


class _CompletePaymentSetupSessionParams extends CompletePaymentSetupSessionParams {
  const _CompletePaymentSetupSessionParams({this.externalData}): super._();
  

@override final  Map<String, Object?>? externalData;

/// Create a copy of CompletePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletePaymentSetupSessionParamsCopyWith<_CompletePaymentSetupSessionParams> get copyWith => __$CompletePaymentSetupSessionParamsCopyWithImpl<_CompletePaymentSetupSessionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompletePaymentSetupSessionParams&&const DeepCollectionEquality().equals(other.externalData, externalData));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(externalData));
}

@override
String toString() {
    return 'CompletePaymentSetupSessionParams(externalData: $externalData)';
}


}

/// @nodoc
abstract mixin class _$CompletePaymentSetupSessionParamsCopyWith<$Res> implements $CompletePaymentSetupSessionParamsCopyWith<$Res> {
  factory _$CompletePaymentSetupSessionParamsCopyWith(_CompletePaymentSetupSessionParams value, $Res Function(_CompletePaymentSetupSessionParams) _then) = __$CompletePaymentSetupSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?>? externalData
});




}
/// @nodoc
class __$CompletePaymentSetupSessionParamsCopyWithImpl<$Res>
    implements _$CompletePaymentSetupSessionParamsCopyWith<$Res> {
  __$CompletePaymentSetupSessionParamsCopyWithImpl(this._self, this._then);

  final _CompletePaymentSetupSessionParams _self;
  final $Res Function(_CompletePaymentSetupSessionParams) _then;

/// Create a copy of CompletePaymentSetupSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? externalData = freezed,}) {
  return _then(_CompletePaymentSetupSessionParams(
externalData: freezed == externalData ? _self.externalData : externalData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
mixin _$UpdateCompanyParams {

 String? get name;
/// Create a copy of UpdateCompanyParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCompanyParamsCopyWith<UpdateCompanyParams> get copyWith => _$UpdateCompanyParamsCopyWithImpl<UpdateCompanyParams>(this as UpdateCompanyParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateCompanyParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCompanyParams&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as UpdateCompanyParams;
  return Object.hash(runtimeType,_this.name);
}

@override
String toString() {
  final _this = this as UpdateCompanyParams;
  return 'UpdateCompanyParams(name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $UpdateCompanyParamsCopyWith<$Res>  {
  factory $UpdateCompanyParamsCopyWith(UpdateCompanyParams value, $Res Function(UpdateCompanyParams) _then) = _$UpdateCompanyParamsCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$UpdateCompanyParamsCopyWithImpl<$Res>
    implements $UpdateCompanyParamsCopyWith<$Res> {
  _$UpdateCompanyParamsCopyWithImpl(this._self, this._then);

  final UpdateCompanyParams _self;
  final $Res Function(UpdateCompanyParams) _then;

/// Create a copy of UpdateCompanyParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(UpdateCompanyParams(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCompanyParams].
extension UpdateCompanyParamsPatterns on UpdateCompanyParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCompanyParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCompanyParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCompanyParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCompanyParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCompanyParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCompanyParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCompanyParams() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _UpdateCompanyParams():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCompanyParams() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateCompanyParams extends UpdateCompanyParams {
  const _UpdateCompanyParams({this.name}): super._();
  

@override final  String? name;

/// Create a copy of UpdateCompanyParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCompanyParamsCopyWith<_UpdateCompanyParams> get copyWith => __$UpdateCompanyParamsCopyWithImpl<_UpdateCompanyParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCompanyParams&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name);
}

@override
String toString() {
    return 'UpdateCompanyParams(name: $name)';
}


}

/// @nodoc
abstract mixin class _$UpdateCompanyParamsCopyWith<$Res> implements $UpdateCompanyParamsCopyWith<$Res> {
  factory _$UpdateCompanyParamsCopyWith(_UpdateCompanyParams value, $Res Function(_UpdateCompanyParams) _then) = __$UpdateCompanyParamsCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$UpdateCompanyParamsCopyWithImpl<$Res>
    implements _$UpdateCompanyParamsCopyWith<$Res> {
  __$UpdateCompanyParamsCopyWithImpl(this._self, this._then);

  final _UpdateCompanyParams _self;
  final $Res Function(_UpdateCompanyParams) _then;

/// Create a copy of UpdateCompanyParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_UpdateCompanyParams(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CompanyAddressCreateParams {

 String get firstName; String get lastName; String? get company; String get address1; String? get address2; String get city; String? get postalCode; String? get phone; String? get label; CountryCode get countryCode; String? get stateCode; String? get stateName; String? get zipcode; bool? get defaultBilling; bool? get defaultShipping;
/// Create a copy of CompanyAddressCreateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAddressCreateParamsCopyWith<CompanyAddressCreateParams> get copyWith => _$CompanyAddressCreateParamsCopyWithImpl<CompanyAddressCreateParams>(this as CompanyAddressCreateParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyAddressCreateParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAddressCreateParams&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.stateCode, _this.stateCode) || other.stateCode == _this.stateCode)&&(identical(other.stateName, _this.stateName) || other.stateName == _this.stateName)&&(identical(other.zipcode, _this.zipcode) || other.zipcode == _this.zipcode)&&(identical(other.defaultBilling, _this.defaultBilling) || other.defaultBilling == _this.defaultBilling)&&(identical(other.defaultShipping, _this.defaultShipping) || other.defaultShipping == _this.defaultShipping));
}


@override
int get hashCode {
  final _this = this as CompanyAddressCreateParams;
  return Object.hash(runtimeType,_this.firstName,_this.lastName,_this.company,_this.address1,_this.address2,_this.city,_this.postalCode,_this.phone,_this.label,_this.countryCode,_this.stateCode,_this.stateName,_this.zipcode,_this.defaultBilling,_this.defaultShipping);
}

@override
String toString() {
  final _this = this as CompanyAddressCreateParams;
  return 'CompanyAddressCreateParams(firstName: ${_this.firstName}, lastName: ${_this.lastName}, company: ${_this.company}, address1: ${_this.address1}, address2: ${_this.address2}, city: ${_this.city}, postalCode: ${_this.postalCode}, phone: ${_this.phone}, label: ${_this.label}, countryCode: ${_this.countryCode}, stateCode: ${_this.stateCode}, stateName: ${_this.stateName}, zipcode: ${_this.zipcode}, defaultBilling: ${_this.defaultBilling}, defaultShipping: ${_this.defaultShipping})';
}


}

/// @nodoc
abstract mixin class $CompanyAddressCreateParamsCopyWith<$Res>  {
  factory $CompanyAddressCreateParamsCopyWith(CompanyAddressCreateParams value, $Res Function(CompanyAddressCreateParams) _then) = _$CompanyAddressCreateParamsCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String? company, String address1, String? address2, String city, String? postalCode, String? phone, String? label, CountryCode countryCode, String? stateCode, String? stateName, String? zipcode, bool? defaultBilling, bool? defaultShipping
});




}
/// @nodoc
class _$CompanyAddressCreateParamsCopyWithImpl<$Res>
    implements $CompanyAddressCreateParamsCopyWith<$Res> {
  _$CompanyAddressCreateParamsCopyWithImpl(this._self, this._then);

  final CompanyAddressCreateParams _self;
  final $Res Function(CompanyAddressCreateParams) _then;

/// Create a copy of CompanyAddressCreateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? company = freezed,Object? address1 = null,Object? address2 = freezed,Object? city = null,Object? postalCode = freezed,Object? phone = freezed,Object? label = freezed,Object? countryCode = null,Object? stateCode = freezed,Object? stateName = freezed,Object? zipcode = freezed,Object? defaultBilling = freezed,Object? defaultShipping = freezed,}) {
  return _then(CompanyAddressCreateParams(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,address1: null == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,defaultBilling: freezed == defaultBilling ? _self.defaultBilling : defaultBilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultShipping: freezed == defaultShipping ? _self.defaultShipping : defaultShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAddressCreateParams].
extension CompanyAddressCreateParamsPatterns on CompanyAddressCreateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAddressCreateParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAddressCreateParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAddressCreateParams value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAddressCreateParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAddressCreateParams value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAddressCreateParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? company,  String address1,  String? address2,  String city,  String? postalCode,  String? phone,  String? label,  CountryCode countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAddressCreateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? company,  String address1,  String? address2,  String city,  String? postalCode,  String? phone,  String? label,  CountryCode countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)  $default,) {final _that = this;
switch (_that) {
case _CompanyAddressCreateParams():
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String? company,  String address1,  String? address2,  String city,  String? postalCode,  String? phone,  String? label,  CountryCode countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAddressCreateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyAddressCreateParams extends CompanyAddressCreateParams {
  const _CompanyAddressCreateParams({required this.firstName, required this.lastName, this.company, required this.address1, this.address2, required this.city, this.postalCode, this.phone, this.label, required this.countryCode, this.stateCode, this.stateName, this.zipcode, this.defaultBilling, this.defaultShipping}): super._();
  

@override final  String firstName;
@override final  String lastName;
@override final  String? company;
@override final  String address1;
@override final  String? address2;
@override final  String city;
@override final  String? postalCode;
@override final  String? phone;
@override final  String? label;
@override final  CountryCode countryCode;
@override final  String? stateCode;
@override final  String? stateName;
@override final  String? zipcode;
@override final  bool? defaultBilling;
@override final  bool? defaultShipping;

/// Create a copy of CompanyAddressCreateParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAddressCreateParamsCopyWith<_CompanyAddressCreateParams> get copyWith => __$CompanyAddressCreateParamsCopyWithImpl<_CompanyAddressCreateParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAddressCreateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.company, company) || other.company == company)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.city, city) || other.city == city)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.label, label) || other.label == label)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.defaultBilling, defaultBilling) || other.defaultBilling == defaultBilling)&&(identical(other.defaultShipping, defaultShipping) || other.defaultShipping == defaultShipping));
}


@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName,company,address1,address2,city,postalCode,phone,label,countryCode,stateCode,stateName,zipcode,defaultBilling,defaultShipping);
}

@override
String toString() {
    return 'CompanyAddressCreateParams(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, postalCode: $postalCode, phone: $phone, label: $label, countryCode: $countryCode, stateCode: $stateCode, stateName: $stateName, zipcode: $zipcode, defaultBilling: $defaultBilling, defaultShipping: $defaultShipping)';
}


}

/// @nodoc
abstract mixin class _$CompanyAddressCreateParamsCopyWith<$Res> implements $CompanyAddressCreateParamsCopyWith<$Res> {
  factory _$CompanyAddressCreateParamsCopyWith(_CompanyAddressCreateParams value, $Res Function(_CompanyAddressCreateParams) _then) = __$CompanyAddressCreateParamsCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String? company, String address1, String? address2, String city, String? postalCode, String? phone, String? label, CountryCode countryCode, String? stateCode, String? stateName, String? zipcode, bool? defaultBilling, bool? defaultShipping
});




}
/// @nodoc
class __$CompanyAddressCreateParamsCopyWithImpl<$Res>
    implements _$CompanyAddressCreateParamsCopyWith<$Res> {
  __$CompanyAddressCreateParamsCopyWithImpl(this._self, this._then);

  final _CompanyAddressCreateParams _self;
  final $Res Function(_CompanyAddressCreateParams) _then;

/// Create a copy of CompanyAddressCreateParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? company = freezed,Object? address1 = null,Object? address2 = freezed,Object? city = null,Object? postalCode = freezed,Object? phone = freezed,Object? label = freezed,Object? countryCode = null,Object? stateCode = freezed,Object? stateName = freezed,Object? zipcode = freezed,Object? defaultBilling = freezed,Object? defaultShipping = freezed,}) {
  return _then(_CompanyAddressCreateParams(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,address1: null == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,defaultBilling: freezed == defaultBilling ? _self.defaultBilling : defaultBilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultShipping: freezed == defaultShipping ? _self.defaultShipping : defaultShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$CompanyAddressUpdateParams {

 String? get firstName; String? get lastName; String? get company; String? get address1; String? get address2; String? get city; String? get postalCode; String? get phone; String? get label; CountryCode? get countryCode; String? get stateCode; String? get stateName; String? get zipcode; bool? get defaultBilling; bool? get defaultShipping;
/// Create a copy of CompanyAddressUpdateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyAddressUpdateParamsCopyWith<CompanyAddressUpdateParams> get copyWith => _$CompanyAddressUpdateParamsCopyWithImpl<CompanyAddressUpdateParams>(this as CompanyAddressUpdateParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompanyAddressUpdateParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyAddressUpdateParams&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.stateCode, _this.stateCode) || other.stateCode == _this.stateCode)&&(identical(other.stateName, _this.stateName) || other.stateName == _this.stateName)&&(identical(other.zipcode, _this.zipcode) || other.zipcode == _this.zipcode)&&(identical(other.defaultBilling, _this.defaultBilling) || other.defaultBilling == _this.defaultBilling)&&(identical(other.defaultShipping, _this.defaultShipping) || other.defaultShipping == _this.defaultShipping));
}


@override
int get hashCode {
  final _this = this as CompanyAddressUpdateParams;
  return Object.hash(runtimeType,_this.firstName,_this.lastName,_this.company,_this.address1,_this.address2,_this.city,_this.postalCode,_this.phone,_this.label,_this.countryCode,_this.stateCode,_this.stateName,_this.zipcode,_this.defaultBilling,_this.defaultShipping);
}

@override
String toString() {
  final _this = this as CompanyAddressUpdateParams;
  return 'CompanyAddressUpdateParams(firstName: ${_this.firstName}, lastName: ${_this.lastName}, company: ${_this.company}, address1: ${_this.address1}, address2: ${_this.address2}, city: ${_this.city}, postalCode: ${_this.postalCode}, phone: ${_this.phone}, label: ${_this.label}, countryCode: ${_this.countryCode}, stateCode: ${_this.stateCode}, stateName: ${_this.stateName}, zipcode: ${_this.zipcode}, defaultBilling: ${_this.defaultBilling}, defaultShipping: ${_this.defaultShipping})';
}


}

/// @nodoc
abstract mixin class $CompanyAddressUpdateParamsCopyWith<$Res>  {
  factory $CompanyAddressUpdateParamsCopyWith(CompanyAddressUpdateParams value, $Res Function(CompanyAddressUpdateParams) _then) = _$CompanyAddressUpdateParamsCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, String? company, String? address1, String? address2, String? city, String? postalCode, String? phone, String? label, CountryCode? countryCode, String? stateCode, String? stateName, String? zipcode, bool? defaultBilling, bool? defaultShipping
});




}
/// @nodoc
class _$CompanyAddressUpdateParamsCopyWithImpl<$Res>
    implements $CompanyAddressUpdateParamsCopyWith<$Res> {
  _$CompanyAddressUpdateParamsCopyWithImpl(this._self, this._then);

  final CompanyAddressUpdateParams _self;
  final $Res Function(CompanyAddressUpdateParams) _then;

/// Create a copy of CompanyAddressUpdateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? company = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? postalCode = freezed,Object? phone = freezed,Object? label = freezed,Object? countryCode = freezed,Object? stateCode = freezed,Object? stateName = freezed,Object? zipcode = freezed,Object? defaultBilling = freezed,Object? defaultShipping = freezed,}) {
  return _then(CompanyAddressUpdateParams(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,defaultBilling: freezed == defaultBilling ? _self.defaultBilling : defaultBilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultShipping: freezed == defaultShipping ? _self.defaultShipping : defaultShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyAddressUpdateParams].
extension CompanyAddressUpdateParamsPatterns on CompanyAddressUpdateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyAddressUpdateParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyAddressUpdateParams value)  $default,){
final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyAddressUpdateParams value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? company,  String? address1,  String? address2,  String? city,  String? postalCode,  String? phone,  String? label,  CountryCode? countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? company,  String? address1,  String? address2,  String? city,  String? postalCode,  String? phone,  String? label,  CountryCode? countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)  $default,) {final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams():
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  String? company,  String? address1,  String? address2,  String? city,  String? postalCode,  String? phone,  String? label,  CountryCode? countryCode,  String? stateCode,  String? stateName,  String? zipcode,  bool? defaultBilling,  bool? defaultShipping)?  $default,) {final _that = this;
switch (_that) {
case _CompanyAddressUpdateParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.company,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.label,_that.countryCode,_that.stateCode,_that.stateName,_that.zipcode,_that.defaultBilling,_that.defaultShipping);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyAddressUpdateParams extends CompanyAddressUpdateParams {
  const _CompanyAddressUpdateParams({this.firstName, this.lastName, this.company, this.address1, this.address2, this.city, this.postalCode, this.phone, this.label, this.countryCode, this.stateCode, this.stateName, this.zipcode, this.defaultBilling, this.defaultShipping}): super._();
  

@override final  String? firstName;
@override final  String? lastName;
@override final  String? company;
@override final  String? address1;
@override final  String? address2;
@override final  String? city;
@override final  String? postalCode;
@override final  String? phone;
@override final  String? label;
@override final  CountryCode? countryCode;
@override final  String? stateCode;
@override final  String? stateName;
@override final  String? zipcode;
@override final  bool? defaultBilling;
@override final  bool? defaultShipping;

/// Create a copy of CompanyAddressUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyAddressUpdateParamsCopyWith<_CompanyAddressUpdateParams> get copyWith => __$CompanyAddressUpdateParamsCopyWithImpl<_CompanyAddressUpdateParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyAddressUpdateParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.company, company) || other.company == company)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.city, city) || other.city == city)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.label, label) || other.label == label)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.defaultBilling, defaultBilling) || other.defaultBilling == defaultBilling)&&(identical(other.defaultShipping, defaultShipping) || other.defaultShipping == defaultShipping));
}


@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName,company,address1,address2,city,postalCode,phone,label,countryCode,stateCode,stateName,zipcode,defaultBilling,defaultShipping);
}

@override
String toString() {
    return 'CompanyAddressUpdateParams(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, postalCode: $postalCode, phone: $phone, label: $label, countryCode: $countryCode, stateCode: $stateCode, stateName: $stateName, zipcode: $zipcode, defaultBilling: $defaultBilling, defaultShipping: $defaultShipping)';
}


}

/// @nodoc
abstract mixin class _$CompanyAddressUpdateParamsCopyWith<$Res> implements $CompanyAddressUpdateParamsCopyWith<$Res> {
  factory _$CompanyAddressUpdateParamsCopyWith(_CompanyAddressUpdateParams value, $Res Function(_CompanyAddressUpdateParams) _then) = __$CompanyAddressUpdateParamsCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, String? company, String? address1, String? address2, String? city, String? postalCode, String? phone, String? label, CountryCode? countryCode, String? stateCode, String? stateName, String? zipcode, bool? defaultBilling, bool? defaultShipping
});




}
/// @nodoc
class __$CompanyAddressUpdateParamsCopyWithImpl<$Res>
    implements _$CompanyAddressUpdateParamsCopyWith<$Res> {
  __$CompanyAddressUpdateParamsCopyWithImpl(this._self, this._then);

  final _CompanyAddressUpdateParams _self;
  final $Res Function(_CompanyAddressUpdateParams) _then;

/// Create a copy of CompanyAddressUpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? company = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? postalCode = freezed,Object? phone = freezed,Object? label = freezed,Object? countryCode = freezed,Object? stateCode = freezed,Object? stateName = freezed,Object? zipcode = freezed,Object? defaultBilling = freezed,Object? defaultShipping = freezed,}) {
  return _then(_CompanyAddressUpdateParams(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,defaultBilling: freezed == defaultBilling ? _self.defaultBilling : defaultBilling // ignore: cast_nullable_to_non_nullable
as bool?,defaultShipping: freezed == defaultShipping ? _self.defaultShipping : defaultShipping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$AddCompanyMemberParams {

 String get customerEmail;
/// Create a copy of AddCompanyMemberParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCompanyMemberParamsCopyWith<AddCompanyMemberParams> get copyWith => _$AddCompanyMemberParamsCopyWithImpl<AddCompanyMemberParams>(this as AddCompanyMemberParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddCompanyMemberParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCompanyMemberParams&&(identical(other.customerEmail, _this.customerEmail) || other.customerEmail == _this.customerEmail));
}


@override
int get hashCode {
  final _this = this as AddCompanyMemberParams;
  return Object.hash(runtimeType,_this.customerEmail);
}

@override
String toString() {
  final _this = this as AddCompanyMemberParams;
  return 'AddCompanyMemberParams(customerEmail: ${_this.customerEmail})';
}


}

/// @nodoc
abstract mixin class $AddCompanyMemberParamsCopyWith<$Res>  {
  factory $AddCompanyMemberParamsCopyWith(AddCompanyMemberParams value, $Res Function(AddCompanyMemberParams) _then) = _$AddCompanyMemberParamsCopyWithImpl;
@useResult
$Res call({
 String customerEmail
});




}
/// @nodoc
class _$AddCompanyMemberParamsCopyWithImpl<$Res>
    implements $AddCompanyMemberParamsCopyWith<$Res> {
  _$AddCompanyMemberParamsCopyWithImpl(this._self, this._then);

  final AddCompanyMemberParams _self;
  final $Res Function(AddCompanyMemberParams) _then;

/// Create a copy of AddCompanyMemberParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerEmail = null,}) {
  return _then(AddCompanyMemberParams(
customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddCompanyMemberParams].
extension AddCompanyMemberParamsPatterns on AddCompanyMemberParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddCompanyMemberParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddCompanyMemberParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddCompanyMemberParams value)  $default,){
final _that = this;
switch (_that) {
case _AddCompanyMemberParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddCompanyMemberParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddCompanyMemberParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String customerEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddCompanyMemberParams() when $default != null:
return $default(_that.customerEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String customerEmail)  $default,) {final _that = this;
switch (_that) {
case _AddCompanyMemberParams():
return $default(_that.customerEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String customerEmail)?  $default,) {final _that = this;
switch (_that) {
case _AddCompanyMemberParams() when $default != null:
return $default(_that.customerEmail);case _:
  return null;

}
}

}

/// @nodoc


class _AddCompanyMemberParams extends AddCompanyMemberParams {
  const _AddCompanyMemberParams({required this.customerEmail}): super._();
  

@override final  String customerEmail;

/// Create a copy of AddCompanyMemberParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCompanyMemberParamsCopyWith<_AddCompanyMemberParams> get copyWith => __$AddCompanyMemberParamsCopyWithImpl<_AddCompanyMemberParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCompanyMemberParams&&(identical(other.customerEmail, customerEmail) || other.customerEmail == customerEmail));
}


@override
int get hashCode {
    return Object.hash(runtimeType,customerEmail);
}

@override
String toString() {
    return 'AddCompanyMemberParams(customerEmail: $customerEmail)';
}


}

/// @nodoc
abstract mixin class _$AddCompanyMemberParamsCopyWith<$Res> implements $AddCompanyMemberParamsCopyWith<$Res> {
  factory _$AddCompanyMemberParamsCopyWith(_AddCompanyMemberParams value, $Res Function(_AddCompanyMemberParams) _then) = __$AddCompanyMemberParamsCopyWithImpl;
@override @useResult
$Res call({
 String customerEmail
});




}
/// @nodoc
class __$AddCompanyMemberParamsCopyWithImpl<$Res>
    implements _$AddCompanyMemberParamsCopyWith<$Res> {
  __$AddCompanyMemberParamsCopyWithImpl(this._self, this._then);

  final _AddCompanyMemberParams _self;
  final $Res Function(_AddCompanyMemberParams) _then;

/// Create a copy of AddCompanyMemberParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerEmail = null,}) {
  return _then(_AddCompanyMemberParams(
customerEmail: null == customerEmail ? _self.customerEmail : customerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AcceptCompanyInvitationParams {

 String? get firstName; String? get lastName; String? get phone; String? get password; String? get passwordConfirmation;
/// Create a copy of AcceptCompanyInvitationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptCompanyInvitationParamsCopyWith<AcceptCompanyInvitationParams> get copyWith => _$AcceptCompanyInvitationParamsCopyWithImpl<AcceptCompanyInvitationParams>(this as AcceptCompanyInvitationParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AcceptCompanyInvitationParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptCompanyInvitationParams&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.passwordConfirmation, _this.passwordConfirmation) || other.passwordConfirmation == _this.passwordConfirmation));
}


@override
int get hashCode {
  final _this = this as AcceptCompanyInvitationParams;
  return Object.hash(runtimeType,_this.firstName,_this.lastName,_this.phone,_this.password,_this.passwordConfirmation);
}

@override
String toString() {
  final _this = this as AcceptCompanyInvitationParams;
  return 'AcceptCompanyInvitationParams(firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone}, password: ${_this.password}, passwordConfirmation: ${_this.passwordConfirmation})';
}


}

/// @nodoc
abstract mixin class $AcceptCompanyInvitationParamsCopyWith<$Res>  {
  factory $AcceptCompanyInvitationParamsCopyWith(AcceptCompanyInvitationParams value, $Res Function(AcceptCompanyInvitationParams) _then) = _$AcceptCompanyInvitationParamsCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, String? phone, String? password, String? passwordConfirmation
});




}
/// @nodoc
class _$AcceptCompanyInvitationParamsCopyWithImpl<$Res>
    implements $AcceptCompanyInvitationParamsCopyWith<$Res> {
  _$AcceptCompanyInvitationParamsCopyWithImpl(this._self, this._then);

  final AcceptCompanyInvitationParams _self;
  final $Res Function(AcceptCompanyInvitationParams) _then;

/// Create a copy of AcceptCompanyInvitationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? password = freezed,Object? passwordConfirmation = freezed,}) {
  return _then(AcceptCompanyInvitationParams(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AcceptCompanyInvitationParams].
extension AcceptCompanyInvitationParamsPatterns on AcceptCompanyInvitationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AcceptCompanyInvitationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AcceptCompanyInvitationParams value)  $default,){
final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AcceptCompanyInvitationParams value)?  $default,){
final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? phone,  String? password,  String? passwordConfirmation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone,_that.password,_that.passwordConfirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? phone,  String? password,  String? passwordConfirmation)  $default,) {final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams():
return $default(_that.firstName,_that.lastName,_that.phone,_that.password,_that.passwordConfirmation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  String? phone,  String? password,  String? passwordConfirmation)?  $default,) {final _that = this;
switch (_that) {
case _AcceptCompanyInvitationParams() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone,_that.password,_that.passwordConfirmation);case _:
  return null;

}
}

}

/// @nodoc


class _AcceptCompanyInvitationParams extends AcceptCompanyInvitationParams {
  const _AcceptCompanyInvitationParams({this.firstName, this.lastName, this.phone, this.password, this.passwordConfirmation}): super._();
  

@override final  String? firstName;
@override final  String? lastName;
@override final  String? phone;
@override final  String? password;
@override final  String? passwordConfirmation;

/// Create a copy of AcceptCompanyInvitationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptCompanyInvitationParamsCopyWith<_AcceptCompanyInvitationParams> get copyWith => __$AcceptCompanyInvitationParamsCopyWithImpl<_AcceptCompanyInvitationParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptCompanyInvitationParams&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation));
}


@override
int get hashCode {
    return Object.hash(runtimeType,firstName,lastName,phone,password,passwordConfirmation);
}

@override
String toString() {
    return 'AcceptCompanyInvitationParams(firstName: $firstName, lastName: $lastName, phone: $phone, password: $password, passwordConfirmation: $passwordConfirmation)';
}


}

/// @nodoc
abstract mixin class _$AcceptCompanyInvitationParamsCopyWith<$Res> implements $AcceptCompanyInvitationParamsCopyWith<$Res> {
  factory _$AcceptCompanyInvitationParamsCopyWith(_AcceptCompanyInvitationParams value, $Res Function(_AcceptCompanyInvitationParams) _then) = __$AcceptCompanyInvitationParamsCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, String? phone, String? password, String? passwordConfirmation
});




}
/// @nodoc
class __$AcceptCompanyInvitationParamsCopyWithImpl<$Res>
    implements _$AcceptCompanyInvitationParamsCopyWith<$Res> {
  __$AcceptCompanyInvitationParamsCopyWithImpl(this._self, this._then);

  final _AcceptCompanyInvitationParams _self;
  final $Res Function(_AcceptCompanyInvitationParams) _then;

/// Create a copy of AcceptCompanyInvitationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? password = freezed,Object? passwordConfirmation = freezed,}) {
  return _then(_AcceptCompanyInvitationParams(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
