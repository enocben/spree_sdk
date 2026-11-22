// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateCartParams {

 String? get email; Map<String, Object?> get extra;
/// Create a copy of UpdateCartParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCartParamsCopyWith<UpdateCartParams> get copyWith => _$UpdateCartParamsCopyWithImpl<UpdateCartParams>(this as UpdateCartParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateCartParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCartParams&&(identical(other.email, _this.email) || other.email == _this.email)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as UpdateCartParams;
  return Object.hash(runtimeType,_this.email,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as UpdateCartParams;
  return 'UpdateCartParams(email: ${_this.email}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $UpdateCartParamsCopyWith<$Res>  {
  factory $UpdateCartParamsCopyWith(UpdateCartParams value, $Res Function(UpdateCartParams) _then) = _$UpdateCartParamsCopyWithImpl;
@useResult
$Res call({
 String? email, Map<String, Object?> extra
});




}
/// @nodoc
class _$UpdateCartParamsCopyWithImpl<$Res>
    implements $UpdateCartParamsCopyWith<$Res> {
  _$UpdateCartParamsCopyWithImpl(this._self, this._then);

  final UpdateCartParams _self;
  final $Res Function(UpdateCartParams) _then;

/// Create a copy of UpdateCartParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? extra = null,}) {
  return _then(UpdateCartParams(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCartParams].
extension UpdateCartParamsPatterns on UpdateCartParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCartParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCartParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCartParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCartParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCartParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCartParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCartParams() when $default != null:
return $default(_that.email,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _UpdateCartParams():
return $default(_that.email,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCartParams() when $default != null:
return $default(_that.email,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateCartParams extends UpdateCartParams {
  const _UpdateCartParams({this.email, this.extra = const <String, Object?>{}}): super._();
  

@override final  String? email;
@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of UpdateCartParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCartParamsCopyWith<_UpdateCartParams> get copyWith => __$UpdateCartParamsCopyWithImpl<_UpdateCartParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCartParams&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'UpdateCartParams(email: $email, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$UpdateCartParamsCopyWith<$Res> implements $UpdateCartParamsCopyWith<$Res> {
  factory _$UpdateCartParamsCopyWith(_UpdateCartParams value, $Res Function(_UpdateCartParams) _then) = __$UpdateCartParamsCopyWithImpl;
@override @useResult
$Res call({
 String? email, Map<String, Object?> extra
});




}
/// @nodoc
class __$UpdateCartParamsCopyWithImpl<$Res>
    implements _$UpdateCartParamsCopyWith<$Res> {
  __$UpdateCartParamsCopyWithImpl(this._self, this._then);

  final _UpdateCartParams _self;
  final $Res Function(_UpdateCartParams) _then;

/// Create a copy of UpdateCartParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? extra = null,}) {
  return _then(_UpdateCartParams(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$AddLineItemParams {

 String get variantId; int get quantity; Map<String, Object?> get extra;
/// Create a copy of AddLineItemParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddLineItemParamsCopyWith<AddLineItemParams> get copyWith => _$AddLineItemParamsCopyWithImpl<AddLineItemParams>(this as AddLineItemParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddLineItemParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddLineItemParams&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as AddLineItemParams;
  return Object.hash(runtimeType,_this.variantId,_this.quantity,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as AddLineItemParams;
  return 'AddLineItemParams(variantId: ${_this.variantId}, quantity: ${_this.quantity}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $AddLineItemParamsCopyWith<$Res>  {
  factory $AddLineItemParamsCopyWith(AddLineItemParams value, $Res Function(AddLineItemParams) _then) = _$AddLineItemParamsCopyWithImpl;
@useResult
$Res call({
 String variantId, int quantity, Map<String, Object?> extra
});




}
/// @nodoc
class _$AddLineItemParamsCopyWithImpl<$Res>
    implements $AddLineItemParamsCopyWith<$Res> {
  _$AddLineItemParamsCopyWithImpl(this._self, this._then);

  final AddLineItemParams _self;
  final $Res Function(AddLineItemParams) _then;

/// Create a copy of AddLineItemParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variantId = null,Object? quantity = null,Object? extra = null,}) {
  return _then(AddLineItemParams(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddLineItemParams].
extension AddLineItemParamsPatterns on AddLineItemParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddLineItemParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddLineItemParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddLineItemParams value)  $default,){
final _that = this;
switch (_that) {
case _AddLineItemParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddLineItemParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddLineItemParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String variantId,  int quantity,  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddLineItemParams() when $default != null:
return $default(_that.variantId,_that.quantity,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String variantId,  int quantity,  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _AddLineItemParams():
return $default(_that.variantId,_that.quantity,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String variantId,  int quantity,  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _AddLineItemParams() when $default != null:
return $default(_that.variantId,_that.quantity,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _AddLineItemParams extends AddLineItemParams {
  const _AddLineItemParams({required this.variantId, required this.quantity, this.extra = const <String, Object?>{}}): super._();
  

@override final  String variantId;
@override final  int quantity;
@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of AddLineItemParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddLineItemParamsCopyWith<_AddLineItemParams> get copyWith => __$AddLineItemParamsCopyWithImpl<_AddLineItemParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddLineItemParams&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,variantId,quantity,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'AddLineItemParams(variantId: $variantId, quantity: $quantity, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$AddLineItemParamsCopyWith<$Res> implements $AddLineItemParamsCopyWith<$Res> {
  factory _$AddLineItemParamsCopyWith(_AddLineItemParams value, $Res Function(_AddLineItemParams) _then) = __$AddLineItemParamsCopyWithImpl;
@override @useResult
$Res call({
 String variantId, int quantity, Map<String, Object?> extra
});




}
/// @nodoc
class __$AddLineItemParamsCopyWithImpl<$Res>
    implements _$AddLineItemParamsCopyWith<$Res> {
  __$AddLineItemParamsCopyWithImpl(this._self, this._then);

  final _AddLineItemParams _self;
  final $Res Function(_AddLineItemParams) _then;

/// Create a copy of AddLineItemParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variantId = null,Object? quantity = null,Object? extra = null,}) {
  return _then(_AddLineItemParams(
variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$UpdateLineItemParams {

 int? get quantity; Map<String, Object?> get extra;
/// Create a copy of UpdateLineItemParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLineItemParamsCopyWith<UpdateLineItemParams> get copyWith => _$UpdateLineItemParamsCopyWithImpl<UpdateLineItemParams>(this as UpdateLineItemParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateLineItemParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLineItemParams&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as UpdateLineItemParams;
  return Object.hash(runtimeType,_this.quantity,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as UpdateLineItemParams;
  return 'UpdateLineItemParams(quantity: ${_this.quantity}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $UpdateLineItemParamsCopyWith<$Res>  {
  factory $UpdateLineItemParamsCopyWith(UpdateLineItemParams value, $Res Function(UpdateLineItemParams) _then) = _$UpdateLineItemParamsCopyWithImpl;
@useResult
$Res call({
 int? quantity, Map<String, Object?> extra
});




}
/// @nodoc
class _$UpdateLineItemParamsCopyWithImpl<$Res>
    implements $UpdateLineItemParamsCopyWith<$Res> {
  _$UpdateLineItemParamsCopyWithImpl(this._self, this._then);

  final UpdateLineItemParams _self;
  final $Res Function(UpdateLineItemParams) _then;

/// Create a copy of UpdateLineItemParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = freezed,Object? extra = null,}) {
  return _then(UpdateLineItemParams(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateLineItemParams].
extension UpdateLineItemParamsPatterns on UpdateLineItemParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateLineItemParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateLineItemParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateLineItemParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateLineItemParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateLineItemParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateLineItemParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? quantity,  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateLineItemParams() when $default != null:
return $default(_that.quantity,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? quantity,  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _UpdateLineItemParams():
return $default(_that.quantity,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? quantity,  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _UpdateLineItemParams() when $default != null:
return $default(_that.quantity,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateLineItemParams extends UpdateLineItemParams {
  const _UpdateLineItemParams({this.quantity, this.extra = const <String, Object?>{}}): super._();
  

@override final  int? quantity;
@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of UpdateLineItemParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateLineItemParamsCopyWith<_UpdateLineItemParams> get copyWith => __$UpdateLineItemParamsCopyWithImpl<_UpdateLineItemParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateLineItemParams&&(identical(other.quantity, quantity) || other.quantity == quantity)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,quantity,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'UpdateLineItemParams(quantity: $quantity, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$UpdateLineItemParamsCopyWith<$Res> implements $UpdateLineItemParamsCopyWith<$Res> {
  factory _$UpdateLineItemParamsCopyWith(_UpdateLineItemParams value, $Res Function(_UpdateLineItemParams) _then) = __$UpdateLineItemParamsCopyWithImpl;
@override @useResult
$Res call({
 int? quantity, Map<String, Object?> extra
});




}
/// @nodoc
class __$UpdateLineItemParamsCopyWithImpl<$Res>
    implements _$UpdateLineItemParamsCopyWith<$Res> {
  __$UpdateLineItemParamsCopyWithImpl(this._self, this._then);

  final _UpdateLineItemParams _self;
  final $Res Function(_UpdateLineItemParams) _then;

/// Create a copy of UpdateLineItemParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = freezed,Object? extra = null,}) {
  return _then(_UpdateLineItemParams(
quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$CreatePaymentParams {

 Map<String, Object?> get extra;
/// Create a copy of CreatePaymentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentParamsCopyWith<CreatePaymentParams> get copyWith => _$CreatePaymentParamsCopyWithImpl<CreatePaymentParams>(this as CreatePaymentParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreatePaymentParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentParams&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as CreatePaymentParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as CreatePaymentParams;
  return 'CreatePaymentParams(extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $CreatePaymentParamsCopyWith<$Res>  {
  factory $CreatePaymentParamsCopyWith(CreatePaymentParams value, $Res Function(CreatePaymentParams) _then) = _$CreatePaymentParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class _$CreatePaymentParamsCopyWithImpl<$Res>
    implements $CreatePaymentParamsCopyWith<$Res> {
  _$CreatePaymentParamsCopyWithImpl(this._self, this._then);

  final CreatePaymentParams _self;
  final $Res Function(CreatePaymentParams) _then;

/// Create a copy of CreatePaymentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extra = null,}) {
  return _then(CreatePaymentParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePaymentParams].
extension CreatePaymentParamsPatterns on CreatePaymentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentParams value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentParams() when $default != null:
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentParams():
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentParams() when $default != null:
return $default(_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _CreatePaymentParams extends CreatePaymentParams {
  const _CreatePaymentParams({this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of CreatePaymentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentParamsCopyWith<_CreatePaymentParams> get copyWith => __$CreatePaymentParamsCopyWithImpl<_CreatePaymentParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentParams&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'CreatePaymentParams(extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentParamsCopyWith<$Res> implements $CreatePaymentParamsCopyWith<$Res> {
  factory _$CreatePaymentParamsCopyWith(_CreatePaymentParams value, $Res Function(_CreatePaymentParams) _then) = __$CreatePaymentParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class __$CreatePaymentParamsCopyWithImpl<$Res>
    implements _$CreatePaymentParamsCopyWith<$Res> {
  __$CreatePaymentParamsCopyWithImpl(this._self, this._then);

  final _CreatePaymentParams _self;
  final $Res Function(_CreatePaymentParams) _then;

/// Create a copy of CreatePaymentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extra = null,}) {
  return _then(_CreatePaymentParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$CreatePaymentSessionParams {

 Map<String, Object?> get extra;
/// Create a copy of CreatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePaymentSessionParamsCopyWith<CreatePaymentSessionParams> get copyWith => _$CreatePaymentSessionParamsCopyWithImpl<CreatePaymentSessionParams>(this as CreatePaymentSessionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreatePaymentSessionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as CreatePaymentSessionParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as CreatePaymentSessionParams;
  return 'CreatePaymentSessionParams(extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $CreatePaymentSessionParamsCopyWith<$Res>  {
  factory $CreatePaymentSessionParamsCopyWith(CreatePaymentSessionParams value, $Res Function(CreatePaymentSessionParams) _then) = _$CreatePaymentSessionParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class _$CreatePaymentSessionParamsCopyWithImpl<$Res>
    implements $CreatePaymentSessionParamsCopyWith<$Res> {
  _$CreatePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final CreatePaymentSessionParams _self;
  final $Res Function(CreatePaymentSessionParams) _then;

/// Create a copy of CreatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extra = null,}) {
  return _then(CreatePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePaymentSessionParams].
extension CreatePaymentSessionParamsPatterns on CreatePaymentSessionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePaymentSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePaymentSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentSessionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePaymentSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentSessionParams():
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _CreatePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _CreatePaymentSessionParams extends CreatePaymentSessionParams {
  const _CreatePaymentSessionParams({this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of CreatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePaymentSessionParamsCopyWith<_CreatePaymentSessionParams> get copyWith => __$CreatePaymentSessionParamsCopyWithImpl<_CreatePaymentSessionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'CreatePaymentSessionParams(extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$CreatePaymentSessionParamsCopyWith<$Res> implements $CreatePaymentSessionParamsCopyWith<$Res> {
  factory _$CreatePaymentSessionParamsCopyWith(_CreatePaymentSessionParams value, $Res Function(_CreatePaymentSessionParams) _then) = __$CreatePaymentSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class __$CreatePaymentSessionParamsCopyWithImpl<$Res>
    implements _$CreatePaymentSessionParamsCopyWith<$Res> {
  __$CreatePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final _CreatePaymentSessionParams _self;
  final $Res Function(_CreatePaymentSessionParams) _then;

/// Create a copy of CreatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extra = null,}) {
  return _then(_CreatePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$UpdatePaymentSessionParams {

 Map<String, Object?> get extra;
/// Create a copy of UpdatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePaymentSessionParamsCopyWith<UpdatePaymentSessionParams> get copyWith => _$UpdatePaymentSessionParamsCopyWithImpl<UpdatePaymentSessionParams>(this as UpdatePaymentSessionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdatePaymentSessionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as UpdatePaymentSessionParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as UpdatePaymentSessionParams;
  return 'UpdatePaymentSessionParams(extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $UpdatePaymentSessionParamsCopyWith<$Res>  {
  factory $UpdatePaymentSessionParamsCopyWith(UpdatePaymentSessionParams value, $Res Function(UpdatePaymentSessionParams) _then) = _$UpdatePaymentSessionParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class _$UpdatePaymentSessionParamsCopyWithImpl<$Res>
    implements $UpdatePaymentSessionParamsCopyWith<$Res> {
  _$UpdatePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final UpdatePaymentSessionParams _self;
  final $Res Function(UpdatePaymentSessionParams) _then;

/// Create a copy of UpdatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extra = null,}) {
  return _then(UpdatePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePaymentSessionParams].
extension UpdatePaymentSessionParamsPatterns on UpdatePaymentSessionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePaymentSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePaymentSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePaymentSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams():
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _UpdatePaymentSessionParams extends UpdatePaymentSessionParams {
  const _UpdatePaymentSessionParams({this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of UpdatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePaymentSessionParamsCopyWith<_UpdatePaymentSessionParams> get copyWith => __$UpdatePaymentSessionParamsCopyWithImpl<_UpdatePaymentSessionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'UpdatePaymentSessionParams(extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$UpdatePaymentSessionParamsCopyWith<$Res> implements $UpdatePaymentSessionParamsCopyWith<$Res> {
  factory _$UpdatePaymentSessionParamsCopyWith(_UpdatePaymentSessionParams value, $Res Function(_UpdatePaymentSessionParams) _then) = __$UpdatePaymentSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class __$UpdatePaymentSessionParamsCopyWithImpl<$Res>
    implements _$UpdatePaymentSessionParamsCopyWith<$Res> {
  __$UpdatePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final _UpdatePaymentSessionParams _self;
  final $Res Function(_UpdatePaymentSessionParams) _then;

/// Create a copy of UpdatePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extra = null,}) {
  return _then(_UpdatePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$CompletePaymentSessionParams {

 Map<String, Object?> get extra;
/// Create a copy of CompletePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompletePaymentSessionParamsCopyWith<CompletePaymentSessionParams> get copyWith => _$CompletePaymentSessionParamsCopyWithImpl<CompletePaymentSessionParams>(this as CompletePaymentSessionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompletePaymentSessionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompletePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as CompletePaymentSessionParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as CompletePaymentSessionParams;
  return 'CompletePaymentSessionParams(extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $CompletePaymentSessionParamsCopyWith<$Res>  {
  factory $CompletePaymentSessionParamsCopyWith(CompletePaymentSessionParams value, $Res Function(CompletePaymentSessionParams) _then) = _$CompletePaymentSessionParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class _$CompletePaymentSessionParamsCopyWithImpl<$Res>
    implements $CompletePaymentSessionParamsCopyWith<$Res> {
  _$CompletePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final CompletePaymentSessionParams _self;
  final $Res Function(CompletePaymentSessionParams) _then;

/// Create a copy of CompletePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extra = null,}) {
  return _then(CompletePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [CompletePaymentSessionParams].
extension CompletePaymentSessionParamsPatterns on CompletePaymentSessionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompletePaymentSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompletePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompletePaymentSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _CompletePaymentSessionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompletePaymentSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CompletePaymentSessionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompletePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _CompletePaymentSessionParams():
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _CompletePaymentSessionParams() when $default != null:
return $default(_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _CompletePaymentSessionParams extends CompletePaymentSessionParams {
  const _CompletePaymentSessionParams({this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of CompletePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompletePaymentSessionParamsCopyWith<_CompletePaymentSessionParams> get copyWith => __$CompletePaymentSessionParamsCopyWithImpl<_CompletePaymentSessionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompletePaymentSessionParams&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'CompletePaymentSessionParams(extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$CompletePaymentSessionParamsCopyWith<$Res> implements $CompletePaymentSessionParamsCopyWith<$Res> {
  factory _$CompletePaymentSessionParamsCopyWith(_CompletePaymentSessionParams value, $Res Function(_CompletePaymentSessionParams) _then) = __$CompletePaymentSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class __$CompletePaymentSessionParamsCopyWithImpl<$Res>
    implements _$CompletePaymentSessionParamsCopyWith<$Res> {
  __$CompletePaymentSessionParamsCopyWithImpl(this._self, this._then);

  final _CompletePaymentSessionParams _self;
  final $Res Function(_CompletePaymentSessionParams) _then;

/// Create a copy of CompletePaymentSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extra = null,}) {
  return _then(_CompletePaymentSessionParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$UpdateFulfillmentParams {

 Map<String, Object?> get extra;
/// Create a copy of UpdateFulfillmentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFulfillmentParamsCopyWith<UpdateFulfillmentParams> get copyWith => _$UpdateFulfillmentParamsCopyWithImpl<UpdateFulfillmentParams>(this as UpdateFulfillmentParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateFulfillmentParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFulfillmentParams&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as UpdateFulfillmentParams;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as UpdateFulfillmentParams;
  return 'UpdateFulfillmentParams(extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $UpdateFulfillmentParamsCopyWith<$Res>  {
  factory $UpdateFulfillmentParamsCopyWith(UpdateFulfillmentParams value, $Res Function(UpdateFulfillmentParams) _then) = _$UpdateFulfillmentParamsCopyWithImpl;
@useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class _$UpdateFulfillmentParamsCopyWithImpl<$Res>
    implements $UpdateFulfillmentParamsCopyWith<$Res> {
  _$UpdateFulfillmentParamsCopyWithImpl(this._self, this._then);

  final UpdateFulfillmentParams _self;
  final $Res Function(UpdateFulfillmentParams) _then;

/// Create a copy of UpdateFulfillmentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? extra = null,}) {
  return _then(UpdateFulfillmentParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateFulfillmentParams].
extension UpdateFulfillmentParamsPatterns on UpdateFulfillmentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateFulfillmentParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateFulfillmentParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateFulfillmentParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateFulfillmentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateFulfillmentParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateFulfillmentParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateFulfillmentParams() when $default != null:
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _UpdateFulfillmentParams():
return $default(_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _UpdateFulfillmentParams() when $default != null:
return $default(_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateFulfillmentParams extends UpdateFulfillmentParams {
  const _UpdateFulfillmentParams({this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey() final  Map<String, Object?> extra;

/// Create a copy of UpdateFulfillmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateFulfillmentParamsCopyWith<_UpdateFulfillmentParams> get copyWith => __$UpdateFulfillmentParamsCopyWithImpl<_UpdateFulfillmentParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateFulfillmentParams&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'UpdateFulfillmentParams(extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$UpdateFulfillmentParamsCopyWith<$Res> implements $UpdateFulfillmentParamsCopyWith<$Res> {
  factory _$UpdateFulfillmentParamsCopyWith(_UpdateFulfillmentParams value, $Res Function(_UpdateFulfillmentParams) _then) = __$UpdateFulfillmentParamsCopyWithImpl;
@override @useResult
$Res call({
 Map<String, Object?> extra
});




}
/// @nodoc
class __$UpdateFulfillmentParamsCopyWithImpl<$Res>
    implements _$UpdateFulfillmentParamsCopyWith<$Res> {
  __$UpdateFulfillmentParamsCopyWithImpl(this._self, this._then);

  final _UpdateFulfillmentParams _self;
  final $Res Function(_UpdateFulfillmentParams) _then;

/// Create a copy of UpdateFulfillmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? extra = null,}) {
  return _then(_UpdateFulfillmentParams(
extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
