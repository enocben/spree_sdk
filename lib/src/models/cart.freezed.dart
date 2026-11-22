// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressOwner {

 String get id;@JsonKey(unknownEnumValue: AddressOwnerType.unknown) AddressOwnerType get type; String? get name;
/// Create a copy of AddressOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressOwnerCopyWith<AddressOwner> get copyWith => _$AddressOwnerCopyWithImpl<AddressOwner>(this as AddressOwner, _$identity);

  /// Serializes this AddressOwner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AddressOwner;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressOwner&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AddressOwner;
  return Object.hash(runtimeType,_this.id,_this.type,_this.name);
}

@override
String toString() {
  final _this = this as AddressOwner;
  return 'AddressOwner(id: ${_this.id}, type: ${_this.type}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $AddressOwnerCopyWith<$Res>  {
  factory $AddressOwnerCopyWith(AddressOwner value, $Res Function(AddressOwner) _then) = _$AddressOwnerCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: AddressOwnerType.unknown) AddressOwnerType type, String? name
});




}
/// @nodoc
class _$AddressOwnerCopyWithImpl<$Res>
    implements $AddressOwnerCopyWith<$Res> {
  _$AddressOwnerCopyWithImpl(this._self, this._then);

  final AddressOwner _self;
  final $Res Function(AddressOwner) _then;

/// Create a copy of AddressOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? name = freezed,}) {
  return _then(AddressOwner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressOwnerType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressOwner].
extension AddressOwnerPatterns on AddressOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressOwner value)  $default,){
final _that = this;
switch (_that) {
case _AddressOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressOwner value)?  $default,){
final _that = this;
switch (_that) {
case _AddressOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: AddressOwnerType.unknown)  AddressOwnerType type,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressOwner() when $default != null:
return $default(_that.id,_that.type,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: AddressOwnerType.unknown)  AddressOwnerType type,  String? name)  $default,) {final _that = this;
switch (_that) {
case _AddressOwner():
return $default(_that.id,_that.type,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: AddressOwnerType.unknown)  AddressOwnerType type,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _AddressOwner() when $default != null:
return $default(_that.id,_that.type,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AddressOwner extends AddressOwner {
  const _AddressOwner({required this.id, @JsonKey(unknownEnumValue: AddressOwnerType.unknown) required this.type, this.name}): super._();
  factory _AddressOwner.fromJson(Map<String, dynamic> json) => _$AddressOwnerFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: AddressOwnerType.unknown) final  AddressOwnerType type;
@override final  String? name;

/// Create a copy of AddressOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressOwnerCopyWith<_AddressOwner> get copyWith => __$AddressOwnerCopyWithImpl<_AddressOwner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressOwnerToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressOwner&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,name);
}

@override
String toString() {
    return 'AddressOwner(id: $id, type: $type, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AddressOwnerCopyWith<$Res> implements $AddressOwnerCopyWith<$Res> {
  factory _$AddressOwnerCopyWith(_AddressOwner value, $Res Function(_AddressOwner) _then) = __$AddressOwnerCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: AddressOwnerType.unknown) AddressOwnerType type, String? name
});




}
/// @nodoc
class __$AddressOwnerCopyWithImpl<$Res>
    implements _$AddressOwnerCopyWith<$Res> {
  __$AddressOwnerCopyWithImpl(this._self, this._then);

  final _AddressOwner _self;
  final $Res Function(_AddressOwner) _then;

/// Create a copy of AddressOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? name = freezed,}) {
  return _then(_AddressOwner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AddressOwnerType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Address {

 String get id; String? get label; String? get firstName; String? get lastName; String get fullName; String? get address1; String? get address2; String? get postalCode; String? get city; String? get phone; String? get company; String get countryName;@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode get countryCode; String? get stateText; String? get stateCode; bool get quickCheckout; bool get isDefaultBilling; bool get isDefaultShipping; String? get stateAbbr; String get countryIso; String? get stateName; AddressOwner? get owner;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Address;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.address2, _this.address2) || other.address2 == _this.address2)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.company, _this.company) || other.company == _this.company)&&(identical(other.countryName, _this.countryName) || other.countryName == _this.countryName)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.stateText, _this.stateText) || other.stateText == _this.stateText)&&(identical(other.stateCode, _this.stateCode) || other.stateCode == _this.stateCode)&&(identical(other.quickCheckout, _this.quickCheckout) || other.quickCheckout == _this.quickCheckout)&&(identical(other.isDefaultBilling, _this.isDefaultBilling) || other.isDefaultBilling == _this.isDefaultBilling)&&(identical(other.isDefaultShipping, _this.isDefaultShipping) || other.isDefaultShipping == _this.isDefaultShipping)&&(identical(other.stateAbbr, _this.stateAbbr) || other.stateAbbr == _this.stateAbbr)&&(identical(other.countryIso, _this.countryIso) || other.countryIso == _this.countryIso)&&(identical(other.stateName, _this.stateName) || other.stateName == _this.stateName)&&(identical(other.owner, _this.owner) || other.owner == _this.owner)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Address;
  return Object.hashAll([runtimeType,_this.id,_this.label,_this.firstName,_this.lastName,_this.fullName,_this.address1,_this.address2,_this.postalCode,_this.city,_this.phone,_this.company,_this.countryName,_this.countryCode,_this.stateText,_this.stateCode,_this.quickCheckout,_this.isDefaultBilling,_this.isDefaultShipping,_this.stateAbbr,_this.countryIso,_this.stateName,_this.owner,const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as Address;
  return 'Address(id: ${_this.id}, label: ${_this.label}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, fullName: ${_this.fullName}, address1: ${_this.address1}, address2: ${_this.address2}, postalCode: ${_this.postalCode}, city: ${_this.city}, phone: ${_this.phone}, company: ${_this.company}, countryName: ${_this.countryName}, countryCode: ${_this.countryCode}, stateText: ${_this.stateText}, stateCode: ${_this.stateCode}, quickCheckout: ${_this.quickCheckout}, isDefaultBilling: ${_this.isDefaultBilling}, isDefaultShipping: ${_this.isDefaultShipping}, stateAbbr: ${_this.stateAbbr}, countryIso: ${_this.countryIso}, stateName: ${_this.stateName}, owner: ${_this.owner}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
 String id, String? label, String? firstName, String? lastName, String fullName, String? address1, String? address2, String? postalCode, String? city, String? phone, String? company, String countryName,@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode countryCode, String? stateText, String? stateCode, bool quickCheckout, bool isDefaultBilling, bool isDefaultShipping, String? stateAbbr, String countryIso, String? stateName, AddressOwner? owner,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


$AddressOwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = null,Object? address1 = freezed,Object? address2 = freezed,Object? postalCode = freezed,Object? city = freezed,Object? phone = freezed,Object? company = freezed,Object? countryName = null,Object? countryCode = null,Object? stateText = freezed,Object? stateCode = freezed,Object? quickCheckout = null,Object? isDefaultBilling = null,Object? isDefaultShipping = null,Object? stateAbbr = freezed,Object? countryIso = null,Object? stateName = freezed,Object? owner = freezed,Object? customFields = freezed,}) {
  return _then(Address(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode,stateText: freezed == stateText ? _self.stateText : stateText // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,quickCheckout: null == quickCheckout ? _self.quickCheckout : quickCheckout // ignore: cast_nullable_to_non_nullable
as bool,isDefaultBilling: null == isDefaultBilling ? _self.isDefaultBilling : isDefaultBilling // ignore: cast_nullable_to_non_nullable
as bool,isDefaultShipping: null == isDefaultShipping ? _self.isDefaultShipping : isDefaultShipping // ignore: cast_nullable_to_non_nullable
as bool,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,countryIso: null == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as AddressOwner?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $AddressOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? label,  String? firstName,  String? lastName,  String fullName,  String? address1,  String? address2,  String? postalCode,  String? city,  String? phone,  String? company,  String countryName, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode countryCode,  String? stateText,  String? stateCode,  bool quickCheckout,  bool isDefaultBilling,  bool isDefaultShipping,  String? stateAbbr,  String countryIso,  String? stateName,  AddressOwner? owner, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.id,_that.label,_that.firstName,_that.lastName,_that.fullName,_that.address1,_that.address2,_that.postalCode,_that.city,_that.phone,_that.company,_that.countryName,_that.countryCode,_that.stateText,_that.stateCode,_that.quickCheckout,_that.isDefaultBilling,_that.isDefaultShipping,_that.stateAbbr,_that.countryIso,_that.stateName,_that.owner,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? label,  String? firstName,  String? lastName,  String fullName,  String? address1,  String? address2,  String? postalCode,  String? city,  String? phone,  String? company,  String countryName, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode countryCode,  String? stateText,  String? stateCode,  bool quickCheckout,  bool isDefaultBilling,  bool isDefaultShipping,  String? stateAbbr,  String countryIso,  String? stateName,  AddressOwner? owner, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.id,_that.label,_that.firstName,_that.lastName,_that.fullName,_that.address1,_that.address2,_that.postalCode,_that.city,_that.phone,_that.company,_that.countryName,_that.countryCode,_that.stateText,_that.stateCode,_that.quickCheckout,_that.isDefaultBilling,_that.isDefaultShipping,_that.stateAbbr,_that.countryIso,_that.stateName,_that.owner,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? label,  String? firstName,  String? lastName,  String fullName,  String? address1,  String? address2,  String? postalCode,  String? city,  String? phone,  String? company,  String countryName, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode countryCode,  String? stateText,  String? stateCode,  bool quickCheckout,  bool isDefaultBilling,  bool isDefaultShipping,  String? stateAbbr,  String countryIso,  String? stateName,  AddressOwner? owner, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.id,_that.label,_that.firstName,_that.lastName,_that.fullName,_that.address1,_that.address2,_that.postalCode,_that.city,_that.phone,_that.company,_that.countryName,_that.countryCode,_that.stateText,_that.stateCode,_that.quickCheckout,_that.isDefaultBilling,_that.isDefaultShipping,_that.stateAbbr,_that.countryIso,_that.stateName,_that.owner,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Address extends Address {
  const _Address({required this.id, this.label, this.firstName, this.lastName, required this.fullName, this.address1, this.address2, this.postalCode, this.city, this.phone, this.company, required this.countryName, @JsonKey(unknownEnumValue: CountryCode.unknown) required this.countryCode, this.stateText, this.stateCode, required this.quickCheckout, required this.isDefaultBilling, required this.isDefaultShipping, this.stateAbbr, required this.countryIso, this.stateName, this.owner, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override final  String id;
@override final  String? label;
@override final  String? firstName;
@override final  String? lastName;
@override final  String fullName;
@override final  String? address1;
@override final  String? address2;
@override final  String? postalCode;
@override final  String? city;
@override final  String? phone;
@override final  String? company;
@override final  String countryName;
@override@JsonKey(unknownEnumValue: CountryCode.unknown) final  CountryCode countryCode;
@override final  String? stateText;
@override final  String? stateCode;
@override final  bool quickCheckout;
@override final  bool isDefaultBilling;
@override final  bool isDefaultShipping;
@override final  String? stateAbbr;
@override final  String countryIso;
@override final  String? stateName;
@override final  AddressOwner? owner;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.city, city) || other.city == city)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.company, company) || other.company == company)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.stateText, stateText) || other.stateText == stateText)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.quickCheckout, quickCheckout) || other.quickCheckout == quickCheckout)&&(identical(other.isDefaultBilling, isDefaultBilling) || other.isDefaultBilling == isDefaultBilling)&&(identical(other.isDefaultShipping, isDefaultShipping) || other.isDefaultShipping == isDefaultShipping)&&(identical(other.stateAbbr, stateAbbr) || other.stateAbbr == stateAbbr)&&(identical(other.countryIso, countryIso) || other.countryIso == countryIso)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.owner, owner) || other.owner == owner)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,label,firstName,lastName,fullName,address1,address2,postalCode,city,phone,company,countryName,countryCode,stateText,stateCode,quickCheckout,isDefaultBilling,isDefaultShipping,stateAbbr,countryIso,stateName,owner,const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'Address(id: $id, label: $label, firstName: $firstName, lastName: $lastName, fullName: $fullName, address1: $address1, address2: $address2, postalCode: $postalCode, city: $city, phone: $phone, company: $company, countryName: $countryName, countryCode: $countryCode, stateText: $stateText, stateCode: $stateCode, quickCheckout: $quickCheckout, isDefaultBilling: $isDefaultBilling, isDefaultShipping: $isDefaultShipping, stateAbbr: $stateAbbr, countryIso: $countryIso, stateName: $stateName, owner: $owner, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
 String id, String? label, String? firstName, String? lastName, String fullName, String? address1, String? address2, String? postalCode, String? city, String? phone, String? company, String countryName,@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode countryCode, String? stateText, String? stateCode, bool quickCheckout, bool isDefaultBilling, bool isDefaultShipping, String? stateAbbr, String countryIso, String? stateName, AddressOwner? owner,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


@override $AddressOwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = null,Object? address1 = freezed,Object? address2 = freezed,Object? postalCode = freezed,Object? city = freezed,Object? phone = freezed,Object? company = freezed,Object? countryName = null,Object? countryCode = null,Object? stateText = freezed,Object? stateCode = freezed,Object? quickCheckout = null,Object? isDefaultBilling = null,Object? isDefaultShipping = null,Object? stateAbbr = freezed,Object? countryIso = null,Object? stateName = freezed,Object? owner = freezed,Object? customFields = freezed,}) {
  return _then(_Address(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,countryName: null == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode,stateText: freezed == stateText ? _self.stateText : stateText // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,quickCheckout: null == quickCheckout ? _self.quickCheckout : quickCheckout // ignore: cast_nullable_to_non_nullable
as bool,isDefaultBilling: null == isDefaultBilling ? _self.isDefaultBilling : isDefaultBilling // ignore: cast_nullable_to_non_nullable
as bool,isDefaultShipping: null == isDefaultShipping ? _self.isDefaultShipping : isDefaultShipping // ignore: cast_nullable_to_non_nullable
as bool,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,countryIso: null == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as AddressOwner?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressOwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $AddressOwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$CartWarning {

 String get code; String get message; String? get lineItemId; String? get variantId; int? get itemIndex;
/// Create a copy of CartWarning
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartWarningCopyWith<CartWarning> get copyWith => _$CartWarningCopyWithImpl<CartWarning>(this as CartWarning, _$identity);

  /// Serializes this CartWarning to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartWarning;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartWarning&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.itemIndex, _this.itemIndex) || other.itemIndex == _this.itemIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartWarning;
  return Object.hash(runtimeType,_this.code,_this.message,_this.lineItemId,_this.variantId,_this.itemIndex);
}

@override
String toString() {
  final _this = this as CartWarning;
  return 'CartWarning(code: ${_this.code}, message: ${_this.message}, lineItemId: ${_this.lineItemId}, variantId: ${_this.variantId}, itemIndex: ${_this.itemIndex})';
}


}

/// @nodoc
abstract mixin class $CartWarningCopyWith<$Res>  {
  factory $CartWarningCopyWith(CartWarning value, $Res Function(CartWarning) _then) = _$CartWarningCopyWithImpl;
@useResult
$Res call({
 String code, String message, String? lineItemId, String? variantId, int? itemIndex
});




}
/// @nodoc
class _$CartWarningCopyWithImpl<$Res>
    implements $CartWarningCopyWith<$Res> {
  _$CartWarningCopyWithImpl(this._self, this._then);

  final CartWarning _self;
  final $Res Function(CartWarning) _then;

/// Create a copy of CartWarning
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? lineItemId = freezed,Object? variantId = freezed,Object? itemIndex = freezed,}) {
  return _then(CartWarning(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,itemIndex: freezed == itemIndex ? _self.itemIndex : itemIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartWarning].
extension CartWarningPatterns on CartWarning {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartWarning value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartWarning() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartWarning value)  $default,){
final _that = this;
switch (_that) {
case _CartWarning():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartWarning value)?  $default,){
final _that = this;
switch (_that) {
case _CartWarning() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String message,  String? lineItemId,  String? variantId,  int? itemIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartWarning() when $default != null:
return $default(_that.code,_that.message,_that.lineItemId,_that.variantId,_that.itemIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String message,  String? lineItemId,  String? variantId,  int? itemIndex)  $default,) {final _that = this;
switch (_that) {
case _CartWarning():
return $default(_that.code,_that.message,_that.lineItemId,_that.variantId,_that.itemIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String message,  String? lineItemId,  String? variantId,  int? itemIndex)?  $default,) {final _that = this;
switch (_that) {
case _CartWarning() when $default != null:
return $default(_that.code,_that.message,_that.lineItemId,_that.variantId,_that.itemIndex);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CartWarning extends CartWarning {
  const _CartWarning({required this.code, required this.message, this.lineItemId, this.variantId, this.itemIndex}): super._();
  factory _CartWarning.fromJson(Map<String, dynamic> json) => _$CartWarningFromJson(json);

@override final  String code;
@override final  String message;
@override final  String? lineItemId;
@override final  String? variantId;
@override final  int? itemIndex;

/// Create a copy of CartWarning
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartWarningCopyWith<_CartWarning> get copyWith => __$CartWarningCopyWithImpl<_CartWarning>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartWarningToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartWarning&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.itemIndex, itemIndex) || other.itemIndex == itemIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,code,message,lineItemId,variantId,itemIndex);
}

@override
String toString() {
    return 'CartWarning(code: $code, message: $message, lineItemId: $lineItemId, variantId: $variantId, itemIndex: $itemIndex)';
}


}

/// @nodoc
abstract mixin class _$CartWarningCopyWith<$Res> implements $CartWarningCopyWith<$Res> {
  factory _$CartWarningCopyWith(_CartWarning value, $Res Function(_CartWarning) _then) = __$CartWarningCopyWithImpl;
@override @useResult
$Res call({
 String code, String message, String? lineItemId, String? variantId, int? itemIndex
});




}
/// @nodoc
class __$CartWarningCopyWithImpl<$Res>
    implements _$CartWarningCopyWith<$Res> {
  __$CartWarningCopyWithImpl(this._self, this._then);

  final _CartWarning _self;
  final $Res Function(_CartWarning) _then;

/// Create a copy of CartWarning
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? lineItemId = freezed,Object? variantId = freezed,Object? itemIndex = freezed,}) {
  return _then(_CartWarning(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,variantId: freezed == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String?,itemIndex: freezed == itemIndex ? _self.itemIndex : itemIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CheckoutRequirement {

 String get step; String get field; String get code; String get message;
/// Create a copy of CheckoutRequirement
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutRequirementCopyWith<CheckoutRequirement> get copyWith => _$CheckoutRequirementCopyWithImpl<CheckoutRequirement>(this as CheckoutRequirement, _$identity);

  /// Serializes this CheckoutRequirement to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CheckoutRequirement;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutRequirement&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.field, _this.field) || other.field == _this.field)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.message, _this.message) || other.message == _this.message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CheckoutRequirement;
  return Object.hash(runtimeType,_this.step,_this.field,_this.code,_this.message);
}

@override
String toString() {
  final _this = this as CheckoutRequirement;
  return 'CheckoutRequirement(step: ${_this.step}, field: ${_this.field}, code: ${_this.code}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $CheckoutRequirementCopyWith<$Res>  {
  factory $CheckoutRequirementCopyWith(CheckoutRequirement value, $Res Function(CheckoutRequirement) _then) = _$CheckoutRequirementCopyWithImpl;
@useResult
$Res call({
 String step, String field, String code, String message
});




}
/// @nodoc
class _$CheckoutRequirementCopyWithImpl<$Res>
    implements $CheckoutRequirementCopyWith<$Res> {
  _$CheckoutRequirementCopyWithImpl(this._self, this._then);

  final CheckoutRequirement _self;
  final $Res Function(CheckoutRequirement) _then;

/// Create a copy of CheckoutRequirement
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? field = null,Object? code = null,Object? message = null,}) {
  return _then(CheckoutRequirement(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutRequirement].
extension CheckoutRequirementPatterns on CheckoutRequirement {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutRequirement value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutRequirement() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutRequirement value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutRequirement():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutRequirement value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutRequirement() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String step,  String field,  String code,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutRequirement() when $default != null:
return $default(_that.step,_that.field,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String step,  String field,  String code,  String message)  $default,) {final _that = this;
switch (_that) {
case _CheckoutRequirement():
return $default(_that.step,_that.field,_that.code,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String step,  String field,  String code,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutRequirement() when $default != null:
return $default(_that.step,_that.field,_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CheckoutRequirement extends CheckoutRequirement {
  const _CheckoutRequirement({required this.step, required this.field, required this.code, required this.message}): super._();
  factory _CheckoutRequirement.fromJson(Map<String, dynamic> json) => _$CheckoutRequirementFromJson(json);

@override final  String step;
@override final  String field;
@override final  String code;
@override final  String message;

/// Create a copy of CheckoutRequirement
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutRequirementCopyWith<_CheckoutRequirement> get copyWith => __$CheckoutRequirementCopyWithImpl<_CheckoutRequirement>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutRequirementToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutRequirement&&(identical(other.step, step) || other.step == step)&&(identical(other.field, field) || other.field == field)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,step,field,code,message);
}

@override
String toString() {
    return 'CheckoutRequirement(step: $step, field: $field, code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CheckoutRequirementCopyWith<$Res> implements $CheckoutRequirementCopyWith<$Res> {
  factory _$CheckoutRequirementCopyWith(_CheckoutRequirement value, $Res Function(_CheckoutRequirement) _then) = __$CheckoutRequirementCopyWithImpl;
@override @useResult
$Res call({
 String step, String field, String code, String message
});




}
/// @nodoc
class __$CheckoutRequirementCopyWithImpl<$Res>
    implements _$CheckoutRequirementCopyWith<$Res> {
  __$CheckoutRequirementCopyWithImpl(this._self, this._then);

  final _CheckoutRequirement _self;
  final $Res Function(_CheckoutRequirement) _then;

/// Create a copy of CheckoutRequirement
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? field = null,Object? code = null,Object? message = null,}) {
  return _then(_CheckoutRequirement(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as String,field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TaxLine {

 String get id; String get label; bool get included; bool get credit; String? get rate; String? get taxRateId; String? get lineItemId; String? get fulfillmentId; String? get feeId; String? get returnLineItemId; String? get claimLineItemId; String? get exchangeLineItemId; String? get amount;
/// Create a copy of TaxLine
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxLineCopyWith<TaxLine> get copyWith => _$TaxLineCopyWithImpl<TaxLine>(this as TaxLine, _$identity);

  /// Serializes this TaxLine to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TaxLine;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaxLine&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.included, _this.included) || other.included == _this.included)&&(identical(other.credit, _this.credit) || other.credit == _this.credit)&&(identical(other.rate, _this.rate) || other.rate == _this.rate)&&(identical(other.taxRateId, _this.taxRateId) || other.taxRateId == _this.taxRateId)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.fulfillmentId, _this.fulfillmentId) || other.fulfillmentId == _this.fulfillmentId)&&(identical(other.feeId, _this.feeId) || other.feeId == _this.feeId)&&(identical(other.returnLineItemId, _this.returnLineItemId) || other.returnLineItemId == _this.returnLineItemId)&&(identical(other.claimLineItemId, _this.claimLineItemId) || other.claimLineItemId == _this.claimLineItemId)&&(identical(other.exchangeLineItemId, _this.exchangeLineItemId) || other.exchangeLineItemId == _this.exchangeLineItemId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TaxLine;
  return Object.hash(runtimeType,_this.id,_this.label,_this.included,_this.credit,_this.rate,_this.taxRateId,_this.lineItemId,_this.fulfillmentId,_this.feeId,_this.returnLineItemId,_this.claimLineItemId,_this.exchangeLineItemId,_this.amount);
}

@override
String toString() {
  final _this = this as TaxLine;
  return 'TaxLine(id: ${_this.id}, label: ${_this.label}, included: ${_this.included}, credit: ${_this.credit}, rate: ${_this.rate}, taxRateId: ${_this.taxRateId}, lineItemId: ${_this.lineItemId}, fulfillmentId: ${_this.fulfillmentId}, feeId: ${_this.feeId}, returnLineItemId: ${_this.returnLineItemId}, claimLineItemId: ${_this.claimLineItemId}, exchangeLineItemId: ${_this.exchangeLineItemId}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $TaxLineCopyWith<$Res>  {
  factory $TaxLineCopyWith(TaxLine value, $Res Function(TaxLine) _then) = _$TaxLineCopyWithImpl;
@useResult
$Res call({
 String id, String label, bool included, bool credit, String? rate, String? taxRateId, String? lineItemId, String? fulfillmentId, String? feeId, String? returnLineItemId, String? claimLineItemId, String? exchangeLineItemId, String? amount
});




}
/// @nodoc
class _$TaxLineCopyWithImpl<$Res>
    implements $TaxLineCopyWith<$Res> {
  _$TaxLineCopyWithImpl(this._self, this._then);

  final TaxLine _self;
  final $Res Function(TaxLine) _then;

/// Create a copy of TaxLine
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? included = null,Object? credit = null,Object? rate = freezed,Object? taxRateId = freezed,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? feeId = freezed,Object? returnLineItemId = freezed,Object? claimLineItemId = freezed,Object? exchangeLineItemId = freezed,Object? amount = freezed,}) {
  return _then(TaxLine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,included: null == included ? _self.included : included // ignore: cast_nullable_to_non_nullable
as bool,credit: null == credit ? _self.credit : credit // ignore: cast_nullable_to_non_nullable
as bool,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as String?,taxRateId: freezed == taxRateId ? _self.taxRateId : taxRateId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,feeId: freezed == feeId ? _self.feeId : feeId // ignore: cast_nullable_to_non_nullable
as String?,returnLineItemId: freezed == returnLineItemId ? _self.returnLineItemId : returnLineItemId // ignore: cast_nullable_to_non_nullable
as String?,claimLineItemId: freezed == claimLineItemId ? _self.claimLineItemId : claimLineItemId // ignore: cast_nullable_to_non_nullable
as String?,exchangeLineItemId: freezed == exchangeLineItemId ? _self.exchangeLineItemId : exchangeLineItemId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TaxLine].
extension TaxLinePatterns on TaxLine {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaxLine value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaxLine() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaxLine value)  $default,){
final _that = this;
switch (_that) {
case _TaxLine():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaxLine value)?  $default,){
final _that = this;
switch (_that) {
case _TaxLine() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  bool included,  bool credit,  String? rate,  String? taxRateId,  String? lineItemId,  String? fulfillmentId,  String? feeId,  String? returnLineItemId,  String? claimLineItemId,  String? exchangeLineItemId,  String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaxLine() when $default != null:
return $default(_that.id,_that.label,_that.included,_that.credit,_that.rate,_that.taxRateId,_that.lineItemId,_that.fulfillmentId,_that.feeId,_that.returnLineItemId,_that.claimLineItemId,_that.exchangeLineItemId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  bool included,  bool credit,  String? rate,  String? taxRateId,  String? lineItemId,  String? fulfillmentId,  String? feeId,  String? returnLineItemId,  String? claimLineItemId,  String? exchangeLineItemId,  String? amount)  $default,) {final _that = this;
switch (_that) {
case _TaxLine():
return $default(_that.id,_that.label,_that.included,_that.credit,_that.rate,_that.taxRateId,_that.lineItemId,_that.fulfillmentId,_that.feeId,_that.returnLineItemId,_that.claimLineItemId,_that.exchangeLineItemId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  bool included,  bool credit,  String? rate,  String? taxRateId,  String? lineItemId,  String? fulfillmentId,  String? feeId,  String? returnLineItemId,  String? claimLineItemId,  String? exchangeLineItemId,  String? amount)?  $default,) {final _that = this;
switch (_that) {
case _TaxLine() when $default != null:
return $default(_that.id,_that.label,_that.included,_that.credit,_that.rate,_that.taxRateId,_that.lineItemId,_that.fulfillmentId,_that.feeId,_that.returnLineItemId,_that.claimLineItemId,_that.exchangeLineItemId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _TaxLine extends TaxLine {
  const _TaxLine({required this.id, required this.label, required this.included, required this.credit, this.rate, this.taxRateId, this.lineItemId, this.fulfillmentId, this.feeId, this.returnLineItemId, this.claimLineItemId, this.exchangeLineItemId, this.amount}): super._();
  factory _TaxLine.fromJson(Map<String, dynamic> json) => _$TaxLineFromJson(json);

@override final  String id;
@override final  String label;
@override final  bool included;
@override final  bool credit;
@override final  String? rate;
@override final  String? taxRateId;
@override final  String? lineItemId;
@override final  String? fulfillmentId;
@override final  String? feeId;
@override final  String? returnLineItemId;
@override final  String? claimLineItemId;
@override final  String? exchangeLineItemId;
@override final  String? amount;

/// Create a copy of TaxLine
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxLineCopyWith<_TaxLine> get copyWith => __$TaxLineCopyWithImpl<_TaxLine>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaxLineToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaxLine&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.included, included) || other.included == included)&&(identical(other.credit, credit) || other.credit == credit)&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.taxRateId, taxRateId) || other.taxRateId == taxRateId)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.fulfillmentId, fulfillmentId) || other.fulfillmentId == fulfillmentId)&&(identical(other.feeId, feeId) || other.feeId == feeId)&&(identical(other.returnLineItemId, returnLineItemId) || other.returnLineItemId == returnLineItemId)&&(identical(other.claimLineItemId, claimLineItemId) || other.claimLineItemId == claimLineItemId)&&(identical(other.exchangeLineItemId, exchangeLineItemId) || other.exchangeLineItemId == exchangeLineItemId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,label,included,credit,rate,taxRateId,lineItemId,fulfillmentId,feeId,returnLineItemId,claimLineItemId,exchangeLineItemId,amount);
}

@override
String toString() {
    return 'TaxLine(id: $id, label: $label, included: $included, credit: $credit, rate: $rate, taxRateId: $taxRateId, lineItemId: $lineItemId, fulfillmentId: $fulfillmentId, feeId: $feeId, returnLineItemId: $returnLineItemId, claimLineItemId: $claimLineItemId, exchangeLineItemId: $exchangeLineItemId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$TaxLineCopyWith<$Res> implements $TaxLineCopyWith<$Res> {
  factory _$TaxLineCopyWith(_TaxLine value, $Res Function(_TaxLine) _then) = __$TaxLineCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, bool included, bool credit, String? rate, String? taxRateId, String? lineItemId, String? fulfillmentId, String? feeId, String? returnLineItemId, String? claimLineItemId, String? exchangeLineItemId, String? amount
});




}
/// @nodoc
class __$TaxLineCopyWithImpl<$Res>
    implements _$TaxLineCopyWith<$Res> {
  __$TaxLineCopyWithImpl(this._self, this._then);

  final _TaxLine _self;
  final $Res Function(_TaxLine) _then;

/// Create a copy of TaxLine
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? included = null,Object? credit = null,Object? rate = freezed,Object? taxRateId = freezed,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? feeId = freezed,Object? returnLineItemId = freezed,Object? claimLineItemId = freezed,Object? exchangeLineItemId = freezed,Object? amount = freezed,}) {
  return _then(_TaxLine(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,included: null == included ? _self.included : included // ignore: cast_nullable_to_non_nullable
as bool,credit: null == credit ? _self.credit : credit // ignore: cast_nullable_to_non_nullable
as bool,rate: freezed == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as String?,taxRateId: freezed == taxRateId ? _self.taxRateId : taxRateId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,feeId: freezed == feeId ? _self.feeId : feeId // ignore: cast_nullable_to_non_nullable
as String?,returnLineItemId: freezed == returnLineItemId ? _self.returnLineItemId : returnLineItemId // ignore: cast_nullable_to_non_nullable
as String?,claimLineItemId: freezed == claimLineItemId ? _self.claimLineItemId : claimLineItemId // ignore: cast_nullable_to_non_nullable
as String?,exchangeLineItemId: freezed == exchangeLineItemId ? _self.exchangeLineItemId : exchangeLineItemId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AppliedPromotion {

 String get id; String get promotionId; String get name; String? get description; String? get code; String? get amount;
/// Create a copy of AppliedPromotion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppliedPromotionCopyWith<AppliedPromotion> get copyWith => _$AppliedPromotionCopyWithImpl<AppliedPromotion>(this as AppliedPromotion, _$identity);

  /// Serializes this AppliedPromotion to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppliedPromotion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppliedPromotion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.promotionId, _this.promotionId) || other.promotionId == _this.promotionId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppliedPromotion;
  return Object.hash(runtimeType,_this.id,_this.promotionId,_this.name,_this.description,_this.code,_this.amount);
}

@override
String toString() {
  final _this = this as AppliedPromotion;
  return 'AppliedPromotion(id: ${_this.id}, promotionId: ${_this.promotionId}, name: ${_this.name}, description: ${_this.description}, code: ${_this.code}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $AppliedPromotionCopyWith<$Res>  {
  factory $AppliedPromotionCopyWith(AppliedPromotion value, $Res Function(AppliedPromotion) _then) = _$AppliedPromotionCopyWithImpl;
@useResult
$Res call({
 String id, String promotionId, String name, String? description, String? code, String? amount
});




}
/// @nodoc
class _$AppliedPromotionCopyWithImpl<$Res>
    implements $AppliedPromotionCopyWith<$Res> {
  _$AppliedPromotionCopyWithImpl(this._self, this._then);

  final AppliedPromotion _self;
  final $Res Function(AppliedPromotion) _then;

/// Create a copy of AppliedPromotion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? promotionId = null,Object? name = null,Object? description = freezed,Object? code = freezed,Object? amount = freezed,}) {
  return _then(AppliedPromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppliedPromotion].
extension AppliedPromotionPatterns on AppliedPromotion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppliedPromotion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppliedPromotion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppliedPromotion value)  $default,){
final _that = this;
switch (_that) {
case _AppliedPromotion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppliedPromotion value)?  $default,){
final _that = this;
switch (_that) {
case _AppliedPromotion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String promotionId,  String name,  String? description,  String? code,  String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppliedPromotion() when $default != null:
return $default(_that.id,_that.promotionId,_that.name,_that.description,_that.code,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String promotionId,  String name,  String? description,  String? code,  String? amount)  $default,) {final _that = this;
switch (_that) {
case _AppliedPromotion():
return $default(_that.id,_that.promotionId,_that.name,_that.description,_that.code,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String promotionId,  String name,  String? description,  String? code,  String? amount)?  $default,) {final _that = this;
switch (_that) {
case _AppliedPromotion() when $default != null:
return $default(_that.id,_that.promotionId,_that.name,_that.description,_that.code,_that.amount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AppliedPromotion extends AppliedPromotion {
  const _AppliedPromotion({required this.id, required this.promotionId, required this.name, this.description, this.code, this.amount}): super._();
  factory _AppliedPromotion.fromJson(Map<String, dynamic> json) => _$AppliedPromotionFromJson(json);

@override final  String id;
@override final  String promotionId;
@override final  String name;
@override final  String? description;
@override final  String? code;
@override final  String? amount;

/// Create a copy of AppliedPromotion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppliedPromotionCopyWith<_AppliedPromotion> get copyWith => __$AppliedPromotionCopyWithImpl<_AppliedPromotion>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppliedPromotionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppliedPromotion&&(identical(other.id, id) || other.id == id)&&(identical(other.promotionId, promotionId) || other.promotionId == promotionId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.code, code) || other.code == code)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,promotionId,name,description,code,amount);
}

@override
String toString() {
    return 'AppliedPromotion(id: $id, promotionId: $promotionId, name: $name, description: $description, code: $code, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$AppliedPromotionCopyWith<$Res> implements $AppliedPromotionCopyWith<$Res> {
  factory _$AppliedPromotionCopyWith(_AppliedPromotion value, $Res Function(_AppliedPromotion) _then) = __$AppliedPromotionCopyWithImpl;
@override @useResult
$Res call({
 String id, String promotionId, String name, String? description, String? code, String? amount
});




}
/// @nodoc
class __$AppliedPromotionCopyWithImpl<$Res>
    implements _$AppliedPromotionCopyWith<$Res> {
  __$AppliedPromotionCopyWithImpl(this._self, this._then);

  final _AppliedPromotion _self;
  final $Res Function(_AppliedPromotion) _then;

/// Create a copy of AppliedPromotion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? promotionId = null,Object? name = null,Object? description = freezed,Object? code = freezed,Object? amount = freezed,}) {
  return _then(_AppliedPromotion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,promotionId: null == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DiscountCode {

 String get id; String get label;@JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown) DiscountKind get kind; String? get code; String? get valueType; String? get value; String? get promotionId; String? get lineItemId; String? get fulfillmentId; String? get amount;
/// Create a copy of DiscountCode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiscountCodeCopyWith<DiscountCode> get copyWith => _$DiscountCodeCopyWithImpl<DiscountCode>(this as DiscountCode, _$identity);

  /// Serializes this DiscountCode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DiscountCode;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscountCode&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.valueType, _this.valueType) || other.valueType == _this.valueType)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.promotionId, _this.promotionId) || other.promotionId == _this.promotionId)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.fulfillmentId, _this.fulfillmentId) || other.fulfillmentId == _this.fulfillmentId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DiscountCode;
  return Object.hash(runtimeType,_this.id,_this.label,_this.kind,_this.code,_this.valueType,_this.value,_this.promotionId,_this.lineItemId,_this.fulfillmentId,_this.amount);
}

@override
String toString() {
  final _this = this as DiscountCode;
  return 'DiscountCode(id: ${_this.id}, label: ${_this.label}, kind: ${_this.kind}, code: ${_this.code}, valueType: ${_this.valueType}, value: ${_this.value}, promotionId: ${_this.promotionId}, lineItemId: ${_this.lineItemId}, fulfillmentId: ${_this.fulfillmentId}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $DiscountCodeCopyWith<$Res>  {
  factory $DiscountCodeCopyWith(DiscountCode value, $Res Function(DiscountCode) _then) = _$DiscountCodeCopyWithImpl;
@useResult
$Res call({
 String id, String label,@JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown) DiscountKind kind, String? code, String? valueType, String? value, String? promotionId, String? lineItemId, String? fulfillmentId, String? amount
});




}
/// @nodoc
class _$DiscountCodeCopyWithImpl<$Res>
    implements $DiscountCodeCopyWith<$Res> {
  _$DiscountCodeCopyWithImpl(this._self, this._then);

  final DiscountCode _self;
  final $Res Function(DiscountCode) _then;

/// Create a copy of DiscountCode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? kind = null,Object? code = freezed,Object? valueType = freezed,Object? value = freezed,Object? promotionId = freezed,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? amount = freezed,}) {
  return _then(DiscountCode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DiscountKind,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,valueType: freezed == valueType ? _self.valueType : valueType // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,promotionId: freezed == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiscountCode].
extension DiscountCodePatterns on DiscountCode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiscountCode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiscountCode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiscountCode value)  $default,){
final _that = this;
switch (_that) {
case _DiscountCode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiscountCode value)?  $default,){
final _that = this;
switch (_that) {
case _DiscountCode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown)  DiscountKind kind,  String? code,  String? valueType,  String? value,  String? promotionId,  String? lineItemId,  String? fulfillmentId,  String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiscountCode() when $default != null:
return $default(_that.id,_that.label,_that.kind,_that.code,_that.valueType,_that.value,_that.promotionId,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown)  DiscountKind kind,  String? code,  String? valueType,  String? value,  String? promotionId,  String? lineItemId,  String? fulfillmentId,  String? amount)  $default,) {final _that = this;
switch (_that) {
case _DiscountCode():
return $default(_that.id,_that.label,_that.kind,_that.code,_that.valueType,_that.value,_that.promotionId,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label, @JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown)  DiscountKind kind,  String? code,  String? valueType,  String? value,  String? promotionId,  String? lineItemId,  String? fulfillmentId,  String? amount)?  $default,) {final _that = this;
switch (_that) {
case _DiscountCode() when $default != null:
return $default(_that.id,_that.label,_that.kind,_that.code,_that.valueType,_that.value,_that.promotionId,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DiscountCode extends DiscountCode {
  const _DiscountCode({this.id = '', this.label = '', @JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown) this.kind = DiscountKind.unknown, this.code, this.valueType, this.value, this.promotionId, this.lineItemId, this.fulfillmentId, this.amount}): super._();
  factory _DiscountCode.fromJson(Map<String, dynamic> json) => _$DiscountCodeFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String label;
@override@JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown) final  DiscountKind kind;
@override final  String? code;
@override final  String? valueType;
@override final  String? value;
@override final  String? promotionId;
@override final  String? lineItemId;
@override final  String? fulfillmentId;
@override final  String? amount;

/// Create a copy of DiscountCode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiscountCodeCopyWith<_DiscountCode> get copyWith => __$DiscountCodeCopyWithImpl<_DiscountCode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiscountCodeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiscountCode&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.code, code) || other.code == code)&&(identical(other.valueType, valueType) || other.valueType == valueType)&&(identical(other.value, value) || other.value == value)&&(identical(other.promotionId, promotionId) || other.promotionId == promotionId)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.fulfillmentId, fulfillmentId) || other.fulfillmentId == fulfillmentId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,label,kind,code,valueType,value,promotionId,lineItemId,fulfillmentId,amount);
}

@override
String toString() {
    return 'DiscountCode(id: $id, label: $label, kind: $kind, code: $code, valueType: $valueType, value: $value, promotionId: $promotionId, lineItemId: $lineItemId, fulfillmentId: $fulfillmentId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$DiscountCodeCopyWith<$Res> implements $DiscountCodeCopyWith<$Res> {
  factory _$DiscountCodeCopyWith(_DiscountCode value, $Res Function(_DiscountCode) _then) = __$DiscountCodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String label,@JsonKey(unknownEnumValue: DiscountKind.unknown, defaultValue: DiscountKind.unknown) DiscountKind kind, String? code, String? valueType, String? value, String? promotionId, String? lineItemId, String? fulfillmentId, String? amount
});




}
/// @nodoc
class __$DiscountCodeCopyWithImpl<$Res>
    implements _$DiscountCodeCopyWith<$Res> {
  __$DiscountCodeCopyWithImpl(this._self, this._then);

  final _DiscountCode _self;
  final $Res Function(_DiscountCode) _then;

/// Create a copy of DiscountCode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? kind = null,Object? code = freezed,Object? valueType = freezed,Object? value = freezed,Object? promotionId = freezed,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? amount = freezed,}) {
  return _then(_DiscountCode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as DiscountKind,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,valueType: freezed == valueType ? _self.valueType : valueType // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,promotionId: freezed == promotionId ? _self.promotionId : promotionId // ignore: cast_nullable_to_non_nullable
as String?,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Fee {

 String get id; String get label;@JsonKey(unknownEnumValue: FeeKind.unknown) FeeKind get kind; String? get lineItemId; String? get fulfillmentId; String? get amount;
/// Create a copy of Fee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeCopyWith<Fee> get copyWith => _$FeeCopyWithImpl<Fee>(this as Fee, _$identity);

  /// Serializes this Fee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Fee;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fee&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.lineItemId, _this.lineItemId) || other.lineItemId == _this.lineItemId)&&(identical(other.fulfillmentId, _this.fulfillmentId) || other.fulfillmentId == _this.fulfillmentId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Fee;
  return Object.hash(runtimeType,_this.id,_this.label,_this.kind,_this.lineItemId,_this.fulfillmentId,_this.amount);
}

@override
String toString() {
  final _this = this as Fee;
  return 'Fee(id: ${_this.id}, label: ${_this.label}, kind: ${_this.kind}, lineItemId: ${_this.lineItemId}, fulfillmentId: ${_this.fulfillmentId}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $FeeCopyWith<$Res>  {
  factory $FeeCopyWith(Fee value, $Res Function(Fee) _then) = _$FeeCopyWithImpl;
@useResult
$Res call({
 String id, String label,@JsonKey(unknownEnumValue: FeeKind.unknown) FeeKind kind, String? lineItemId, String? fulfillmentId, String? amount
});




}
/// @nodoc
class _$FeeCopyWithImpl<$Res>
    implements $FeeCopyWith<$Res> {
  _$FeeCopyWithImpl(this._self, this._then);

  final Fee _self;
  final $Res Function(Fee) _then;

/// Create a copy of Fee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? kind = null,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? amount = freezed,}) {
  return _then(Fee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeeKind,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Fee].
extension FeePatterns on Fee {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fee() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fee value)  $default,){
final _that = this;
switch (_that) {
case _Fee():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fee value)?  $default,){
final _that = this;
switch (_that) {
case _Fee() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(unknownEnumValue: FeeKind.unknown)  FeeKind kind,  String? lineItemId,  String? fulfillmentId,  String? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fee() when $default != null:
return $default(_that.id,_that.label,_that.kind,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label, @JsonKey(unknownEnumValue: FeeKind.unknown)  FeeKind kind,  String? lineItemId,  String? fulfillmentId,  String? amount)  $default,) {final _that = this;
switch (_that) {
case _Fee():
return $default(_that.id,_that.label,_that.kind,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label, @JsonKey(unknownEnumValue: FeeKind.unknown)  FeeKind kind,  String? lineItemId,  String? fulfillmentId,  String? amount)?  $default,) {final _that = this;
switch (_that) {
case _Fee() when $default != null:
return $default(_that.id,_that.label,_that.kind,_that.lineItemId,_that.fulfillmentId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Fee extends Fee {
  const _Fee({required this.id, required this.label, @JsonKey(unknownEnumValue: FeeKind.unknown) required this.kind, this.lineItemId, this.fulfillmentId, this.amount}): super._();
  factory _Fee.fromJson(Map<String, dynamic> json) => _$FeeFromJson(json);

@override final  String id;
@override final  String label;
@override@JsonKey(unknownEnumValue: FeeKind.unknown) final  FeeKind kind;
@override final  String? lineItemId;
@override final  String? fulfillmentId;
@override final  String? amount;

/// Create a copy of Fee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeCopyWith<_Fee> get copyWith => __$FeeCopyWithImpl<_Fee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fee&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.lineItemId, lineItemId) || other.lineItemId == lineItemId)&&(identical(other.fulfillmentId, fulfillmentId) || other.fulfillmentId == fulfillmentId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,label,kind,lineItemId,fulfillmentId,amount);
}

@override
String toString() {
    return 'Fee(id: $id, label: $label, kind: $kind, lineItemId: $lineItemId, fulfillmentId: $fulfillmentId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$FeeCopyWith<$Res> implements $FeeCopyWith<$Res> {
  factory _$FeeCopyWith(_Fee value, $Res Function(_Fee) _then) = __$FeeCopyWithImpl;
@override @useResult
$Res call({
 String id, String label,@JsonKey(unknownEnumValue: FeeKind.unknown) FeeKind kind, String? lineItemId, String? fulfillmentId, String? amount
});




}
/// @nodoc
class __$FeeCopyWithImpl<$Res>
    implements _$FeeCopyWith<$Res> {
  __$FeeCopyWithImpl(this._self, this._then);

  final _Fee _self;
  final $Res Function(_Fee) _then;

/// Create a copy of Fee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? kind = null,Object? lineItemId = freezed,Object? fulfillmentId = freezed,Object? amount = freezed,}) {
  return _then(_Fee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as FeeKind,lineItemId: freezed == lineItemId ? _self.lineItemId : lineItemId // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentId: freezed == fulfillmentId ? _self.fulfillmentId : fulfillmentId // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DigitalLink {

 String get id; int get accessCounter; String get filename; String get contentType; String get downloadUrl; String? get expiresAt; bool get authorizable; bool get expired; bool get accessLimitExceeded;
/// Create a copy of DigitalLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DigitalLinkCopyWith<DigitalLink> get copyWith => _$DigitalLinkCopyWithImpl<DigitalLink>(this as DigitalLink, _$identity);

  /// Serializes this DigitalLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DigitalLink;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DigitalLink&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.accessCounter, _this.accessCounter) || other.accessCounter == _this.accessCounter)&&(identical(other.filename, _this.filename) || other.filename == _this.filename)&&(identical(other.contentType, _this.contentType) || other.contentType == _this.contentType)&&(identical(other.downloadUrl, _this.downloadUrl) || other.downloadUrl == _this.downloadUrl)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.authorizable, _this.authorizable) || other.authorizable == _this.authorizable)&&(identical(other.expired, _this.expired) || other.expired == _this.expired)&&(identical(other.accessLimitExceeded, _this.accessLimitExceeded) || other.accessLimitExceeded == _this.accessLimitExceeded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DigitalLink;
  return Object.hash(runtimeType,_this.id,_this.accessCounter,_this.filename,_this.contentType,_this.downloadUrl,_this.expiresAt,_this.authorizable,_this.expired,_this.accessLimitExceeded);
}

@override
String toString() {
  final _this = this as DigitalLink;
  return 'DigitalLink(id: ${_this.id}, accessCounter: ${_this.accessCounter}, filename: ${_this.filename}, contentType: ${_this.contentType}, downloadUrl: ${_this.downloadUrl}, expiresAt: ${_this.expiresAt}, authorizable: ${_this.authorizable}, expired: ${_this.expired}, accessLimitExceeded: ${_this.accessLimitExceeded})';
}


}

/// @nodoc
abstract mixin class $DigitalLinkCopyWith<$Res>  {
  factory $DigitalLinkCopyWith(DigitalLink value, $Res Function(DigitalLink) _then) = _$DigitalLinkCopyWithImpl;
@useResult
$Res call({
 String id, int accessCounter, String filename, String contentType, String downloadUrl, String? expiresAt, bool authorizable, bool expired, bool accessLimitExceeded
});




}
/// @nodoc
class _$DigitalLinkCopyWithImpl<$Res>
    implements $DigitalLinkCopyWith<$Res> {
  _$DigitalLinkCopyWithImpl(this._self, this._then);

  final DigitalLink _self;
  final $Res Function(DigitalLink) _then;

/// Create a copy of DigitalLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accessCounter = null,Object? filename = null,Object? contentType = null,Object? downloadUrl = null,Object? expiresAt = freezed,Object? authorizable = null,Object? expired = null,Object? accessLimitExceeded = null,}) {
  return _then(DigitalLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accessCounter: null == accessCounter ? _self.accessCounter : accessCounter // ignore: cast_nullable_to_non_nullable
as int,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,authorizable: null == authorizable ? _self.authorizable : authorizable // ignore: cast_nullable_to_non_nullable
as bool,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as bool,accessLimitExceeded: null == accessLimitExceeded ? _self.accessLimitExceeded : accessLimitExceeded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DigitalLink].
extension DigitalLinkPatterns on DigitalLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DigitalLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DigitalLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DigitalLink value)  $default,){
final _that = this;
switch (_that) {
case _DigitalLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DigitalLink value)?  $default,){
final _that = this;
switch (_that) {
case _DigitalLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int accessCounter,  String filename,  String contentType,  String downloadUrl,  String? expiresAt,  bool authorizable,  bool expired,  bool accessLimitExceeded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DigitalLink() when $default != null:
return $default(_that.id,_that.accessCounter,_that.filename,_that.contentType,_that.downloadUrl,_that.expiresAt,_that.authorizable,_that.expired,_that.accessLimitExceeded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int accessCounter,  String filename,  String contentType,  String downloadUrl,  String? expiresAt,  bool authorizable,  bool expired,  bool accessLimitExceeded)  $default,) {final _that = this;
switch (_that) {
case _DigitalLink():
return $default(_that.id,_that.accessCounter,_that.filename,_that.contentType,_that.downloadUrl,_that.expiresAt,_that.authorizable,_that.expired,_that.accessLimitExceeded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int accessCounter,  String filename,  String contentType,  String downloadUrl,  String? expiresAt,  bool authorizable,  bool expired,  bool accessLimitExceeded)?  $default,) {final _that = this;
switch (_that) {
case _DigitalLink() when $default != null:
return $default(_that.id,_that.accessCounter,_that.filename,_that.contentType,_that.downloadUrl,_that.expiresAt,_that.authorizable,_that.expired,_that.accessLimitExceeded);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DigitalLink extends DigitalLink {
  const _DigitalLink({required this.id, required this.accessCounter, required this.filename, required this.contentType, required this.downloadUrl, this.expiresAt, required this.authorizable, required this.expired, required this.accessLimitExceeded}): super._();
  factory _DigitalLink.fromJson(Map<String, dynamic> json) => _$DigitalLinkFromJson(json);

@override final  String id;
@override final  int accessCounter;
@override final  String filename;
@override final  String contentType;
@override final  String downloadUrl;
@override final  String? expiresAt;
@override final  bool authorizable;
@override final  bool expired;
@override final  bool accessLimitExceeded;

/// Create a copy of DigitalLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DigitalLinkCopyWith<_DigitalLink> get copyWith => __$DigitalLinkCopyWithImpl<_DigitalLink>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DigitalLinkToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DigitalLink&&(identical(other.id, id) || other.id == id)&&(identical(other.accessCounter, accessCounter) || other.accessCounter == accessCounter)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.authorizable, authorizable) || other.authorizable == authorizable)&&(identical(other.expired, expired) || other.expired == expired)&&(identical(other.accessLimitExceeded, accessLimitExceeded) || other.accessLimitExceeded == accessLimitExceeded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,accessCounter,filename,contentType,downloadUrl,expiresAt,authorizable,expired,accessLimitExceeded);
}

@override
String toString() {
    return 'DigitalLink(id: $id, accessCounter: $accessCounter, filename: $filename, contentType: $contentType, downloadUrl: $downloadUrl, expiresAt: $expiresAt, authorizable: $authorizable, expired: $expired, accessLimitExceeded: $accessLimitExceeded)';
}


}

/// @nodoc
abstract mixin class _$DigitalLinkCopyWith<$Res> implements $DigitalLinkCopyWith<$Res> {
  factory _$DigitalLinkCopyWith(_DigitalLink value, $Res Function(_DigitalLink) _then) = __$DigitalLinkCopyWithImpl;
@override @useResult
$Res call({
 String id, int accessCounter, String filename, String contentType, String downloadUrl, String? expiresAt, bool authorizable, bool expired, bool accessLimitExceeded
});




}
/// @nodoc
class __$DigitalLinkCopyWithImpl<$Res>
    implements _$DigitalLinkCopyWith<$Res> {
  __$DigitalLinkCopyWithImpl(this._self, this._then);

  final _DigitalLink _self;
  final $Res Function(_DigitalLink) _then;

/// Create a copy of DigitalLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accessCounter = null,Object? filename = null,Object? contentType = null,Object? downloadUrl = null,Object? expiresAt = freezed,Object? authorizable = null,Object? expired = null,Object? accessLimitExceeded = null,}) {
  return _then(_DigitalLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,accessCounter: null == accessCounter ? _self.accessCounter : accessCounter // ignore: cast_nullable_to_non_nullable
as int,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,contentType: null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,authorizable: null == authorizable ? _self.authorizable : authorizable // ignore: cast_nullable_to_non_nullable
as bool,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as bool,accessLimitExceeded: null == accessLimitExceeded ? _self.accessLimitExceeded : accessLimitExceeded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$LineItem {

 String get id; String get variantId; String? get sellerId; bool get preorder; String? get preorderShipsAt; int get quantity;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency; String get name; String get slug; String get optionsText; String? get price; String? get total; String? get adjustmentTotal; String? get additionalTaxTotal; String? get includedTaxTotal; String? get discountTotal; String? get preTaxAmount; String? get discountedAmount; String? get compareAtAmount; String? get thumbnailUrl; Seller? get seller; List<OptionValue> get optionValues;@JsonKey(includeIfNull: false) List<DigitalLink>? get digitalLinks;@JsonKey(includeIfNull: false) List<TaxLine>? get taxLines;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineItemCopyWith<LineItem> get copyWith => _$LineItemCopyWithImpl<LineItem>(this as LineItem, _$identity);

  /// Serializes this LineItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LineItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.sellerId, _this.sellerId) || other.sellerId == _this.sellerId)&&(identical(other.preorder, _this.preorder) || other.preorder == _this.preorder)&&(identical(other.preorderShipsAt, _this.preorderShipsAt) || other.preorderShipsAt == _this.preorderShipsAt)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.optionsText, _this.optionsText) || other.optionsText == _this.optionsText)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.adjustmentTotal, _this.adjustmentTotal) || other.adjustmentTotal == _this.adjustmentTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal)&&(identical(other.preTaxAmount, _this.preTaxAmount) || other.preTaxAmount == _this.preTaxAmount)&&(identical(other.discountedAmount, _this.discountedAmount) || other.discountedAmount == _this.discountedAmount)&&(identical(other.compareAtAmount, _this.compareAtAmount) || other.compareAtAmount == _this.compareAtAmount)&&(identical(other.thumbnailUrl, _this.thumbnailUrl) || other.thumbnailUrl == _this.thumbnailUrl)&&(identical(other.seller, _this.seller) || other.seller == _this.seller)&&const DeepCollectionEquality().equals(other.optionValues, _this.optionValues)&&const DeepCollectionEquality().equals(other.digitalLinks, _this.digitalLinks)&&const DeepCollectionEquality().equals(other.taxLines, _this.taxLines)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LineItem;
  return Object.hashAll([runtimeType,_this.id,_this.variantId,_this.sellerId,_this.preorder,_this.preorderShipsAt,_this.quantity,_this.currency,_this.name,_this.slug,_this.optionsText,_this.price,_this.total,_this.adjustmentTotal,_this.additionalTaxTotal,_this.includedTaxTotal,_this.discountTotal,_this.preTaxAmount,_this.discountedAmount,_this.compareAtAmount,_this.thumbnailUrl,_this.seller,const DeepCollectionEquality().hash(_this.optionValues),const DeepCollectionEquality().hash(_this.digitalLinks),const DeepCollectionEquality().hash(_this.taxLines),const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as LineItem;
  return 'LineItem(id: ${_this.id}, variantId: ${_this.variantId}, sellerId: ${_this.sellerId}, preorder: ${_this.preorder}, preorderShipsAt: ${_this.preorderShipsAt}, quantity: ${_this.quantity}, currency: ${_this.currency}, name: ${_this.name}, slug: ${_this.slug}, optionsText: ${_this.optionsText}, price: ${_this.price}, total: ${_this.total}, adjustmentTotal: ${_this.adjustmentTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, discountTotal: ${_this.discountTotal}, preTaxAmount: ${_this.preTaxAmount}, discountedAmount: ${_this.discountedAmount}, compareAtAmount: ${_this.compareAtAmount}, thumbnailUrl: ${_this.thumbnailUrl}, seller: ${_this.seller}, optionValues: ${_this.optionValues}, digitalLinks: ${_this.digitalLinks}, taxLines: ${_this.taxLines}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $LineItemCopyWith<$Res>  {
  factory $LineItemCopyWith(LineItem value, $Res Function(LineItem) _then) = _$LineItemCopyWithImpl;
@useResult
$Res call({
 String id, String variantId, String? sellerId, bool preorder, String? preorderShipsAt, int quantity,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String name, String slug, String optionsText, String? price, String? total, String? adjustmentTotal, String? additionalTaxTotal, String? includedTaxTotal, String? discountTotal, String? preTaxAmount, String? discountedAmount, String? compareAtAmount, String? thumbnailUrl, Seller? seller, List<OptionValue> optionValues,@JsonKey(includeIfNull: false) List<DigitalLink>? digitalLinks,@JsonKey(includeIfNull: false) List<TaxLine>? taxLines,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


$SellerCopyWith<$Res>? get seller;

}
/// @nodoc
class _$LineItemCopyWithImpl<$Res>
    implements $LineItemCopyWith<$Res> {
  _$LineItemCopyWithImpl(this._self, this._then);

  final LineItem _self;
  final $Res Function(LineItem) _then;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? variantId = null,Object? sellerId = freezed,Object? preorder = null,Object? preorderShipsAt = freezed,Object? quantity = null,Object? currency = null,Object? name = null,Object? slug = null,Object? optionsText = null,Object? price = freezed,Object? total = freezed,Object? adjustmentTotal = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? discountTotal = freezed,Object? preTaxAmount = freezed,Object? discountedAmount = freezed,Object? compareAtAmount = freezed,Object? thumbnailUrl = freezed,Object? seller = freezed,Object? optionValues = null,Object? digitalLinks = freezed,Object? taxLines = freezed,Object? customFields = freezed,}) {
  return _then(LineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,optionsText: null == optionsText ? _self.optionsText : optionsText // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,adjustmentTotal: freezed == adjustmentTotal ? _self.adjustmentTotal : adjustmentTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,discountedAmount: freezed == discountedAmount ? _self.discountedAmount : discountedAmount // ignore: cast_nullable_to_non_nullable
as String?,compareAtAmount: freezed == compareAtAmount ? _self.compareAtAmount : compareAtAmount // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,optionValues: null == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>,digitalLinks: freezed == digitalLinks ? _self.digitalLinks : digitalLinks // ignore: cast_nullable_to_non_nullable
as List<DigitalLink>?,taxLines: freezed == taxLines ? _self.taxLines : taxLines // ignore: cast_nullable_to_non_nullable
as List<TaxLine>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of LineItem
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
}
}


/// Adds pattern-matching-related methods to [LineItem].
extension LineItemPatterns on LineItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineItem value)  $default,){
final _that = this;
switch (_that) {
case _LineItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineItem value)?  $default,){
final _that = this;
switch (_that) {
case _LineItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String variantId,  String? sellerId,  bool preorder,  String? preorderShipsAt,  int quantity, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String name,  String slug,  String optionsText,  String? price,  String? total,  String? adjustmentTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? discountTotal,  String? preTaxAmount,  String? discountedAmount,  String? compareAtAmount,  String? thumbnailUrl,  Seller? seller,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<DigitalLink>? digitalLinks, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineItem() when $default != null:
return $default(_that.id,_that.variantId,_that.sellerId,_that.preorder,_that.preorderShipsAt,_that.quantity,_that.currency,_that.name,_that.slug,_that.optionsText,_that.price,_that.total,_that.adjustmentTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.discountTotal,_that.preTaxAmount,_that.discountedAmount,_that.compareAtAmount,_that.thumbnailUrl,_that.seller,_that.optionValues,_that.digitalLinks,_that.taxLines,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String variantId,  String? sellerId,  bool preorder,  String? preorderShipsAt,  int quantity, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String name,  String slug,  String optionsText,  String? price,  String? total,  String? adjustmentTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? discountTotal,  String? preTaxAmount,  String? discountedAmount,  String? compareAtAmount,  String? thumbnailUrl,  Seller? seller,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<DigitalLink>? digitalLinks, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _LineItem():
return $default(_that.id,_that.variantId,_that.sellerId,_that.preorder,_that.preorderShipsAt,_that.quantity,_that.currency,_that.name,_that.slug,_that.optionsText,_that.price,_that.total,_that.adjustmentTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.discountTotal,_that.preTaxAmount,_that.discountedAmount,_that.compareAtAmount,_that.thumbnailUrl,_that.seller,_that.optionValues,_that.digitalLinks,_that.taxLines,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String variantId,  String? sellerId,  bool preorder,  String? preorderShipsAt,  int quantity, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String name,  String slug,  String optionsText,  String? price,  String? total,  String? adjustmentTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? discountTotal,  String? preTaxAmount,  String? discountedAmount,  String? compareAtAmount,  String? thumbnailUrl,  Seller? seller,  List<OptionValue> optionValues, @JsonKey(includeIfNull: false)  List<DigitalLink>? digitalLinks, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _LineItem() when $default != null:
return $default(_that.id,_that.variantId,_that.sellerId,_that.preorder,_that.preorderShipsAt,_that.quantity,_that.currency,_that.name,_that.slug,_that.optionsText,_that.price,_that.total,_that.adjustmentTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.discountTotal,_that.preTaxAmount,_that.discountedAmount,_that.compareAtAmount,_that.thumbnailUrl,_that.seller,_that.optionValues,_that.digitalLinks,_that.taxLines,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _LineItem extends LineItem {
  const _LineItem({required this.id, required this.variantId, this.sellerId, required this.preorder, this.preorderShipsAt, required this.quantity, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency, required this.name, required this.slug, required this.optionsText, this.price, this.total, this.adjustmentTotal, this.additionalTaxTotal, this.includedTaxTotal, this.discountTotal, this.preTaxAmount, this.discountedAmount, this.compareAtAmount, this.thumbnailUrl, this.seller, required this.optionValues, @JsonKey(includeIfNull: false) this.digitalLinks, @JsonKey(includeIfNull: false) this.taxLines, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

@override final  String id;
@override final  String variantId;
@override final  String? sellerId;
@override final  bool preorder;
@override final  String? preorderShipsAt;
@override final  int quantity;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;
@override final  String name;
@override final  String slug;
@override final  String optionsText;
@override final  String? price;
@override final  String? total;
@override final  String? adjustmentTotal;
@override final  String? additionalTaxTotal;
@override final  String? includedTaxTotal;
@override final  String? discountTotal;
@override final  String? preTaxAmount;
@override final  String? discountedAmount;
@override final  String? compareAtAmount;
@override final  String? thumbnailUrl;
@override final  Seller? seller;
@override final  List<OptionValue> optionValues;
@override@JsonKey(includeIfNull: false) final  List<DigitalLink>? digitalLinks;
@override@JsonKey(includeIfNull: false) final  List<TaxLine>? taxLines;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineItemCopyWith<_LineItem> get copyWith => __$LineItemCopyWithImpl<_LineItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineItem&&(identical(other.id, id) || other.id == id)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.preorder, preorder) || other.preorder == preorder)&&(identical(other.preorderShipsAt, preorderShipsAt) || other.preorderShipsAt == preorderShipsAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.optionsText, optionsText) || other.optionsText == optionsText)&&(identical(other.price, price) || other.price == price)&&(identical(other.total, total) || other.total == total)&&(identical(other.adjustmentTotal, adjustmentTotal) || other.adjustmentTotal == adjustmentTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.preTaxAmount, preTaxAmount) || other.preTaxAmount == preTaxAmount)&&(identical(other.discountedAmount, discountedAmount) || other.discountedAmount == discountedAmount)&&(identical(other.compareAtAmount, compareAtAmount) || other.compareAtAmount == compareAtAmount)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.seller, seller) || other.seller == seller)&&const DeepCollectionEquality().equals(other.optionValues, optionValues)&&const DeepCollectionEquality().equals(other.digitalLinks, digitalLinks)&&const DeepCollectionEquality().equals(other.taxLines, taxLines)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,variantId,sellerId,preorder,preorderShipsAt,quantity,currency,name,slug,optionsText,price,total,adjustmentTotal,additionalTaxTotal,includedTaxTotal,discountTotal,preTaxAmount,discountedAmount,compareAtAmount,thumbnailUrl,seller,const DeepCollectionEquality().hash(optionValues),const DeepCollectionEquality().hash(digitalLinks),const DeepCollectionEquality().hash(taxLines),const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'LineItem(id: $id, variantId: $variantId, sellerId: $sellerId, preorder: $preorder, preorderShipsAt: $preorderShipsAt, quantity: $quantity, currency: $currency, name: $name, slug: $slug, optionsText: $optionsText, price: $price, total: $total, adjustmentTotal: $adjustmentTotal, additionalTaxTotal: $additionalTaxTotal, includedTaxTotal: $includedTaxTotal, discountTotal: $discountTotal, preTaxAmount: $preTaxAmount, discountedAmount: $discountedAmount, compareAtAmount: $compareAtAmount, thumbnailUrl: $thumbnailUrl, seller: $seller, optionValues: $optionValues, digitalLinks: $digitalLinks, taxLines: $taxLines, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$LineItemCopyWith<$Res> implements $LineItemCopyWith<$Res> {
  factory _$LineItemCopyWith(_LineItem value, $Res Function(_LineItem) _then) = __$LineItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String variantId, String? sellerId, bool preorder, String? preorderShipsAt, int quantity,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String name, String slug, String optionsText, String? price, String? total, String? adjustmentTotal, String? additionalTaxTotal, String? includedTaxTotal, String? discountTotal, String? preTaxAmount, String? discountedAmount, String? compareAtAmount, String? thumbnailUrl, Seller? seller, List<OptionValue> optionValues,@JsonKey(includeIfNull: false) List<DigitalLink>? digitalLinks,@JsonKey(includeIfNull: false) List<TaxLine>? taxLines,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


@override $SellerCopyWith<$Res>? get seller;

}
/// @nodoc
class __$LineItemCopyWithImpl<$Res>
    implements _$LineItemCopyWith<$Res> {
  __$LineItemCopyWithImpl(this._self, this._then);

  final _LineItem _self;
  final $Res Function(_LineItem) _then;

/// Create a copy of LineItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? variantId = null,Object? sellerId = freezed,Object? preorder = null,Object? preorderShipsAt = freezed,Object? quantity = null,Object? currency = null,Object? name = null,Object? slug = null,Object? optionsText = null,Object? price = freezed,Object? total = freezed,Object? adjustmentTotal = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? discountTotal = freezed,Object? preTaxAmount = freezed,Object? discountedAmount = freezed,Object? compareAtAmount = freezed,Object? thumbnailUrl = freezed,Object? seller = freezed,Object? optionValues = null,Object? digitalLinks = freezed,Object? taxLines = freezed,Object? customFields = freezed,}) {
  return _then(_LineItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,sellerId: freezed == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String?,preorder: null == preorder ? _self.preorder : preorder // ignore: cast_nullable_to_non_nullable
as bool,preorderShipsAt: freezed == preorderShipsAt ? _self.preorderShipsAt : preorderShipsAt // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,optionsText: null == optionsText ? _self.optionsText : optionsText // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,adjustmentTotal: freezed == adjustmentTotal ? _self.adjustmentTotal : adjustmentTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,preTaxAmount: freezed == preTaxAmount ? _self.preTaxAmount : preTaxAmount // ignore: cast_nullable_to_non_nullable
as String?,discountedAmount: freezed == discountedAmount ? _self.discountedAmount : discountedAmount // ignore: cast_nullable_to_non_nullable
as String?,compareAtAmount: freezed == compareAtAmount ? _self.compareAtAmount : compareAtAmount // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,optionValues: null == optionValues ? _self.optionValues : optionValues // ignore: cast_nullable_to_non_nullable
as List<OptionValue>,digitalLinks: freezed == digitalLinks ? _self.digitalLinks : digitalLinks // ignore: cast_nullable_to_non_nullable
as List<DigitalLink>?,taxLines: freezed == taxLines ? _self.taxLines : taxLines // ignore: cast_nullable_to_non_nullable
as List<TaxLine>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of LineItem
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
}
}


/// @nodoc
mixin _$FreightSummary {

 int get totalUnits; int get totalCartons; int? get totalPallets; String get totalVolume; String get totalWeight; bool get complete;
/// Create a copy of FreightSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreightSummaryCopyWith<FreightSummary> get copyWith => _$FreightSummaryCopyWithImpl<FreightSummary>(this as FreightSummary, _$identity);

  /// Serializes this FreightSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FreightSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreightSummary&&(identical(other.totalUnits, _this.totalUnits) || other.totalUnits == _this.totalUnits)&&(identical(other.totalCartons, _this.totalCartons) || other.totalCartons == _this.totalCartons)&&(identical(other.totalPallets, _this.totalPallets) || other.totalPallets == _this.totalPallets)&&(identical(other.totalVolume, _this.totalVolume) || other.totalVolume == _this.totalVolume)&&(identical(other.totalWeight, _this.totalWeight) || other.totalWeight == _this.totalWeight)&&(identical(other.complete, _this.complete) || other.complete == _this.complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FreightSummary;
  return Object.hash(runtimeType,_this.totalUnits,_this.totalCartons,_this.totalPallets,_this.totalVolume,_this.totalWeight,_this.complete);
}

@override
String toString() {
  final _this = this as FreightSummary;
  return 'FreightSummary(totalUnits: ${_this.totalUnits}, totalCartons: ${_this.totalCartons}, totalPallets: ${_this.totalPallets}, totalVolume: ${_this.totalVolume}, totalWeight: ${_this.totalWeight}, complete: ${_this.complete})';
}


}

/// @nodoc
abstract mixin class $FreightSummaryCopyWith<$Res>  {
  factory $FreightSummaryCopyWith(FreightSummary value, $Res Function(FreightSummary) _then) = _$FreightSummaryCopyWithImpl;
@useResult
$Res call({
 int totalUnits, int totalCartons, int? totalPallets, String totalVolume, String totalWeight, bool complete
});




}
/// @nodoc
class _$FreightSummaryCopyWithImpl<$Res>
    implements $FreightSummaryCopyWith<$Res> {
  _$FreightSummaryCopyWithImpl(this._self, this._then);

  final FreightSummary _self;
  final $Res Function(FreightSummary) _then;

/// Create a copy of FreightSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUnits = null,Object? totalCartons = null,Object? totalPallets = freezed,Object? totalVolume = null,Object? totalWeight = null,Object? complete = null,}) {
  return _then(FreightSummary(
totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,totalCartons: null == totalCartons ? _self.totalCartons : totalCartons // ignore: cast_nullable_to_non_nullable
as int,totalPallets: freezed == totalPallets ? _self.totalPallets : totalPallets // ignore: cast_nullable_to_non_nullable
as int?,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as String,totalWeight: null == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FreightSummary].
extension FreightSummaryPatterns on FreightSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreightSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreightSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreightSummary value)  $default,){
final _that = this;
switch (_that) {
case _FreightSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreightSummary value)?  $default,){
final _that = this;
switch (_that) {
case _FreightSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalUnits,  int totalCartons,  int? totalPallets,  String totalVolume,  String totalWeight,  bool complete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreightSummary() when $default != null:
return $default(_that.totalUnits,_that.totalCartons,_that.totalPallets,_that.totalVolume,_that.totalWeight,_that.complete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalUnits,  int totalCartons,  int? totalPallets,  String totalVolume,  String totalWeight,  bool complete)  $default,) {final _that = this;
switch (_that) {
case _FreightSummary():
return $default(_that.totalUnits,_that.totalCartons,_that.totalPallets,_that.totalVolume,_that.totalWeight,_that.complete);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalUnits,  int totalCartons,  int? totalPallets,  String totalVolume,  String totalWeight,  bool complete)?  $default,) {final _that = this;
switch (_that) {
case _FreightSummary() when $default != null:
return $default(_that.totalUnits,_that.totalCartons,_that.totalPallets,_that.totalVolume,_that.totalWeight,_that.complete);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _FreightSummary extends FreightSummary {
  const _FreightSummary({required this.totalUnits, required this.totalCartons, this.totalPallets, required this.totalVolume, required this.totalWeight, required this.complete}): super._();
  factory _FreightSummary.fromJson(Map<String, dynamic> json) => _$FreightSummaryFromJson(json);

@override final  int totalUnits;
@override final  int totalCartons;
@override final  int? totalPallets;
@override final  String totalVolume;
@override final  String totalWeight;
@override final  bool complete;

/// Create a copy of FreightSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreightSummaryCopyWith<_FreightSummary> get copyWith => __$FreightSummaryCopyWithImpl<_FreightSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreightSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreightSummary&&(identical(other.totalUnits, totalUnits) || other.totalUnits == totalUnits)&&(identical(other.totalCartons, totalCartons) || other.totalCartons == totalCartons)&&(identical(other.totalPallets, totalPallets) || other.totalPallets == totalPallets)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.totalWeight, totalWeight) || other.totalWeight == totalWeight)&&(identical(other.complete, complete) || other.complete == complete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalUnits,totalCartons,totalPallets,totalVolume,totalWeight,complete);
}

@override
String toString() {
    return 'FreightSummary(totalUnits: $totalUnits, totalCartons: $totalCartons, totalPallets: $totalPallets, totalVolume: $totalVolume, totalWeight: $totalWeight, complete: $complete)';
}


}

/// @nodoc
abstract mixin class _$FreightSummaryCopyWith<$Res> implements $FreightSummaryCopyWith<$Res> {
  factory _$FreightSummaryCopyWith(_FreightSummary value, $Res Function(_FreightSummary) _then) = __$FreightSummaryCopyWithImpl;
@override @useResult
$Res call({
 int totalUnits, int totalCartons, int? totalPallets, String totalVolume, String totalWeight, bool complete
});




}
/// @nodoc
class __$FreightSummaryCopyWithImpl<$Res>
    implements _$FreightSummaryCopyWith<$Res> {
  __$FreightSummaryCopyWithImpl(this._self, this._then);

  final _FreightSummary _self;
  final $Res Function(_FreightSummary) _then;

/// Create a copy of FreightSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUnits = null,Object? totalCartons = null,Object? totalPallets = freezed,Object? totalVolume = null,Object? totalWeight = null,Object? complete = null,}) {
  return _then(_FreightSummary(
totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,totalCartons: null == totalCartons ? _self.totalCartons : totalCartons // ignore: cast_nullable_to_non_nullable
as int,totalPallets: freezed == totalPallets ? _self.totalPallets : totalPallets // ignore: cast_nullable_to_non_nullable
as int?,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as String,totalWeight: null == totalWeight ? _self.totalWeight : totalWeight // ignore: cast_nullable_to_non_nullable
as String,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$StockLocation {

 String get id; String get name; String? get address1; String? get city; String? get zipcode;@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode? get countryCode; String? get countryName; String? get stateCode; String? get stateText; String? get countryIso; String? get stateAbbr; int? get pickupReadyInMinutes; String? get pickupInstructions;
/// Create a copy of StockLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLocationCopyWith<StockLocation> get copyWith => _$StockLocationCopyWithImpl<StockLocation>(this as StockLocation, _$identity);

  /// Serializes this StockLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StockLocation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLocation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.address1, _this.address1) || other.address1 == _this.address1)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.zipcode, _this.zipcode) || other.zipcode == _this.zipcode)&&(identical(other.countryCode, _this.countryCode) || other.countryCode == _this.countryCode)&&(identical(other.countryName, _this.countryName) || other.countryName == _this.countryName)&&(identical(other.stateCode, _this.stateCode) || other.stateCode == _this.stateCode)&&(identical(other.stateText, _this.stateText) || other.stateText == _this.stateText)&&(identical(other.countryIso, _this.countryIso) || other.countryIso == _this.countryIso)&&(identical(other.stateAbbr, _this.stateAbbr) || other.stateAbbr == _this.stateAbbr)&&(identical(other.pickupReadyInMinutes, _this.pickupReadyInMinutes) || other.pickupReadyInMinutes == _this.pickupReadyInMinutes)&&(identical(other.pickupInstructions, _this.pickupInstructions) || other.pickupInstructions == _this.pickupInstructions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StockLocation;
  return Object.hash(runtimeType,_this.id,_this.name,_this.address1,_this.city,_this.zipcode,_this.countryCode,_this.countryName,_this.stateCode,_this.stateText,_this.countryIso,_this.stateAbbr,_this.pickupReadyInMinutes,_this.pickupInstructions);
}

@override
String toString() {
  final _this = this as StockLocation;
  return 'StockLocation(id: ${_this.id}, name: ${_this.name}, address1: ${_this.address1}, city: ${_this.city}, zipcode: ${_this.zipcode}, countryCode: ${_this.countryCode}, countryName: ${_this.countryName}, stateCode: ${_this.stateCode}, stateText: ${_this.stateText}, countryIso: ${_this.countryIso}, stateAbbr: ${_this.stateAbbr}, pickupReadyInMinutes: ${_this.pickupReadyInMinutes}, pickupInstructions: ${_this.pickupInstructions})';
}


}

/// @nodoc
abstract mixin class $StockLocationCopyWith<$Res>  {
  factory $StockLocationCopyWith(StockLocation value, $Res Function(StockLocation) _then) = _$StockLocationCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? address1, String? city, String? zipcode,@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode? countryCode, String? countryName, String? stateCode, String? stateText, String? countryIso, String? stateAbbr, int? pickupReadyInMinutes, String? pickupInstructions
});




}
/// @nodoc
class _$StockLocationCopyWithImpl<$Res>
    implements $StockLocationCopyWith<$Res> {
  _$StockLocationCopyWithImpl(this._self, this._then);

  final StockLocation _self;
  final $Res Function(StockLocation) _then;

/// Create a copy of StockLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address1 = freezed,Object? city = freezed,Object? zipcode = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? stateCode = freezed,Object? stateText = freezed,Object? countryIso = freezed,Object? stateAbbr = freezed,Object? pickupReadyInMinutes = freezed,Object? pickupInstructions = freezed,}) {
  return _then(StockLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateText: freezed == stateText ? _self.stateText : stateText // ignore: cast_nullable_to_non_nullable
as String?,countryIso: freezed == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String?,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,pickupReadyInMinutes: freezed == pickupReadyInMinutes ? _self.pickupReadyInMinutes : pickupReadyInMinutes // ignore: cast_nullable_to_non_nullable
as int?,pickupInstructions: freezed == pickupInstructions ? _self.pickupInstructions : pickupInstructions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLocation].
extension StockLocationPatterns on StockLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLocation value)  $default,){
final _that = this;
switch (_that) {
case _StockLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLocation value)?  $default,){
final _that = this;
switch (_that) {
case _StockLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? address1,  String? city,  String? zipcode, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode? countryCode,  String? countryName,  String? stateCode,  String? stateText,  String? countryIso,  String? stateAbbr,  int? pickupReadyInMinutes,  String? pickupInstructions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLocation() when $default != null:
return $default(_that.id,_that.name,_that.address1,_that.city,_that.zipcode,_that.countryCode,_that.countryName,_that.stateCode,_that.stateText,_that.countryIso,_that.stateAbbr,_that.pickupReadyInMinutes,_that.pickupInstructions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? address1,  String? city,  String? zipcode, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode? countryCode,  String? countryName,  String? stateCode,  String? stateText,  String? countryIso,  String? stateAbbr,  int? pickupReadyInMinutes,  String? pickupInstructions)  $default,) {final _that = this;
switch (_that) {
case _StockLocation():
return $default(_that.id,_that.name,_that.address1,_that.city,_that.zipcode,_that.countryCode,_that.countryName,_that.stateCode,_that.stateText,_that.countryIso,_that.stateAbbr,_that.pickupReadyInMinutes,_that.pickupInstructions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? address1,  String? city,  String? zipcode, @JsonKey(unknownEnumValue: CountryCode.unknown)  CountryCode? countryCode,  String? countryName,  String? stateCode,  String? stateText,  String? countryIso,  String? stateAbbr,  int? pickupReadyInMinutes,  String? pickupInstructions)?  $default,) {final _that = this;
switch (_that) {
case _StockLocation() when $default != null:
return $default(_that.id,_that.name,_that.address1,_that.city,_that.zipcode,_that.countryCode,_that.countryName,_that.stateCode,_that.stateText,_that.countryIso,_that.stateAbbr,_that.pickupReadyInMinutes,_that.pickupInstructions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _StockLocation extends StockLocation {
  const _StockLocation({required this.id, required this.name, this.address1, this.city, this.zipcode, @JsonKey(unknownEnumValue: CountryCode.unknown) this.countryCode, this.countryName, this.stateCode, this.stateText, this.countryIso, this.stateAbbr, this.pickupReadyInMinutes, this.pickupInstructions}): super._();
  factory _StockLocation.fromJson(Map<String, dynamic> json) => _$StockLocationFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? address1;
@override final  String? city;
@override final  String? zipcode;
@override@JsonKey(unknownEnumValue: CountryCode.unknown) final  CountryCode? countryCode;
@override final  String? countryName;
@override final  String? stateCode;
@override final  String? stateText;
@override final  String? countryIso;
@override final  String? stateAbbr;
@override final  int? pickupReadyInMinutes;
@override final  String? pickupInstructions;

/// Create a copy of StockLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLocationCopyWith<_StockLocation> get copyWith => __$StockLocationCopyWithImpl<_StockLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLocationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.city, city) || other.city == city)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.stateCode, stateCode) || other.stateCode == stateCode)&&(identical(other.stateText, stateText) || other.stateText == stateText)&&(identical(other.countryIso, countryIso) || other.countryIso == countryIso)&&(identical(other.stateAbbr, stateAbbr) || other.stateAbbr == stateAbbr)&&(identical(other.pickupReadyInMinutes, pickupReadyInMinutes) || other.pickupReadyInMinutes == pickupReadyInMinutes)&&(identical(other.pickupInstructions, pickupInstructions) || other.pickupInstructions == pickupInstructions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,address1,city,zipcode,countryCode,countryName,stateCode,stateText,countryIso,stateAbbr,pickupReadyInMinutes,pickupInstructions);
}

@override
String toString() {
    return 'StockLocation(id: $id, name: $name, address1: $address1, city: $city, zipcode: $zipcode, countryCode: $countryCode, countryName: $countryName, stateCode: $stateCode, stateText: $stateText, countryIso: $countryIso, stateAbbr: $stateAbbr, pickupReadyInMinutes: $pickupReadyInMinutes, pickupInstructions: $pickupInstructions)';
}


}

/// @nodoc
abstract mixin class _$StockLocationCopyWith<$Res> implements $StockLocationCopyWith<$Res> {
  factory _$StockLocationCopyWith(_StockLocation value, $Res Function(_StockLocation) _then) = __$StockLocationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? address1, String? city, String? zipcode,@JsonKey(unknownEnumValue: CountryCode.unknown) CountryCode? countryCode, String? countryName, String? stateCode, String? stateText, String? countryIso, String? stateAbbr, int? pickupReadyInMinutes, String? pickupInstructions
});




}
/// @nodoc
class __$StockLocationCopyWithImpl<$Res>
    implements _$StockLocationCopyWith<$Res> {
  __$StockLocationCopyWithImpl(this._self, this._then);

  final _StockLocation _self;
  final $Res Function(_StockLocation) _then;

/// Create a copy of StockLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address1 = freezed,Object? city = freezed,Object? zipcode = freezed,Object? countryCode = freezed,Object? countryName = freezed,Object? stateCode = freezed,Object? stateText = freezed,Object? countryIso = freezed,Object? stateAbbr = freezed,Object? pickupReadyInMinutes = freezed,Object? pickupInstructions = freezed,}) {
  return _then(_StockLocation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as CountryCode?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,stateCode: freezed == stateCode ? _self.stateCode : stateCode // ignore: cast_nullable_to_non_nullable
as String?,stateText: freezed == stateText ? _self.stateText : stateText // ignore: cast_nullable_to_non_nullable
as String?,countryIso: freezed == countryIso ? _self.countryIso : countryIso // ignore: cast_nullable_to_non_nullable
as String?,stateAbbr: freezed == stateAbbr ? _self.stateAbbr : stateAbbr // ignore: cast_nullable_to_non_nullable
as String?,pickupReadyInMinutes: freezed == pickupReadyInMinutes ? _self.pickupReadyInMinutes : pickupReadyInMinutes // ignore: cast_nullable_to_non_nullable
as int?,pickupInstructions: freezed == pickupInstructions ? _self.pickupInstructions : pickupInstructions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeliveryMethod {

 String get id; String get name; String? get code; int? get estimatedTransitBusinessDaysMin; int? get estimatedTransitBusinessDaysMax; bool get digital; bool get pickup; bool get pickupPoint;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of DeliveryMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryMethodCopyWith<DeliveryMethod> get copyWith => _$DeliveryMethodCopyWithImpl<DeliveryMethod>(this as DeliveryMethod, _$identity);

  /// Serializes this DeliveryMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeliveryMethod;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryMethod&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.estimatedTransitBusinessDaysMin, _this.estimatedTransitBusinessDaysMin) || other.estimatedTransitBusinessDaysMin == _this.estimatedTransitBusinessDaysMin)&&(identical(other.estimatedTransitBusinessDaysMax, _this.estimatedTransitBusinessDaysMax) || other.estimatedTransitBusinessDaysMax == _this.estimatedTransitBusinessDaysMax)&&(identical(other.digital, _this.digital) || other.digital == _this.digital)&&(identical(other.pickup, _this.pickup) || other.pickup == _this.pickup)&&(identical(other.pickupPoint, _this.pickupPoint) || other.pickupPoint == _this.pickupPoint)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeliveryMethod;
  return Object.hash(runtimeType,_this.id,_this.name,_this.code,_this.estimatedTransitBusinessDaysMin,_this.estimatedTransitBusinessDaysMax,_this.digital,_this.pickup,_this.pickupPoint,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as DeliveryMethod;
  return 'DeliveryMethod(id: ${_this.id}, name: ${_this.name}, code: ${_this.code}, estimatedTransitBusinessDaysMin: ${_this.estimatedTransitBusinessDaysMin}, estimatedTransitBusinessDaysMax: ${_this.estimatedTransitBusinessDaysMax}, digital: ${_this.digital}, pickup: ${_this.pickup}, pickupPoint: ${_this.pickupPoint}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $DeliveryMethodCopyWith<$Res>  {
  factory $DeliveryMethodCopyWith(DeliveryMethod value, $Res Function(DeliveryMethod) _then) = _$DeliveryMethodCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? code, int? estimatedTransitBusinessDaysMin, int? estimatedTransitBusinessDaysMax, bool digital, bool pickup, bool pickupPoint,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$DeliveryMethodCopyWithImpl<$Res>
    implements $DeliveryMethodCopyWith<$Res> {
  _$DeliveryMethodCopyWithImpl(this._self, this._then);

  final DeliveryMethod _self;
  final $Res Function(DeliveryMethod) _then;

/// Create a copy of DeliveryMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? estimatedTransitBusinessDaysMin = freezed,Object? estimatedTransitBusinessDaysMax = freezed,Object? digital = null,Object? pickup = null,Object? pickupPoint = null,Object? customFields = freezed,}) {
  return _then(DeliveryMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,estimatedTransitBusinessDaysMin: freezed == estimatedTransitBusinessDaysMin ? _self.estimatedTransitBusinessDaysMin : estimatedTransitBusinessDaysMin // ignore: cast_nullable_to_non_nullable
as int?,estimatedTransitBusinessDaysMax: freezed == estimatedTransitBusinessDaysMax ? _self.estimatedTransitBusinessDaysMax : estimatedTransitBusinessDaysMax // ignore: cast_nullable_to_non_nullable
as int?,digital: null == digital ? _self.digital : digital // ignore: cast_nullable_to_non_nullable
as bool,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool,pickupPoint: null == pickupPoint ? _self.pickupPoint : pickupPoint // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryMethod].
extension DeliveryMethodPatterns on DeliveryMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryMethod value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryMethod value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  int? estimatedTransitBusinessDaysMin,  int? estimatedTransitBusinessDaysMax,  bool digital,  bool pickup,  bool pickupPoint, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryMethod() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.estimatedTransitBusinessDaysMin,_that.estimatedTransitBusinessDaysMax,_that.digital,_that.pickup,_that.pickupPoint,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  int? estimatedTransitBusinessDaysMin,  int? estimatedTransitBusinessDaysMax,  bool digital,  bool pickup,  bool pickupPoint, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _DeliveryMethod():
return $default(_that.id,_that.name,_that.code,_that.estimatedTransitBusinessDaysMin,_that.estimatedTransitBusinessDaysMax,_that.digital,_that.pickup,_that.pickupPoint,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? code,  int? estimatedTransitBusinessDaysMin,  int? estimatedTransitBusinessDaysMax,  bool digital,  bool pickup,  bool pickupPoint, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryMethod() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.estimatedTransitBusinessDaysMin,_that.estimatedTransitBusinessDaysMax,_that.digital,_that.pickup,_that.pickupPoint,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DeliveryMethod extends DeliveryMethod {
  const _DeliveryMethod({required this.id, required this.name, this.code, this.estimatedTransitBusinessDaysMin, this.estimatedTransitBusinessDaysMax, required this.digital, required this.pickup, required this.pickupPoint, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _DeliveryMethod.fromJson(Map<String, dynamic> json) => _$DeliveryMethodFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? code;
@override final  int? estimatedTransitBusinessDaysMin;
@override final  int? estimatedTransitBusinessDaysMax;
@override final  bool digital;
@override final  bool pickup;
@override final  bool pickupPoint;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of DeliveryMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryMethodCopyWith<_DeliveryMethod> get copyWith => __$DeliveryMethodCopyWithImpl<_DeliveryMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryMethodToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.estimatedTransitBusinessDaysMin, estimatedTransitBusinessDaysMin) || other.estimatedTransitBusinessDaysMin == estimatedTransitBusinessDaysMin)&&(identical(other.estimatedTransitBusinessDaysMax, estimatedTransitBusinessDaysMax) || other.estimatedTransitBusinessDaysMax == estimatedTransitBusinessDaysMax)&&(identical(other.digital, digital) || other.digital == digital)&&(identical(other.pickup, pickup) || other.pickup == pickup)&&(identical(other.pickupPoint, pickupPoint) || other.pickupPoint == pickupPoint)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,code,estimatedTransitBusinessDaysMin,estimatedTransitBusinessDaysMax,digital,pickup,pickupPoint,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'DeliveryMethod(id: $id, name: $name, code: $code, estimatedTransitBusinessDaysMin: $estimatedTransitBusinessDaysMin, estimatedTransitBusinessDaysMax: $estimatedTransitBusinessDaysMax, digital: $digital, pickup: $pickup, pickupPoint: $pickupPoint, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$DeliveryMethodCopyWith<$Res> implements $DeliveryMethodCopyWith<$Res> {
  factory _$DeliveryMethodCopyWith(_DeliveryMethod value, $Res Function(_DeliveryMethod) _then) = __$DeliveryMethodCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? code, int? estimatedTransitBusinessDaysMin, int? estimatedTransitBusinessDaysMax, bool digital, bool pickup, bool pickupPoint,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$DeliveryMethodCopyWithImpl<$Res>
    implements _$DeliveryMethodCopyWith<$Res> {
  __$DeliveryMethodCopyWithImpl(this._self, this._then);

  final _DeliveryMethod _self;
  final $Res Function(_DeliveryMethod) _then;

/// Create a copy of DeliveryMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? estimatedTransitBusinessDaysMin = freezed,Object? estimatedTransitBusinessDaysMax = freezed,Object? digital = null,Object? pickup = null,Object? pickupPoint = null,Object? customFields = freezed,}) {
  return _then(_DeliveryMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,estimatedTransitBusinessDaysMin: freezed == estimatedTransitBusinessDaysMin ? _self.estimatedTransitBusinessDaysMin : estimatedTransitBusinessDaysMin // ignore: cast_nullable_to_non_nullable
as int?,estimatedTransitBusinessDaysMax: freezed == estimatedTransitBusinessDaysMax ? _self.estimatedTransitBusinessDaysMax : estimatedTransitBusinessDaysMax // ignore: cast_nullable_to_non_nullable
as int?,digital: null == digital ? _self.digital : digital // ignore: cast_nullable_to_non_nullable
as bool,pickup: null == pickup ? _self.pickup : pickup // ignore: cast_nullable_to_non_nullable
as bool,pickupPoint: null == pickupPoint ? _self.pickupPoint : pickupPoint // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$Delivery {

 String get id; String get trackingNumber; String? get carrier; String? get carrierName; String? get service;@JsonKey(unknownEnumValue: DeliveryStatus.unknown) DeliveryStatus get status; String? get trackingUrl; String? get estimatedDeliveryAt; String? get deliveredAt;
/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryCopyWith<Delivery> get copyWith => _$DeliveryCopyWithImpl<Delivery>(this as Delivery, _$identity);

  /// Serializes this Delivery to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Delivery;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Delivery&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.trackingNumber, _this.trackingNumber) || other.trackingNumber == _this.trackingNumber)&&(identical(other.carrier, _this.carrier) || other.carrier == _this.carrier)&&(identical(other.carrierName, _this.carrierName) || other.carrierName == _this.carrierName)&&(identical(other.service, _this.service) || other.service == _this.service)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.trackingUrl, _this.trackingUrl) || other.trackingUrl == _this.trackingUrl)&&(identical(other.estimatedDeliveryAt, _this.estimatedDeliveryAt) || other.estimatedDeliveryAt == _this.estimatedDeliveryAt)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Delivery;
  return Object.hash(runtimeType,_this.id,_this.trackingNumber,_this.carrier,_this.carrierName,_this.service,_this.status,_this.trackingUrl,_this.estimatedDeliveryAt,_this.deliveredAt);
}

@override
String toString() {
  final _this = this as Delivery;
  return 'Delivery(id: ${_this.id}, trackingNumber: ${_this.trackingNumber}, carrier: ${_this.carrier}, carrierName: ${_this.carrierName}, service: ${_this.service}, status: ${_this.status}, trackingUrl: ${_this.trackingUrl}, estimatedDeliveryAt: ${_this.estimatedDeliveryAt}, deliveredAt: ${_this.deliveredAt})';
}


}

/// @nodoc
abstract mixin class $DeliveryCopyWith<$Res>  {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) _then) = _$DeliveryCopyWithImpl;
@useResult
$Res call({
 String id, String trackingNumber, String? carrier, String? carrierName, String? service,@JsonKey(unknownEnumValue: DeliveryStatus.unknown) DeliveryStatus status, String? trackingUrl, String? estimatedDeliveryAt, String? deliveredAt
});




}
/// @nodoc
class _$DeliveryCopyWithImpl<$Res>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._self, this._then);

  final Delivery _self;
  final $Res Function(Delivery) _then;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? trackingNumber = null,Object? carrier = freezed,Object? carrierName = freezed,Object? service = freezed,Object? status = null,Object? trackingUrl = freezed,Object? estimatedDeliveryAt = freezed,Object? deliveredAt = freezed,}) {
  return _then(Delivery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,carrier: freezed == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as String?,carrierName: freezed == carrierName ? _self.carrierName : carrierName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,trackingUrl: freezed == trackingUrl ? _self.trackingUrl : trackingUrl // ignore: cast_nullable_to_non_nullable
as String?,estimatedDeliveryAt: freezed == estimatedDeliveryAt ? _self.estimatedDeliveryAt : estimatedDeliveryAt // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Delivery].
extension DeliveryPatterns on Delivery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Delivery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Delivery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Delivery value)  $default,){
final _that = this;
switch (_that) {
case _Delivery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Delivery value)?  $default,){
final _that = this;
switch (_that) {
case _Delivery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String trackingNumber,  String? carrier,  String? carrierName,  String? service, @JsonKey(unknownEnumValue: DeliveryStatus.unknown)  DeliveryStatus status,  String? trackingUrl,  String? estimatedDeliveryAt,  String? deliveredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Delivery() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.carrier,_that.carrierName,_that.service,_that.status,_that.trackingUrl,_that.estimatedDeliveryAt,_that.deliveredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String trackingNumber,  String? carrier,  String? carrierName,  String? service, @JsonKey(unknownEnumValue: DeliveryStatus.unknown)  DeliveryStatus status,  String? trackingUrl,  String? estimatedDeliveryAt,  String? deliveredAt)  $default,) {final _that = this;
switch (_that) {
case _Delivery():
return $default(_that.id,_that.trackingNumber,_that.carrier,_that.carrierName,_that.service,_that.status,_that.trackingUrl,_that.estimatedDeliveryAt,_that.deliveredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String trackingNumber,  String? carrier,  String? carrierName,  String? service, @JsonKey(unknownEnumValue: DeliveryStatus.unknown)  DeliveryStatus status,  String? trackingUrl,  String? estimatedDeliveryAt,  String? deliveredAt)?  $default,) {final _that = this;
switch (_that) {
case _Delivery() when $default != null:
return $default(_that.id,_that.trackingNumber,_that.carrier,_that.carrierName,_that.service,_that.status,_that.trackingUrl,_that.estimatedDeliveryAt,_that.deliveredAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Delivery extends Delivery {
  const _Delivery({required this.id, required this.trackingNumber, this.carrier, this.carrierName, this.service, @JsonKey(unknownEnumValue: DeliveryStatus.unknown) required this.status, this.trackingUrl, this.estimatedDeliveryAt, this.deliveredAt}): super._();
  factory _Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);

@override final  String id;
@override final  String trackingNumber;
@override final  String? carrier;
@override final  String? carrierName;
@override final  String? service;
@override@JsonKey(unknownEnumValue: DeliveryStatus.unknown) final  DeliveryStatus status;
@override final  String? trackingUrl;
@override final  String? estimatedDeliveryAt;
@override final  String? deliveredAt;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryCopyWith<_Delivery> get copyWith => __$DeliveryCopyWithImpl<_Delivery>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Delivery&&(identical(other.id, id) || other.id == id)&&(identical(other.trackingNumber, trackingNumber) || other.trackingNumber == trackingNumber)&&(identical(other.carrier, carrier) || other.carrier == carrier)&&(identical(other.carrierName, carrierName) || other.carrierName == carrierName)&&(identical(other.service, service) || other.service == service)&&(identical(other.status, status) || other.status == status)&&(identical(other.trackingUrl, trackingUrl) || other.trackingUrl == trackingUrl)&&(identical(other.estimatedDeliveryAt, estimatedDeliveryAt) || other.estimatedDeliveryAt == estimatedDeliveryAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,trackingNumber,carrier,carrierName,service,status,trackingUrl,estimatedDeliveryAt,deliveredAt);
}

@override
String toString() {
    return 'Delivery(id: $id, trackingNumber: $trackingNumber, carrier: $carrier, carrierName: $carrierName, service: $service, status: $status, trackingUrl: $trackingUrl, estimatedDeliveryAt: $estimatedDeliveryAt, deliveredAt: $deliveredAt)';
}


}

/// @nodoc
abstract mixin class _$DeliveryCopyWith<$Res> implements $DeliveryCopyWith<$Res> {
  factory _$DeliveryCopyWith(_Delivery value, $Res Function(_Delivery) _then) = __$DeliveryCopyWithImpl;
@override @useResult
$Res call({
 String id, String trackingNumber, String? carrier, String? carrierName, String? service,@JsonKey(unknownEnumValue: DeliveryStatus.unknown) DeliveryStatus status, String? trackingUrl, String? estimatedDeliveryAt, String? deliveredAt
});




}
/// @nodoc
class __$DeliveryCopyWithImpl<$Res>
    implements _$DeliveryCopyWith<$Res> {
  __$DeliveryCopyWithImpl(this._self, this._then);

  final _Delivery _self;
  final $Res Function(_Delivery) _then;

/// Create a copy of Delivery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? trackingNumber = null,Object? carrier = freezed,Object? carrierName = freezed,Object? service = freezed,Object? status = null,Object? trackingUrl = freezed,Object? estimatedDeliveryAt = freezed,Object? deliveredAt = freezed,}) {
  return _then(_Delivery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,trackingNumber: null == trackingNumber ? _self.trackingNumber : trackingNumber // ignore: cast_nullable_to_non_nullable
as String,carrier: freezed == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as String?,carrierName: freezed == carrierName ? _self.carrierName : carrierName // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DeliveryStatus,trackingUrl: freezed == trackingUrl ? _self.trackingUrl : trackingUrl // ignore: cast_nullable_to_non_nullable
as String?,estimatedDeliveryAt: freezed == estimatedDeliveryAt ? _self.estimatedDeliveryAt : estimatedDeliveryAt // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeliveryRate {

 String get id; String get deliveryMethodId; String get name; bool get selected; String? get cost; String? get total; String? get additionalTaxTotal; String? get includedTaxTotal; String? get taxTotal; String? get carrier; String? get serviceLevel; String? get estimatedDeliveryDate; bool get unpriced; FreightSummary? get freightSummary; DeliveryMethod get deliveryMethod;
/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryRateCopyWith<DeliveryRate> get copyWith => _$DeliveryRateCopyWithImpl<DeliveryRate>(this as DeliveryRate, _$identity);

  /// Serializes this DeliveryRate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeliveryRate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryRate&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.deliveryMethodId, _this.deliveryMethodId) || other.deliveryMethodId == _this.deliveryMethodId)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.selected, _this.selected) || other.selected == _this.selected)&&(identical(other.cost, _this.cost) || other.cost == _this.cost)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.carrier, _this.carrier) || other.carrier == _this.carrier)&&(identical(other.serviceLevel, _this.serviceLevel) || other.serviceLevel == _this.serviceLevel)&&(identical(other.estimatedDeliveryDate, _this.estimatedDeliveryDate) || other.estimatedDeliveryDate == _this.estimatedDeliveryDate)&&(identical(other.unpriced, _this.unpriced) || other.unpriced == _this.unpriced)&&(identical(other.freightSummary, _this.freightSummary) || other.freightSummary == _this.freightSummary)&&(identical(other.deliveryMethod, _this.deliveryMethod) || other.deliveryMethod == _this.deliveryMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeliveryRate;
  return Object.hash(runtimeType,_this.id,_this.deliveryMethodId,_this.name,_this.selected,_this.cost,_this.total,_this.additionalTaxTotal,_this.includedTaxTotal,_this.taxTotal,_this.carrier,_this.serviceLevel,_this.estimatedDeliveryDate,_this.unpriced,_this.freightSummary,_this.deliveryMethod);
}

@override
String toString() {
  final _this = this as DeliveryRate;
  return 'DeliveryRate(id: ${_this.id}, deliveryMethodId: ${_this.deliveryMethodId}, name: ${_this.name}, selected: ${_this.selected}, cost: ${_this.cost}, total: ${_this.total}, additionalTaxTotal: ${_this.additionalTaxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, taxTotal: ${_this.taxTotal}, carrier: ${_this.carrier}, serviceLevel: ${_this.serviceLevel}, estimatedDeliveryDate: ${_this.estimatedDeliveryDate}, unpriced: ${_this.unpriced}, freightSummary: ${_this.freightSummary}, deliveryMethod: ${_this.deliveryMethod})';
}


}

/// @nodoc
abstract mixin class $DeliveryRateCopyWith<$Res>  {
  factory $DeliveryRateCopyWith(DeliveryRate value, $Res Function(DeliveryRate) _then) = _$DeliveryRateCopyWithImpl;
@useResult
$Res call({
 String id, String deliveryMethodId, String name, bool selected, String? cost, String? total, String? additionalTaxTotal, String? includedTaxTotal, String? taxTotal, String? carrier, String? serviceLevel, String? estimatedDeliveryDate, bool unpriced, FreightSummary? freightSummary, DeliveryMethod deliveryMethod
});


$FreightSummaryCopyWith<$Res>? get freightSummary;$DeliveryMethodCopyWith<$Res> get deliveryMethod;

}
/// @nodoc
class _$DeliveryRateCopyWithImpl<$Res>
    implements $DeliveryRateCopyWith<$Res> {
  _$DeliveryRateCopyWithImpl(this._self, this._then);

  final DeliveryRate _self;
  final $Res Function(DeliveryRate) _then;

/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deliveryMethodId = null,Object? name = null,Object? selected = null,Object? cost = freezed,Object? total = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? taxTotal = freezed,Object? carrier = freezed,Object? serviceLevel = freezed,Object? estimatedDeliveryDate = freezed,Object? unpriced = null,Object? freightSummary = freezed,Object? deliveryMethod = null,}) {
  return _then(DeliveryRate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deliveryMethodId: null == deliveryMethodId ? _self.deliveryMethodId : deliveryMethodId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,carrier: freezed == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as String?,serviceLevel: freezed == serviceLevel ? _self.serviceLevel : serviceLevel // ignore: cast_nullable_to_non_nullable
as String?,estimatedDeliveryDate: freezed == estimatedDeliveryDate ? _self.estimatedDeliveryDate : estimatedDeliveryDate // ignore: cast_nullable_to_non_nullable
as String?,unpriced: null == unpriced ? _self.unpriced : unpriced // ignore: cast_nullable_to_non_nullable
as bool,freightSummary: freezed == freightSummary ? _self.freightSummary : freightSummary // ignore: cast_nullable_to_non_nullable
as FreightSummary?,deliveryMethod: null == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as DeliveryMethod,
  ));
}
/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightSummaryCopyWith<$Res>? get freightSummary {
    if (_self.freightSummary == null) {
    return null;
  }

  return $FreightSummaryCopyWith<$Res>(_self.freightSummary!, (value) {
    return _then(_self.copyWith(freightSummary: value));
  });
}/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryMethodCopyWith<$Res> get deliveryMethod {
  
  return $DeliveryMethodCopyWith<$Res>(_self.deliveryMethod, (value) {
    return _then(_self.copyWith(deliveryMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeliveryRate].
extension DeliveryRatePatterns on DeliveryRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryRate value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryRate value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String deliveryMethodId,  String name,  bool selected,  String? cost,  String? total,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal,  String? carrier,  String? serviceLevel,  String? estimatedDeliveryDate,  bool unpriced,  FreightSummary? freightSummary,  DeliveryMethod deliveryMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryRate() when $default != null:
return $default(_that.id,_that.deliveryMethodId,_that.name,_that.selected,_that.cost,_that.total,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.carrier,_that.serviceLevel,_that.estimatedDeliveryDate,_that.unpriced,_that.freightSummary,_that.deliveryMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String deliveryMethodId,  String name,  bool selected,  String? cost,  String? total,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal,  String? carrier,  String? serviceLevel,  String? estimatedDeliveryDate,  bool unpriced,  FreightSummary? freightSummary,  DeliveryMethod deliveryMethod)  $default,) {final _that = this;
switch (_that) {
case _DeliveryRate():
return $default(_that.id,_that.deliveryMethodId,_that.name,_that.selected,_that.cost,_that.total,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.carrier,_that.serviceLevel,_that.estimatedDeliveryDate,_that.unpriced,_that.freightSummary,_that.deliveryMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String deliveryMethodId,  String name,  bool selected,  String? cost,  String? total,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal,  String? carrier,  String? serviceLevel,  String? estimatedDeliveryDate,  bool unpriced,  FreightSummary? freightSummary,  DeliveryMethod deliveryMethod)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryRate() when $default != null:
return $default(_that.id,_that.deliveryMethodId,_that.name,_that.selected,_that.cost,_that.total,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.carrier,_that.serviceLevel,_that.estimatedDeliveryDate,_that.unpriced,_that.freightSummary,_that.deliveryMethod);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _DeliveryRate extends DeliveryRate {
  const _DeliveryRate({required this.id, required this.deliveryMethodId, required this.name, required this.selected, this.cost, this.total, this.additionalTaxTotal, this.includedTaxTotal, this.taxTotal, this.carrier, this.serviceLevel, this.estimatedDeliveryDate, required this.unpriced, this.freightSummary, required this.deliveryMethod}): super._();
  factory _DeliveryRate.fromJson(Map<String, dynamic> json) => _$DeliveryRateFromJson(json);

@override final  String id;
@override final  String deliveryMethodId;
@override final  String name;
@override final  bool selected;
@override final  String? cost;
@override final  String? total;
@override final  String? additionalTaxTotal;
@override final  String? includedTaxTotal;
@override final  String? taxTotal;
@override final  String? carrier;
@override final  String? serviceLevel;
@override final  String? estimatedDeliveryDate;
@override final  bool unpriced;
@override final  FreightSummary? freightSummary;
@override final  DeliveryMethod deliveryMethod;

/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryRateCopyWith<_DeliveryRate> get copyWith => __$DeliveryRateCopyWithImpl<_DeliveryRate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryRateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryRate&&(identical(other.id, id) || other.id == id)&&(identical(other.deliveryMethodId, deliveryMethodId) || other.deliveryMethodId == deliveryMethodId)&&(identical(other.name, name) || other.name == name)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.total, total) || other.total == total)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.carrier, carrier) || other.carrier == carrier)&&(identical(other.serviceLevel, serviceLevel) || other.serviceLevel == serviceLevel)&&(identical(other.estimatedDeliveryDate, estimatedDeliveryDate) || other.estimatedDeliveryDate == estimatedDeliveryDate)&&(identical(other.unpriced, unpriced) || other.unpriced == unpriced)&&(identical(other.freightSummary, freightSummary) || other.freightSummary == freightSummary)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,deliveryMethodId,name,selected,cost,total,additionalTaxTotal,includedTaxTotal,taxTotal,carrier,serviceLevel,estimatedDeliveryDate,unpriced,freightSummary,deliveryMethod);
}

@override
String toString() {
    return 'DeliveryRate(id: $id, deliveryMethodId: $deliveryMethodId, name: $name, selected: $selected, cost: $cost, total: $total, additionalTaxTotal: $additionalTaxTotal, includedTaxTotal: $includedTaxTotal, taxTotal: $taxTotal, carrier: $carrier, serviceLevel: $serviceLevel, estimatedDeliveryDate: $estimatedDeliveryDate, unpriced: $unpriced, freightSummary: $freightSummary, deliveryMethod: $deliveryMethod)';
}


}

/// @nodoc
abstract mixin class _$DeliveryRateCopyWith<$Res> implements $DeliveryRateCopyWith<$Res> {
  factory _$DeliveryRateCopyWith(_DeliveryRate value, $Res Function(_DeliveryRate) _then) = __$DeliveryRateCopyWithImpl;
@override @useResult
$Res call({
 String id, String deliveryMethodId, String name, bool selected, String? cost, String? total, String? additionalTaxTotal, String? includedTaxTotal, String? taxTotal, String? carrier, String? serviceLevel, String? estimatedDeliveryDate, bool unpriced, FreightSummary? freightSummary, DeliveryMethod deliveryMethod
});


@override $FreightSummaryCopyWith<$Res>? get freightSummary;@override $DeliveryMethodCopyWith<$Res> get deliveryMethod;

}
/// @nodoc
class __$DeliveryRateCopyWithImpl<$Res>
    implements _$DeliveryRateCopyWith<$Res> {
  __$DeliveryRateCopyWithImpl(this._self, this._then);

  final _DeliveryRate _self;
  final $Res Function(_DeliveryRate) _then;

/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deliveryMethodId = null,Object? name = null,Object? selected = null,Object? cost = freezed,Object? total = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? taxTotal = freezed,Object? carrier = freezed,Object? serviceLevel = freezed,Object? estimatedDeliveryDate = freezed,Object? unpriced = null,Object? freightSummary = freezed,Object? deliveryMethod = null,}) {
  return _then(_DeliveryRate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deliveryMethodId: null == deliveryMethodId ? _self.deliveryMethodId : deliveryMethodId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as bool,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,carrier: freezed == carrier ? _self.carrier : carrier // ignore: cast_nullable_to_non_nullable
as String?,serviceLevel: freezed == serviceLevel ? _self.serviceLevel : serviceLevel // ignore: cast_nullable_to_non_nullable
as String?,estimatedDeliveryDate: freezed == estimatedDeliveryDate ? _self.estimatedDeliveryDate : estimatedDeliveryDate // ignore: cast_nullable_to_non_nullable
as String?,unpriced: null == unpriced ? _self.unpriced : unpriced // ignore: cast_nullable_to_non_nullable
as bool,freightSummary: freezed == freightSummary ? _self.freightSummary : freightSummary // ignore: cast_nullable_to_non_nullable
as FreightSummary?,deliveryMethod: null == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as DeliveryMethod,
  ));
}

/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightSummaryCopyWith<$Res>? get freightSummary {
    if (_self.freightSummary == null) {
    return null;
  }

  return $FreightSummaryCopyWith<$Res>(_self.freightSummary!, (value) {
    return _then(_self.copyWith(freightSummary: value));
  });
}/// Create a copy of DeliveryRate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryMethodCopyWith<$Res> get deliveryMethod {
  
  return $DeliveryMethodCopyWith<$Res>(_self.deliveryMethod, (value) {
    return _then(_self.copyWith(deliveryMethod: value));
  });
}
}


/// @nodoc
mixin _$FulfillmentItem {

 String get itemId; String get variantId; int get quantity;
/// Create a copy of FulfillmentItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FulfillmentItemCopyWith<FulfillmentItem> get copyWith => _$FulfillmentItemCopyWithImpl<FulfillmentItem>(this as FulfillmentItem, _$identity);

  /// Serializes this FulfillmentItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FulfillmentItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FulfillmentItem&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.variantId, _this.variantId) || other.variantId == _this.variantId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FulfillmentItem;
  return Object.hash(runtimeType,_this.itemId,_this.variantId,_this.quantity);
}

@override
String toString() {
  final _this = this as FulfillmentItem;
  return 'FulfillmentItem(itemId: ${_this.itemId}, variantId: ${_this.variantId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $FulfillmentItemCopyWith<$Res>  {
  factory $FulfillmentItemCopyWith(FulfillmentItem value, $Res Function(FulfillmentItem) _then) = _$FulfillmentItemCopyWithImpl;
@useResult
$Res call({
 String itemId, String variantId, int quantity
});




}
/// @nodoc
class _$FulfillmentItemCopyWithImpl<$Res>
    implements $FulfillmentItemCopyWith<$Res> {
  _$FulfillmentItemCopyWithImpl(this._self, this._then);

  final FulfillmentItem _self;
  final $Res Function(FulfillmentItem) _then;

/// Create a copy of FulfillmentItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? variantId = null,Object? quantity = null,}) {
  return _then(FulfillmentItem(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FulfillmentItem].
extension FulfillmentItemPatterns on FulfillmentItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FulfillmentItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FulfillmentItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FulfillmentItem value)  $default,){
final _that = this;
switch (_that) {
case _FulfillmentItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FulfillmentItem value)?  $default,){
final _that = this;
switch (_that) {
case _FulfillmentItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  String variantId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FulfillmentItem() when $default != null:
return $default(_that.itemId,_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  String variantId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _FulfillmentItem():
return $default(_that.itemId,_that.variantId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  String variantId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _FulfillmentItem() when $default != null:
return $default(_that.itemId,_that.variantId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _FulfillmentItem extends FulfillmentItem {
  const _FulfillmentItem({required this.itemId, required this.variantId, required this.quantity}): super._();
  factory _FulfillmentItem.fromJson(Map<String, dynamic> json) => _$FulfillmentItemFromJson(json);

@override final  String itemId;
@override final  String variantId;
@override final  int quantity;

/// Create a copy of FulfillmentItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FulfillmentItemCopyWith<_FulfillmentItem> get copyWith => __$FulfillmentItemCopyWithImpl<_FulfillmentItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FulfillmentItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FulfillmentItem&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,itemId,variantId,quantity);
}

@override
String toString() {
    return 'FulfillmentItem(itemId: $itemId, variantId: $variantId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$FulfillmentItemCopyWith<$Res> implements $FulfillmentItemCopyWith<$Res> {
  factory _$FulfillmentItemCopyWith(_FulfillmentItem value, $Res Function(_FulfillmentItem) _then) = __$FulfillmentItemCopyWithImpl;
@override @useResult
$Res call({
 String itemId, String variantId, int quantity
});




}
/// @nodoc
class __$FulfillmentItemCopyWithImpl<$Res>
    implements _$FulfillmentItemCopyWith<$Res> {
  __$FulfillmentItemCopyWithImpl(this._self, this._then);

  final _FulfillmentItem _self;
  final $Res Function(_FulfillmentItem) _then;

/// Create a copy of FulfillmentItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? variantId = null,Object? quantity = null,}) {
  return _then(_FulfillmentItem(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Fulfillment {

 String get id; String get number; String? get tracking; String? get trackingUrl; Map<String, Object?>? get pickupPointData; String? get selectedDeliveryRateId; bool get unpriced; String? get cost; String? get total; String? get discountTotal; String? get additionalTaxTotal; String? get includedTaxTotal; String? get taxTotal;@JsonKey(unknownEnumValue: FulfillmentStatus.unknown) FulfillmentStatus get status;@JsonKey(unknownEnumValue: FulfillmentType.unknown) FulfillmentType get fulfillmentType; String? get fulfilledAt; String? get deliveredAt; List<FulfillmentItem> get items; List<Delivery> get deliveries; DeliveryMethod get deliveryMethod; StockLocation get stockLocation; List<DeliveryRate> get deliveryRates;@JsonKey(includeIfNull: false) List<TaxLine>? get taxLines;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FulfillmentCopyWith<Fulfillment> get copyWith => _$FulfillmentCopyWithImpl<Fulfillment>(this as Fulfillment, _$identity);

  /// Serializes this Fulfillment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Fulfillment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fulfillment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.tracking, _this.tracking) || other.tracking == _this.tracking)&&(identical(other.trackingUrl, _this.trackingUrl) || other.trackingUrl == _this.trackingUrl)&&const DeepCollectionEquality().equals(other.pickupPointData, _this.pickupPointData)&&(identical(other.selectedDeliveryRateId, _this.selectedDeliveryRateId) || other.selectedDeliveryRateId == _this.selectedDeliveryRateId)&&(identical(other.unpriced, _this.unpriced) || other.unpriced == _this.unpriced)&&(identical(other.cost, _this.cost) || other.cost == _this.cost)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.fulfillmentType, _this.fulfillmentType) || other.fulfillmentType == _this.fulfillmentType)&&(identical(other.fulfilledAt, _this.fulfilledAt) || other.fulfilledAt == _this.fulfilledAt)&&(identical(other.deliveredAt, _this.deliveredAt) || other.deliveredAt == _this.deliveredAt)&&const DeepCollectionEquality().equals(other.items, _this.items)&&const DeepCollectionEquality().equals(other.deliveries, _this.deliveries)&&(identical(other.deliveryMethod, _this.deliveryMethod) || other.deliveryMethod == _this.deliveryMethod)&&(identical(other.stockLocation, _this.stockLocation) || other.stockLocation == _this.stockLocation)&&const DeepCollectionEquality().equals(other.deliveryRates, _this.deliveryRates)&&const DeepCollectionEquality().equals(other.taxLines, _this.taxLines)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Fulfillment;
  return Object.hashAll([runtimeType,_this.id,_this.number,_this.tracking,_this.trackingUrl,const DeepCollectionEquality().hash(_this.pickupPointData),_this.selectedDeliveryRateId,_this.unpriced,_this.cost,_this.total,_this.discountTotal,_this.additionalTaxTotal,_this.includedTaxTotal,_this.taxTotal,_this.status,_this.fulfillmentType,_this.fulfilledAt,_this.deliveredAt,const DeepCollectionEquality().hash(_this.items),const DeepCollectionEquality().hash(_this.deliveries),_this.deliveryMethod,_this.stockLocation,const DeepCollectionEquality().hash(_this.deliveryRates),const DeepCollectionEquality().hash(_this.taxLines),const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as Fulfillment;
  return 'Fulfillment(id: ${_this.id}, number: ${_this.number}, tracking: ${_this.tracking}, trackingUrl: ${_this.trackingUrl}, pickupPointData: ${_this.pickupPointData}, selectedDeliveryRateId: ${_this.selectedDeliveryRateId}, unpriced: ${_this.unpriced}, cost: ${_this.cost}, total: ${_this.total}, discountTotal: ${_this.discountTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, taxTotal: ${_this.taxTotal}, status: ${_this.status}, fulfillmentType: ${_this.fulfillmentType}, fulfilledAt: ${_this.fulfilledAt}, deliveredAt: ${_this.deliveredAt}, items: ${_this.items}, deliveries: ${_this.deliveries}, deliveryMethod: ${_this.deliveryMethod}, stockLocation: ${_this.stockLocation}, deliveryRates: ${_this.deliveryRates}, taxLines: ${_this.taxLines}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $FulfillmentCopyWith<$Res>  {
  factory $FulfillmentCopyWith(Fulfillment value, $Res Function(Fulfillment) _then) = _$FulfillmentCopyWithImpl;
@useResult
$Res call({
 String id, String number, String? tracking, String? trackingUrl, Map<String, Object?>? pickupPointData, String? selectedDeliveryRateId, bool unpriced, String? cost, String? total, String? discountTotal, String? additionalTaxTotal, String? includedTaxTotal, String? taxTotal,@JsonKey(unknownEnumValue: FulfillmentStatus.unknown) FulfillmentStatus status,@JsonKey(unknownEnumValue: FulfillmentType.unknown) FulfillmentType fulfillmentType, String? fulfilledAt, String? deliveredAt, List<FulfillmentItem> items, List<Delivery> deliveries, DeliveryMethod deliveryMethod, StockLocation stockLocation, List<DeliveryRate> deliveryRates,@JsonKey(includeIfNull: false) List<TaxLine>? taxLines,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


$DeliveryMethodCopyWith<$Res> get deliveryMethod;$StockLocationCopyWith<$Res> get stockLocation;

}
/// @nodoc
class _$FulfillmentCopyWithImpl<$Res>
    implements $FulfillmentCopyWith<$Res> {
  _$FulfillmentCopyWithImpl(this._self, this._then);

  final Fulfillment _self;
  final $Res Function(Fulfillment) _then;

/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? tracking = freezed,Object? trackingUrl = freezed,Object? pickupPointData = freezed,Object? selectedDeliveryRateId = freezed,Object? unpriced = null,Object? cost = freezed,Object? total = freezed,Object? discountTotal = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? taxTotal = freezed,Object? status = null,Object? fulfillmentType = null,Object? fulfilledAt = freezed,Object? deliveredAt = freezed,Object? items = null,Object? deliveries = null,Object? deliveryMethod = null,Object? stockLocation = null,Object? deliveryRates = null,Object? taxLines = freezed,Object? customFields = freezed,}) {
  return _then(Fulfillment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,tracking: freezed == tracking ? _self.tracking : tracking // ignore: cast_nullable_to_non_nullable
as String?,trackingUrl: freezed == trackingUrl ? _self.trackingUrl : trackingUrl // ignore: cast_nullable_to_non_nullable
as String?,pickupPointData: freezed == pickupPointData ? _self.pickupPointData : pickupPointData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,selectedDeliveryRateId: freezed == selectedDeliveryRateId ? _self.selectedDeliveryRateId : selectedDeliveryRateId // ignore: cast_nullable_to_non_nullable
as String?,unpriced: null == unpriced ? _self.unpriced : unpriced // ignore: cast_nullable_to_non_nullable
as bool,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FulfillmentStatus,fulfillmentType: null == fulfillmentType ? _self.fulfillmentType : fulfillmentType // ignore: cast_nullable_to_non_nullable
as FulfillmentType,fulfilledAt: freezed == fulfilledAt ? _self.fulfilledAt : fulfilledAt // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FulfillmentItem>,deliveries: null == deliveries ? _self.deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<Delivery>,deliveryMethod: null == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as DeliveryMethod,stockLocation: null == stockLocation ? _self.stockLocation : stockLocation // ignore: cast_nullable_to_non_nullable
as StockLocation,deliveryRates: null == deliveryRates ? _self.deliveryRates : deliveryRates // ignore: cast_nullable_to_non_nullable
as List<DeliveryRate>,taxLines: freezed == taxLines ? _self.taxLines : taxLines // ignore: cast_nullable_to_non_nullable
as List<TaxLine>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryMethodCopyWith<$Res> get deliveryMethod {
  
  return $DeliveryMethodCopyWith<$Res>(_self.deliveryMethod, (value) {
    return _then(_self.copyWith(deliveryMethod: value));
  });
}/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockLocationCopyWith<$Res> get stockLocation {
  
  return $StockLocationCopyWith<$Res>(_self.stockLocation, (value) {
    return _then(_self.copyWith(stockLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Fulfillment].
extension FulfillmentPatterns on Fulfillment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fulfillment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fulfillment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fulfillment value)  $default,){
final _that = this;
switch (_that) {
case _Fulfillment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fulfillment value)?  $default,){
final _that = this;
switch (_that) {
case _Fulfillment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String? tracking,  String? trackingUrl,  Map<String, Object?>? pickupPointData,  String? selectedDeliveryRateId,  bool unpriced,  String? cost,  String? total,  String? discountTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal, @JsonKey(unknownEnumValue: FulfillmentStatus.unknown)  FulfillmentStatus status, @JsonKey(unknownEnumValue: FulfillmentType.unknown)  FulfillmentType fulfillmentType,  String? fulfilledAt,  String? deliveredAt,  List<FulfillmentItem> items,  List<Delivery> deliveries,  DeliveryMethod deliveryMethod,  StockLocation stockLocation,  List<DeliveryRate> deliveryRates, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fulfillment() when $default != null:
return $default(_that.id,_that.number,_that.tracking,_that.trackingUrl,_that.pickupPointData,_that.selectedDeliveryRateId,_that.unpriced,_that.cost,_that.total,_that.discountTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.status,_that.fulfillmentType,_that.fulfilledAt,_that.deliveredAt,_that.items,_that.deliveries,_that.deliveryMethod,_that.stockLocation,_that.deliveryRates,_that.taxLines,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String? tracking,  String? trackingUrl,  Map<String, Object?>? pickupPointData,  String? selectedDeliveryRateId,  bool unpriced,  String? cost,  String? total,  String? discountTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal, @JsonKey(unknownEnumValue: FulfillmentStatus.unknown)  FulfillmentStatus status, @JsonKey(unknownEnumValue: FulfillmentType.unknown)  FulfillmentType fulfillmentType,  String? fulfilledAt,  String? deliveredAt,  List<FulfillmentItem> items,  List<Delivery> deliveries,  DeliveryMethod deliveryMethod,  StockLocation stockLocation,  List<DeliveryRate> deliveryRates, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Fulfillment():
return $default(_that.id,_that.number,_that.tracking,_that.trackingUrl,_that.pickupPointData,_that.selectedDeliveryRateId,_that.unpriced,_that.cost,_that.total,_that.discountTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.status,_that.fulfillmentType,_that.fulfilledAt,_that.deliveredAt,_that.items,_that.deliveries,_that.deliveryMethod,_that.stockLocation,_that.deliveryRates,_that.taxLines,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String? tracking,  String? trackingUrl,  Map<String, Object?>? pickupPointData,  String? selectedDeliveryRateId,  bool unpriced,  String? cost,  String? total,  String? discountTotal,  String? additionalTaxTotal,  String? includedTaxTotal,  String? taxTotal, @JsonKey(unknownEnumValue: FulfillmentStatus.unknown)  FulfillmentStatus status, @JsonKey(unknownEnumValue: FulfillmentType.unknown)  FulfillmentType fulfillmentType,  String? fulfilledAt,  String? deliveredAt,  List<FulfillmentItem> items,  List<Delivery> deliveries,  DeliveryMethod deliveryMethod,  StockLocation stockLocation,  List<DeliveryRate> deliveryRates, @JsonKey(includeIfNull: false)  List<TaxLine>? taxLines, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Fulfillment() when $default != null:
return $default(_that.id,_that.number,_that.tracking,_that.trackingUrl,_that.pickupPointData,_that.selectedDeliveryRateId,_that.unpriced,_that.cost,_that.total,_that.discountTotal,_that.additionalTaxTotal,_that.includedTaxTotal,_that.taxTotal,_that.status,_that.fulfillmentType,_that.fulfilledAt,_that.deliveredAt,_that.items,_that.deliveries,_that.deliveryMethod,_that.stockLocation,_that.deliveryRates,_that.taxLines,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Fulfillment extends Fulfillment {
  const _Fulfillment({required this.id, required this.number, this.tracking, this.trackingUrl, this.pickupPointData, this.selectedDeliveryRateId, required this.unpriced, this.cost, this.total, this.discountTotal, this.additionalTaxTotal, this.includedTaxTotal, this.taxTotal, @JsonKey(unknownEnumValue: FulfillmentStatus.unknown) required this.status, @JsonKey(unknownEnumValue: FulfillmentType.unknown) required this.fulfillmentType, this.fulfilledAt, this.deliveredAt, required this.items, required this.deliveries, required this.deliveryMethod, required this.stockLocation, required this.deliveryRates, @JsonKey(includeIfNull: false) this.taxLines, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _Fulfillment.fromJson(Map<String, dynamic> json) => _$FulfillmentFromJson(json);

@override final  String id;
@override final  String number;
@override final  String? tracking;
@override final  String? trackingUrl;
@override final  Map<String, Object?>? pickupPointData;
@override final  String? selectedDeliveryRateId;
@override final  bool unpriced;
@override final  String? cost;
@override final  String? total;
@override final  String? discountTotal;
@override final  String? additionalTaxTotal;
@override final  String? includedTaxTotal;
@override final  String? taxTotal;
@override@JsonKey(unknownEnumValue: FulfillmentStatus.unknown) final  FulfillmentStatus status;
@override@JsonKey(unknownEnumValue: FulfillmentType.unknown) final  FulfillmentType fulfillmentType;
@override final  String? fulfilledAt;
@override final  String? deliveredAt;
@override final  List<FulfillmentItem> items;
@override final  List<Delivery> deliveries;
@override final  DeliveryMethod deliveryMethod;
@override final  StockLocation stockLocation;
@override final  List<DeliveryRate> deliveryRates;
@override@JsonKey(includeIfNull: false) final  List<TaxLine>? taxLines;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FulfillmentCopyWith<_Fulfillment> get copyWith => __$FulfillmentCopyWithImpl<_Fulfillment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FulfillmentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fulfillment&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.tracking, tracking) || other.tracking == tracking)&&(identical(other.trackingUrl, trackingUrl) || other.trackingUrl == trackingUrl)&&const DeepCollectionEquality().equals(other.pickupPointData, pickupPointData)&&(identical(other.selectedDeliveryRateId, selectedDeliveryRateId) || other.selectedDeliveryRateId == selectedDeliveryRateId)&&(identical(other.unpriced, unpriced) || other.unpriced == unpriced)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.total, total) || other.total == total)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.status, status) || other.status == status)&&(identical(other.fulfillmentType, fulfillmentType) || other.fulfillmentType == fulfillmentType)&&(identical(other.fulfilledAt, fulfilledAt) || other.fulfilledAt == fulfilledAt)&&(identical(other.deliveredAt, deliveredAt) || other.deliveredAt == deliveredAt)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.deliveries, deliveries)&&(identical(other.deliveryMethod, deliveryMethod) || other.deliveryMethod == deliveryMethod)&&(identical(other.stockLocation, stockLocation) || other.stockLocation == stockLocation)&&const DeepCollectionEquality().equals(other.deliveryRates, deliveryRates)&&const DeepCollectionEquality().equals(other.taxLines, taxLines)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,number,tracking,trackingUrl,const DeepCollectionEquality().hash(pickupPointData),selectedDeliveryRateId,unpriced,cost,total,discountTotal,additionalTaxTotal,includedTaxTotal,taxTotal,status,fulfillmentType,fulfilledAt,deliveredAt,const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(deliveries),deliveryMethod,stockLocation,const DeepCollectionEquality().hash(deliveryRates),const DeepCollectionEquality().hash(taxLines),const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'Fulfillment(id: $id, number: $number, tracking: $tracking, trackingUrl: $trackingUrl, pickupPointData: $pickupPointData, selectedDeliveryRateId: $selectedDeliveryRateId, unpriced: $unpriced, cost: $cost, total: $total, discountTotal: $discountTotal, additionalTaxTotal: $additionalTaxTotal, includedTaxTotal: $includedTaxTotal, taxTotal: $taxTotal, status: $status, fulfillmentType: $fulfillmentType, fulfilledAt: $fulfilledAt, deliveredAt: $deliveredAt, items: $items, deliveries: $deliveries, deliveryMethod: $deliveryMethod, stockLocation: $stockLocation, deliveryRates: $deliveryRates, taxLines: $taxLines, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$FulfillmentCopyWith<$Res> implements $FulfillmentCopyWith<$Res> {
  factory _$FulfillmentCopyWith(_Fulfillment value, $Res Function(_Fulfillment) _then) = __$FulfillmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String? tracking, String? trackingUrl, Map<String, Object?>? pickupPointData, String? selectedDeliveryRateId, bool unpriced, String? cost, String? total, String? discountTotal, String? additionalTaxTotal, String? includedTaxTotal, String? taxTotal,@JsonKey(unknownEnumValue: FulfillmentStatus.unknown) FulfillmentStatus status,@JsonKey(unknownEnumValue: FulfillmentType.unknown) FulfillmentType fulfillmentType, String? fulfilledAt, String? deliveredAt, List<FulfillmentItem> items, List<Delivery> deliveries, DeliveryMethod deliveryMethod, StockLocation stockLocation, List<DeliveryRate> deliveryRates,@JsonKey(includeIfNull: false) List<TaxLine>? taxLines,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


@override $DeliveryMethodCopyWith<$Res> get deliveryMethod;@override $StockLocationCopyWith<$Res> get stockLocation;

}
/// @nodoc
class __$FulfillmentCopyWithImpl<$Res>
    implements _$FulfillmentCopyWith<$Res> {
  __$FulfillmentCopyWithImpl(this._self, this._then);

  final _Fulfillment _self;
  final $Res Function(_Fulfillment) _then;

/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? tracking = freezed,Object? trackingUrl = freezed,Object? pickupPointData = freezed,Object? selectedDeliveryRateId = freezed,Object? unpriced = null,Object? cost = freezed,Object? total = freezed,Object? discountTotal = freezed,Object? additionalTaxTotal = freezed,Object? includedTaxTotal = freezed,Object? taxTotal = freezed,Object? status = null,Object? fulfillmentType = null,Object? fulfilledAt = freezed,Object? deliveredAt = freezed,Object? items = null,Object? deliveries = null,Object? deliveryMethod = null,Object? stockLocation = null,Object? deliveryRates = null,Object? taxLines = freezed,Object? customFields = freezed,}) {
  return _then(_Fulfillment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,tracking: freezed == tracking ? _self.tracking : tracking // ignore: cast_nullable_to_non_nullable
as String?,trackingUrl: freezed == trackingUrl ? _self.trackingUrl : trackingUrl // ignore: cast_nullable_to_non_nullable
as String?,pickupPointData: freezed == pickupPointData ? _self.pickupPointData : pickupPointData // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,selectedDeliveryRateId: freezed == selectedDeliveryRateId ? _self.selectedDeliveryRateId : selectedDeliveryRateId // ignore: cast_nullable_to_non_nullable
as String?,unpriced: null == unpriced ? _self.unpriced : unpriced // ignore: cast_nullable_to_non_nullable
as bool,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FulfillmentStatus,fulfillmentType: null == fulfillmentType ? _self.fulfillmentType : fulfillmentType // ignore: cast_nullable_to_non_nullable
as FulfillmentType,fulfilledAt: freezed == fulfilledAt ? _self.fulfilledAt : fulfilledAt // ignore: cast_nullable_to_non_nullable
as String?,deliveredAt: freezed == deliveredAt ? _self.deliveredAt : deliveredAt // ignore: cast_nullable_to_non_nullable
as String?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FulfillmentItem>,deliveries: null == deliveries ? _self.deliveries : deliveries // ignore: cast_nullable_to_non_nullable
as List<Delivery>,deliveryMethod: null == deliveryMethod ? _self.deliveryMethod : deliveryMethod // ignore: cast_nullable_to_non_nullable
as DeliveryMethod,stockLocation: null == stockLocation ? _self.stockLocation : stockLocation // ignore: cast_nullable_to_non_nullable
as StockLocation,deliveryRates: null == deliveryRates ? _self.deliveryRates : deliveryRates // ignore: cast_nullable_to_non_nullable
as List<DeliveryRate>,taxLines: freezed == taxLines ? _self.taxLines : taxLines // ignore: cast_nullable_to_non_nullable
as List<TaxLine>?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryMethodCopyWith<$Res> get deliveryMethod {
  
  return $DeliveryMethodCopyWith<$Res>(_self.deliveryMethod, (value) {
    return _then(_self.copyWith(deliveryMethod: value));
  });
}/// Create a copy of Fulfillment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StockLocationCopyWith<$Res> get stockLocation {
  
  return $StockLocationCopyWith<$Res>(_self.stockLocation, (value) {
    return _then(_self.copyWith(stockLocation: value));
  });
}
}


/// @nodoc
mixin _$PaymentMethod {

 String get id; String get name; String? get description; String get type; bool get sessionRequired; bool get sourceRequired;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<PaymentMethod> get copyWith => _$PaymentMethodCopyWithImpl<PaymentMethod>(this as PaymentMethod, _$identity);

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentMethod;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethod&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.sessionRequired, _this.sessionRequired) || other.sessionRequired == _this.sessionRequired)&&(identical(other.sourceRequired, _this.sourceRequired) || other.sourceRequired == _this.sourceRequired)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentMethod;
  return Object.hash(runtimeType,_this.id,_this.name,_this.description,_this.type,_this.sessionRequired,_this.sourceRequired,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as PaymentMethod;
  return 'PaymentMethod(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, type: ${_this.type}, sessionRequired: ${_this.sessionRequired}, sourceRequired: ${_this.sourceRequired}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $PaymentMethodCopyWith<$Res>  {
  factory $PaymentMethodCopyWith(PaymentMethod value, $Res Function(PaymentMethod) _then) = _$PaymentMethodCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String type, bool sessionRequired, bool sourceRequired,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._self, this._then);

  final PaymentMethod _self;
  final $Res Function(PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? type = null,Object? sessionRequired = null,Object? sourceRequired = null,Object? customFields = freezed,}) {
  return _then(PaymentMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sessionRequired: null == sessionRequired ? _self.sessionRequired : sessionRequired // ignore: cast_nullable_to_non_nullable
as bool,sourceRequired: null == sourceRequired ? _self.sourceRequired : sourceRequired // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethod].
extension PaymentMethodPatterns on PaymentMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String type,  bool sessionRequired,  bool sourceRequired, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.sessionRequired,_that.sourceRequired,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String type,  bool sessionRequired,  bool sourceRequired, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod():
return $default(_that.id,_that.name,_that.description,_that.type,_that.sessionRequired,_that.sourceRequired,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  String type,  bool sessionRequired,  bool sourceRequired, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.type,_that.sessionRequired,_that.sourceRequired,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _PaymentMethod extends PaymentMethod {
  const _PaymentMethod({required this.id, required this.name, this.description, required this.type, required this.sessionRequired, required this.sourceRequired, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String type;
@override final  bool sessionRequired;
@override final  bool sourceRequired;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodCopyWith<_PaymentMethod> get copyWith => __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethod&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.type, type) || other.type == type)&&(identical(other.sessionRequired, sessionRequired) || other.sessionRequired == sessionRequired)&&(identical(other.sourceRequired, sourceRequired) || other.sourceRequired == sourceRequired)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,description,type,sessionRequired,sourceRequired,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'PaymentMethod(id: $id, name: $name, description: $description, type: $type, sessionRequired: $sessionRequired, sourceRequired: $sourceRequired, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodCopyWith<$Res> implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(_PaymentMethod value, $Res Function(_PaymentMethod) _then) = __$PaymentMethodCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String type, bool sessionRequired, bool sourceRequired,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(this._self, this._then);

  final _PaymentMethod _self;
  final $Res Function(_PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? type = null,Object? sessionRequired = null,Object? sourceRequired = null,Object? customFields = freezed,}) {
  return _then(_PaymentMethod(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sessionRequired: null == sessionRequired ? _self.sessionRequired : sessionRequired // ignore: cast_nullable_to_non_nullable
as bool,sourceRequired: null == sourceRequired ? _self.sourceRequired : sourceRequired // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$Payment {

 String get id; String get paymentMethodId; String? get responseCode; String get number;@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus get status; String? get amount;@JsonKey(unknownEnumValue: PaymentSourceType.unknown) PaymentSourceType? get sourceType; String? get sourceId; Map<String, Object?>? get source; PaymentMethod get paymentMethod;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Payment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.paymentMethodId, _this.paymentMethodId) || other.paymentMethodId == _this.paymentMethodId)&&(identical(other.responseCode, _this.responseCode) || other.responseCode == _this.responseCode)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.sourceType, _this.sourceType) || other.sourceType == _this.sourceType)&&(identical(other.sourceId, _this.sourceId) || other.sourceId == _this.sourceId)&&const DeepCollectionEquality().equals(other.source, _this.source)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Payment;
  return Object.hash(runtimeType,_this.id,_this.paymentMethodId,_this.responseCode,_this.number,_this.status,_this.amount,_this.sourceType,_this.sourceId,const DeepCollectionEquality().hash(_this.source),_this.paymentMethod,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Payment;
  return 'Payment(id: ${_this.id}, paymentMethodId: ${_this.paymentMethodId}, responseCode: ${_this.responseCode}, number: ${_this.number}, status: ${_this.status}, amount: ${_this.amount}, sourceType: ${_this.sourceType}, sourceId: ${_this.sourceId}, source: ${_this.source}, paymentMethod: ${_this.paymentMethod}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 String id, String paymentMethodId, String? responseCode, String number,@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status, String? amount,@JsonKey(unknownEnumValue: PaymentSourceType.unknown) PaymentSourceType? sourceType, String? sourceId, Map<String, Object?>? source, PaymentMethod paymentMethod,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


$PaymentMethodCopyWith<$Res> get paymentMethod;

}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? paymentMethodId = null,Object? responseCode = freezed,Object? number = null,Object? status = null,Object? amount = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? source = freezed,Object? paymentMethod = null,Object? customFields = freezed,}) {
  return _then(Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,responseCode: freezed == responseCode ? _self.responseCode : responseCode // ignore: cast_nullable_to_non_nullable
as String?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as PaymentSourceType?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res> get paymentMethod {
  
  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payment value)  $default,){
final _that = this;
switch (_that) {
case _Payment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payment value)?  $default,){
final _that = this;
switch (_that) {
case _Payment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String paymentMethodId,  String? responseCode,  String number, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? amount, @JsonKey(unknownEnumValue: PaymentSourceType.unknown)  PaymentSourceType? sourceType,  String? sourceId,  Map<String, Object?>? source,  PaymentMethod paymentMethod, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.paymentMethodId,_that.responseCode,_that.number,_that.status,_that.amount,_that.sourceType,_that.sourceId,_that.source,_that.paymentMethod,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String paymentMethodId,  String? responseCode,  String number, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? amount, @JsonKey(unknownEnumValue: PaymentSourceType.unknown)  PaymentSourceType? sourceType,  String? sourceId,  Map<String, Object?>? source,  PaymentMethod paymentMethod, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Payment():
return $default(_that.id,_that.paymentMethodId,_that.responseCode,_that.number,_that.status,_that.amount,_that.sourceType,_that.sourceId,_that.source,_that.paymentMethod,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String paymentMethodId,  String? responseCode,  String number, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? amount, @JsonKey(unknownEnumValue: PaymentSourceType.unknown)  PaymentSourceType? sourceType,  String? sourceId,  Map<String, Object?>? source,  PaymentMethod paymentMethod, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Payment() when $default != null:
return $default(_that.id,_that.paymentMethodId,_that.responseCode,_that.number,_that.status,_that.amount,_that.sourceType,_that.sourceId,_that.source,_that.paymentMethod,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Payment extends Payment {
  const _Payment({required this.id, required this.paymentMethodId, this.responseCode, required this.number, @JsonKey(unknownEnumValue: PaymentStatus.unknown) required this.status, this.amount, @JsonKey(unknownEnumValue: PaymentSourceType.unknown) this.sourceType, this.sourceId, this.source, required this.paymentMethod, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);

@override final  String id;
@override final  String paymentMethodId;
@override final  String? responseCode;
@override final  String number;
@override@JsonKey(unknownEnumValue: PaymentStatus.unknown) final  PaymentStatus status;
@override final  String? amount;
@override@JsonKey(unknownEnumValue: PaymentSourceType.unknown) final  PaymentSourceType? sourceType;
@override final  String? sourceId;
@override final  Map<String, Object?>? source;
@override final  PaymentMethod paymentMethod;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCopyWith<_Payment> get copyWith => __$PaymentCopyWithImpl<_Payment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payment&&(identical(other.id, id) || other.id == id)&&(identical(other.paymentMethodId, paymentMethodId) || other.paymentMethodId == paymentMethodId)&&(identical(other.responseCode, responseCode) || other.responseCode == responseCode)&&(identical(other.number, number) || other.number == number)&&(identical(other.status, status) || other.status == status)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.sourceId, sourceId) || other.sourceId == sourceId)&&const DeepCollectionEquality().equals(other.source, source)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,paymentMethodId,responseCode,number,status,amount,sourceType,sourceId,const DeepCollectionEquality().hash(source),paymentMethod,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Payment(id: $id, paymentMethodId: $paymentMethodId, responseCode: $responseCode, number: $number, status: $status, amount: $amount, sourceType: $sourceType, sourceId: $sourceId, source: $source, paymentMethod: $paymentMethod, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) _then) = __$PaymentCopyWithImpl;
@override @useResult
$Res call({
 String id, String paymentMethodId, String? responseCode, String number,@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status, String? amount,@JsonKey(unknownEnumValue: PaymentSourceType.unknown) PaymentSourceType? sourceType, String? sourceId, Map<String, Object?>? source, PaymentMethod paymentMethod,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});


@override $PaymentMethodCopyWith<$Res> get paymentMethod;

}
/// @nodoc
class __$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(this._self, this._then);

  final _Payment _self;
  final $Res Function(_Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paymentMethodId = null,Object? responseCode = freezed,Object? number = null,Object? status = null,Object? amount = freezed,Object? sourceType = freezed,Object? sourceId = freezed,Object? source = freezed,Object? paymentMethod = null,Object? customFields = freezed,}) {
  return _then(_Payment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paymentMethodId: null == paymentMethodId ? _self.paymentMethodId : paymentMethodId // ignore: cast_nullable_to_non_nullable
as String,responseCode: freezed == responseCode ? _self.responseCode : responseCode // ignore: cast_nullable_to_non_nullable
as String?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,sourceType: freezed == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as PaymentSourceType?,sourceId: freezed == sourceId ? _self.sourceId : sourceId // ignore: cast_nullable_to_non_nullable
as String?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Payment
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
mixin _$GiftCard {

 String get id; String get code;@JsonKey(unknownEnumValue: GiftCardStatus.unknown) GiftCardStatus get status;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency; String? get amount; String? get amountUsed; String? get amountAuthorized; String? get amountRemaining; String? get expiresAt; String? get redeemedAt; bool get expired; bool get active;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of GiftCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GiftCardCopyWith<GiftCard> get copyWith => _$GiftCardCopyWithImpl<GiftCard>(this as GiftCard, _$identity);

  /// Serializes this GiftCard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GiftCard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GiftCard&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.amountUsed, _this.amountUsed) || other.amountUsed == _this.amountUsed)&&(identical(other.amountAuthorized, _this.amountAuthorized) || other.amountAuthorized == _this.amountAuthorized)&&(identical(other.amountRemaining, _this.amountRemaining) || other.amountRemaining == _this.amountRemaining)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.redeemedAt, _this.redeemedAt) || other.redeemedAt == _this.redeemedAt)&&(identical(other.expired, _this.expired) || other.expired == _this.expired)&&(identical(other.active, _this.active) || other.active == _this.active)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GiftCard;
  return Object.hash(runtimeType,_this.id,_this.code,_this.status,_this.currency,_this.amount,_this.amountUsed,_this.amountAuthorized,_this.amountRemaining,_this.expiresAt,_this.redeemedAt,_this.expired,_this.active,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as GiftCard;
  return 'GiftCard(id: ${_this.id}, code: ${_this.code}, status: ${_this.status}, currency: ${_this.currency}, amount: ${_this.amount}, amountUsed: ${_this.amountUsed}, amountAuthorized: ${_this.amountAuthorized}, amountRemaining: ${_this.amountRemaining}, expiresAt: ${_this.expiresAt}, redeemedAt: ${_this.redeemedAt}, expired: ${_this.expired}, active: ${_this.active}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $GiftCardCopyWith<$Res>  {
  factory $GiftCardCopyWith(GiftCard value, $Res Function(GiftCard) _then) = _$GiftCardCopyWithImpl;
@useResult
$Res call({
 String id, String code,@JsonKey(unknownEnumValue: GiftCardStatus.unknown) GiftCardStatus status,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String? amount, String? amountUsed, String? amountAuthorized, String? amountRemaining, String? expiresAt, String? redeemedAt, bool expired, bool active,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$GiftCardCopyWithImpl<$Res>
    implements $GiftCardCopyWith<$Res> {
  _$GiftCardCopyWithImpl(this._self, this._then);

  final GiftCard _self;
  final $Res Function(GiftCard) _then;

/// Create a copy of GiftCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? status = null,Object? currency = null,Object? amount = freezed,Object? amountUsed = freezed,Object? amountAuthorized = freezed,Object? amountRemaining = freezed,Object? expiresAt = freezed,Object? redeemedAt = freezed,Object? expired = null,Object? active = null,Object? customFields = freezed,}) {
  return _then(GiftCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GiftCardStatus,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,amountUsed: freezed == amountUsed ? _self.amountUsed : amountUsed // ignore: cast_nullable_to_non_nullable
as String?,amountAuthorized: freezed == amountAuthorized ? _self.amountAuthorized : amountAuthorized // ignore: cast_nullable_to_non_nullable
as String?,amountRemaining: freezed == amountRemaining ? _self.amountRemaining : amountRemaining // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,redeemedAt: freezed == redeemedAt ? _self.redeemedAt : redeemedAt // ignore: cast_nullable_to_non_nullable
as String?,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GiftCard].
extension GiftCardPatterns on GiftCard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GiftCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GiftCard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GiftCard value)  $default,){
final _that = this;
switch (_that) {
case _GiftCard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GiftCard value)?  $default,){
final _that = this;
switch (_that) {
case _GiftCard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code, @JsonKey(unknownEnumValue: GiftCardStatus.unknown)  GiftCardStatus status, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String? amountUsed,  String? amountAuthorized,  String? amountRemaining,  String? expiresAt,  String? redeemedAt,  bool expired,  bool active, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GiftCard() when $default != null:
return $default(_that.id,_that.code,_that.status,_that.currency,_that.amount,_that.amountUsed,_that.amountAuthorized,_that.amountRemaining,_that.expiresAt,_that.redeemedAt,_that.expired,_that.active,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code, @JsonKey(unknownEnumValue: GiftCardStatus.unknown)  GiftCardStatus status, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String? amountUsed,  String? amountAuthorized,  String? amountRemaining,  String? expiresAt,  String? redeemedAt,  bool expired,  bool active, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _GiftCard():
return $default(_that.id,_that.code,_that.status,_that.currency,_that.amount,_that.amountUsed,_that.amountAuthorized,_that.amountRemaining,_that.expiresAt,_that.redeemedAt,_that.expired,_that.active,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code, @JsonKey(unknownEnumValue: GiftCardStatus.unknown)  GiftCardStatus status, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency,  String? amount,  String? amountUsed,  String? amountAuthorized,  String? amountRemaining,  String? expiresAt,  String? redeemedAt,  bool expired,  bool active, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _GiftCard() when $default != null:
return $default(_that.id,_that.code,_that.status,_that.currency,_that.amount,_that.amountUsed,_that.amountAuthorized,_that.amountRemaining,_that.expiresAt,_that.redeemedAt,_that.expired,_that.active,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _GiftCard extends GiftCard {
  const _GiftCard({required this.id, required this.code, @JsonKey(unknownEnumValue: GiftCardStatus.unknown) required this.status, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency, this.amount, this.amountUsed, this.amountAuthorized, this.amountRemaining, this.expiresAt, this.redeemedAt, required this.expired, required this.active, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _GiftCard.fromJson(Map<String, dynamic> json) => _$GiftCardFromJson(json);

@override final  String id;
@override final  String code;
@override@JsonKey(unknownEnumValue: GiftCardStatus.unknown) final  GiftCardStatus status;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;
@override final  String? amount;
@override final  String? amountUsed;
@override final  String? amountAuthorized;
@override final  String? amountRemaining;
@override final  String? expiresAt;
@override final  String? redeemedAt;
@override final  bool expired;
@override final  bool active;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of GiftCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GiftCardCopyWith<_GiftCard> get copyWith => __$GiftCardCopyWithImpl<_GiftCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GiftCardToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GiftCard&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountUsed, amountUsed) || other.amountUsed == amountUsed)&&(identical(other.amountAuthorized, amountAuthorized) || other.amountAuthorized == amountAuthorized)&&(identical(other.amountRemaining, amountRemaining) || other.amountRemaining == amountRemaining)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.redeemedAt, redeemedAt) || other.redeemedAt == redeemedAt)&&(identical(other.expired, expired) || other.expired == expired)&&(identical(other.active, active) || other.active == active)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,code,status,currency,amount,amountUsed,amountAuthorized,amountRemaining,expiresAt,redeemedAt,expired,active,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'GiftCard(id: $id, code: $code, status: $status, currency: $currency, amount: $amount, amountUsed: $amountUsed, amountAuthorized: $amountAuthorized, amountRemaining: $amountRemaining, expiresAt: $expiresAt, redeemedAt: $redeemedAt, expired: $expired, active: $active, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$GiftCardCopyWith<$Res> implements $GiftCardCopyWith<$Res> {
  factory _$GiftCardCopyWith(_GiftCard value, $Res Function(_GiftCard) _then) = __$GiftCardCopyWithImpl;
@override @useResult
$Res call({
 String id, String code,@JsonKey(unknownEnumValue: GiftCardStatus.unknown) GiftCardStatus status,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency, String? amount, String? amountUsed, String? amountAuthorized, String? amountRemaining, String? expiresAt, String? redeemedAt, bool expired, bool active,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$GiftCardCopyWithImpl<$Res>
    implements _$GiftCardCopyWith<$Res> {
  __$GiftCardCopyWithImpl(this._self, this._then);

  final _GiftCard _self;
  final $Res Function(_GiftCard) _then;

/// Create a copy of GiftCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? status = null,Object? currency = null,Object? amount = freezed,Object? amountUsed = freezed,Object? amountAuthorized = freezed,Object? amountRemaining = freezed,Object? expiresAt = freezed,Object? redeemedAt = freezed,Object? expired = null,Object? active = null,Object? customFields = freezed,}) {
  return _then(_GiftCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GiftCardStatus,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,amountUsed: freezed == amountUsed ? _self.amountUsed : amountUsed // ignore: cast_nullable_to_non_nullable
as String?,amountAuthorized: freezed == amountAuthorized ? _self.amountAuthorized : amountAuthorized // ignore: cast_nullable_to_non_nullable
as String?,amountRemaining: freezed == amountRemaining ? _self.amountRemaining : amountRemaining // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,redeemedAt: freezed == redeemedAt ? _self.redeemedAt : redeemedAt // ignore: cast_nullable_to_non_nullable
as String?,expired: null == expired ? _self.expired : expired // ignore: cast_nullable_to_non_nullable
as bool,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$StoreCredit {

 String get id; String? get amount; String? get amountUsed; String? get amountRemaining;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency;@JsonKey(includeIfNull: false) List<CustomField>? get customFields;
/// Create a copy of StoreCredit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCreditCopyWith<StoreCredit> get copyWith => _$StoreCreditCopyWithImpl<StoreCredit>(this as StoreCredit, _$identity);

  /// Serializes this StoreCredit to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StoreCredit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreCredit&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.amountUsed, _this.amountUsed) || other.amountUsed == _this.amountUsed)&&(identical(other.amountRemaining, _this.amountRemaining) || other.amountRemaining == _this.amountRemaining)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StoreCredit;
  return Object.hash(runtimeType,_this.id,_this.amount,_this.amountUsed,_this.amountRemaining,_this.currency,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as StoreCredit;
  return 'StoreCredit(id: ${_this.id}, amount: ${_this.amount}, amountUsed: ${_this.amountUsed}, amountRemaining: ${_this.amountRemaining}, currency: ${_this.currency}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $StoreCreditCopyWith<$Res>  {
  factory $StoreCreditCopyWith(StoreCredit value, $Res Function(StoreCredit) _then) = _$StoreCreditCopyWithImpl;
@useResult
$Res call({
 String id, String? amount, String? amountUsed, String? amountRemaining,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class _$StoreCreditCopyWithImpl<$Res>
    implements $StoreCreditCopyWith<$Res> {
  _$StoreCreditCopyWithImpl(this._self, this._then);

  final StoreCredit _self;
  final $Res Function(StoreCredit) _then;

/// Create a copy of StoreCredit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = freezed,Object? amountUsed = freezed,Object? amountRemaining = freezed,Object? currency = null,Object? customFields = freezed,}) {
  return _then(StoreCredit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,amountUsed: freezed == amountUsed ? _self.amountUsed : amountUsed // ignore: cast_nullable_to_non_nullable
as String?,amountRemaining: freezed == amountRemaining ? _self.amountRemaining : amountRemaining // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreCredit].
extension StoreCreditPatterns on StoreCredit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreCredit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreCredit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreCredit value)  $default,){
final _that = this;
switch (_that) {
case _StoreCredit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreCredit value)?  $default,){
final _that = this;
switch (_that) {
case _StoreCredit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? amount,  String? amountUsed,  String? amountRemaining, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreCredit() when $default != null:
return $default(_that.id,_that.amount,_that.amountUsed,_that.amountRemaining,_that.currency,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? amount,  String? amountUsed,  String? amountRemaining, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _StoreCredit():
return $default(_that.id,_that.amount,_that.amountUsed,_that.amountRemaining,_that.currency,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? amount,  String? amountUsed,  String? amountRemaining, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(includeIfNull: false)  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _StoreCredit() when $default != null:
return $default(_that.id,_that.amount,_that.amountUsed,_that.amountRemaining,_that.currency,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _StoreCredit extends StoreCredit {
  const _StoreCredit({required this.id, this.amount, this.amountUsed, this.amountRemaining, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency, @JsonKey(includeIfNull: false) this.customFields}): super._();
  factory _StoreCredit.fromJson(Map<String, dynamic> json) => _$StoreCreditFromJson(json);

@override final  String id;
@override final  String? amount;
@override final  String? amountUsed;
@override final  String? amountRemaining;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;
@override@JsonKey(includeIfNull: false) final  List<CustomField>? customFields;

/// Create a copy of StoreCredit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCreditCopyWith<_StoreCredit> get copyWith => __$StoreCreditCopyWithImpl<_StoreCredit>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreCreditToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreCredit&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountUsed, amountUsed) || other.amountUsed == amountUsed)&&(identical(other.amountRemaining, amountRemaining) || other.amountRemaining == amountRemaining)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,amount,amountUsed,amountRemaining,currency,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'StoreCredit(id: $id, amount: $amount, amountUsed: $amountUsed, amountRemaining: $amountRemaining, currency: $currency, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$StoreCreditCopyWith<$Res> implements $StoreCreditCopyWith<$Res> {
  factory _$StoreCreditCopyWith(_StoreCredit value, $Res Function(_StoreCredit) _then) = __$StoreCreditCopyWithImpl;
@override @useResult
$Res call({
 String id, String? amount, String? amountUsed, String? amountRemaining,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency,@JsonKey(includeIfNull: false) List<CustomField>? customFields
});




}
/// @nodoc
class __$StoreCreditCopyWithImpl<$Res>
    implements _$StoreCreditCopyWith<$Res> {
  __$StoreCreditCopyWithImpl(this._self, this._then);

  final _StoreCredit _self;
  final $Res Function(_StoreCredit) _then;

/// Create a copy of StoreCredit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = freezed,Object? amountUsed = freezed,Object? amountRemaining = freezed,Object? currency = null,Object? customFields = freezed,}) {
  return _then(_StoreCredit(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,amountUsed: freezed == amountUsed ? _self.amountUsed : amountUsed // ignore: cast_nullable_to_non_nullable
as String?,amountRemaining: freezed == amountRemaining ? _self.amountRemaining : amountRemaining // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}


/// @nodoc
mixin _$Cart {

 String? get marketId; String? get channelId; String? get preferredStockLocationId; String? get companyId; String? get companyName; bool get poNumberRequired; String? get poDocumentFilename; int? get poDocumentByteSize; String get number; String get token; String? get email; String? get customerNote; String? get poNumber;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currency;@JsonKey(unknownEnumValue: LocaleCode.unknown) LocaleCode? get locale; int get totalQuantity; List<CartWarning> get warnings; String? get couponCode; String? get itemTotal; String? get discountTotal; String? get taxTotal; String? get includedTaxTotal; String? get additionalTaxTotal; String? get deliveryTotal; String? get feeTotal; String? get giftCardTotal; String? get storeCreditTotal; String? get total; String? get amountDue; bool get coveredByStoreCredit; List<Payment> get payments; String? get adjustmentTotal; String get currentStep; List<String> get completedSteps; List<CheckoutRequirement> get requirements; String? get orderMinimum; String? get orderMinimumShortfall; bool? get belowOrderMinimum; FreightSummary? get freightSummary; bool get shippingEqBillingAddress; List<AppliedPromotion> get discounts; List<Fee> get fees; List<LineItem> get items; List<Fulfillment> get fulfillments; Address? get billingAddress; Address? get shippingAddress; List<PaymentMethod> get paymentMethods; GiftCard? get giftCard; Market? get market;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Cart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&(identical(other.marketId, _this.marketId) || other.marketId == _this.marketId)&&(identical(other.channelId, _this.channelId) || other.channelId == _this.channelId)&&(identical(other.preferredStockLocationId, _this.preferredStockLocationId) || other.preferredStockLocationId == _this.preferredStockLocationId)&&(identical(other.companyId, _this.companyId) || other.companyId == _this.companyId)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.poNumberRequired, _this.poNumberRequired) || other.poNumberRequired == _this.poNumberRequired)&&(identical(other.poDocumentFilename, _this.poDocumentFilename) || other.poDocumentFilename == _this.poDocumentFilename)&&(identical(other.poDocumentByteSize, _this.poDocumentByteSize) || other.poDocumentByteSize == _this.poDocumentByteSize)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.customerNote, _this.customerNote) || other.customerNote == _this.customerNote)&&(identical(other.poNumber, _this.poNumber) || other.poNumber == _this.poNumber)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&(identical(other.totalQuantity, _this.totalQuantity) || other.totalQuantity == _this.totalQuantity)&&const DeepCollectionEquality().equals(other.warnings, _this.warnings)&&(identical(other.couponCode, _this.couponCode) || other.couponCode == _this.couponCode)&&(identical(other.itemTotal, _this.itemTotal) || other.itemTotal == _this.itemTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.deliveryTotal, _this.deliveryTotal) || other.deliveryTotal == _this.deliveryTotal)&&(identical(other.feeTotal, _this.feeTotal) || other.feeTotal == _this.feeTotal)&&(identical(other.giftCardTotal, _this.giftCardTotal) || other.giftCardTotal == _this.giftCardTotal)&&(identical(other.storeCreditTotal, _this.storeCreditTotal) || other.storeCreditTotal == _this.storeCreditTotal)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.amountDue, _this.amountDue) || other.amountDue == _this.amountDue)&&(identical(other.coveredByStoreCredit, _this.coveredByStoreCredit) || other.coveredByStoreCredit == _this.coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, _this.payments)&&(identical(other.adjustmentTotal, _this.adjustmentTotal) || other.adjustmentTotal == _this.adjustmentTotal)&&(identical(other.currentStep, _this.currentStep) || other.currentStep == _this.currentStep)&&const DeepCollectionEquality().equals(other.completedSteps, _this.completedSteps)&&const DeepCollectionEquality().equals(other.requirements, _this.requirements)&&(identical(other.orderMinimum, _this.orderMinimum) || other.orderMinimum == _this.orderMinimum)&&(identical(other.orderMinimumShortfall, _this.orderMinimumShortfall) || other.orderMinimumShortfall == _this.orderMinimumShortfall)&&(identical(other.belowOrderMinimum, _this.belowOrderMinimum) || other.belowOrderMinimum == _this.belowOrderMinimum)&&(identical(other.freightSummary, _this.freightSummary) || other.freightSummary == _this.freightSummary)&&(identical(other.shippingEqBillingAddress, _this.shippingEqBillingAddress) || other.shippingEqBillingAddress == _this.shippingEqBillingAddress)&&const DeepCollectionEquality().equals(other.discounts, _this.discounts)&&const DeepCollectionEquality().equals(other.fees, _this.fees)&&const DeepCollectionEquality().equals(other.items, _this.items)&&const DeepCollectionEquality().equals(other.fulfillments, _this.fulfillments)&&(identical(other.billingAddress, _this.billingAddress) || other.billingAddress == _this.billingAddress)&&(identical(other.shippingAddress, _this.shippingAddress) || other.shippingAddress == _this.shippingAddress)&&const DeepCollectionEquality().equals(other.paymentMethods, _this.paymentMethods)&&(identical(other.giftCard, _this.giftCard) || other.giftCard == _this.giftCard)&&(identical(other.market, _this.market) || other.market == _this.market));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Cart;
  return Object.hashAll([runtimeType,_this.marketId,_this.channelId,_this.preferredStockLocationId,_this.companyId,_this.companyName,_this.poNumberRequired,_this.poDocumentFilename,_this.poDocumentByteSize,_this.number,_this.token,_this.email,_this.customerNote,_this.poNumber,_this.currency,_this.locale,_this.totalQuantity,const DeepCollectionEquality().hash(_this.warnings),_this.couponCode,_this.itemTotal,_this.discountTotal,_this.taxTotal,_this.includedTaxTotal,_this.additionalTaxTotal,_this.deliveryTotal,_this.feeTotal,_this.giftCardTotal,_this.storeCreditTotal,_this.total,_this.amountDue,_this.coveredByStoreCredit,const DeepCollectionEquality().hash(_this.payments),_this.adjustmentTotal,_this.currentStep,const DeepCollectionEquality().hash(_this.completedSteps),const DeepCollectionEquality().hash(_this.requirements),_this.orderMinimum,_this.orderMinimumShortfall,_this.belowOrderMinimum,_this.freightSummary,_this.shippingEqBillingAddress,const DeepCollectionEquality().hash(_this.discounts),const DeepCollectionEquality().hash(_this.fees),const DeepCollectionEquality().hash(_this.items),const DeepCollectionEquality().hash(_this.fulfillments),_this.billingAddress,_this.shippingAddress,const DeepCollectionEquality().hash(_this.paymentMethods),_this.giftCard,_this.market]);
}

@override
String toString() {
  final _this = this as Cart;
  return 'Cart(marketId: ${_this.marketId}, channelId: ${_this.channelId}, preferredStockLocationId: ${_this.preferredStockLocationId}, companyId: ${_this.companyId}, companyName: ${_this.companyName}, poNumberRequired: ${_this.poNumberRequired}, poDocumentFilename: ${_this.poDocumentFilename}, poDocumentByteSize: ${_this.poDocumentByteSize}, number: ${_this.number}, token: ${_this.token}, email: ${_this.email}, customerNote: ${_this.customerNote}, poNumber: ${_this.poNumber}, currency: ${_this.currency}, locale: ${_this.locale}, totalQuantity: ${_this.totalQuantity}, warnings: ${_this.warnings}, couponCode: ${_this.couponCode}, itemTotal: ${_this.itemTotal}, discountTotal: ${_this.discountTotal}, taxTotal: ${_this.taxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, deliveryTotal: ${_this.deliveryTotal}, feeTotal: ${_this.feeTotal}, giftCardTotal: ${_this.giftCardTotal}, storeCreditTotal: ${_this.storeCreditTotal}, total: ${_this.total}, amountDue: ${_this.amountDue}, coveredByStoreCredit: ${_this.coveredByStoreCredit}, payments: ${_this.payments}, adjustmentTotal: ${_this.adjustmentTotal}, currentStep: ${_this.currentStep}, completedSteps: ${_this.completedSteps}, requirements: ${_this.requirements}, orderMinimum: ${_this.orderMinimum}, orderMinimumShortfall: ${_this.orderMinimumShortfall}, belowOrderMinimum: ${_this.belowOrderMinimum}, freightSummary: ${_this.freightSummary}, shippingEqBillingAddress: ${_this.shippingEqBillingAddress}, discounts: ${_this.discounts}, fees: ${_this.fees}, items: ${_this.items}, fulfillments: ${_this.fulfillments}, billingAddress: ${_this.billingAddress}, shippingAddress: ${_this.shippingAddress}, paymentMethods: ${_this.paymentMethods}, giftCard: ${_this.giftCard}, market: ${_this.market})';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 String? marketId, String? channelId, String? preferredStockLocationId, String? companyId, String? companyName, bool poNumberRequired, String? poDocumentFilename, int? poDocumentByteSize, String number, String token, String? email, String? customerNote, String? poNumber,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency,@JsonKey(unknownEnumValue: LocaleCode.unknown) LocaleCode? locale, int totalQuantity, List<CartWarning> warnings, String? couponCode, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, String? adjustmentTotal, String currentStep, List<String> completedSteps, List<CheckoutRequirement> requirements, String? orderMinimum, String? orderMinimumShortfall, bool? belowOrderMinimum, FreightSummary? freightSummary, bool shippingEqBillingAddress, List<AppliedPromotion> discounts, List<Fee> fees, List<LineItem> items, List<Fulfillment> fulfillments, Address? billingAddress, Address? shippingAddress, List<PaymentMethod> paymentMethods, GiftCard? giftCard, Market? market
});


$FreightSummaryCopyWith<$Res>? get freightSummary;$AddressCopyWith<$Res>? get billingAddress;$AddressCopyWith<$Res>? get shippingAddress;$GiftCardCopyWith<$Res>? get giftCard;$MarketCopyWith<$Res>? get market;

}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marketId = freezed,Object? channelId = freezed,Object? preferredStockLocationId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? poNumberRequired = null,Object? poDocumentFilename = freezed,Object? poDocumentByteSize = freezed,Object? number = null,Object? token = null,Object? email = freezed,Object? customerNote = freezed,Object? poNumber = freezed,Object? currency = null,Object? locale = freezed,Object? totalQuantity = null,Object? warnings = null,Object? couponCode = freezed,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? adjustmentTotal = freezed,Object? currentStep = null,Object? completedSteps = null,Object? requirements = null,Object? orderMinimum = freezed,Object? orderMinimumShortfall = freezed,Object? belowOrderMinimum = freezed,Object? freightSummary = freezed,Object? shippingEqBillingAddress = null,Object? discounts = null,Object? fees = null,Object? items = null,Object? fulfillments = null,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? paymentMethods = null,Object? giftCard = freezed,Object? market = freezed,}) {
  return _then(Cart(
marketId: freezed == marketId ? _self.marketId : marketId // ignore: cast_nullable_to_non_nullable
as String?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,preferredStockLocationId: freezed == preferredStockLocationId ? _self.preferredStockLocationId : preferredStockLocationId // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,poNumberRequired: null == poNumberRequired ? _self.poNumberRequired : poNumberRequired // ignore: cast_nullable_to_non_nullable
as bool,poDocumentFilename: freezed == poDocumentFilename ? _self.poDocumentFilename : poDocumentFilename // ignore: cast_nullable_to_non_nullable
as String?,poDocumentByteSize: freezed == poDocumentByteSize ? _self.poDocumentByteSize : poDocumentByteSize // ignore: cast_nullable_to_non_nullable
as int?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,poNumber: freezed == poNumber ? _self.poNumber : poNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as LocaleCode?,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<CartWarning>,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,itemTotal: freezed == itemTotal ? _self.itemTotal : itemTotal // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,deliveryTotal: freezed == deliveryTotal ? _self.deliveryTotal : deliveryTotal // ignore: cast_nullable_to_non_nullable
as String?,feeTotal: freezed == feeTotal ? _self.feeTotal : feeTotal // ignore: cast_nullable_to_non_nullable
as String?,giftCardTotal: freezed == giftCardTotal ? _self.giftCardTotal : giftCardTotal // ignore: cast_nullable_to_non_nullable
as String?,storeCreditTotal: freezed == storeCreditTotal ? _self.storeCreditTotal : storeCreditTotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as String?,coveredByStoreCredit: null == coveredByStoreCredit ? _self.coveredByStoreCredit : coveredByStoreCredit // ignore: cast_nullable_to_non_nullable
as bool,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<Payment>,adjustmentTotal: freezed == adjustmentTotal ? _self.adjustmentTotal : adjustmentTotal // ignore: cast_nullable_to_non_nullable
as String?,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as String,completedSteps: null == completedSteps ? _self.completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<String>,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as List<CheckoutRequirement>,orderMinimum: freezed == orderMinimum ? _self.orderMinimum : orderMinimum // ignore: cast_nullable_to_non_nullable
as String?,orderMinimumShortfall: freezed == orderMinimumShortfall ? _self.orderMinimumShortfall : orderMinimumShortfall // ignore: cast_nullable_to_non_nullable
as String?,belowOrderMinimum: freezed == belowOrderMinimum ? _self.belowOrderMinimum : belowOrderMinimum // ignore: cast_nullable_to_non_nullable
as bool?,freightSummary: freezed == freightSummary ? _self.freightSummary : freightSummary // ignore: cast_nullable_to_non_nullable
as FreightSummary?,shippingEqBillingAddress: null == shippingEqBillingAddress ? _self.shippingEqBillingAddress : shippingEqBillingAddress // ignore: cast_nullable_to_non_nullable
as bool,discounts: null == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<AppliedPromotion>,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as List<Fee>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LineItem>,fulfillments: null == fulfillments ? _self.fulfillments : fulfillments // ignore: cast_nullable_to_non_nullable
as List<Fulfillment>,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethods: null == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethod>,giftCard: freezed == giftCard ? _self.giftCard : giftCard // ignore: cast_nullable_to_non_nullable
as GiftCard?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,
  ));
}
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightSummaryCopyWith<$Res>? get freightSummary {
    if (_self.freightSummary == null) {
    return null;
  }

  return $FreightSummaryCopyWith<$Res>(_self.freightSummary!, (value) {
    return _then(_self.copyWith(freightSummary: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get billingAddress {
    if (_self.billingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.billingAddress!, (value) {
    return _then(_self.copyWith(billingAddress: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GiftCardCopyWith<$Res>? get giftCard {
    if (_self.giftCard == null) {
    return null;
  }

  return $GiftCardCopyWith<$Res>(_self.giftCard!, (value) {
    return _then(_self.copyWith(giftCard: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketCopyWith<$Res>? get market {
    if (_self.market == null) {
    return null;
  }

  return $MarketCopyWith<$Res>(_self.market!, (value) {
    return _then(_self.copyWith(market: value));
  });
}
}


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? marketId,  String? channelId,  String? preferredStockLocationId,  String? companyId,  String? companyName,  bool poNumberRequired,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String token,  String? email,  String? customerNote,  String? poNumber, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(unknownEnumValue: LocaleCode.unknown)  LocaleCode? locale,  int totalQuantity,  List<CartWarning> warnings,  String? couponCode,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  String currentStep,  List<String> completedSteps,  List<CheckoutRequirement> requirements,  String? orderMinimum,  String? orderMinimumShortfall,  bool? belowOrderMinimum,  FreightSummary? freightSummary,  bool shippingEqBillingAddress,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  List<PaymentMethod> paymentMethods,  GiftCard? giftCard,  Market? market)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.marketId,_that.channelId,_that.preferredStockLocationId,_that.companyId,_that.companyName,_that.poNumberRequired,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.token,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.warnings,_that.couponCode,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.currentStep,_that.completedSteps,_that.requirements,_that.orderMinimum,_that.orderMinimumShortfall,_that.belowOrderMinimum,_that.freightSummary,_that.shippingEqBillingAddress,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.paymentMethods,_that.giftCard,_that.market);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? marketId,  String? channelId,  String? preferredStockLocationId,  String? companyId,  String? companyName,  bool poNumberRequired,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String token,  String? email,  String? customerNote,  String? poNumber, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(unknownEnumValue: LocaleCode.unknown)  LocaleCode? locale,  int totalQuantity,  List<CartWarning> warnings,  String? couponCode,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  String currentStep,  List<String> completedSteps,  List<CheckoutRequirement> requirements,  String? orderMinimum,  String? orderMinimumShortfall,  bool? belowOrderMinimum,  FreightSummary? freightSummary,  bool shippingEqBillingAddress,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  List<PaymentMethod> paymentMethods,  GiftCard? giftCard,  Market? market)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.marketId,_that.channelId,_that.preferredStockLocationId,_that.companyId,_that.companyName,_that.poNumberRequired,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.token,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.warnings,_that.couponCode,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.currentStep,_that.completedSteps,_that.requirements,_that.orderMinimum,_that.orderMinimumShortfall,_that.belowOrderMinimum,_that.freightSummary,_that.shippingEqBillingAddress,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.paymentMethods,_that.giftCard,_that.market);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? marketId,  String? channelId,  String? preferredStockLocationId,  String? companyId,  String? companyName,  bool poNumberRequired,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String token,  String? email,  String? customerNote,  String? poNumber, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currency, @JsonKey(unknownEnumValue: LocaleCode.unknown)  LocaleCode? locale,  int totalQuantity,  List<CartWarning> warnings,  String? couponCode,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  String currentStep,  List<String> completedSteps,  List<CheckoutRequirement> requirements,  String? orderMinimum,  String? orderMinimumShortfall,  bool? belowOrderMinimum,  FreightSummary? freightSummary,  bool shippingEqBillingAddress,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  List<PaymentMethod> paymentMethods,  GiftCard? giftCard,  Market? market)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.marketId,_that.channelId,_that.preferredStockLocationId,_that.companyId,_that.companyName,_that.poNumberRequired,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.token,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.warnings,_that.couponCode,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.currentStep,_that.completedSteps,_that.requirements,_that.orderMinimum,_that.orderMinimumShortfall,_that.belowOrderMinimum,_that.freightSummary,_that.shippingEqBillingAddress,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.paymentMethods,_that.giftCard,_that.market);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _Cart extends Cart {
  const _Cart({this.marketId, this.channelId, this.preferredStockLocationId, this.companyId, this.companyName, required this.poNumberRequired, this.poDocumentFilename, this.poDocumentByteSize, required this.number, required this.token, this.email, this.customerNote, this.poNumber, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currency, @JsonKey(unknownEnumValue: LocaleCode.unknown) this.locale, required this.totalQuantity, required this.warnings, this.couponCode, this.itemTotal, this.discountTotal, this.taxTotal, this.includedTaxTotal, this.additionalTaxTotal, this.deliveryTotal, this.feeTotal, this.giftCardTotal, this.storeCreditTotal, this.total, this.amountDue, required this.coveredByStoreCredit, required this.payments, this.adjustmentTotal, required this.currentStep, required this.completedSteps, required this.requirements, this.orderMinimum, this.orderMinimumShortfall, this.belowOrderMinimum, this.freightSummary, required this.shippingEqBillingAddress, required this.discounts, required this.fees, required this.items, required this.fulfillments, this.billingAddress, this.shippingAddress, required this.paymentMethods, this.giftCard, this.market}): super._();
  factory _Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

@override final  String? marketId;
@override final  String? channelId;
@override final  String? preferredStockLocationId;
@override final  String? companyId;
@override final  String? companyName;
@override final  bool poNumberRequired;
@override final  String? poDocumentFilename;
@override final  int? poDocumentByteSize;
@override final  String number;
@override final  String token;
@override final  String? email;
@override final  String? customerNote;
@override final  String? poNumber;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currency;
@override@JsonKey(unknownEnumValue: LocaleCode.unknown) final  LocaleCode? locale;
@override final  int totalQuantity;
@override final  List<CartWarning> warnings;
@override final  String? couponCode;
@override final  String? itemTotal;
@override final  String? discountTotal;
@override final  String? taxTotal;
@override final  String? includedTaxTotal;
@override final  String? additionalTaxTotal;
@override final  String? deliveryTotal;
@override final  String? feeTotal;
@override final  String? giftCardTotal;
@override final  String? storeCreditTotal;
@override final  String? total;
@override final  String? amountDue;
@override final  bool coveredByStoreCredit;
@override final  List<Payment> payments;
@override final  String? adjustmentTotal;
@override final  String currentStep;
@override final  List<String> completedSteps;
@override final  List<CheckoutRequirement> requirements;
@override final  String? orderMinimum;
@override final  String? orderMinimumShortfall;
@override final  bool? belowOrderMinimum;
@override final  FreightSummary? freightSummary;
@override final  bool shippingEqBillingAddress;
@override final  List<AppliedPromotion> discounts;
@override final  List<Fee> fees;
@override final  List<LineItem> items;
@override final  List<Fulfillment> fulfillments;
@override final  Address? billingAddress;
@override final  Address? shippingAddress;
@override final  List<PaymentMethod> paymentMethods;
@override final  GiftCard? giftCard;
@override final  Market? market;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&(identical(other.marketId, marketId) || other.marketId == marketId)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.preferredStockLocationId, preferredStockLocationId) || other.preferredStockLocationId == preferredStockLocationId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.poNumberRequired, poNumberRequired) || other.poNumberRequired == poNumberRequired)&&(identical(other.poDocumentFilename, poDocumentFilename) || other.poDocumentFilename == poDocumentFilename)&&(identical(other.poDocumentByteSize, poDocumentByteSize) || other.poDocumentByteSize == poDocumentByteSize)&&(identical(other.number, number) || other.number == number)&&(identical(other.token, token) || other.token == token)&&(identical(other.email, email) || other.email == email)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.poNumber, poNumber) || other.poNumber == poNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&const DeepCollectionEquality().equals(other.warnings, warnings)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode)&&(identical(other.itemTotal, itemTotal) || other.itemTotal == itemTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.deliveryTotal, deliveryTotal) || other.deliveryTotal == deliveryTotal)&&(identical(other.feeTotal, feeTotal) || other.feeTotal == feeTotal)&&(identical(other.giftCardTotal, giftCardTotal) || other.giftCardTotal == giftCardTotal)&&(identical(other.storeCreditTotal, storeCreditTotal) || other.storeCreditTotal == storeCreditTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.coveredByStoreCredit, coveredByStoreCredit) || other.coveredByStoreCredit == coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.adjustmentTotal, adjustmentTotal) || other.adjustmentTotal == adjustmentTotal)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&const DeepCollectionEquality().equals(other.completedSteps, completedSteps)&&const DeepCollectionEquality().equals(other.requirements, requirements)&&(identical(other.orderMinimum, orderMinimum) || other.orderMinimum == orderMinimum)&&(identical(other.orderMinimumShortfall, orderMinimumShortfall) || other.orderMinimumShortfall == orderMinimumShortfall)&&(identical(other.belowOrderMinimum, belowOrderMinimum) || other.belowOrderMinimum == belowOrderMinimum)&&(identical(other.freightSummary, freightSummary) || other.freightSummary == freightSummary)&&(identical(other.shippingEqBillingAddress, shippingEqBillingAddress) || other.shippingEqBillingAddress == shippingEqBillingAddress)&&const DeepCollectionEquality().equals(other.discounts, discounts)&&const DeepCollectionEquality().equals(other.fees, fees)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.fulfillments, fulfillments)&&(identical(other.billingAddress, billingAddress) || other.billingAddress == billingAddress)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&const DeepCollectionEquality().equals(other.paymentMethods, paymentMethods)&&(identical(other.giftCard, giftCard) || other.giftCard == giftCard)&&(identical(other.market, market) || other.market == market));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,marketId,channelId,preferredStockLocationId,companyId,companyName,poNumberRequired,poDocumentFilename,poDocumentByteSize,number,token,email,customerNote,poNumber,currency,locale,totalQuantity,const DeepCollectionEquality().hash(warnings),couponCode,itemTotal,discountTotal,taxTotal,includedTaxTotal,additionalTaxTotal,deliveryTotal,feeTotal,giftCardTotal,storeCreditTotal,total,amountDue,coveredByStoreCredit,const DeepCollectionEquality().hash(payments),adjustmentTotal,currentStep,const DeepCollectionEquality().hash(completedSteps),const DeepCollectionEquality().hash(requirements),orderMinimum,orderMinimumShortfall,belowOrderMinimum,freightSummary,shippingEqBillingAddress,const DeepCollectionEquality().hash(discounts),const DeepCollectionEquality().hash(fees),const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(fulfillments),billingAddress,shippingAddress,const DeepCollectionEquality().hash(paymentMethods),giftCard,market]);
}

@override
String toString() {
    return 'Cart(marketId: $marketId, channelId: $channelId, preferredStockLocationId: $preferredStockLocationId, companyId: $companyId, companyName: $companyName, poNumberRequired: $poNumberRequired, poDocumentFilename: $poDocumentFilename, poDocumentByteSize: $poDocumentByteSize, number: $number, token: $token, email: $email, customerNote: $customerNote, poNumber: $poNumber, currency: $currency, locale: $locale, totalQuantity: $totalQuantity, warnings: $warnings, couponCode: $couponCode, itemTotal: $itemTotal, discountTotal: $discountTotal, taxTotal: $taxTotal, includedTaxTotal: $includedTaxTotal, additionalTaxTotal: $additionalTaxTotal, deliveryTotal: $deliveryTotal, feeTotal: $feeTotal, giftCardTotal: $giftCardTotal, storeCreditTotal: $storeCreditTotal, total: $total, amountDue: $amountDue, coveredByStoreCredit: $coveredByStoreCredit, payments: $payments, adjustmentTotal: $adjustmentTotal, currentStep: $currentStep, completedSteps: $completedSteps, requirements: $requirements, orderMinimum: $orderMinimum, orderMinimumShortfall: $orderMinimumShortfall, belowOrderMinimum: $belowOrderMinimum, freightSummary: $freightSummary, shippingEqBillingAddress: $shippingEqBillingAddress, discounts: $discounts, fees: $fees, items: $items, fulfillments: $fulfillments, billingAddress: $billingAddress, shippingAddress: $shippingAddress, paymentMethods: $paymentMethods, giftCard: $giftCard, market: $market)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 String? marketId, String? channelId, String? preferredStockLocationId, String? companyId, String? companyName, bool poNumberRequired, String? poDocumentFilename, int? poDocumentByteSize, String number, String token, String? email, String? customerNote, String? poNumber,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currency,@JsonKey(unknownEnumValue: LocaleCode.unknown) LocaleCode? locale, int totalQuantity, List<CartWarning> warnings, String? couponCode, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, String? adjustmentTotal, String currentStep, List<String> completedSteps, List<CheckoutRequirement> requirements, String? orderMinimum, String? orderMinimumShortfall, bool? belowOrderMinimum, FreightSummary? freightSummary, bool shippingEqBillingAddress, List<AppliedPromotion> discounts, List<Fee> fees, List<LineItem> items, List<Fulfillment> fulfillments, Address? billingAddress, Address? shippingAddress, List<PaymentMethod> paymentMethods, GiftCard? giftCard, Market? market
});


@override $FreightSummaryCopyWith<$Res>? get freightSummary;@override $AddressCopyWith<$Res>? get billingAddress;@override $AddressCopyWith<$Res>? get shippingAddress;@override $GiftCardCopyWith<$Res>? get giftCard;@override $MarketCopyWith<$Res>? get market;

}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marketId = freezed,Object? channelId = freezed,Object? preferredStockLocationId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? poNumberRequired = null,Object? poDocumentFilename = freezed,Object? poDocumentByteSize = freezed,Object? number = null,Object? token = null,Object? email = freezed,Object? customerNote = freezed,Object? poNumber = freezed,Object? currency = null,Object? locale = freezed,Object? totalQuantity = null,Object? warnings = null,Object? couponCode = freezed,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? adjustmentTotal = freezed,Object? currentStep = null,Object? completedSteps = null,Object? requirements = null,Object? orderMinimum = freezed,Object? orderMinimumShortfall = freezed,Object? belowOrderMinimum = freezed,Object? freightSummary = freezed,Object? shippingEqBillingAddress = null,Object? discounts = null,Object? fees = null,Object? items = null,Object? fulfillments = null,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? paymentMethods = null,Object? giftCard = freezed,Object? market = freezed,}) {
  return _then(_Cart(
marketId: freezed == marketId ? _self.marketId : marketId // ignore: cast_nullable_to_non_nullable
as String?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,preferredStockLocationId: freezed == preferredStockLocationId ? _self.preferredStockLocationId : preferredStockLocationId // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,poNumberRequired: null == poNumberRequired ? _self.poNumberRequired : poNumberRequired // ignore: cast_nullable_to_non_nullable
as bool,poDocumentFilename: freezed == poDocumentFilename ? _self.poDocumentFilename : poDocumentFilename // ignore: cast_nullable_to_non_nullable
as String?,poDocumentByteSize: freezed == poDocumentByteSize ? _self.poDocumentByteSize : poDocumentByteSize // ignore: cast_nullable_to_non_nullable
as int?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,poNumber: freezed == poNumber ? _self.poNumber : poNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as LocaleCode?,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,warnings: null == warnings ? _self.warnings : warnings // ignore: cast_nullable_to_non_nullable
as List<CartWarning>,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,itemTotal: freezed == itemTotal ? _self.itemTotal : itemTotal // ignore: cast_nullable_to_non_nullable
as String?,discountTotal: freezed == discountTotal ? _self.discountTotal : discountTotal // ignore: cast_nullable_to_non_nullable
as String?,taxTotal: freezed == taxTotal ? _self.taxTotal : taxTotal // ignore: cast_nullable_to_non_nullable
as String?,includedTaxTotal: freezed == includedTaxTotal ? _self.includedTaxTotal : includedTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,additionalTaxTotal: freezed == additionalTaxTotal ? _self.additionalTaxTotal : additionalTaxTotal // ignore: cast_nullable_to_non_nullable
as String?,deliveryTotal: freezed == deliveryTotal ? _self.deliveryTotal : deliveryTotal // ignore: cast_nullable_to_non_nullable
as String?,feeTotal: freezed == feeTotal ? _self.feeTotal : feeTotal // ignore: cast_nullable_to_non_nullable
as String?,giftCardTotal: freezed == giftCardTotal ? _self.giftCardTotal : giftCardTotal // ignore: cast_nullable_to_non_nullable
as String?,storeCreditTotal: freezed == storeCreditTotal ? _self.storeCreditTotal : storeCreditTotal // ignore: cast_nullable_to_non_nullable
as String?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String?,amountDue: freezed == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as String?,coveredByStoreCredit: null == coveredByStoreCredit ? _self.coveredByStoreCredit : coveredByStoreCredit // ignore: cast_nullable_to_non_nullable
as bool,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<Payment>,adjustmentTotal: freezed == adjustmentTotal ? _self.adjustmentTotal : adjustmentTotal // ignore: cast_nullable_to_non_nullable
as String?,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as String,completedSteps: null == completedSteps ? _self.completedSteps : completedSteps // ignore: cast_nullable_to_non_nullable
as List<String>,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as List<CheckoutRequirement>,orderMinimum: freezed == orderMinimum ? _self.orderMinimum : orderMinimum // ignore: cast_nullable_to_non_nullable
as String?,orderMinimumShortfall: freezed == orderMinimumShortfall ? _self.orderMinimumShortfall : orderMinimumShortfall // ignore: cast_nullable_to_non_nullable
as String?,belowOrderMinimum: freezed == belowOrderMinimum ? _self.belowOrderMinimum : belowOrderMinimum // ignore: cast_nullable_to_non_nullable
as bool?,freightSummary: freezed == freightSummary ? _self.freightSummary : freightSummary // ignore: cast_nullable_to_non_nullable
as FreightSummary?,shippingEqBillingAddress: null == shippingEqBillingAddress ? _self.shippingEqBillingAddress : shippingEqBillingAddress // ignore: cast_nullable_to_non_nullable
as bool,discounts: null == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<AppliedPromotion>,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as List<Fee>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LineItem>,fulfillments: null == fulfillments ? _self.fulfillments : fulfillments // ignore: cast_nullable_to_non_nullable
as List<Fulfillment>,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethods: null == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<PaymentMethod>,giftCard: freezed == giftCard ? _self.giftCard : giftCard // ignore: cast_nullable_to_non_nullable
as GiftCard?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,
  ));
}

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FreightSummaryCopyWith<$Res>? get freightSummary {
    if (_self.freightSummary == null) {
    return null;
  }

  return $FreightSummaryCopyWith<$Res>(_self.freightSummary!, (value) {
    return _then(_self.copyWith(freightSummary: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get billingAddress {
    if (_self.billingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.billingAddress!, (value) {
    return _then(_self.copyWith(billingAddress: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get shippingAddress {
    if (_self.shippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.shippingAddress!, (value) {
    return _then(_self.copyWith(shippingAddress: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GiftCardCopyWith<$Res>? get giftCard {
    if (_self.giftCard == null) {
    return null;
  }

  return $GiftCardCopyWith<$Res>(_self.giftCard!, (value) {
    return _then(_self.copyWith(giftCard: value));
  });
}/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketCopyWith<$Res>? get market {
    if (_self.market == null) {
    return null;
  }

  return $MarketCopyWith<$Res>(_self.market!, (value) {
    return _then(_self.copyWith(market: value));
  });
}
}

// dart format on
