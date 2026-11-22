// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomField {

 String get id; String get label; CustomFieldType get fieldType; String get key; Object? get value;
/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldCopyWith<CustomField> get copyWith => _$CustomFieldCopyWithImpl<CustomField>(this as CustomField, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CustomField;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomField&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.fieldType, _this.fieldType) || other.fieldType == _this.fieldType)&&(identical(other.key, _this.key) || other.key == _this.key)&&const DeepCollectionEquality().equals(other.value, _this.value));
}


@override
int get hashCode {
  final _this = this as CustomField;
  return Object.hash(runtimeType,_this.id,_this.label,_this.fieldType,_this.key,const DeepCollectionEquality().hash(_this.value));
}

@override
String toString() {
  final _this = this as CustomField;
  return 'CustomField(id: ${_this.id}, label: ${_this.label}, fieldType: ${_this.fieldType}, key: ${_this.key}, value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $CustomFieldCopyWith<$Res>  {
  factory $CustomFieldCopyWith(CustomField value, $Res Function(CustomField) _then) = _$CustomFieldCopyWithImpl;
@useResult
$Res call({
 String id, String label, CustomFieldType fieldType, String key, Object? value
});




}
/// @nodoc
class _$CustomFieldCopyWithImpl<$Res>
    implements $CustomFieldCopyWith<$Res> {
  _$CustomFieldCopyWithImpl(this._self, this._then);

  final CustomField _self;
  final $Res Function(CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? fieldType = null,Object? key = null,Object? value = freezed,}) {
  return _then(CustomField(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value ,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomField].
extension CustomFieldPatterns on CustomField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomField value)  $default,){
final _that = this;
switch (_that) {
case _CustomField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomField value)?  $default,){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  CustomFieldType fieldType,  String key,  Object? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.label,_that.fieldType,_that.key,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  CustomFieldType fieldType,  String key,  Object? value)  $default,) {final _that = this;
switch (_that) {
case _CustomField():
return $default(_that.id,_that.label,_that.fieldType,_that.key,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  CustomFieldType fieldType,  String key,  Object? value)?  $default,) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.label,_that.fieldType,_that.key,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _CustomField extends CustomField {
  const _CustomField({required this.id, required this.label, required this.fieldType, required this.key, this.value}): super._();
  

@override final  String id;
@override final  String label;
@override final  CustomFieldType fieldType;
@override final  String key;
@override final  Object? value;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldCopyWith<_CustomField> get copyWith => __$CustomFieldCopyWithImpl<_CustomField>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,label,fieldType,key,const DeepCollectionEquality().hash(value));
}

@override
String toString() {
    return 'CustomField(id: $id, label: $label, fieldType: $fieldType, key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldCopyWith<$Res> implements $CustomFieldCopyWith<$Res> {
  factory _$CustomFieldCopyWith(_CustomField value, $Res Function(_CustomField) _then) = __$CustomFieldCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, CustomFieldType fieldType, String key, Object? value
});




}
/// @nodoc
class __$CustomFieldCopyWithImpl<$Res>
    implements _$CustomFieldCopyWith<$Res> {
  __$CustomFieldCopyWithImpl(this._self, this._then);

  final _CustomField _self;
  final $Res Function(_CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? fieldType = null,Object? key = null,Object? value = freezed,}) {
  return _then(_CustomField(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as CustomFieldType,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value ,
  ));
}


}

/// @nodoc
mixin _$State {

 String get abbr; String get name;
/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StateCopyWith<State> get copyWith => _$StateCopyWithImpl<State>(this as State, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as State;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is State&&(identical(other.abbr, _this.abbr) || other.abbr == _this.abbr)&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as State;
  return Object.hash(runtimeType,_this.abbr,_this.name);
}

@override
String toString() {
  final _this = this as State;
  return 'State(abbr: ${_this.abbr}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $StateCopyWith<$Res>  {
  factory $StateCopyWith(State value, $Res Function(State) _then) = _$StateCopyWithImpl;
@useResult
$Res call({
 String abbr, String name
});




}
/// @nodoc
class _$StateCopyWithImpl<$Res>
    implements $StateCopyWith<$Res> {
  _$StateCopyWithImpl(this._self, this._then);

  final State _self;
  final $Res Function(State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? abbr = null,Object? name = null,}) {
  return _then(State(
abbr: null == abbr ? _self.abbr : abbr // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [State].
extension StatePatterns on State {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _State value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _State() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _State value)  $default,){
final _that = this;
switch (_that) {
case _State():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _State value)?  $default,){
final _that = this;
switch (_that) {
case _State() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String abbr,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.abbr,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String abbr,  String name)  $default,) {final _that = this;
switch (_that) {
case _State():
return $default(_that.abbr,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String abbr,  String name)?  $default,) {final _that = this;
switch (_that) {
case _State() when $default != null:
return $default(_that.abbr,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _State extends State {
  const _State({required this.abbr, required this.name}): super._();
  

@override final  String abbr;
@override final  String name;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StateCopyWith<_State> get copyWith => __$StateCopyWithImpl<_State>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _State&&(identical(other.abbr, abbr) || other.abbr == abbr)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,abbr,name);
}

@override
String toString() {
    return 'State(abbr: $abbr, name: $name)';
}


}

/// @nodoc
abstract mixin class _$StateCopyWith<$Res> implements $StateCopyWith<$Res> {
  factory _$StateCopyWith(_State value, $Res Function(_State) _then) = __$StateCopyWithImpl;
@override @useResult
$Res call({
 String abbr, String name
});




}
/// @nodoc
class __$StateCopyWithImpl<$Res>
    implements _$StateCopyWith<$Res> {
  __$StateCopyWithImpl(this._self, this._then);

  final _State _self;
  final $Res Function(_State) _then;

/// Create a copy of State
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? abbr = null,Object? name = null,}) {
  return _then(_State(
abbr: null == abbr ? _self.abbr : abbr // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Country {

 CountryCode get iso; String get iso3; String get name; bool get statesRequired; bool get zipcodeRequired; List<State>? get states; Market? get market;
/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryCopyWith<Country> get copyWith => _$CountryCopyWithImpl<Country>(this as Country, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Country;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Country&&(identical(other.iso, _this.iso) || other.iso == _this.iso)&&(identical(other.iso3, _this.iso3) || other.iso3 == _this.iso3)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.statesRequired, _this.statesRequired) || other.statesRequired == _this.statesRequired)&&(identical(other.zipcodeRequired, _this.zipcodeRequired) || other.zipcodeRequired == _this.zipcodeRequired)&&const DeepCollectionEquality().equals(other.states, _this.states)&&(identical(other.market, _this.market) || other.market == _this.market));
}


@override
int get hashCode {
  final _this = this as Country;
  return Object.hash(runtimeType,_this.iso,_this.iso3,_this.name,_this.statesRequired,_this.zipcodeRequired,const DeepCollectionEquality().hash(_this.states),_this.market);
}

@override
String toString() {
  final _this = this as Country;
  return 'Country(iso: ${_this.iso}, iso3: ${_this.iso3}, name: ${_this.name}, statesRequired: ${_this.statesRequired}, zipcodeRequired: ${_this.zipcodeRequired}, states: ${_this.states}, market: ${_this.market})';
}


}

/// @nodoc
abstract mixin class $CountryCopyWith<$Res>  {
  factory $CountryCopyWith(Country value, $Res Function(Country) _then) = _$CountryCopyWithImpl;
@useResult
$Res call({
 CountryCode iso, String iso3, String name, bool statesRequired, bool zipcodeRequired, List<State>? states, Market? market
});


$MarketCopyWith<$Res>? get market;

}
/// @nodoc
class _$CountryCopyWithImpl<$Res>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._self, this._then);

  final Country _self;
  final $Res Function(Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iso = null,Object? iso3 = null,Object? name = null,Object? statesRequired = null,Object? zipcodeRequired = null,Object? states = freezed,Object? market = freezed,}) {
  return _then(Country(
iso: null == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as CountryCode,iso3: null == iso3 ? _self.iso3 : iso3 // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,statesRequired: null == statesRequired ? _self.statesRequired : statesRequired // ignore: cast_nullable_to_non_nullable
as bool,zipcodeRequired: null == zipcodeRequired ? _self.zipcodeRequired : zipcodeRequired // ignore: cast_nullable_to_non_nullable
as bool,states: freezed == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as List<State>?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,
  ));
}
/// Create a copy of Country
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


/// Adds pattern-matching-related methods to [Country].
extension CountryPatterns on Country {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Country value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Country value)  $default,){
final _that = this;
switch (_that) {
case _Country():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Country value)?  $default,){
final _that = this;
switch (_that) {
case _Country() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CountryCode iso,  String iso3,  String name,  bool statesRequired,  bool zipcodeRequired,  List<State>? states,  Market? market)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.iso,_that.iso3,_that.name,_that.statesRequired,_that.zipcodeRequired,_that.states,_that.market);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CountryCode iso,  String iso3,  String name,  bool statesRequired,  bool zipcodeRequired,  List<State>? states,  Market? market)  $default,) {final _that = this;
switch (_that) {
case _Country():
return $default(_that.iso,_that.iso3,_that.name,_that.statesRequired,_that.zipcodeRequired,_that.states,_that.market);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CountryCode iso,  String iso3,  String name,  bool statesRequired,  bool zipcodeRequired,  List<State>? states,  Market? market)?  $default,) {final _that = this;
switch (_that) {
case _Country() when $default != null:
return $default(_that.iso,_that.iso3,_that.name,_that.statesRequired,_that.zipcodeRequired,_that.states,_that.market);case _:
  return null;

}
}

}

/// @nodoc


class _Country extends Country {
  const _Country({required this.iso, required this.iso3, required this.name, required this.statesRequired, required this.zipcodeRequired, this.states, this.market}): super._();
  

@override final  CountryCode iso;
@override final  String iso3;
@override final  String name;
@override final  bool statesRequired;
@override final  bool zipcodeRequired;
@override final  List<State>? states;
@override final  Market? market;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryCopyWith<_Country> get copyWith => __$CountryCopyWithImpl<_Country>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Country&&(identical(other.iso, iso) || other.iso == iso)&&(identical(other.iso3, iso3) || other.iso3 == iso3)&&(identical(other.name, name) || other.name == name)&&(identical(other.statesRequired, statesRequired) || other.statesRequired == statesRequired)&&(identical(other.zipcodeRequired, zipcodeRequired) || other.zipcodeRequired == zipcodeRequired)&&const DeepCollectionEquality().equals(other.states, states)&&(identical(other.market, market) || other.market == market));
}


@override
int get hashCode {
    return Object.hash(runtimeType,iso,iso3,name,statesRequired,zipcodeRequired,const DeepCollectionEquality().hash(states),market);
}

@override
String toString() {
    return 'Country(iso: $iso, iso3: $iso3, name: $name, statesRequired: $statesRequired, zipcodeRequired: $zipcodeRequired, states: $states, market: $market)';
}


}

/// @nodoc
abstract mixin class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) _then) = __$CountryCopyWithImpl;
@override @useResult
$Res call({
 CountryCode iso, String iso3, String name, bool statesRequired, bool zipcodeRequired, List<State>? states, Market? market
});


@override $MarketCopyWith<$Res>? get market;

}
/// @nodoc
class __$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(this._self, this._then);

  final _Country _self;
  final $Res Function(_Country) _then;

/// Create a copy of Country
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iso = null,Object? iso3 = null,Object? name = null,Object? statesRequired = null,Object? zipcodeRequired = null,Object? states = freezed,Object? market = freezed,}) {
  return _then(_Country(
iso: null == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as CountryCode,iso3: null == iso3 ? _self.iso3 : iso3 // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,statesRequired: null == statesRequired ? _self.statesRequired : statesRequired // ignore: cast_nullable_to_non_nullable
as bool,zipcodeRequired: null == zipcodeRequired ? _self.zipcodeRequired : zipcodeRequired // ignore: cast_nullable_to_non_nullable
as bool,states: freezed == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as List<State>?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,
  ));
}

/// Create a copy of Country
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

/// @nodoc
mixin _$Currency {

 CurrencyCode get isoCode; String get name; String get symbol; int get decimalPlaces;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Currency;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.isoCode, _this.isoCode) || other.isoCode == _this.isoCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.symbol, _this.symbol) || other.symbol == _this.symbol)&&(identical(other.decimalPlaces, _this.decimalPlaces) || other.decimalPlaces == _this.decimalPlaces));
}


@override
int get hashCode {
  final _this = this as Currency;
  return Object.hash(runtimeType,_this.isoCode,_this.name,_this.symbol,_this.decimalPlaces);
}

@override
String toString() {
  final _this = this as Currency;
  return 'Currency(isoCode: ${_this.isoCode}, name: ${_this.name}, symbol: ${_this.symbol}, decimalPlaces: ${_this.decimalPlaces})';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 CurrencyCode isoCode, String name, String symbol, int decimalPlaces
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isoCode = null,Object? name = null,Object? symbol = null,Object? decimalPlaces = null,}) {
  return _then(Currency(
isoCode: null == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,decimalPlaces: null == decimalPlaces ? _self.decimalPlaces : decimalPlaces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CurrencyCode isoCode,  String name,  String symbol,  int decimalPlaces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.isoCode,_that.name,_that.symbol,_that.decimalPlaces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CurrencyCode isoCode,  String name,  String symbol,  int decimalPlaces)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.isoCode,_that.name,_that.symbol,_that.decimalPlaces);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CurrencyCode isoCode,  String name,  String symbol,  int decimalPlaces)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.isoCode,_that.name,_that.symbol,_that.decimalPlaces);case _:
  return null;

}
}

}

/// @nodoc


class _Currency extends Currency {
  const _Currency({required this.isoCode, required this.name, required this.symbol, required this.decimalPlaces}): super._();
  

@override final  CurrencyCode isoCode;
@override final  String name;
@override final  String symbol;
@override final  int decimalPlaces;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.isoCode, isoCode) || other.isoCode == isoCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.decimalPlaces, decimalPlaces) || other.decimalPlaces == decimalPlaces));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isoCode,name,symbol,decimalPlaces);
}

@override
String toString() {
    return 'Currency(isoCode: $isoCode, name: $name, symbol: $symbol, decimalPlaces: $decimalPlaces)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 CurrencyCode isoCode, String name, String symbol, int decimalPlaces
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isoCode = null,Object? name = null,Object? symbol = null,Object? decimalPlaces = null,}) {
  return _then(_Currency(
isoCode: null == isoCode ? _self.isoCode : isoCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,decimalPlaces: null == decimalPlaces ? _self.decimalPlaces : decimalPlaces // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SpreeLocale {

 LocaleCode get code; String get name; bool get isDefault; bool get rtl;
/// Create a copy of SpreeLocale
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpreeLocaleCopyWith<SpreeLocale> get copyWith => _$SpreeLocaleCopyWithImpl<SpreeLocale>(this as SpreeLocale, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SpreeLocale;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpreeLocale&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&(identical(other.rtl, _this.rtl) || other.rtl == _this.rtl));
}


@override
int get hashCode {
  final _this = this as SpreeLocale;
  return Object.hash(runtimeType,_this.code,_this.name,_this.isDefault,_this.rtl);
}

@override
String toString() {
  final _this = this as SpreeLocale;
  return 'SpreeLocale(code: ${_this.code}, name: ${_this.name}, isDefault: ${_this.isDefault}, rtl: ${_this.rtl})';
}


}

/// @nodoc
abstract mixin class $SpreeLocaleCopyWith<$Res>  {
  factory $SpreeLocaleCopyWith(SpreeLocale value, $Res Function(SpreeLocale) _then) = _$SpreeLocaleCopyWithImpl;
@useResult
$Res call({
 LocaleCode code, String name, bool isDefault, bool rtl
});




}
/// @nodoc
class _$SpreeLocaleCopyWithImpl<$Res>
    implements $SpreeLocaleCopyWith<$Res> {
  _$SpreeLocaleCopyWithImpl(this._self, this._then);

  final SpreeLocale _self;
  final $Res Function(SpreeLocale) _then;

/// Create a copy of SpreeLocale
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? isDefault = null,Object? rtl = null,}) {
  return _then(SpreeLocale(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as LocaleCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,rtl: null == rtl ? _self.rtl : rtl // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SpreeLocale].
extension SpreeLocalePatterns on SpreeLocale {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpreeLocale value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpreeLocale() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpreeLocale value)  $default,){
final _that = this;
switch (_that) {
case _SpreeLocale():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpreeLocale value)?  $default,){
final _that = this;
switch (_that) {
case _SpreeLocale() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocaleCode code,  String name,  bool isDefault,  bool rtl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpreeLocale() when $default != null:
return $default(_that.code,_that.name,_that.isDefault,_that.rtl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocaleCode code,  String name,  bool isDefault,  bool rtl)  $default,) {final _that = this;
switch (_that) {
case _SpreeLocale():
return $default(_that.code,_that.name,_that.isDefault,_that.rtl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocaleCode code,  String name,  bool isDefault,  bool rtl)?  $default,) {final _that = this;
switch (_that) {
case _SpreeLocale() when $default != null:
return $default(_that.code,_that.name,_that.isDefault,_that.rtl);case _:
  return null;

}
}

}

/// @nodoc


class _SpreeLocale extends SpreeLocale {
  const _SpreeLocale({required this.code, required this.name, required this.isDefault, required this.rtl}): super._();
  

@override final  LocaleCode code;
@override final  String name;
@override final  bool isDefault;
@override final  bool rtl;

/// Create a copy of SpreeLocale
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpreeLocaleCopyWith<_SpreeLocale> get copyWith => __$SpreeLocaleCopyWithImpl<_SpreeLocale>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpreeLocale&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.rtl, rtl) || other.rtl == rtl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,name,isDefault,rtl);
}

@override
String toString() {
    return 'SpreeLocale(code: $code, name: $name, isDefault: $isDefault, rtl: $rtl)';
}


}

/// @nodoc
abstract mixin class _$SpreeLocaleCopyWith<$Res> implements $SpreeLocaleCopyWith<$Res> {
  factory _$SpreeLocaleCopyWith(_SpreeLocale value, $Res Function(_SpreeLocale) _then) = __$SpreeLocaleCopyWithImpl;
@override @useResult
$Res call({
 LocaleCode code, String name, bool isDefault, bool rtl
});




}
/// @nodoc
class __$SpreeLocaleCopyWithImpl<$Res>
    implements _$SpreeLocaleCopyWith<$Res> {
  __$SpreeLocaleCopyWithImpl(this._self, this._then);

  final _SpreeLocale _self;
  final $Res Function(_SpreeLocale) _then;

/// Create a copy of SpreeLocale
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? isDefault = null,Object? rtl = null,}) {
  return _then(_SpreeLocale(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as LocaleCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,rtl: null == rtl ? _self.rtl : rtl // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$Channel {

 String get id; String get name; String get code; bool get active; bool get isDefault; String get storefrontAccess; bool get guestCheckout;
/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelCopyWith<Channel> get copyWith => _$ChannelCopyWithImpl<Channel>(this as Channel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Channel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Channel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.active, _this.active) || other.active == _this.active)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&(identical(other.storefrontAccess, _this.storefrontAccess) || other.storefrontAccess == _this.storefrontAccess)&&(identical(other.guestCheckout, _this.guestCheckout) || other.guestCheckout == _this.guestCheckout));
}


@override
int get hashCode {
  final _this = this as Channel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.code,_this.active,_this.isDefault,_this.storefrontAccess,_this.guestCheckout);
}

@override
String toString() {
  final _this = this as Channel;
  return 'Channel(id: ${_this.id}, name: ${_this.name}, code: ${_this.code}, active: ${_this.active}, isDefault: ${_this.isDefault}, storefrontAccess: ${_this.storefrontAccess}, guestCheckout: ${_this.guestCheckout})';
}


}

/// @nodoc
abstract mixin class $ChannelCopyWith<$Res>  {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) _then) = _$ChannelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String code, bool active, bool isDefault, String storefrontAccess, bool guestCheckout
});




}
/// @nodoc
class _$ChannelCopyWithImpl<$Res>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._self, this._then);

  final Channel _self;
  final $Res Function(Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? isDefault = null,Object? storefrontAccess = null,Object? guestCheckout = null,}) {
  return _then(Channel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,storefrontAccess: null == storefrontAccess ? _self.storefrontAccess : storefrontAccess // ignore: cast_nullable_to_non_nullable
as String,guestCheckout: null == guestCheckout ? _self.guestCheckout : guestCheckout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Channel].
extension ChannelPatterns on Channel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Channel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Channel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Channel value)  $default,){
final _that = this;
switch (_that) {
case _Channel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Channel value)?  $default,){
final _that = this;
switch (_that) {
case _Channel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  bool isDefault,  String storefrontAccess,  bool guestCheckout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Channel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.isDefault,_that.storefrontAccess,_that.guestCheckout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  bool isDefault,  String storefrontAccess,  bool guestCheckout)  $default,) {final _that = this;
switch (_that) {
case _Channel():
return $default(_that.id,_that.name,_that.code,_that.active,_that.isDefault,_that.storefrontAccess,_that.guestCheckout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String code,  bool active,  bool isDefault,  String storefrontAccess,  bool guestCheckout)?  $default,) {final _that = this;
switch (_that) {
case _Channel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.isDefault,_that.storefrontAccess,_that.guestCheckout);case _:
  return null;

}
}

}

/// @nodoc


class _Channel extends Channel {
  const _Channel({required this.id, required this.name, required this.code, required this.active, required this.isDefault, required this.storefrontAccess, required this.guestCheckout}): super._();
  

@override final  String id;
@override final  String name;
@override final  String code;
@override final  bool active;
@override final  bool isDefault;
@override final  String storefrontAccess;
@override final  bool guestCheckout;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelCopyWith<_Channel> get copyWith => __$ChannelCopyWithImpl<_Channel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Channel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.storefrontAccess, storefrontAccess) || other.storefrontAccess == storefrontAccess)&&(identical(other.guestCheckout, guestCheckout) || other.guestCheckout == guestCheckout));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,code,active,isDefault,storefrontAccess,guestCheckout);
}

@override
String toString() {
    return 'Channel(id: $id, name: $name, code: $code, active: $active, isDefault: $isDefault, storefrontAccess: $storefrontAccess, guestCheckout: $guestCheckout)';
}


}

/// @nodoc
abstract mixin class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) _then) = __$ChannelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String code, bool active, bool isDefault, String storefrontAccess, bool guestCheckout
});




}
/// @nodoc
class __$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(this._self, this._then);

  final _Channel _self;
  final $Res Function(_Channel) _then;

/// Create a copy of Channel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? isDefault = null,Object? storefrontAccess = null,Object? guestCheckout = null,}) {
  return _then(_Channel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,storefrontAccess: null == storefrontAccess ? _self.storefrontAccess : storefrontAccess // ignore: cast_nullable_to_non_nullable
as String,guestCheckout: null == guestCheckout ? _self.guestCheckout : guestCheckout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$Store {

 String get id; String get name; String? get seoTitle; String? get metaDescription; String? get metaKeywords; String? get facebook; String? get twitter; String? get instagram; String? get customerSupportEmail; String? get logoUrl;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Store;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.seoTitle, _this.seoTitle) || other.seoTitle == _this.seoTitle)&&(identical(other.metaDescription, _this.metaDescription) || other.metaDescription == _this.metaDescription)&&(identical(other.metaKeywords, _this.metaKeywords) || other.metaKeywords == _this.metaKeywords)&&(identical(other.facebook, _this.facebook) || other.facebook == _this.facebook)&&(identical(other.twitter, _this.twitter) || other.twitter == _this.twitter)&&(identical(other.instagram, _this.instagram) || other.instagram == _this.instagram)&&(identical(other.customerSupportEmail, _this.customerSupportEmail) || other.customerSupportEmail == _this.customerSupportEmail)&&(identical(other.logoUrl, _this.logoUrl) || other.logoUrl == _this.logoUrl));
}


@override
int get hashCode {
  final _this = this as Store;
  return Object.hash(runtimeType,_this.id,_this.name,_this.seoTitle,_this.metaDescription,_this.metaKeywords,_this.facebook,_this.twitter,_this.instagram,_this.customerSupportEmail,_this.logoUrl);
}

@override
String toString() {
  final _this = this as Store;
  return 'Store(id: ${_this.id}, name: ${_this.name}, seoTitle: ${_this.seoTitle}, metaDescription: ${_this.metaDescription}, metaKeywords: ${_this.metaKeywords}, facebook: ${_this.facebook}, twitter: ${_this.twitter}, instagram: ${_this.instagram}, customerSupportEmail: ${_this.customerSupportEmail}, logoUrl: ${_this.logoUrl})';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? seoTitle, String? metaDescription, String? metaKeywords, String? facebook, String? twitter, String? instagram, String? customerSupportEmail, String? logoUrl
});




}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? seoTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? facebook = freezed,Object? twitter = freezed,Object? instagram = freezed,Object? customerSupportEmail = freezed,Object? logoUrl = freezed,}) {
  return _then(Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,facebook: freezed == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String?,twitter: freezed == twitter ? _self.twitter : twitter // ignore: cast_nullable_to_non_nullable
as String?,instagram: freezed == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String?,customerSupportEmail: freezed == customerSupportEmail ? _self.customerSupportEmail : customerSupportEmail // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Store].
extension StorePatterns on Store {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Store value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Store() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Store value)  $default,){
final _that = this;
switch (_that) {
case _Store():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Store value)?  $default,){
final _that = this;
switch (_that) {
case _Store() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? seoTitle,  String? metaDescription,  String? metaKeywords,  String? facebook,  String? twitter,  String? instagram,  String? customerSupportEmail,  String? logoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.name,_that.seoTitle,_that.metaDescription,_that.metaKeywords,_that.facebook,_that.twitter,_that.instagram,_that.customerSupportEmail,_that.logoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? seoTitle,  String? metaDescription,  String? metaKeywords,  String? facebook,  String? twitter,  String? instagram,  String? customerSupportEmail,  String? logoUrl)  $default,) {final _that = this;
switch (_that) {
case _Store():
return $default(_that.id,_that.name,_that.seoTitle,_that.metaDescription,_that.metaKeywords,_that.facebook,_that.twitter,_that.instagram,_that.customerSupportEmail,_that.logoUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? seoTitle,  String? metaDescription,  String? metaKeywords,  String? facebook,  String? twitter,  String? instagram,  String? customerSupportEmail,  String? logoUrl)?  $default,) {final _that = this;
switch (_that) {
case _Store() when $default != null:
return $default(_that.id,_that.name,_that.seoTitle,_that.metaDescription,_that.metaKeywords,_that.facebook,_that.twitter,_that.instagram,_that.customerSupportEmail,_that.logoUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Store extends Store {
  const _Store({required this.id, required this.name, this.seoTitle, this.metaDescription, this.metaKeywords, this.facebook, this.twitter, this.instagram, this.customerSupportEmail, this.logoUrl}): super._();
  

@override final  String id;
@override final  String name;
@override final  String? seoTitle;
@override final  String? metaDescription;
@override final  String? metaKeywords;
@override final  String? facebook;
@override final  String? twitter;
@override final  String? instagram;
@override final  String? customerSupportEmail;
@override final  String? logoUrl;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreCopyWith<_Store> get copyWith => __$StoreCopyWithImpl<_Store>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.seoTitle, seoTitle) || other.seoTitle == seoTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.twitter, twitter) || other.twitter == twitter)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.customerSupportEmail, customerSupportEmail) || other.customerSupportEmail == customerSupportEmail)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,seoTitle,metaDescription,metaKeywords,facebook,twitter,instagram,customerSupportEmail,logoUrl);
}

@override
String toString() {
    return 'Store(id: $id, name: $name, seoTitle: $seoTitle, metaDescription: $metaDescription, metaKeywords: $metaKeywords, facebook: $facebook, twitter: $twitter, instagram: $instagram, customerSupportEmail: $customerSupportEmail, logoUrl: $logoUrl)';
}


}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) = __$StoreCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? seoTitle, String? metaDescription, String? metaKeywords, String? facebook, String? twitter, String? instagram, String? customerSupportEmail, String? logoUrl
});




}
/// @nodoc
class __$StoreCopyWithImpl<$Res>
    implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? seoTitle = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? facebook = freezed,Object? twitter = freezed,Object? instagram = freezed,Object? customerSupportEmail = freezed,Object? logoUrl = freezed,}) {
  return _then(_Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,seoTitle: freezed == seoTitle ? _self.seoTitle : seoTitle // ignore: cast_nullable_to_non_nullable
as String?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,facebook: freezed == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String?,twitter: freezed == twitter ? _self.twitter : twitter // ignore: cast_nullable_to_non_nullable
as String?,instagram: freezed == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String?,customerSupportEmail: freezed == customerSupportEmail ? _self.customerSupportEmail : customerSupportEmail // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Policy {

 String get id; String get name; String get slug; String? get body; String? get bodyHtml; String get updatedAt;
/// Create a copy of Policy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PolicyCopyWith<Policy> get copyWith => _$PolicyCopyWithImpl<Policy>(this as Policy, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Policy;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Policy&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.bodyHtml, _this.bodyHtml) || other.bodyHtml == _this.bodyHtml)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as Policy;
  return Object.hash(runtimeType,_this.id,_this.name,_this.slug,_this.body,_this.bodyHtml,_this.updatedAt);
}

@override
String toString() {
  final _this = this as Policy;
  return 'Policy(id: ${_this.id}, name: ${_this.name}, slug: ${_this.slug}, body: ${_this.body}, bodyHtml: ${_this.bodyHtml}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $PolicyCopyWith<$Res>  {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) _then) = _$PolicyCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? body, String? bodyHtml, String updatedAt
});




}
/// @nodoc
class _$PolicyCopyWithImpl<$Res>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._self, this._then);

  final Policy _self;
  final $Res Function(Policy) _then;

/// Create a copy of Policy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? body = freezed,Object? bodyHtml = freezed,Object? updatedAt = null,}) {
  return _then(Policy(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,bodyHtml: freezed == bodyHtml ? _self.bodyHtml : bodyHtml // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Policy].
extension PolicyPatterns on Policy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Policy value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Policy() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Policy value)  $default,){
final _that = this;
switch (_that) {
case _Policy():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Policy value)?  $default,){
final _that = this;
switch (_that) {
case _Policy() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? body,  String? bodyHtml,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Policy() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.body,_that.bodyHtml,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? body,  String? bodyHtml,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Policy():
return $default(_that.id,_that.name,_that.slug,_that.body,_that.bodyHtml,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? body,  String? bodyHtml,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Policy() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.body,_that.bodyHtml,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Policy extends Policy {
  const _Policy({required this.id, required this.name, required this.slug, this.body, this.bodyHtml, required this.updatedAt}): super._();
  

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? body;
@override final  String? bodyHtml;
@override final  String updatedAt;

/// Create a copy of Policy
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PolicyCopyWith<_Policy> get copyWith => __$PolicyCopyWithImpl<_Policy>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Policy&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.body, body) || other.body == body)&&(identical(other.bodyHtml, bodyHtml) || other.bodyHtml == bodyHtml)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,slug,body,bodyHtml,updatedAt);
}

@override
String toString() {
    return 'Policy(id: $id, name: $name, slug: $slug, body: $body, bodyHtml: $bodyHtml, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$PolicyCopyWith(_Policy value, $Res Function(_Policy) _then) = __$PolicyCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? body, String? bodyHtml, String updatedAt
});




}
/// @nodoc
class __$PolicyCopyWithImpl<$Res>
    implements _$PolicyCopyWith<$Res> {
  __$PolicyCopyWithImpl(this._self, this._then);

  final _Policy _self;
  final $Res Function(_Policy) _then;

/// Create a copy of Policy
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? body = freezed,Object? bodyHtml = freezed,Object? updatedAt = null,}) {
  return _then(_Policy(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,bodyHtml: freezed == bodyHtml ? _self.bodyHtml : bodyHtml // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$Market {

 String get id; String get name; CurrencyCode get currency; LocaleCode get defaultLocale; bool get taxInclusive; bool get isDefault; List<CountryCode> get countryCodes; List<String> get countryIsos; List<LocaleCode> get supportedLocales; List<Country>? get countries;
/// Create a copy of Market
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCopyWith<Market> get copyWith => _$MarketCopyWithImpl<Market>(this as Market, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Market;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Market&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.defaultLocale, _this.defaultLocale) || other.defaultLocale == _this.defaultLocale)&&(identical(other.taxInclusive, _this.taxInclusive) || other.taxInclusive == _this.taxInclusive)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&const DeepCollectionEquality().equals(other.countryCodes, _this.countryCodes)&&const DeepCollectionEquality().equals(other.countryIsos, _this.countryIsos)&&const DeepCollectionEquality().equals(other.supportedLocales, _this.supportedLocales)&&const DeepCollectionEquality().equals(other.countries, _this.countries));
}


@override
int get hashCode {
  final _this = this as Market;
  return Object.hash(runtimeType,_this.id,_this.name,_this.currency,_this.defaultLocale,_this.taxInclusive,_this.isDefault,const DeepCollectionEquality().hash(_this.countryCodes),const DeepCollectionEquality().hash(_this.countryIsos),const DeepCollectionEquality().hash(_this.supportedLocales),const DeepCollectionEquality().hash(_this.countries));
}

@override
String toString() {
  final _this = this as Market;
  return 'Market(id: ${_this.id}, name: ${_this.name}, currency: ${_this.currency}, defaultLocale: ${_this.defaultLocale}, taxInclusive: ${_this.taxInclusive}, isDefault: ${_this.isDefault}, countryCodes: ${_this.countryCodes}, countryIsos: ${_this.countryIsos}, supportedLocales: ${_this.supportedLocales}, countries: ${_this.countries})';
}


}

/// @nodoc
abstract mixin class $MarketCopyWith<$Res>  {
  factory $MarketCopyWith(Market value, $Res Function(Market) _then) = _$MarketCopyWithImpl;
@useResult
$Res call({
 String id, String name, CurrencyCode currency, LocaleCode defaultLocale, bool taxInclusive, bool isDefault, List<CountryCode> countryCodes, List<String> countryIsos, List<LocaleCode> supportedLocales, List<Country>? countries
});




}
/// @nodoc
class _$MarketCopyWithImpl<$Res>
    implements $MarketCopyWith<$Res> {
  _$MarketCopyWithImpl(this._self, this._then);

  final Market _self;
  final $Res Function(Market) _then;

/// Create a copy of Market
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? currency = null,Object? defaultLocale = null,Object? taxInclusive = null,Object? isDefault = null,Object? countryCodes = null,Object? countryIsos = null,Object? supportedLocales = null,Object? countries = freezed,}) {
  return _then(Market(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,defaultLocale: null == defaultLocale ? _self.defaultLocale : defaultLocale // ignore: cast_nullable_to_non_nullable
as LocaleCode,taxInclusive: null == taxInclusive ? _self.taxInclusive : taxInclusive // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<CountryCode>,countryIsos: null == countryIsos ? _self.countryIsos : countryIsos // ignore: cast_nullable_to_non_nullable
as List<String>,supportedLocales: null == supportedLocales ? _self.supportedLocales : supportedLocales // ignore: cast_nullable_to_non_nullable
as List<LocaleCode>,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<Country>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Market].
extension MarketPatterns on Market {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Market value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Market() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Market value)  $default,){
final _that = this;
switch (_that) {
case _Market():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Market value)?  $default,){
final _that = this;
switch (_that) {
case _Market() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  CurrencyCode currency,  LocaleCode defaultLocale,  bool taxInclusive,  bool isDefault,  List<CountryCode> countryCodes,  List<String> countryIsos,  List<LocaleCode> supportedLocales,  List<Country>? countries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Market() when $default != null:
return $default(_that.id,_that.name,_that.currency,_that.defaultLocale,_that.taxInclusive,_that.isDefault,_that.countryCodes,_that.countryIsos,_that.supportedLocales,_that.countries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  CurrencyCode currency,  LocaleCode defaultLocale,  bool taxInclusive,  bool isDefault,  List<CountryCode> countryCodes,  List<String> countryIsos,  List<LocaleCode> supportedLocales,  List<Country>? countries)  $default,) {final _that = this;
switch (_that) {
case _Market():
return $default(_that.id,_that.name,_that.currency,_that.defaultLocale,_that.taxInclusive,_that.isDefault,_that.countryCodes,_that.countryIsos,_that.supportedLocales,_that.countries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  CurrencyCode currency,  LocaleCode defaultLocale,  bool taxInclusive,  bool isDefault,  List<CountryCode> countryCodes,  List<String> countryIsos,  List<LocaleCode> supportedLocales,  List<Country>? countries)?  $default,) {final _that = this;
switch (_that) {
case _Market() when $default != null:
return $default(_that.id,_that.name,_that.currency,_that.defaultLocale,_that.taxInclusive,_that.isDefault,_that.countryCodes,_that.countryIsos,_that.supportedLocales,_that.countries);case _:
  return null;

}
}

}

/// @nodoc


class _Market extends Market {
  const _Market({required this.id, required this.name, required this.currency, required this.defaultLocale, required this.taxInclusive, required this.isDefault, required this.countryCodes, required this.countryIsos, required this.supportedLocales, this.countries}): super._();
  

@override final  String id;
@override final  String name;
@override final  CurrencyCode currency;
@override final  LocaleCode defaultLocale;
@override final  bool taxInclusive;
@override final  bool isDefault;
@override final  List<CountryCode> countryCodes;
@override final  List<String> countryIsos;
@override final  List<LocaleCode> supportedLocales;
@override final  List<Country>? countries;

/// Create a copy of Market
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCopyWith<_Market> get copyWith => __$MarketCopyWithImpl<_Market>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Market&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.defaultLocale, defaultLocale) || other.defaultLocale == defaultLocale)&&(identical(other.taxInclusive, taxInclusive) || other.taxInclusive == taxInclusive)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&const DeepCollectionEquality().equals(other.countryCodes, countryCodes)&&const DeepCollectionEquality().equals(other.countryIsos, countryIsos)&&const DeepCollectionEquality().equals(other.supportedLocales, supportedLocales)&&const DeepCollectionEquality().equals(other.countries, countries));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,currency,defaultLocale,taxInclusive,isDefault,const DeepCollectionEquality().hash(countryCodes),const DeepCollectionEquality().hash(countryIsos),const DeepCollectionEquality().hash(supportedLocales),const DeepCollectionEquality().hash(countries));
}

@override
String toString() {
    return 'Market(id: $id, name: $name, currency: $currency, defaultLocale: $defaultLocale, taxInclusive: $taxInclusive, isDefault: $isDefault, countryCodes: $countryCodes, countryIsos: $countryIsos, supportedLocales: $supportedLocales, countries: $countries)';
}


}

/// @nodoc
abstract mixin class _$MarketCopyWith<$Res> implements $MarketCopyWith<$Res> {
  factory _$MarketCopyWith(_Market value, $Res Function(_Market) _then) = __$MarketCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, CurrencyCode currency, LocaleCode defaultLocale, bool taxInclusive, bool isDefault, List<CountryCode> countryCodes, List<String> countryIsos, List<LocaleCode> supportedLocales, List<Country>? countries
});




}
/// @nodoc
class __$MarketCopyWithImpl<$Res>
    implements _$MarketCopyWith<$Res> {
  __$MarketCopyWithImpl(this._self, this._then);

  final _Market _self;
  final $Res Function(_Market) _then;

/// Create a copy of Market
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? currency = null,Object? defaultLocale = null,Object? taxInclusive = null,Object? isDefault = null,Object? countryCodes = null,Object? countryIsos = null,Object? supportedLocales = null,Object? countries = freezed,}) {
  return _then(_Market(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,defaultLocale: null == defaultLocale ? _self.defaultLocale : defaultLocale // ignore: cast_nullable_to_non_nullable
as LocaleCode,taxInclusive: null == taxInclusive ? _self.taxInclusive : taxInclusive // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,countryCodes: null == countryCodes ? _self.countryCodes : countryCodes // ignore: cast_nullable_to_non_nullable
as List<CountryCode>,countryIsos: null == countryIsos ? _self.countryIsos : countryIsos // ignore: cast_nullable_to_non_nullable
as List<String>,supportedLocales: null == supportedLocales ? _self.supportedLocales : supportedLocales // ignore: cast_nullable_to_non_nullable
as List<LocaleCode>,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<Country>?,
  ));
}


}

// dart format on
