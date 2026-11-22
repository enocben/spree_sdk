// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomerGroup {

 String get id; String get name;
/// Create a copy of CustomerGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerGroupCopyWith<CustomerGroup> get copyWith => _$CustomerGroupCopyWithImpl<CustomerGroup>(this as CustomerGroup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CustomerGroup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerGroup&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as CustomerGroup;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as CustomerGroup;
  return 'CustomerGroup(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CustomerGroupCopyWith<$Res>  {
  factory $CustomerGroupCopyWith(CustomerGroup value, $Res Function(CustomerGroup) _then) = _$CustomerGroupCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$CustomerGroupCopyWithImpl<$Res>
    implements $CustomerGroupCopyWith<$Res> {
  _$CustomerGroupCopyWithImpl(this._self, this._then);

  final CustomerGroup _self;
  final $Res Function(CustomerGroup) _then;

/// Create a copy of CustomerGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(CustomerGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerGroup].
extension CustomerGroupPatterns on CustomerGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerGroup value)  $default,){
final _that = this;
switch (_that) {
case _CustomerGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerGroup value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerGroup() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _CustomerGroup():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CustomerGroup() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerGroup extends CustomerGroup {
  const _CustomerGroup({required this.id, required this.name}): super._();
  

@override final  String id;
@override final  String name;

/// Create a copy of CustomerGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerGroupCopyWith<_CustomerGroup> get copyWith => __$CustomerGroupCopyWithImpl<_CustomerGroup>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'CustomerGroup(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CustomerGroupCopyWith<$Res> implements $CustomerGroupCopyWith<$Res> {
  factory _$CustomerGroupCopyWith(_CustomerGroup value, $Res Function(_CustomerGroup) _then) = __$CustomerGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$CustomerGroupCopyWithImpl<$Res>
    implements _$CustomerGroupCopyWith<$Res> {
  __$CustomerGroupCopyWithImpl(this._self, this._then);

  final _CustomerGroup _self;
  final $Res Function(_CustomerGroup) _then;

/// Create a copy of CustomerGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CustomerGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$NewsletterSubscriber {

 String get id; String get email; String get createdAt; String get updatedAt; bool get verified; String? get verifiedAt; String? get customerId; List<CustomField>? get customFields;
/// Create a copy of NewsletterSubscriber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsletterSubscriberCopyWith<NewsletterSubscriber> get copyWith => _$NewsletterSubscriberCopyWithImpl<NewsletterSubscriber>(this as NewsletterSubscriber, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NewsletterSubscriber;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsletterSubscriber&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.verified, _this.verified) || other.verified == _this.verified)&&(identical(other.verifiedAt, _this.verifiedAt) || other.verifiedAt == _this.verifiedAt)&&(identical(other.customerId, _this.customerId) || other.customerId == _this.customerId)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as NewsletterSubscriber;
  return Object.hash(runtimeType,_this.id,_this.email,_this.createdAt,_this.updatedAt,_this.verified,_this.verifiedAt,_this.customerId,const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as NewsletterSubscriber;
  return 'NewsletterSubscriber(id: ${_this.id}, email: ${_this.email}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, verified: ${_this.verified}, verifiedAt: ${_this.verifiedAt}, customerId: ${_this.customerId}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $NewsletterSubscriberCopyWith<$Res>  {
  factory $NewsletterSubscriberCopyWith(NewsletterSubscriber value, $Res Function(NewsletterSubscriber) _then) = _$NewsletterSubscriberCopyWithImpl;
@useResult
$Res call({
 String id, String email, String createdAt, String updatedAt, bool verified, String? verifiedAt, String? customerId, List<CustomField>? customFields
});




}
/// @nodoc
class _$NewsletterSubscriberCopyWithImpl<$Res>
    implements $NewsletterSubscriberCopyWith<$Res> {
  _$NewsletterSubscriberCopyWithImpl(this._self, this._then);

  final NewsletterSubscriber _self;
  final $Res Function(NewsletterSubscriber) _then;

/// Create a copy of NewsletterSubscriber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? createdAt = null,Object? updatedAt = null,Object? verified = null,Object? verifiedAt = freezed,Object? customerId = freezed,Object? customFields = freezed,}) {
  return _then(NewsletterSubscriber(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsletterSubscriber].
extension NewsletterSubscriberPatterns on NewsletterSubscriber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsletterSubscriber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsletterSubscriber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsletterSubscriber value)  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriber():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsletterSubscriber value)?  $default,){
final _that = this;
switch (_that) {
case _NewsletterSubscriber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String createdAt,  String updatedAt,  bool verified,  String? verifiedAt,  String? customerId,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsletterSubscriber() when $default != null:
return $default(_that.id,_that.email,_that.createdAt,_that.updatedAt,_that.verified,_that.verifiedAt,_that.customerId,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String createdAt,  String updatedAt,  bool verified,  String? verifiedAt,  String? customerId,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriber():
return $default(_that.id,_that.email,_that.createdAt,_that.updatedAt,_that.verified,_that.verifiedAt,_that.customerId,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String createdAt,  String updatedAt,  bool verified,  String? verifiedAt,  String? customerId,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _NewsletterSubscriber() when $default != null:
return $default(_that.id,_that.email,_that.createdAt,_that.updatedAt,_that.verified,_that.verifiedAt,_that.customerId,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _NewsletterSubscriber extends NewsletterSubscriber {
  const _NewsletterSubscriber({required this.id, required this.email, required this.createdAt, required this.updatedAt, required this.verified, this.verifiedAt, this.customerId, this.customFields}): super._();
  

@override final  String id;
@override final  String email;
@override final  String createdAt;
@override final  String updatedAt;
@override final  bool verified;
@override final  String? verifiedAt;
@override final  String? customerId;
@override final  List<CustomField>? customFields;

/// Create a copy of NewsletterSubscriber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsletterSubscriberCopyWith<_NewsletterSubscriber> get copyWith => __$NewsletterSubscriberCopyWithImpl<_NewsletterSubscriber>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsletterSubscriber&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.verifiedAt, verifiedAt) || other.verifiedAt == verifiedAt)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,email,createdAt,updatedAt,verified,verifiedAt,customerId,const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'NewsletterSubscriber(id: $id, email: $email, createdAt: $createdAt, updatedAt: $updatedAt, verified: $verified, verifiedAt: $verifiedAt, customerId: $customerId, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$NewsletterSubscriberCopyWith<$Res> implements $NewsletterSubscriberCopyWith<$Res> {
  factory _$NewsletterSubscriberCopyWith(_NewsletterSubscriber value, $Res Function(_NewsletterSubscriber) _then) = __$NewsletterSubscriberCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String createdAt, String updatedAt, bool verified, String? verifiedAt, String? customerId, List<CustomField>? customFields
});




}
/// @nodoc
class __$NewsletterSubscriberCopyWithImpl<$Res>
    implements _$NewsletterSubscriberCopyWith<$Res> {
  __$NewsletterSubscriberCopyWithImpl(this._self, this._then);

  final _NewsletterSubscriber _self;
  final $Res Function(_NewsletterSubscriber) _then;

/// Create a copy of NewsletterSubscriber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? createdAt = null,Object? updatedAt = null,Object? verified = null,Object? verifiedAt = freezed,Object? customerId = freezed,Object? customFields = freezed,}) {
  return _then(_NewsletterSubscriber(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as String?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}


}

/// @nodoc
mixin _$Customer {

 String get id; String get email; String? get firstName; String? get lastName; String? get phone; bool get acceptsEmailMarketing; String? get emailMarketingConsentUpdatedAt; String get fullName; String get availableStoreCreditTotal; List<Address> get addresses; Address? get defaultBillingAddress; Address? get defaultShippingAddress; NewsletterSubscriber? get newsletterSubscriber; List<CustomerGroup> get customerGroups; List<CustomField>? get customFields;
/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerCopyWith<Customer> get copyWith => _$CustomerCopyWithImpl<Customer>(this as Customer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Customer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Customer&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.acceptsEmailMarketing, _this.acceptsEmailMarketing) || other.acceptsEmailMarketing == _this.acceptsEmailMarketing)&&(identical(other.emailMarketingConsentUpdatedAt, _this.emailMarketingConsentUpdatedAt) || other.emailMarketingConsentUpdatedAt == _this.emailMarketingConsentUpdatedAt)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.availableStoreCreditTotal, _this.availableStoreCreditTotal) || other.availableStoreCreditTotal == _this.availableStoreCreditTotal)&&const DeepCollectionEquality().equals(other.addresses, _this.addresses)&&(identical(other.defaultBillingAddress, _this.defaultBillingAddress) || other.defaultBillingAddress == _this.defaultBillingAddress)&&(identical(other.defaultShippingAddress, _this.defaultShippingAddress) || other.defaultShippingAddress == _this.defaultShippingAddress)&&(identical(other.newsletterSubscriber, _this.newsletterSubscriber) || other.newsletterSubscriber == _this.newsletterSubscriber)&&const DeepCollectionEquality().equals(other.customerGroups, _this.customerGroups)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Customer;
  return Object.hash(runtimeType,_this.id,_this.email,_this.firstName,_this.lastName,_this.phone,_this.acceptsEmailMarketing,_this.emailMarketingConsentUpdatedAt,_this.fullName,_this.availableStoreCreditTotal,const DeepCollectionEquality().hash(_this.addresses),_this.defaultBillingAddress,_this.defaultShippingAddress,_this.newsletterSubscriber,const DeepCollectionEquality().hash(_this.customerGroups),const DeepCollectionEquality().hash(_this.customFields));
}

@override
String toString() {
  final _this = this as Customer;
  return 'Customer(id: ${_this.id}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone}, acceptsEmailMarketing: ${_this.acceptsEmailMarketing}, emailMarketingConsentUpdatedAt: ${_this.emailMarketingConsentUpdatedAt}, fullName: ${_this.fullName}, availableStoreCreditTotal: ${_this.availableStoreCreditTotal}, addresses: ${_this.addresses}, defaultBillingAddress: ${_this.defaultBillingAddress}, defaultShippingAddress: ${_this.defaultShippingAddress}, newsletterSubscriber: ${_this.newsletterSubscriber}, customerGroups: ${_this.customerGroups}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $CustomerCopyWith<$Res>  {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) _then) = _$CustomerCopyWithImpl;
@useResult
$Res call({
 String id, String email, String? firstName, String? lastName, String? phone, bool acceptsEmailMarketing, String? emailMarketingConsentUpdatedAt, String fullName, String availableStoreCreditTotal, List<Address> addresses, Address? defaultBillingAddress, Address? defaultShippingAddress, NewsletterSubscriber? newsletterSubscriber, List<CustomerGroup> customerGroups, List<CustomField>? customFields
});


$AddressCopyWith<$Res>? get defaultBillingAddress;$AddressCopyWith<$Res>? get defaultShippingAddress;$NewsletterSubscriberCopyWith<$Res>? get newsletterSubscriber;

}
/// @nodoc
class _$CustomerCopyWithImpl<$Res>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._self, this._then);

  final Customer _self;
  final $Res Function(Customer) _then;

/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? acceptsEmailMarketing = null,Object? emailMarketingConsentUpdatedAt = freezed,Object? fullName = null,Object? availableStoreCreditTotal = null,Object? addresses = null,Object? defaultBillingAddress = freezed,Object? defaultShippingAddress = freezed,Object? newsletterSubscriber = freezed,Object? customerGroups = null,Object? customFields = freezed,}) {
  return _then(Customer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,acceptsEmailMarketing: null == acceptsEmailMarketing ? _self.acceptsEmailMarketing : acceptsEmailMarketing // ignore: cast_nullable_to_non_nullable
as bool,emailMarketingConsentUpdatedAt: freezed == emailMarketingConsentUpdatedAt ? _self.emailMarketingConsentUpdatedAt : emailMarketingConsentUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,availableStoreCreditTotal: null == availableStoreCreditTotal ? _self.availableStoreCreditTotal : availableStoreCreditTotal // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<Address>,defaultBillingAddress: freezed == defaultBillingAddress ? _self.defaultBillingAddress : defaultBillingAddress // ignore: cast_nullable_to_non_nullable
as Address?,defaultShippingAddress: freezed == defaultShippingAddress ? _self.defaultShippingAddress : defaultShippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,newsletterSubscriber: freezed == newsletterSubscriber ? _self.newsletterSubscriber : newsletterSubscriber // ignore: cast_nullable_to_non_nullable
as NewsletterSubscriber?,customerGroups: null == customerGroups ? _self.customerGroups : customerGroups // ignore: cast_nullable_to_non_nullable
as List<CustomerGroup>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get defaultBillingAddress {
    if (_self.defaultBillingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.defaultBillingAddress!, (value) {
    return _then(_self.copyWith(defaultBillingAddress: value));
  });
}/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get defaultShippingAddress {
    if (_self.defaultShippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.defaultShippingAddress!, (value) {
    return _then(_self.copyWith(defaultShippingAddress: value));
  });
}/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewsletterSubscriberCopyWith<$Res>? get newsletterSubscriber {
    if (_self.newsletterSubscriber == null) {
    return null;
  }

  return $NewsletterSubscriberCopyWith<$Res>(_self.newsletterSubscriber!, (value) {
    return _then(_self.copyWith(newsletterSubscriber: value));
  });
}
}


/// Adds pattern-matching-related methods to [Customer].
extension CustomerPatterns on Customer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Customer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Customer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Customer value)  $default,){
final _that = this;
switch (_that) {
case _Customer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Customer value)?  $default,){
final _that = this;
switch (_that) {
case _Customer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String? firstName,  String? lastName,  String? phone,  bool acceptsEmailMarketing,  String? emailMarketingConsentUpdatedAt,  String fullName,  String availableStoreCreditTotal,  List<Address> addresses,  Address? defaultBillingAddress,  Address? defaultShippingAddress,  NewsletterSubscriber? newsletterSubscriber,  List<CustomerGroup> customerGroups,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Customer() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.emailMarketingConsentUpdatedAt,_that.fullName,_that.availableStoreCreditTotal,_that.addresses,_that.defaultBillingAddress,_that.defaultShippingAddress,_that.newsletterSubscriber,_that.customerGroups,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String? firstName,  String? lastName,  String? phone,  bool acceptsEmailMarketing,  String? emailMarketingConsentUpdatedAt,  String fullName,  String availableStoreCreditTotal,  List<Address> addresses,  Address? defaultBillingAddress,  Address? defaultShippingAddress,  NewsletterSubscriber? newsletterSubscriber,  List<CustomerGroup> customerGroups,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Customer():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.emailMarketingConsentUpdatedAt,_that.fullName,_that.availableStoreCreditTotal,_that.addresses,_that.defaultBillingAddress,_that.defaultShippingAddress,_that.newsletterSubscriber,_that.customerGroups,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String? firstName,  String? lastName,  String? phone,  bool acceptsEmailMarketing,  String? emailMarketingConsentUpdatedAt,  String fullName,  String availableStoreCreditTotal,  List<Address> addresses,  Address? defaultBillingAddress,  Address? defaultShippingAddress,  NewsletterSubscriber? newsletterSubscriber,  List<CustomerGroup> customerGroups,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Customer() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.phone,_that.acceptsEmailMarketing,_that.emailMarketingConsentUpdatedAt,_that.fullName,_that.availableStoreCreditTotal,_that.addresses,_that.defaultBillingAddress,_that.defaultShippingAddress,_that.newsletterSubscriber,_that.customerGroups,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Customer extends Customer {
  const _Customer({required this.id, required this.email, this.firstName, this.lastName, this.phone, required this.acceptsEmailMarketing, this.emailMarketingConsentUpdatedAt, required this.fullName, required this.availableStoreCreditTotal, required this.addresses, this.defaultBillingAddress, this.defaultShippingAddress, this.newsletterSubscriber, required this.customerGroups, this.customFields}): super._();
  

@override final  String id;
@override final  String email;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? phone;
@override final  bool acceptsEmailMarketing;
@override final  String? emailMarketingConsentUpdatedAt;
@override final  String fullName;
@override final  String availableStoreCreditTotal;
@override final  List<Address> addresses;
@override final  Address? defaultBillingAddress;
@override final  Address? defaultShippingAddress;
@override final  NewsletterSubscriber? newsletterSubscriber;
@override final  List<CustomerGroup> customerGroups;
@override final  List<CustomField>? customFields;

/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerCopyWith<_Customer> get copyWith => __$CustomerCopyWithImpl<_Customer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Customer&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.acceptsEmailMarketing, acceptsEmailMarketing) || other.acceptsEmailMarketing == acceptsEmailMarketing)&&(identical(other.emailMarketingConsentUpdatedAt, emailMarketingConsentUpdatedAt) || other.emailMarketingConsentUpdatedAt == emailMarketingConsentUpdatedAt)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.availableStoreCreditTotal, availableStoreCreditTotal) || other.availableStoreCreditTotal == availableStoreCreditTotal)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.defaultBillingAddress, defaultBillingAddress) || other.defaultBillingAddress == defaultBillingAddress)&&(identical(other.defaultShippingAddress, defaultShippingAddress) || other.defaultShippingAddress == defaultShippingAddress)&&(identical(other.newsletterSubscriber, newsletterSubscriber) || other.newsletterSubscriber == newsletterSubscriber)&&const DeepCollectionEquality().equals(other.customerGroups, customerGroups)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,email,firstName,lastName,phone,acceptsEmailMarketing,emailMarketingConsentUpdatedAt,fullName,availableStoreCreditTotal,const DeepCollectionEquality().hash(addresses),defaultBillingAddress,defaultShippingAddress,newsletterSubscriber,const DeepCollectionEquality().hash(customerGroups),const DeepCollectionEquality().hash(customFields));
}

@override
String toString() {
    return 'Customer(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, acceptsEmailMarketing: $acceptsEmailMarketing, emailMarketingConsentUpdatedAt: $emailMarketingConsentUpdatedAt, fullName: $fullName, availableStoreCreditTotal: $availableStoreCreditTotal, addresses: $addresses, defaultBillingAddress: $defaultBillingAddress, defaultShippingAddress: $defaultShippingAddress, newsletterSubscriber: $newsletterSubscriber, customerGroups: $customerGroups, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) _then) = __$CustomerCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String? firstName, String? lastName, String? phone, bool acceptsEmailMarketing, String? emailMarketingConsentUpdatedAt, String fullName, String availableStoreCreditTotal, List<Address> addresses, Address? defaultBillingAddress, Address? defaultShippingAddress, NewsletterSubscriber? newsletterSubscriber, List<CustomerGroup> customerGroups, List<CustomField>? customFields
});


@override $AddressCopyWith<$Res>? get defaultBillingAddress;@override $AddressCopyWith<$Res>? get defaultShippingAddress;@override $NewsletterSubscriberCopyWith<$Res>? get newsletterSubscriber;

}
/// @nodoc
class __$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(this._self, this._then);

  final _Customer _self;
  final $Res Function(_Customer) _then;

/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? acceptsEmailMarketing = null,Object? emailMarketingConsentUpdatedAt = freezed,Object? fullName = null,Object? availableStoreCreditTotal = null,Object? addresses = null,Object? defaultBillingAddress = freezed,Object? defaultShippingAddress = freezed,Object? newsletterSubscriber = freezed,Object? customerGroups = null,Object? customFields = freezed,}) {
  return _then(_Customer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,acceptsEmailMarketing: null == acceptsEmailMarketing ? _self.acceptsEmailMarketing : acceptsEmailMarketing // ignore: cast_nullable_to_non_nullable
as bool,emailMarketingConsentUpdatedAt: freezed == emailMarketingConsentUpdatedAt ? _self.emailMarketingConsentUpdatedAt : emailMarketingConsentUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,availableStoreCreditTotal: null == availableStoreCreditTotal ? _self.availableStoreCreditTotal : availableStoreCreditTotal // ignore: cast_nullable_to_non_nullable
as String,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<Address>,defaultBillingAddress: freezed == defaultBillingAddress ? _self.defaultBillingAddress : defaultBillingAddress // ignore: cast_nullable_to_non_nullable
as Address?,defaultShippingAddress: freezed == defaultShippingAddress ? _self.defaultShippingAddress : defaultShippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,newsletterSubscriber: freezed == newsletterSubscriber ? _self.newsletterSubscriber : newsletterSubscriber // ignore: cast_nullable_to_non_nullable
as NewsletterSubscriber?,customerGroups: null == customerGroups ? _self.customerGroups : customerGroups // ignore: cast_nullable_to_non_nullable
as List<CustomerGroup>,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get defaultBillingAddress {
    if (_self.defaultBillingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.defaultBillingAddress!, (value) {
    return _then(_self.copyWith(defaultBillingAddress: value));
  });
}/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get defaultShippingAddress {
    if (_self.defaultShippingAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.defaultShippingAddress!, (value) {
    return _then(_self.copyWith(defaultShippingAddress: value));
  });
}/// Create a copy of Customer
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewsletterSubscriberCopyWith<$Res>? get newsletterSubscriber {
    if (_self.newsletterSubscriber == null) {
    return null;
  }

  return $NewsletterSubscriberCopyWith<$Res>(_self.newsletterSubscriber!, (value) {
    return _then(_self.copyWith(newsletterSubscriber: value));
  });
}
}

// dart format on
