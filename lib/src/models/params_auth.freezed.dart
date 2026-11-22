// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginParams {

@JsonKey(includeIfNull: false) String get email;@JsonKey(includeIfNull: false) String get password;@JsonKey(includeIfNull: false) String? get provider;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginParamsCopyWith<LoginParams> get copyWith => _$LoginParamsCopyWithImpl<LoginParams>(this as LoginParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoginParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as LoginParams;
  return Object.hash(runtimeType,_this.email,_this.password,_this.provider,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as LoginParams;
  return 'LoginParams(email: ${_this.email}, password: ${_this.password}, provider: ${_this.provider}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $LoginParamsCopyWith<$Res>  {
  factory $LoginParamsCopyWith(LoginParams value, $Res Function(LoginParams) _then) = _$LoginParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? provider,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$LoginParamsCopyWithImpl<$Res>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._self, this._then);

  final LoginParams _self;
  final $Res Function(LoginParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? provider = freezed,Object? extra = null,}) {
  return _then(LoginParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginParams].
extension LoginParamsPatterns on LoginParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginParams value)  $default,){
final _that = this;
switch (_that) {
case _LoginParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginParams value)?  $default,){
final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? provider, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
return $default(_that.email,_that.password,_that.provider,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? provider, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _LoginParams():
return $default(_that.email,_that.password,_that.provider,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? provider, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _LoginParams() when $default != null:
return $default(_that.email,_that.password,_that.provider,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _LoginParams extends LoginParams {
  const _LoginParams({@JsonKey(includeIfNull: false) required this.email, @JsonKey(includeIfNull: false) required this.password, @JsonKey(includeIfNull: false) this.provider = 'email', @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String email;
@override@JsonKey(includeIfNull: false) final  String password;
@override@JsonKey(includeIfNull: false) final  String? provider;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginParamsCopyWith<_LoginParams> get copyWith => __$LoginParamsCopyWithImpl<_LoginParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginParams&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,password,provider,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'LoginParams(email: $email, password: $password, provider: $provider, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$LoginParamsCopyWith<$Res> implements $LoginParamsCopyWith<$Res> {
  factory _$LoginParamsCopyWith(_LoginParams value, $Res Function(_LoginParams) _then) = __$LoginParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? provider,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$LoginParamsCopyWithImpl<$Res>
    implements _$LoginParamsCopyWith<$Res> {
  __$LoginParamsCopyWithImpl(this._self, this._then);

  final _LoginParams _self;
  final $Res Function(_LoginParams) _then;

/// Create a copy of LoginParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? provider = freezed,Object? extra = null,}) {
  return _then(_LoginParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$RegisterParams {

@JsonKey(includeIfNull: false) String get email;@JsonKey(includeIfNull: false) String get password;@JsonKey(includeIfNull: false) String? get passwordConfirmation;@JsonKey(includeIfNull: false) String? get firstName;@JsonKey(includeIfNull: false) String? get lastName;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterParamsCopyWith<RegisterParams> get copyWith => _$RegisterParamsCopyWithImpl<RegisterParams>(this as RegisterParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RegisterParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.passwordConfirmation, _this.passwordConfirmation) || other.passwordConfirmation == _this.passwordConfirmation)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as RegisterParams;
  return Object.hash(runtimeType,_this.email,_this.password,_this.passwordConfirmation,_this.firstName,_this.lastName,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as RegisterParams;
  return 'RegisterParams(email: ${_this.email}, password: ${_this.password}, passwordConfirmation: ${_this.passwordConfirmation}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $RegisterParamsCopyWith<$Res>  {
  factory $RegisterParamsCopyWith(RegisterParams value, $Res Function(RegisterParams) _then) = _$RegisterParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? passwordConfirmation,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._self, this._then);

  final RegisterParams _self;
  final $Res Function(RegisterParams) _then;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? passwordConfirmation = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? extra = null,}) {
  return _then(RegisterParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterParams].
extension RegisterParamsPatterns on RegisterParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterParams value)  $default,){
final _that = this;
switch (_that) {
case _RegisterParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterParams value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that.email,_that.password,_that.passwordConfirmation,_that.firstName,_that.lastName,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _RegisterParams():
return $default(_that.email,_that.password,_that.passwordConfirmation,_that.firstName,_that.lastName,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that.email,_that.password,_that.passwordConfirmation,_that.firstName,_that.lastName,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _RegisterParams extends RegisterParams {
  const _RegisterParams({@JsonKey(includeIfNull: false) required this.email, @JsonKey(includeIfNull: false) required this.password, @JsonKey(includeIfNull: false) this.passwordConfirmation, @JsonKey(includeIfNull: false) this.firstName, @JsonKey(includeIfNull: false) this.lastName, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String email;
@override@JsonKey(includeIfNull: false) final  String password;
@override@JsonKey(includeIfNull: false) final  String? passwordConfirmation;
@override@JsonKey(includeIfNull: false) final  String? firstName;
@override@JsonKey(includeIfNull: false) final  String? lastName;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterParamsCopyWith<_RegisterParams> get copyWith => __$RegisterParamsCopyWithImpl<_RegisterParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterParams&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,password,passwordConfirmation,firstName,lastName,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'RegisterParams(email: $email, password: $password, passwordConfirmation: $passwordConfirmation, firstName: $firstName, lastName: $lastName, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$RegisterParamsCopyWith<$Res> implements $RegisterParamsCopyWith<$Res> {
  factory _$RegisterParamsCopyWith(_RegisterParams value, $Res Function(_RegisterParams) _then) = __$RegisterParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? passwordConfirmation,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$RegisterParamsCopyWithImpl<$Res>
    implements _$RegisterParamsCopyWith<$Res> {
  __$RegisterParamsCopyWithImpl(this._self, this._then);

  final _RegisterParams _self;
  final $Res Function(_RegisterParams) _then;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? passwordConfirmation = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? extra = null,}) {
  return _then(_RegisterParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$UpdateCustomerParams {

@JsonKey(includeIfNull: false) String? get email;@JsonKey(includeIfNull: false) String? get firstName;@JsonKey(includeIfNull: false) String? get lastName;@JsonKey(includeIfNull: false) String? get phone;@JsonKey(includeIfNull: false) bool? get acceptsEmailMarketing;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of UpdateCustomerParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCustomerParamsCopyWith<UpdateCustomerParams> get copyWith => _$UpdateCustomerParamsCopyWithImpl<UpdateCustomerParams>(this as UpdateCustomerParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateCustomerParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCustomerParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.acceptsEmailMarketing, _this.acceptsEmailMarketing) || other.acceptsEmailMarketing == _this.acceptsEmailMarketing)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as UpdateCustomerParams;
  return Object.hash(runtimeType,_this.email,_this.firstName,_this.lastName,_this.phone,_this.acceptsEmailMarketing,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as UpdateCustomerParams;
  return 'UpdateCustomerParams(email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone}, acceptsEmailMarketing: ${_this.acceptsEmailMarketing}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $UpdateCustomerParamsCopyWith<$Res>  {
  factory $UpdateCustomerParamsCopyWith(UpdateCustomerParams value, $Res Function(UpdateCustomerParams) _then) = _$UpdateCustomerParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? phone,@JsonKey(includeIfNull: false) bool? acceptsEmailMarketing,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$UpdateCustomerParamsCopyWithImpl<$Res>
    implements $UpdateCustomerParamsCopyWith<$Res> {
  _$UpdateCustomerParamsCopyWithImpl(this._self, this._then);

  final UpdateCustomerParams _self;
  final $Res Function(UpdateCustomerParams) _then;

/// Create a copy of UpdateCustomerParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? acceptsEmailMarketing = freezed,Object? extra = null,}) {
  return _then(UpdateCustomerParams(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,acceptsEmailMarketing: freezed == acceptsEmailMarketing ? _self.acceptsEmailMarketing : acceptsEmailMarketing // ignore: cast_nullable_to_non_nullable
as bool?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCustomerParams].
extension UpdateCustomerParamsPatterns on UpdateCustomerParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCustomerParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCustomerParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCustomerParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomerParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCustomerParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCustomerParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  bool? acceptsEmailMarketing, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCustomerParams() when $default != null:
return $default(_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  bool? acceptsEmailMarketing, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomerParams():
return $default(_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? email, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  bool? acceptsEmailMarketing, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCustomerParams() when $default != null:
return $default(_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _UpdateCustomerParams extends UpdateCustomerParams {
  const _UpdateCustomerParams({@JsonKey(includeIfNull: false) this.email, @JsonKey(includeIfNull: false) this.firstName, @JsonKey(includeIfNull: false) this.lastName, @JsonKey(includeIfNull: false) this.phone, @JsonKey(includeIfNull: false) this.acceptsEmailMarketing, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String? email;
@override@JsonKey(includeIfNull: false) final  String? firstName;
@override@JsonKey(includeIfNull: false) final  String? lastName;
@override@JsonKey(includeIfNull: false) final  String? phone;
@override@JsonKey(includeIfNull: false) final  bool? acceptsEmailMarketing;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of UpdateCustomerParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCustomerParamsCopyWith<_UpdateCustomerParams> get copyWith => __$UpdateCustomerParamsCopyWithImpl<_UpdateCustomerParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCustomerParams&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.acceptsEmailMarketing, acceptsEmailMarketing) || other.acceptsEmailMarketing == acceptsEmailMarketing)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,firstName,lastName,phone,acceptsEmailMarketing,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'UpdateCustomerParams(email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, acceptsEmailMarketing: $acceptsEmailMarketing, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$UpdateCustomerParamsCopyWith<$Res> implements $UpdateCustomerParamsCopyWith<$Res> {
  factory _$UpdateCustomerParamsCopyWith(_UpdateCustomerParams value, $Res Function(_UpdateCustomerParams) _then) = __$UpdateCustomerParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? phone,@JsonKey(includeIfNull: false) bool? acceptsEmailMarketing,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$UpdateCustomerParamsCopyWithImpl<$Res>
    implements _$UpdateCustomerParamsCopyWith<$Res> {
  __$UpdateCustomerParamsCopyWithImpl(this._self, this._then);

  final _UpdateCustomerParams _self;
  final $Res Function(_UpdateCustomerParams) _then;

/// Create a copy of UpdateCustomerParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? acceptsEmailMarketing = freezed,Object? extra = null,}) {
  return _then(_UpdateCustomerParams(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,acceptsEmailMarketing: freezed == acceptsEmailMarketing ? _self.acceptsEmailMarketing : acceptsEmailMarketing // ignore: cast_nullable_to_non_nullable
as bool?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$AddressParams {

@JsonKey(includeIfNull: false) String? get label;@JsonKey(includeIfNull: false) String? get firstName;@JsonKey(includeIfNull: false) String? get lastName;@JsonKey(includeIfNull: false) String? get address1;@JsonKey(includeIfNull: false) String? get address2;@JsonKey(includeIfNull: false) String? get city;@JsonKey(includeIfNull: false) String? get postalCode;@JsonKey(includeIfNull: false) String? get phone;@JsonKey(includeIfNull: false) String? get company;@JsonKey(includeIfNull: false) String? get countryIso;@JsonKey(includeIfNull: false) String? get stateName;@JsonKey(includeIfNull: false) String? get stateAbbr;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of AddressParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressParamsCopyWith<AddressParams> get copyWith => _$AddressParamsCopyWithImpl<AddressParams>(this as AddressParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddressParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressParams&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.countryIso, _this.countryIso) || other.countryIso == _this.countryIso)&&(identical(other.stateName, _this.stateName) || other.stateName == _this.stateName)&&(identical(other.stateAbbr, _this.stateAbbr) || other.stateAbbr == _this.stateAbbr)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as AddressParams;
  return Object.hash(runtimeType,_this.label,_this.firstName,_this.lastName,_this.address1,_this.address2,_this.city,_this.postalCode,_this.phone,_this.company,_this.countryIso,_this.stateName,_this.stateAbbr,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as AddressParams;
  return 'AddressParams(label: ${_this.label}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, address1: ${_this.address1}, address2: ${_this.address2}, city: ${_this.city}, postalCode: ${_this.postalCode}, phone: ${_this.phone}, company: ${_this.company}, countryIso: ${_this.countryIso}, stateName: ${_this.stateName}, stateAbbr: ${_this.stateAbbr}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $AddressParamsCopyWith<$Res>  {
  factory $AddressParamsCopyWith(AddressParams value, $Res Function(AddressParams) _then) = _$AddressParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? label,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? address1,@JsonKey(includeIfNull: false) String? address2,@JsonKey(includeIfNull: false) String? city,@JsonKey(includeIfNull: false) String? postalCode,@JsonKey(includeIfNull: false) String? phone,@JsonKey(includeIfNull: false) String? company,@JsonKey(includeIfNull: false) String? countryIso,@JsonKey(includeIfNull: false) String? stateName,@JsonKey(includeIfNull: false) String? stateAbbr,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$AddressParamsCopyWithImpl<$Res>
    implements $AddressParamsCopyWith<$Res> {
  _$AddressParamsCopyWithImpl(this._self, this._then);

  final AddressParams _self;
  final $Res Function(AddressParams) _then;

/// Create a copy of AddressParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? postalCode = freezed,Object? phone = freezed,Object? company = freezed,Object? countryIso = freezed,Object? stateName = freezed,Object? stateAbbr = freezed,Object? extra = null,}) {
  return _then(AddressParams(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,countryIso: freezed == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressParams].
extension AddressParamsPatterns on AddressParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressParams value)  $default,){
final _that = this;
switch (_that) {
case _AddressParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddressParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? label, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  String? company, @JsonKey(includeIfNull: false)  String? countryIso, @JsonKey(includeIfNull: false)  String? stateName, @JsonKey(includeIfNull: false)  String? stateAbbr, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressParams() when $default != null:
return $default(_that.label,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.company,_that.countryIso,_that.stateName,_that.stateAbbr,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? label, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  String? company, @JsonKey(includeIfNull: false)  String? countryIso, @JsonKey(includeIfNull: false)  String? stateName, @JsonKey(includeIfNull: false)  String? stateAbbr, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _AddressParams():
return $default(_that.label,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.company,_that.countryIso,_that.stateName,_that.stateAbbr,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? label, @JsonKey(includeIfNull: false)  String? firstName, @JsonKey(includeIfNull: false)  String? lastName, @JsonKey(includeIfNull: false)  String? address1, @JsonKey(includeIfNull: false)  String? address2, @JsonKey(includeIfNull: false)  String? city, @JsonKey(includeIfNull: false)  String? postalCode, @JsonKey(includeIfNull: false)  String? phone, @JsonKey(includeIfNull: false)  String? company, @JsonKey(includeIfNull: false)  String? countryIso, @JsonKey(includeIfNull: false)  String? stateName, @JsonKey(includeIfNull: false)  String? stateAbbr, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _AddressParams() when $default != null:
return $default(_that.label,_that.firstName,_that.lastName,_that.address1,_that.address2,_that.city,_that.postalCode,_that.phone,_that.company,_that.countryIso,_that.stateName,_that.stateAbbr,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _AddressParams extends AddressParams {
  const _AddressParams({@JsonKey(includeIfNull: false) this.label, @JsonKey(includeIfNull: false) this.firstName, @JsonKey(includeIfNull: false) this.lastName, @JsonKey(includeIfNull: false) this.address1, @JsonKey(includeIfNull: false) this.address2, @JsonKey(includeIfNull: false) this.city, @JsonKey(includeIfNull: false) this.postalCode, @JsonKey(includeIfNull: false) this.phone, @JsonKey(includeIfNull: false) this.company, @JsonKey(includeIfNull: false) this.countryIso, @JsonKey(includeIfNull: false) this.stateName, @JsonKey(includeIfNull: false) this.stateAbbr, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String? label;
@override@JsonKey(includeIfNull: false) final  String? firstName;
@override@JsonKey(includeIfNull: false) final  String? lastName;
@override@JsonKey(includeIfNull: false) final  String? address1;
@override@JsonKey(includeIfNull: false) final  String? address2;
@override@JsonKey(includeIfNull: false) final  String? city;
@override@JsonKey(includeIfNull: false) final  String? postalCode;
@override@JsonKey(includeIfNull: false) final  String? phone;
@override@JsonKey(includeIfNull: false) final  String? company;
@override@JsonKey(includeIfNull: false) final  String? countryIso;
@override@JsonKey(includeIfNull: false) final  String? stateName;
@override@JsonKey(includeIfNull: false) final  String? stateAbbr;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of AddressParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressParamsCopyWith<_AddressParams> get copyWith => __$AddressParamsCopyWithImpl<_AddressParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressParams&&(identical(other.label, label) || other.label == label)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.city, city) || other.city == city)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.company, company) || other.company == company)&&(identical(other.countryIso, countryIso) || other.countryIso == countryIso)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.stateAbbr, stateAbbr) || other.stateAbbr == stateAbbr)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,label,firstName,lastName,address1,address2,city,postalCode,phone,company,countryIso,stateName,stateAbbr,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'AddressParams(label: $label, firstName: $firstName, lastName: $lastName, address1: $address1, address2: $address2, city: $city, postalCode: $postalCode, phone: $phone, company: $company, countryIso: $countryIso, stateName: $stateName, stateAbbr: $stateAbbr, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$AddressParamsCopyWith<$Res> implements $AddressParamsCopyWith<$Res> {
  factory _$AddressParamsCopyWith(_AddressParams value, $Res Function(_AddressParams) _then) = __$AddressParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? label,@JsonKey(includeIfNull: false) String? firstName,@JsonKey(includeIfNull: false) String? lastName,@JsonKey(includeIfNull: false) String? address1,@JsonKey(includeIfNull: false) String? address2,@JsonKey(includeIfNull: false) String? city,@JsonKey(includeIfNull: false) String? postalCode,@JsonKey(includeIfNull: false) String? phone,@JsonKey(includeIfNull: false) String? company,@JsonKey(includeIfNull: false) String? countryIso,@JsonKey(includeIfNull: false) String? stateName,@JsonKey(includeIfNull: false) String? stateAbbr,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$AddressParamsCopyWithImpl<$Res>
    implements _$AddressParamsCopyWith<$Res> {
  __$AddressParamsCopyWithImpl(this._self, this._then);

  final _AddressParams _self;
  final $Res Function(_AddressParams) _then;

/// Create a copy of AddressParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? postalCode = freezed,Object? phone = freezed,Object? company = freezed,Object? countryIso = freezed,Object? stateName = freezed,Object? stateAbbr = freezed,Object? extra = null,}) {
  return _then(_AddressParams(
label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,countryIso: freezed == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$RequestPasswordResetParams {

@JsonKey(includeIfNull: false) String get email;@JsonKey(includeIfNull: false) String? get redirectUrl;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of RequestPasswordResetParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestPasswordResetParamsCopyWith<RequestPasswordResetParams> get copyWith => _$RequestPasswordResetParamsCopyWithImpl<RequestPasswordResetParams>(this as RequestPasswordResetParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RequestPasswordResetParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestPasswordResetParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as RequestPasswordResetParams;
  return Object.hash(runtimeType,_this.email,_this.redirectUrl,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as RequestPasswordResetParams;
  return 'RequestPasswordResetParams(email: ${_this.email}, redirectUrl: ${_this.redirectUrl}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $RequestPasswordResetParamsCopyWith<$Res>  {
  factory $RequestPasswordResetParamsCopyWith(RequestPasswordResetParams value, $Res Function(RequestPasswordResetParams) _then) = _$RequestPasswordResetParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$RequestPasswordResetParamsCopyWithImpl<$Res>
    implements $RequestPasswordResetParamsCopyWith<$Res> {
  _$RequestPasswordResetParamsCopyWithImpl(this._self, this._then);

  final RequestPasswordResetParams _self;
  final $Res Function(RequestPasswordResetParams) _then;

/// Create a copy of RequestPasswordResetParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(RequestPasswordResetParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestPasswordResetParams].
extension RequestPasswordResetParamsPatterns on RequestPasswordResetParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestPasswordResetParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestPasswordResetParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestPasswordResetParams value)  $default,){
final _that = this;
switch (_that) {
case _RequestPasswordResetParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestPasswordResetParams value)?  $default,){
final _that = this;
switch (_that) {
case _RequestPasswordResetParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestPasswordResetParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _RequestPasswordResetParams():
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _RequestPasswordResetParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _RequestPasswordResetParams extends RequestPasswordResetParams {
  const _RequestPasswordResetParams({@JsonKey(includeIfNull: false) required this.email, @JsonKey(includeIfNull: false) this.redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String email;
@override@JsonKey(includeIfNull: false) final  String? redirectUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of RequestPasswordResetParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestPasswordResetParamsCopyWith<_RequestPasswordResetParams> get copyWith => __$RequestPasswordResetParamsCopyWithImpl<_RequestPasswordResetParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestPasswordResetParams&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,redirectUrl,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'RequestPasswordResetParams(email: $email, redirectUrl: $redirectUrl, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$RequestPasswordResetParamsCopyWith<$Res> implements $RequestPasswordResetParamsCopyWith<$Res> {
  factory _$RequestPasswordResetParamsCopyWith(_RequestPasswordResetParams value, $Res Function(_RequestPasswordResetParams) _then) = __$RequestPasswordResetParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$RequestPasswordResetParamsCopyWithImpl<$Res>
    implements _$RequestPasswordResetParamsCopyWith<$Res> {
  __$RequestPasswordResetParamsCopyWithImpl(this._self, this._then);

  final _RequestPasswordResetParams _self;
  final $Res Function(_RequestPasswordResetParams) _then;

/// Create a copy of RequestPasswordResetParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(_RequestPasswordResetParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$ResetPasswordParams {

@JsonKey(includeIfNull: false) String get password;@JsonKey(includeIfNull: false) String? get passwordConfirmation;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of ResetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordParamsCopyWith<ResetPasswordParams> get copyWith => _$ResetPasswordParamsCopyWithImpl<ResetPasswordParams>(this as ResetPasswordParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ResetPasswordParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordParams&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.passwordConfirmation, _this.passwordConfirmation) || other.passwordConfirmation == _this.passwordConfirmation)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as ResetPasswordParams;
  return Object.hash(runtimeType,_this.password,_this.passwordConfirmation,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as ResetPasswordParams;
  return 'ResetPasswordParams(password: ${_this.password}, passwordConfirmation: ${_this.passwordConfirmation}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $ResetPasswordParamsCopyWith<$Res>  {
  factory $ResetPasswordParamsCopyWith(ResetPasswordParams value, $Res Function(ResetPasswordParams) _then) = _$ResetPasswordParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? passwordConfirmation,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$ResetPasswordParamsCopyWithImpl<$Res>
    implements $ResetPasswordParamsCopyWith<$Res> {
  _$ResetPasswordParamsCopyWithImpl(this._self, this._then);

  final ResetPasswordParams _self;
  final $Res Function(ResetPasswordParams) _then;

/// Create a copy of ResetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? passwordConfirmation = freezed,Object? extra = null,}) {
  return _then(ResetPasswordParams(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordParams].
extension ResetPasswordParamsPatterns on ResetPasswordParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordParams value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordParams value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordParams() when $default != null:
return $default(_that.password,_that.passwordConfirmation,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordParams():
return $default(_that.password,_that.passwordConfirmation,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String password, @JsonKey(includeIfNull: false)  String? passwordConfirmation, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordParams() when $default != null:
return $default(_that.password,_that.passwordConfirmation,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _ResetPasswordParams extends ResetPasswordParams {
  const _ResetPasswordParams({@JsonKey(includeIfNull: false) required this.password, @JsonKey(includeIfNull: false) this.passwordConfirmation, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String password;
@override@JsonKey(includeIfNull: false) final  String? passwordConfirmation;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of ResetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordParamsCopyWith<_ResetPasswordParams> get copyWith => __$ResetPasswordParamsCopyWithImpl<_ResetPasswordParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordParams&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,password,passwordConfirmation,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'ResetPasswordParams(password: $password, passwordConfirmation: $passwordConfirmation, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordParamsCopyWith<$Res> implements $ResetPasswordParamsCopyWith<$Res> {
  factory _$ResetPasswordParamsCopyWith(_ResetPasswordParams value, $Res Function(_ResetPasswordParams) _then) = __$ResetPasswordParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String password,@JsonKey(includeIfNull: false) String? passwordConfirmation,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$ResetPasswordParamsCopyWithImpl<$Res>
    implements _$ResetPasswordParamsCopyWith<$Res> {
  __$ResetPasswordParamsCopyWithImpl(this._self, this._then);

  final _ResetPasswordParams _self;
  final $Res Function(_ResetPasswordParams) _then;

/// Create a copy of ResetPasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? passwordConfirmation = freezed,Object? extra = null,}) {
  return _then(_ResetPasswordParams(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$NewsletterSubscribeParams {

@JsonKey(includeIfNull: false) String get email;@JsonKey(includeIfNull: false) String? get redirectUrl;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of NewsletterSubscribeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterSubscribeParamsCopyWith<NewsletterSubscribeParams> get copyWith => _$NewsletterSubscribeParamsCopyWithImpl<NewsletterSubscribeParams>(this as NewsletterSubscribeParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NewsletterSubscribeParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterSubscribeParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as NewsletterSubscribeParams;
  return Object.hash(runtimeType,_this.email,_this.redirectUrl,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as NewsletterSubscribeParams;
  return 'NewsletterSubscribeParams(email: ${_this.email}, redirectUrl: ${_this.redirectUrl}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $NewsletterSubscribeParamsCopyWith<$Res>  {
  factory $NewsletterSubscribeParamsCopyWith(NewsletterSubscribeParams value, $Res Function(NewsletterSubscribeParams) _then) = _$NewsletterSubscribeParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$NewsletterSubscribeParamsCopyWithImpl<$Res>
    implements $NewsletterSubscribeParamsCopyWith<$Res> {
  _$NewsletterSubscribeParamsCopyWithImpl(this._self, this._then);

  final NewsletterSubscribeParams _self;
  final $Res Function(NewsletterSubscribeParams) _then;

/// Create a copy of NewsletterSubscribeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(NewsletterSubscribeParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterSubscribeParams].
extension NewsletterSubscribeParamsPatterns on NewsletterSubscribeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterSubscribeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterSubscribeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterSubscribeParams value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscribeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterSubscribeParams value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscribeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterSubscribeParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscribeParams():
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscribeParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _NewsletterSubscribeParams extends NewsletterSubscribeParams {
  const _NewsletterSubscribeParams({@JsonKey(includeIfNull: false) required this.email, @JsonKey(includeIfNull: false) this.redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String email;
@override@JsonKey(includeIfNull: false) final  String? redirectUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of NewsletterSubscribeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterSubscribeParamsCopyWith<_NewsletterSubscribeParams> get copyWith => __$NewsletterSubscribeParamsCopyWithImpl<_NewsletterSubscribeParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterSubscribeParams&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,redirectUrl,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'NewsletterSubscribeParams(email: $email, redirectUrl: $redirectUrl, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$NewsletterSubscribeParamsCopyWith<$Res> implements $NewsletterSubscribeParamsCopyWith<$Res> {
  factory _$NewsletterSubscribeParamsCopyWith(_NewsletterSubscribeParams value, $Res Function(_NewsletterSubscribeParams) _then) = __$NewsletterSubscribeParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$NewsletterSubscribeParamsCopyWithImpl<$Res>
    implements _$NewsletterSubscribeParamsCopyWith<$Res> {
  __$NewsletterSubscribeParamsCopyWithImpl(this._self, this._then);

  final _NewsletterSubscribeParams _self;
  final $Res Function(_NewsletterSubscribeParams) _then;

/// Create a copy of NewsletterSubscribeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(_NewsletterSubscribeParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$NewsletterVerifyParams {

@JsonKey(includeIfNull: false) String get token;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of NewsletterVerifyParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterVerifyParamsCopyWith<NewsletterVerifyParams> get copyWith => _$NewsletterVerifyParamsCopyWithImpl<NewsletterVerifyParams>(this as NewsletterVerifyParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NewsletterVerifyParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterVerifyParams&&(identical(other.token, _this.token) || other.token == _this.token)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as NewsletterVerifyParams;
  return Object.hash(runtimeType,_this.token,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as NewsletterVerifyParams;
  return 'NewsletterVerifyParams(token: ${_this.token}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $NewsletterVerifyParamsCopyWith<$Res>  {
  factory $NewsletterVerifyParamsCopyWith(NewsletterVerifyParams value, $Res Function(NewsletterVerifyParams) _then) = _$NewsletterVerifyParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String token,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$NewsletterVerifyParamsCopyWithImpl<$Res>
    implements $NewsletterVerifyParamsCopyWith<$Res> {
  _$NewsletterVerifyParamsCopyWithImpl(this._self, this._then);

  final NewsletterVerifyParams _self;
  final $Res Function(NewsletterVerifyParams) _then;

/// Create a copy of NewsletterVerifyParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? extra = null,}) {
  return _then(NewsletterVerifyParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterVerifyParams].
extension NewsletterVerifyParamsPatterns on NewsletterVerifyParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterVerifyParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterVerifyParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterVerifyParams value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterVerifyParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterVerifyParams value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterVerifyParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String token, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterVerifyParams() when $default != null:
return $default(_that.token,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String token, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _NewsletterVerifyParams():
return $default(_that.token,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String token, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterVerifyParams() when $default != null:
return $default(_that.token,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _NewsletterVerifyParams extends NewsletterVerifyParams {
  const _NewsletterVerifyParams({@JsonKey(includeIfNull: false) required this.token, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String token;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of NewsletterVerifyParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterVerifyParamsCopyWith<_NewsletterVerifyParams> get copyWith => __$NewsletterVerifyParamsCopyWithImpl<_NewsletterVerifyParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterVerifyParams&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,token,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'NewsletterVerifyParams(token: $token, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$NewsletterVerifyParamsCopyWith<$Res> implements $NewsletterVerifyParamsCopyWith<$Res> {
  factory _$NewsletterVerifyParamsCopyWith(_NewsletterVerifyParams value, $Res Function(_NewsletterVerifyParams) _then) = __$NewsletterVerifyParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String token,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$NewsletterVerifyParamsCopyWithImpl<$Res>
    implements _$NewsletterVerifyParamsCopyWith<$Res> {
  __$NewsletterVerifyParamsCopyWithImpl(this._self, this._then);

  final _NewsletterVerifyParams _self;
  final $Res Function(_NewsletterVerifyParams) _then;

/// Create a copy of NewsletterVerifyParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? extra = null,}) {
  return _then(_NewsletterVerifyParams(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$NewsletterUnsubscribeRequestParams {

@JsonKey(includeIfNull: false) String get email;@JsonKey(includeIfNull: false) String? get redirectUrl;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of NewsletterUnsubscribeRequestParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterUnsubscribeRequestParamsCopyWith<NewsletterUnsubscribeRequestParams> get copyWith => _$NewsletterUnsubscribeRequestParamsCopyWithImpl<NewsletterUnsubscribeRequestParams>(this as NewsletterUnsubscribeRequestParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NewsletterUnsubscribeRequestParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterUnsubscribeRequestParams&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as NewsletterUnsubscribeRequestParams;
  return Object.hash(runtimeType,_this.email,_this.redirectUrl,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as NewsletterUnsubscribeRequestParams;
  return 'NewsletterUnsubscribeRequestParams(email: ${_this.email}, redirectUrl: ${_this.redirectUrl}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $NewsletterUnsubscribeRequestParamsCopyWith<$Res>  {
  factory $NewsletterUnsubscribeRequestParamsCopyWith(NewsletterUnsubscribeRequestParams value, $Res Function(NewsletterUnsubscribeRequestParams) _then) = _$NewsletterUnsubscribeRequestParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$NewsletterUnsubscribeRequestParamsCopyWithImpl<$Res>
    implements $NewsletterUnsubscribeRequestParamsCopyWith<$Res> {
  _$NewsletterUnsubscribeRequestParamsCopyWithImpl(this._self, this._then);

  final NewsletterUnsubscribeRequestParams _self;
  final $Res Function(NewsletterUnsubscribeRequestParams) _then;

/// Create a copy of NewsletterUnsubscribeRequestParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(NewsletterUnsubscribeRequestParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterUnsubscribeRequestParams].
extension NewsletterUnsubscribeRequestParamsPatterns on NewsletterUnsubscribeRequestParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterUnsubscribeRequestParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterUnsubscribeRequestParams value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterUnsubscribeRequestParams value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams():
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String email, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterUnsubscribeRequestParams() when $default != null:
return $default(_that.email,_that.redirectUrl,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _NewsletterUnsubscribeRequestParams extends NewsletterUnsubscribeRequestParams {
  const _NewsletterUnsubscribeRequestParams({@JsonKey(includeIfNull: false) required this.email, @JsonKey(includeIfNull: false) this.redirectUrl, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String email;
@override@JsonKey(includeIfNull: false) final  String? redirectUrl;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of NewsletterUnsubscribeRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterUnsubscribeRequestParamsCopyWith<_NewsletterUnsubscribeRequestParams> get copyWith => __$NewsletterUnsubscribeRequestParamsCopyWithImpl<_NewsletterUnsubscribeRequestParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterUnsubscribeRequestParams&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,redirectUrl,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'NewsletterUnsubscribeRequestParams(email: $email, redirectUrl: $redirectUrl, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$NewsletterUnsubscribeRequestParamsCopyWith<$Res> implements $NewsletterUnsubscribeRequestParamsCopyWith<$Res> {
  factory _$NewsletterUnsubscribeRequestParamsCopyWith(_NewsletterUnsubscribeRequestParams value, $Res Function(_NewsletterUnsubscribeRequestParams) _then) = __$NewsletterUnsubscribeRequestParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String email,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$NewsletterUnsubscribeRequestParamsCopyWithImpl<$Res>
    implements _$NewsletterUnsubscribeRequestParamsCopyWith<$Res> {
  __$NewsletterUnsubscribeRequestParamsCopyWithImpl(this._self, this._then);

  final _NewsletterUnsubscribeRequestParams _self;
  final $Res Function(_NewsletterUnsubscribeRequestParams) _then;

/// Create a copy of NewsletterUnsubscribeRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? redirectUrl = freezed,Object? extra = null,}) {
  return _then(_NewsletterUnsubscribeRequestParams(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

/// @nodoc
mixin _$CreateDataRequestParams {

@JsonKey(includeIfNull: false) String? get type;@JsonKey(includeIfNull: false) String? get redirectUrl;@JsonKey(includeIfNull: false) String? get currentPassword;@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> get extra;
/// Create a copy of CreateDataRequestParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDataRequestParamsCopyWith<CreateDataRequestParams> get copyWith => _$CreateDataRequestParamsCopyWithImpl<CreateDataRequestParams>(this as CreateDataRequestParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CreateDataRequestParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDataRequestParams&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&(identical(other.currentPassword, _this.currentPassword) || other.currentPassword == _this.currentPassword)&&const DeepCollectionEquality().equals(other.extra, _this.extra));
}


@override
int get hashCode {
  final _this = this as CreateDataRequestParams;
  return Object.hash(runtimeType,_this.type,_this.redirectUrl,_this.currentPassword,const DeepCollectionEquality().hash(_this.extra));
}

@override
String toString() {
  final _this = this as CreateDataRequestParams;
  return 'CreateDataRequestParams(type: ${_this.type}, redirectUrl: ${_this.redirectUrl}, currentPassword: ${_this.currentPassword}, extra: ${_this.extra})';
}


}

/// @nodoc
abstract mixin class $CreateDataRequestParamsCopyWith<$Res>  {
  factory $CreateDataRequestParamsCopyWith(CreateDataRequestParams value, $Res Function(CreateDataRequestParams) _then) = _$CreateDataRequestParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) String? type,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeIfNull: false) String? currentPassword,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class _$CreateDataRequestParamsCopyWithImpl<$Res>
    implements $CreateDataRequestParamsCopyWith<$Res> {
  _$CreateDataRequestParamsCopyWithImpl(this._self, this._then);

  final CreateDataRequestParams _self;
  final $Res Function(CreateDataRequestParams) _then;

/// Create a copy of CreateDataRequestParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? redirectUrl = freezed,Object? currentPassword = freezed,Object? extra = null,}) {
  return _then(CreateDataRequestParams(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDataRequestParams].
extension CreateDataRequestParamsPatterns on CreateDataRequestParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDataRequestParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDataRequestParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDataRequestParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateDataRequestParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDataRequestParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDataRequestParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? type, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeIfNull: false)  String? currentPassword, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDataRequestParams() when $default != null:
return $default(_that.type,_that.redirectUrl,_that.currentPassword,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  String? type, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeIfNull: false)  String? currentPassword, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)  $default,) {final _that = this;
switch (_that) {
case _CreateDataRequestParams():
return $default(_that.type,_that.redirectUrl,_that.currentPassword,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  String? type, @JsonKey(includeIfNull: false)  String? redirectUrl, @JsonKey(includeIfNull: false)  String? currentPassword, @JsonKey(includeFromJson: false, includeToJson: false)  Map<String, Object?> extra)?  $default,) {final _that = this;
switch (_that) {
case _CreateDataRequestParams() when $default != null:
return $default(_that.type,_that.redirectUrl,_that.currentPassword,_that.extra);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(createFactory: false, fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _CreateDataRequestParams extends CreateDataRequestParams {
  const _CreateDataRequestParams({@JsonKey(includeIfNull: false) this.type, @JsonKey(includeIfNull: false) this.redirectUrl, @JsonKey(includeIfNull: false) this.currentPassword, @JsonKey(includeFromJson: false, includeToJson: false) this.extra = const <String, Object?>{}}): super._();
  

@override@JsonKey(includeIfNull: false) final  String? type;
@override@JsonKey(includeIfNull: false) final  String? redirectUrl;
@override@JsonKey(includeIfNull: false) final  String? currentPassword;
@override@JsonKey(includeFromJson: false, includeToJson: false) final  Map<String, Object?> extra;

/// Create a copy of CreateDataRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDataRequestParamsCopyWith<_CreateDataRequestParams> get copyWith => __$CreateDataRequestParamsCopyWithImpl<_CreateDataRequestParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDataRequestParams&&(identical(other.type, type) || other.type == type)&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode {
    return Object.hash(runtimeType,type,redirectUrl,currentPassword,const DeepCollectionEquality().hash(extra));
}

@override
String toString() {
    return 'CreateDataRequestParams(type: $type, redirectUrl: $redirectUrl, currentPassword: $currentPassword, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$CreateDataRequestParamsCopyWith<$Res> implements $CreateDataRequestParamsCopyWith<$Res> {
  factory _$CreateDataRequestParamsCopyWith(_CreateDataRequestParams value, $Res Function(_CreateDataRequestParams) _then) = __$CreateDataRequestParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) String? type,@JsonKey(includeIfNull: false) String? redirectUrl,@JsonKey(includeIfNull: false) String? currentPassword,@JsonKey(includeFromJson: false, includeToJson: false) Map<String, Object?> extra
});




}
/// @nodoc
class __$CreateDataRequestParamsCopyWithImpl<$Res>
    implements _$CreateDataRequestParamsCopyWith<$Res> {
  __$CreateDataRequestParamsCopyWithImpl(this._self, this._then);

  final _CreateDataRequestParams _self;
  final $Res Function(_CreateDataRequestParams) _then;

/// Create a copy of CreateDataRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? redirectUrl = freezed,Object? currentPassword = freezed,Object? extra = null,}) {
  return _then(_CreateDataRequestParams(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,currentPassword: freezed == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String?,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}


}

// dart format on
