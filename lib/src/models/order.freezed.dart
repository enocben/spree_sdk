// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Order {

 String? get marketId; String? get withdrawalPeriodEndsAt; bool get withinWithdrawalPeriod; bool get shippingEqBillingAddress; String? get cartId; String? get channelId; String? get companyId; String? get companyName; String? get poDocumentFilename; int? get poDocumentByteSize; String get number; String get email; String? get customerNote; String? get poNumber; CurrencyCode get currency; LocaleCode? get locale; int get totalQuantity; String? get couponCode; OrderFulfillmentStatus? get fulfillmentStatus; OrderPaymentStatus? get paymentStatus; String? get completedAt; String? get itemTotal; String? get discountTotal; String? get taxTotal; String? get includedTaxTotal; String? get additionalTaxTotal; String? get deliveryTotal; String? get feeTotal; String? get giftCardTotal; String? get storeCreditTotal; String? get total; String? get amountDue; bool get coveredByStoreCredit; List<Payment> get payments; String? get adjustmentTotal; List<AppliedPromotion> get discounts; List<Fee> get fees; List<LineItem> get items; List<Fulfillment> get fulfillments; Address? get billingAddress; Address? get shippingAddress; GiftCard? get giftCard; Market? get market; List<CustomField>? get customFields;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Order;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.marketId, _this.marketId) || other.marketId == _this.marketId)&&(identical(other.withdrawalPeriodEndsAt, _this.withdrawalPeriodEndsAt) || other.withdrawalPeriodEndsAt == _this.withdrawalPeriodEndsAt)&&(identical(other.withinWithdrawalPeriod, _this.withinWithdrawalPeriod) || other.withinWithdrawalPeriod == _this.withinWithdrawalPeriod)&&(identical(other.shippingEqBillingAddress, _this.shippingEqBillingAddress) || other.shippingEqBillingAddress == _this.shippingEqBillingAddress)&&(identical(other.cartId, _this.cartId) || other.cartId == _this.cartId)&&(identical(other.channelId, _this.channelId) || other.channelId == _this.channelId)&&(identical(other.companyId, _this.companyId) || other.companyId == _this.companyId)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.poDocumentFilename, _this.poDocumentFilename) || other.poDocumentFilename == _this.poDocumentFilename)&&(identical(other.poDocumentByteSize, _this.poDocumentByteSize) || other.poDocumentByteSize == _this.poDocumentByteSize)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.customerNote, _this.customerNote) || other.customerNote == _this.customerNote)&&(identical(other.poNumber, _this.poNumber) || other.poNumber == _this.poNumber)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.locale, _this.locale) || other.locale == _this.locale)&&(identical(other.totalQuantity, _this.totalQuantity) || other.totalQuantity == _this.totalQuantity)&&(identical(other.couponCode, _this.couponCode) || other.couponCode == _this.couponCode)&&(identical(other.fulfillmentStatus, _this.fulfillmentStatus) || other.fulfillmentStatus == _this.fulfillmentStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.completedAt, _this.completedAt) || other.completedAt == _this.completedAt)&&(identical(other.itemTotal, _this.itemTotal) || other.itemTotal == _this.itemTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.deliveryTotal, _this.deliveryTotal) || other.deliveryTotal == _this.deliveryTotal)&&(identical(other.feeTotal, _this.feeTotal) || other.feeTotal == _this.feeTotal)&&(identical(other.giftCardTotal, _this.giftCardTotal) || other.giftCardTotal == _this.giftCardTotal)&&(identical(other.storeCreditTotal, _this.storeCreditTotal) || other.storeCreditTotal == _this.storeCreditTotal)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.amountDue, _this.amountDue) || other.amountDue == _this.amountDue)&&(identical(other.coveredByStoreCredit, _this.coveredByStoreCredit) || other.coveredByStoreCredit == _this.coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, _this.payments)&&(identical(other.adjustmentTotal, _this.adjustmentTotal) || other.adjustmentTotal == _this.adjustmentTotal)&&const DeepCollectionEquality().equals(other.discounts, _this.discounts)&&const DeepCollectionEquality().equals(other.fees, _this.fees)&&const DeepCollectionEquality().equals(other.items, _this.items)&&const DeepCollectionEquality().equals(other.fulfillments, _this.fulfillments)&&(identical(other.billingAddress, _this.billingAddress) || other.billingAddress == _this.billingAddress)&&(identical(other.shippingAddress, _this.shippingAddress) || other.shippingAddress == _this.shippingAddress)&&(identical(other.giftCard, _this.giftCard) || other.giftCard == _this.giftCard)&&(identical(other.market, _this.market) || other.market == _this.market)&&const DeepCollectionEquality().equals(other.customFields, _this.customFields));
}


@override
int get hashCode {
  final _this = this as Order;
  return Object.hashAll([runtimeType,_this.marketId,_this.withdrawalPeriodEndsAt,_this.withinWithdrawalPeriod,_this.shippingEqBillingAddress,_this.cartId,_this.channelId,_this.companyId,_this.companyName,_this.poDocumentFilename,_this.poDocumentByteSize,_this.number,_this.email,_this.customerNote,_this.poNumber,_this.currency,_this.locale,_this.totalQuantity,_this.couponCode,_this.fulfillmentStatus,_this.paymentStatus,_this.completedAt,_this.itemTotal,_this.discountTotal,_this.taxTotal,_this.includedTaxTotal,_this.additionalTaxTotal,_this.deliveryTotal,_this.feeTotal,_this.giftCardTotal,_this.storeCreditTotal,_this.total,_this.amountDue,_this.coveredByStoreCredit,const DeepCollectionEquality().hash(_this.payments),_this.adjustmentTotal,const DeepCollectionEquality().hash(_this.discounts),const DeepCollectionEquality().hash(_this.fees),const DeepCollectionEquality().hash(_this.items),const DeepCollectionEquality().hash(_this.fulfillments),_this.billingAddress,_this.shippingAddress,_this.giftCard,_this.market,const DeepCollectionEquality().hash(_this.customFields)]);
}

@override
String toString() {
  final _this = this as Order;
  return 'Order(marketId: ${_this.marketId}, withdrawalPeriodEndsAt: ${_this.withdrawalPeriodEndsAt}, withinWithdrawalPeriod: ${_this.withinWithdrawalPeriod}, shippingEqBillingAddress: ${_this.shippingEqBillingAddress}, cartId: ${_this.cartId}, channelId: ${_this.channelId}, companyId: ${_this.companyId}, companyName: ${_this.companyName}, poDocumentFilename: ${_this.poDocumentFilename}, poDocumentByteSize: ${_this.poDocumentByteSize}, number: ${_this.number}, email: ${_this.email}, customerNote: ${_this.customerNote}, poNumber: ${_this.poNumber}, currency: ${_this.currency}, locale: ${_this.locale}, totalQuantity: ${_this.totalQuantity}, couponCode: ${_this.couponCode}, fulfillmentStatus: ${_this.fulfillmentStatus}, paymentStatus: ${_this.paymentStatus}, completedAt: ${_this.completedAt}, itemTotal: ${_this.itemTotal}, discountTotal: ${_this.discountTotal}, taxTotal: ${_this.taxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, deliveryTotal: ${_this.deliveryTotal}, feeTotal: ${_this.feeTotal}, giftCardTotal: ${_this.giftCardTotal}, storeCreditTotal: ${_this.storeCreditTotal}, total: ${_this.total}, amountDue: ${_this.amountDue}, coveredByStoreCredit: ${_this.coveredByStoreCredit}, payments: ${_this.payments}, adjustmentTotal: ${_this.adjustmentTotal}, discounts: ${_this.discounts}, fees: ${_this.fees}, items: ${_this.items}, fulfillments: ${_this.fulfillments}, billingAddress: ${_this.billingAddress}, shippingAddress: ${_this.shippingAddress}, giftCard: ${_this.giftCard}, market: ${_this.market}, customFields: ${_this.customFields})';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String? marketId, String? withdrawalPeriodEndsAt, bool withinWithdrawalPeriod, bool shippingEqBillingAddress, String? cartId, String? channelId, String? companyId, String? companyName, String? poDocumentFilename, int? poDocumentByteSize, String number, String email, String? customerNote, String? poNumber, CurrencyCode currency, LocaleCode? locale, int totalQuantity, String? couponCode, OrderFulfillmentStatus? fulfillmentStatus, OrderPaymentStatus? paymentStatus, String? completedAt, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, String? adjustmentTotal, List<AppliedPromotion> discounts, List<Fee> fees, List<LineItem> items, List<Fulfillment> fulfillments, Address? billingAddress, Address? shippingAddress, GiftCard? giftCard, Market? market, List<CustomField>? customFields
});


$AddressCopyWith<$Res>? get billingAddress;$AddressCopyWith<$Res>? get shippingAddress;$GiftCardCopyWith<$Res>? get giftCard;$MarketCopyWith<$Res>? get market;

}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marketId = freezed,Object? withdrawalPeriodEndsAt = freezed,Object? withinWithdrawalPeriod = null,Object? shippingEqBillingAddress = null,Object? cartId = freezed,Object? channelId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? poDocumentFilename = freezed,Object? poDocumentByteSize = freezed,Object? number = null,Object? email = null,Object? customerNote = freezed,Object? poNumber = freezed,Object? currency = null,Object? locale = freezed,Object? totalQuantity = null,Object? couponCode = freezed,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? completedAt = freezed,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? adjustmentTotal = freezed,Object? discounts = null,Object? fees = null,Object? items = null,Object? fulfillments = null,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? giftCard = freezed,Object? market = freezed,Object? customFields = freezed,}) {
  return _then(Order(
marketId: freezed == marketId ? _self.marketId : marketId // ignore: cast_nullable_to_non_nullable
as String?,withdrawalPeriodEndsAt: freezed == withdrawalPeriodEndsAt ? _self.withdrawalPeriodEndsAt : withdrawalPeriodEndsAt // ignore: cast_nullable_to_non_nullable
as String?,withinWithdrawalPeriod: null == withinWithdrawalPeriod ? _self.withinWithdrawalPeriod : withinWithdrawalPeriod // ignore: cast_nullable_to_non_nullable
as bool,shippingEqBillingAddress: null == shippingEqBillingAddress ? _self.shippingEqBillingAddress : shippingEqBillingAddress // ignore: cast_nullable_to_non_nullable
as bool,cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as String?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,poDocumentFilename: freezed == poDocumentFilename ? _self.poDocumentFilename : poDocumentFilename // ignore: cast_nullable_to_non_nullable
as String?,poDocumentByteSize: freezed == poDocumentByteSize ? _self.poDocumentByteSize : poDocumentByteSize // ignore: cast_nullable_to_non_nullable
as int?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,poNumber: freezed == poNumber ? _self.poNumber : poNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as LocaleCode?,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
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
as String?,discounts: null == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<AppliedPromotion>,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as List<Fee>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LineItem>,fulfillments: null == fulfillments ? _self.fulfillments : fulfillments // ignore: cast_nullable_to_non_nullable
as List<Fulfillment>,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,giftCard: freezed == giftCard ? _self.giftCard : giftCard // ignore: cast_nullable_to_non_nullable
as GiftCard?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}
/// Create a copy of Order
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
}/// Create a copy of Order
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
}/// Create a copy of Order
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
}/// Create a copy of Order
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


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? marketId,  String? withdrawalPeriodEndsAt,  bool withinWithdrawalPeriod,  bool shippingEqBillingAddress,  String? cartId,  String? channelId,  String? companyId,  String? companyName,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String email,  String? customerNote,  String? poNumber,  CurrencyCode currency,  LocaleCode? locale,  int totalQuantity,  String? couponCode,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  GiftCard? giftCard,  Market? market,  List<CustomField>? customFields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.marketId,_that.withdrawalPeriodEndsAt,_that.withinWithdrawalPeriod,_that.shippingEqBillingAddress,_that.cartId,_that.channelId,_that.companyId,_that.companyName,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.couponCode,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.giftCard,_that.market,_that.customFields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? marketId,  String? withdrawalPeriodEndsAt,  bool withinWithdrawalPeriod,  bool shippingEqBillingAddress,  String? cartId,  String? channelId,  String? companyId,  String? companyName,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String email,  String? customerNote,  String? poNumber,  CurrencyCode currency,  LocaleCode? locale,  int totalQuantity,  String? couponCode,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  GiftCard? giftCard,  Market? market,  List<CustomField>? customFields)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.marketId,_that.withdrawalPeriodEndsAt,_that.withinWithdrawalPeriod,_that.shippingEqBillingAddress,_that.cartId,_that.channelId,_that.companyId,_that.companyName,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.couponCode,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.giftCard,_that.market,_that.customFields);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? marketId,  String? withdrawalPeriodEndsAt,  bool withinWithdrawalPeriod,  bool shippingEqBillingAddress,  String? cartId,  String? channelId,  String? companyId,  String? companyName,  String? poDocumentFilename,  int? poDocumentByteSize,  String number,  String email,  String? customerNote,  String? poNumber,  CurrencyCode currency,  LocaleCode? locale,  int totalQuantity,  String? couponCode,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  String? adjustmentTotal,  List<AppliedPromotion> discounts,  List<Fee> fees,  List<LineItem> items,  List<Fulfillment> fulfillments,  Address? billingAddress,  Address? shippingAddress,  GiftCard? giftCard,  Market? market,  List<CustomField>? customFields)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.marketId,_that.withdrawalPeriodEndsAt,_that.withinWithdrawalPeriod,_that.shippingEqBillingAddress,_that.cartId,_that.channelId,_that.companyId,_that.companyName,_that.poDocumentFilename,_that.poDocumentByteSize,_that.number,_that.email,_that.customerNote,_that.poNumber,_that.currency,_that.locale,_that.totalQuantity,_that.couponCode,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.adjustmentTotal,_that.discounts,_that.fees,_that.items,_that.fulfillments,_that.billingAddress,_that.shippingAddress,_that.giftCard,_that.market,_that.customFields);case _:
  return null;

}
}

}

/// @nodoc


class _Order extends Order {
  const _Order({this.marketId, this.withdrawalPeriodEndsAt, required this.withinWithdrawalPeriod, required this.shippingEqBillingAddress, this.cartId, this.channelId, this.companyId, this.companyName, this.poDocumentFilename, this.poDocumentByteSize, required this.number, required this.email, this.customerNote, this.poNumber, required this.currency, this.locale, required this.totalQuantity, this.couponCode, this.fulfillmentStatus, this.paymentStatus, this.completedAt, this.itemTotal, this.discountTotal, this.taxTotal, this.includedTaxTotal, this.additionalTaxTotal, this.deliveryTotal, this.feeTotal, this.giftCardTotal, this.storeCreditTotal, this.total, this.amountDue, required this.coveredByStoreCredit, required this.payments, this.adjustmentTotal, required this.discounts, required this.fees, required this.items, required this.fulfillments, this.billingAddress, this.shippingAddress, this.giftCard, this.market, this.customFields}): super._();
  

@override final  String? marketId;
@override final  String? withdrawalPeriodEndsAt;
@override final  bool withinWithdrawalPeriod;
@override final  bool shippingEqBillingAddress;
@override final  String? cartId;
@override final  String? channelId;
@override final  String? companyId;
@override final  String? companyName;
@override final  String? poDocumentFilename;
@override final  int? poDocumentByteSize;
@override final  String number;
@override final  String email;
@override final  String? customerNote;
@override final  String? poNumber;
@override final  CurrencyCode currency;
@override final  LocaleCode? locale;
@override final  int totalQuantity;
@override final  String? couponCode;
@override final  OrderFulfillmentStatus? fulfillmentStatus;
@override final  OrderPaymentStatus? paymentStatus;
@override final  String? completedAt;
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
@override final  List<AppliedPromotion> discounts;
@override final  List<Fee> fees;
@override final  List<LineItem> items;
@override final  List<Fulfillment> fulfillments;
@override final  Address? billingAddress;
@override final  Address? shippingAddress;
@override final  GiftCard? giftCard;
@override final  Market? market;
@override final  List<CustomField>? customFields;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.marketId, marketId) || other.marketId == marketId)&&(identical(other.withdrawalPeriodEndsAt, withdrawalPeriodEndsAt) || other.withdrawalPeriodEndsAt == withdrawalPeriodEndsAt)&&(identical(other.withinWithdrawalPeriod, withinWithdrawalPeriod) || other.withinWithdrawalPeriod == withinWithdrawalPeriod)&&(identical(other.shippingEqBillingAddress, shippingEqBillingAddress) || other.shippingEqBillingAddress == shippingEqBillingAddress)&&(identical(other.cartId, cartId) || other.cartId == cartId)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.poDocumentFilename, poDocumentFilename) || other.poDocumentFilename == poDocumentFilename)&&(identical(other.poDocumentByteSize, poDocumentByteSize) || other.poDocumentByteSize == poDocumentByteSize)&&(identical(other.number, number) || other.number == number)&&(identical(other.email, email) || other.email == email)&&(identical(other.customerNote, customerNote) || other.customerNote == customerNote)&&(identical(other.poNumber, poNumber) || other.poNumber == poNumber)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.couponCode, couponCode) || other.couponCode == couponCode)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.itemTotal, itemTotal) || other.itemTotal == itemTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.deliveryTotal, deliveryTotal) || other.deliveryTotal == deliveryTotal)&&(identical(other.feeTotal, feeTotal) || other.feeTotal == feeTotal)&&(identical(other.giftCardTotal, giftCardTotal) || other.giftCardTotal == giftCardTotal)&&(identical(other.storeCreditTotal, storeCreditTotal) || other.storeCreditTotal == storeCreditTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.coveredByStoreCredit, coveredByStoreCredit) || other.coveredByStoreCredit == coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.adjustmentTotal, adjustmentTotal) || other.adjustmentTotal == adjustmentTotal)&&const DeepCollectionEquality().equals(other.discounts, discounts)&&const DeepCollectionEquality().equals(other.fees, fees)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.fulfillments, fulfillments)&&(identical(other.billingAddress, billingAddress) || other.billingAddress == billingAddress)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.giftCard, giftCard) || other.giftCard == giftCard)&&(identical(other.market, market) || other.market == market)&&const DeepCollectionEquality().equals(other.customFields, customFields));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,marketId,withdrawalPeriodEndsAt,withinWithdrawalPeriod,shippingEqBillingAddress,cartId,channelId,companyId,companyName,poDocumentFilename,poDocumentByteSize,number,email,customerNote,poNumber,currency,locale,totalQuantity,couponCode,fulfillmentStatus,paymentStatus,completedAt,itemTotal,discountTotal,taxTotal,includedTaxTotal,additionalTaxTotal,deliveryTotal,feeTotal,giftCardTotal,storeCreditTotal,total,amountDue,coveredByStoreCredit,const DeepCollectionEquality().hash(payments),adjustmentTotal,const DeepCollectionEquality().hash(discounts),const DeepCollectionEquality().hash(fees),const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(fulfillments),billingAddress,shippingAddress,giftCard,market,const DeepCollectionEquality().hash(customFields)]);
}

@override
String toString() {
    return 'Order(marketId: $marketId, withdrawalPeriodEndsAt: $withdrawalPeriodEndsAt, withinWithdrawalPeriod: $withinWithdrawalPeriod, shippingEqBillingAddress: $shippingEqBillingAddress, cartId: $cartId, channelId: $channelId, companyId: $companyId, companyName: $companyName, poDocumentFilename: $poDocumentFilename, poDocumentByteSize: $poDocumentByteSize, number: $number, email: $email, customerNote: $customerNote, poNumber: $poNumber, currency: $currency, locale: $locale, totalQuantity: $totalQuantity, couponCode: $couponCode, fulfillmentStatus: $fulfillmentStatus, paymentStatus: $paymentStatus, completedAt: $completedAt, itemTotal: $itemTotal, discountTotal: $discountTotal, taxTotal: $taxTotal, includedTaxTotal: $includedTaxTotal, additionalTaxTotal: $additionalTaxTotal, deliveryTotal: $deliveryTotal, feeTotal: $feeTotal, giftCardTotal: $giftCardTotal, storeCreditTotal: $storeCreditTotal, total: $total, amountDue: $amountDue, coveredByStoreCredit: $coveredByStoreCredit, payments: $payments, adjustmentTotal: $adjustmentTotal, discounts: $discounts, fees: $fees, items: $items, fulfillments: $fulfillments, billingAddress: $billingAddress, shippingAddress: $shippingAddress, giftCard: $giftCard, market: $market, customFields: $customFields)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String? marketId, String? withdrawalPeriodEndsAt, bool withinWithdrawalPeriod, bool shippingEqBillingAddress, String? cartId, String? channelId, String? companyId, String? companyName, String? poDocumentFilename, int? poDocumentByteSize, String number, String email, String? customerNote, String? poNumber, CurrencyCode currency, LocaleCode? locale, int totalQuantity, String? couponCode, OrderFulfillmentStatus? fulfillmentStatus, OrderPaymentStatus? paymentStatus, String? completedAt, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, String? adjustmentTotal, List<AppliedPromotion> discounts, List<Fee> fees, List<LineItem> items, List<Fulfillment> fulfillments, Address? billingAddress, Address? shippingAddress, GiftCard? giftCard, Market? market, List<CustomField>? customFields
});


@override $AddressCopyWith<$Res>? get billingAddress;@override $AddressCopyWith<$Res>? get shippingAddress;@override $GiftCardCopyWith<$Res>? get giftCard;@override $MarketCopyWith<$Res>? get market;

}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marketId = freezed,Object? withdrawalPeriodEndsAt = freezed,Object? withinWithdrawalPeriod = null,Object? shippingEqBillingAddress = null,Object? cartId = freezed,Object? channelId = freezed,Object? companyId = freezed,Object? companyName = freezed,Object? poDocumentFilename = freezed,Object? poDocumentByteSize = freezed,Object? number = null,Object? email = null,Object? customerNote = freezed,Object? poNumber = freezed,Object? currency = null,Object? locale = freezed,Object? totalQuantity = null,Object? couponCode = freezed,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? completedAt = freezed,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? adjustmentTotal = freezed,Object? discounts = null,Object? fees = null,Object? items = null,Object? fulfillments = null,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? giftCard = freezed,Object? market = freezed,Object? customFields = freezed,}) {
  return _then(_Order(
marketId: freezed == marketId ? _self.marketId : marketId // ignore: cast_nullable_to_non_nullable
as String?,withdrawalPeriodEndsAt: freezed == withdrawalPeriodEndsAt ? _self.withdrawalPeriodEndsAt : withdrawalPeriodEndsAt // ignore: cast_nullable_to_non_nullable
as String?,withinWithdrawalPeriod: null == withinWithdrawalPeriod ? _self.withinWithdrawalPeriod : withinWithdrawalPeriod // ignore: cast_nullable_to_non_nullable
as bool,shippingEqBillingAddress: null == shippingEqBillingAddress ? _self.shippingEqBillingAddress : shippingEqBillingAddress // ignore: cast_nullable_to_non_nullable
as bool,cartId: freezed == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as String?,channelId: freezed == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String?,companyId: freezed == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,poDocumentFilename: freezed == poDocumentFilename ? _self.poDocumentFilename : poDocumentFilename // ignore: cast_nullable_to_non_nullable
as String?,poDocumentByteSize: freezed == poDocumentByteSize ? _self.poDocumentByteSize : poDocumentByteSize // ignore: cast_nullable_to_non_nullable
as int?,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,customerNote: freezed == customerNote ? _self.customerNote : customerNote // ignore: cast_nullable_to_non_nullable
as String?,poNumber: freezed == poNumber ? _self.poNumber : poNumber // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as LocaleCode?,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,couponCode: freezed == couponCode ? _self.couponCode : couponCode // ignore: cast_nullable_to_non_nullable
as String?,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
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
as String?,discounts: null == discounts ? _self.discounts : discounts // ignore: cast_nullable_to_non_nullable
as List<AppliedPromotion>,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as List<Fee>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<LineItem>,fulfillments: null == fulfillments ? _self.fulfillments : fulfillments // ignore: cast_nullable_to_non_nullable
as List<Fulfillment>,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,giftCard: freezed == giftCard ? _self.giftCard : giftCard // ignore: cast_nullable_to_non_nullable
as GiftCard?,market: freezed == market ? _self.market : market // ignore: cast_nullable_to_non_nullable
as Market?,customFields: freezed == customFields ? _self.customFields : customFields // ignore: cast_nullable_to_non_nullable
as List<CustomField>?,
  ));
}

/// Create a copy of Order
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
}/// Create a copy of Order
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
}/// Create a copy of Order
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
}/// Create a copy of Order
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
mixin _$OrderGroup {

 String get id; String get number; String? get email; CurrencyCode get currency; String? get itemTotal; String? get discountTotal; String? get taxTotal; String? get includedTaxTotal; String? get additionalTaxTotal; String? get deliveryTotal; String? get feeTotal; String? get giftCardTotal; String? get storeCreditTotal; String? get total; String? get amountDue; bool get coveredByStoreCredit; List<Payment> get payments; OrderFulfillmentStatus? get fulfillmentStatus; OrderPaymentStatus? get paymentStatus; String? get completedAt; Address? get billingAddress; Address? get shippingAddress; List<Order> get orders;
/// Create a copy of OrderGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderGroupCopyWith<OrderGroup> get copyWith => _$OrderGroupCopyWithImpl<OrderGroup>(this as OrderGroup, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderGroup;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderGroup&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.number, _this.number) || other.number == _this.number)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.itemTotal, _this.itemTotal) || other.itemTotal == _this.itemTotal)&&(identical(other.discountTotal, _this.discountTotal) || other.discountTotal == _this.discountTotal)&&(identical(other.taxTotal, _this.taxTotal) || other.taxTotal == _this.taxTotal)&&(identical(other.includedTaxTotal, _this.includedTaxTotal) || other.includedTaxTotal == _this.includedTaxTotal)&&(identical(other.additionalTaxTotal, _this.additionalTaxTotal) || other.additionalTaxTotal == _this.additionalTaxTotal)&&(identical(other.deliveryTotal, _this.deliveryTotal) || other.deliveryTotal == _this.deliveryTotal)&&(identical(other.feeTotal, _this.feeTotal) || other.feeTotal == _this.feeTotal)&&(identical(other.giftCardTotal, _this.giftCardTotal) || other.giftCardTotal == _this.giftCardTotal)&&(identical(other.storeCreditTotal, _this.storeCreditTotal) || other.storeCreditTotal == _this.storeCreditTotal)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.amountDue, _this.amountDue) || other.amountDue == _this.amountDue)&&(identical(other.coveredByStoreCredit, _this.coveredByStoreCredit) || other.coveredByStoreCredit == _this.coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, _this.payments)&&(identical(other.fulfillmentStatus, _this.fulfillmentStatus) || other.fulfillmentStatus == _this.fulfillmentStatus)&&(identical(other.paymentStatus, _this.paymentStatus) || other.paymentStatus == _this.paymentStatus)&&(identical(other.completedAt, _this.completedAt) || other.completedAt == _this.completedAt)&&(identical(other.billingAddress, _this.billingAddress) || other.billingAddress == _this.billingAddress)&&(identical(other.shippingAddress, _this.shippingAddress) || other.shippingAddress == _this.shippingAddress)&&const DeepCollectionEquality().equals(other.orders, _this.orders));
}


@override
int get hashCode {
  final _this = this as OrderGroup;
  return Object.hashAll([runtimeType,_this.id,_this.number,_this.email,_this.currency,_this.itemTotal,_this.discountTotal,_this.taxTotal,_this.includedTaxTotal,_this.additionalTaxTotal,_this.deliveryTotal,_this.feeTotal,_this.giftCardTotal,_this.storeCreditTotal,_this.total,_this.amountDue,_this.coveredByStoreCredit,const DeepCollectionEquality().hash(_this.payments),_this.fulfillmentStatus,_this.paymentStatus,_this.completedAt,_this.billingAddress,_this.shippingAddress,const DeepCollectionEquality().hash(_this.orders)]);
}

@override
String toString() {
  final _this = this as OrderGroup;
  return 'OrderGroup(id: ${_this.id}, number: ${_this.number}, email: ${_this.email}, currency: ${_this.currency}, itemTotal: ${_this.itemTotal}, discountTotal: ${_this.discountTotal}, taxTotal: ${_this.taxTotal}, includedTaxTotal: ${_this.includedTaxTotal}, additionalTaxTotal: ${_this.additionalTaxTotal}, deliveryTotal: ${_this.deliveryTotal}, feeTotal: ${_this.feeTotal}, giftCardTotal: ${_this.giftCardTotal}, storeCreditTotal: ${_this.storeCreditTotal}, total: ${_this.total}, amountDue: ${_this.amountDue}, coveredByStoreCredit: ${_this.coveredByStoreCredit}, payments: ${_this.payments}, fulfillmentStatus: ${_this.fulfillmentStatus}, paymentStatus: ${_this.paymentStatus}, completedAt: ${_this.completedAt}, billingAddress: ${_this.billingAddress}, shippingAddress: ${_this.shippingAddress}, orders: ${_this.orders})';
}


}

/// @nodoc
abstract mixin class $OrderGroupCopyWith<$Res>  {
  factory $OrderGroupCopyWith(OrderGroup value, $Res Function(OrderGroup) _then) = _$OrderGroupCopyWithImpl;
@useResult
$Res call({
 String id, String number, String? email, CurrencyCode currency, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, OrderFulfillmentStatus? fulfillmentStatus, OrderPaymentStatus? paymentStatus, String? completedAt, Address? billingAddress, Address? shippingAddress, List<Order> orders
});


$AddressCopyWith<$Res>? get billingAddress;$AddressCopyWith<$Res>? get shippingAddress;

}
/// @nodoc
class _$OrderGroupCopyWithImpl<$Res>
    implements $OrderGroupCopyWith<$Res> {
  _$OrderGroupCopyWithImpl(this._self, this._then);

  final OrderGroup _self;
  final $Res Function(OrderGroup) _then;

/// Create a copy of OrderGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? email = freezed,Object? currency = null,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? completedAt = freezed,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? orders = null,}) {
  return _then(OrderGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,itemTotal: freezed == itemTotal ? _self.itemTotal : itemTotal // ignore: cast_nullable_to_non_nullable
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
as List<Payment>,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,
  ));
}
/// Create a copy of OrderGroup
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
}/// Create a copy of OrderGroup
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
}
}


/// Adds pattern-matching-related methods to [OrderGroup].
extension OrderGroupPatterns on OrderGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderGroup value)  $default,){
final _that = this;
switch (_that) {
case _OrderGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderGroup value)?  $default,){
final _that = this;
switch (_that) {
case _OrderGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String number,  String? email,  CurrencyCode currency,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  Address? billingAddress,  Address? shippingAddress,  List<Order> orders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderGroup() when $default != null:
return $default(_that.id,_that.number,_that.email,_that.currency,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.billingAddress,_that.shippingAddress,_that.orders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String number,  String? email,  CurrencyCode currency,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  Address? billingAddress,  Address? shippingAddress,  List<Order> orders)  $default,) {final _that = this;
switch (_that) {
case _OrderGroup():
return $default(_that.id,_that.number,_that.email,_that.currency,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.billingAddress,_that.shippingAddress,_that.orders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String number,  String? email,  CurrencyCode currency,  String? itemTotal,  String? discountTotal,  String? taxTotal,  String? includedTaxTotal,  String? additionalTaxTotal,  String? deliveryTotal,  String? feeTotal,  String? giftCardTotal,  String? storeCreditTotal,  String? total,  String? amountDue,  bool coveredByStoreCredit,  List<Payment> payments,  OrderFulfillmentStatus? fulfillmentStatus,  OrderPaymentStatus? paymentStatus,  String? completedAt,  Address? billingAddress,  Address? shippingAddress,  List<Order> orders)?  $default,) {final _that = this;
switch (_that) {
case _OrderGroup() when $default != null:
return $default(_that.id,_that.number,_that.email,_that.currency,_that.itemTotal,_that.discountTotal,_that.taxTotal,_that.includedTaxTotal,_that.additionalTaxTotal,_that.deliveryTotal,_that.feeTotal,_that.giftCardTotal,_that.storeCreditTotal,_that.total,_that.amountDue,_that.coveredByStoreCredit,_that.payments,_that.fulfillmentStatus,_that.paymentStatus,_that.completedAt,_that.billingAddress,_that.shippingAddress,_that.orders);case _:
  return null;

}
}

}

/// @nodoc


class _OrderGroup extends OrderGroup {
  const _OrderGroup({required this.id, required this.number, this.email, required this.currency, this.itemTotal, this.discountTotal, this.taxTotal, this.includedTaxTotal, this.additionalTaxTotal, this.deliveryTotal, this.feeTotal, this.giftCardTotal, this.storeCreditTotal, this.total, this.amountDue, required this.coveredByStoreCredit, required this.payments, this.fulfillmentStatus, this.paymentStatus, this.completedAt, this.billingAddress, this.shippingAddress, required this.orders}): super._();
  

@override final  String id;
@override final  String number;
@override final  String? email;
@override final  CurrencyCode currency;
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
@override final  OrderFulfillmentStatus? fulfillmentStatus;
@override final  OrderPaymentStatus? paymentStatus;
@override final  String? completedAt;
@override final  Address? billingAddress;
@override final  Address? shippingAddress;
@override final  List<Order> orders;

/// Create a copy of OrderGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderGroupCopyWith<_OrderGroup> get copyWith => __$OrderGroupCopyWithImpl<_OrderGroup>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.email, email) || other.email == email)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.itemTotal, itemTotal) || other.itemTotal == itemTotal)&&(identical(other.discountTotal, discountTotal) || other.discountTotal == discountTotal)&&(identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal)&&(identical(other.includedTaxTotal, includedTaxTotal) || other.includedTaxTotal == includedTaxTotal)&&(identical(other.additionalTaxTotal, additionalTaxTotal) || other.additionalTaxTotal == additionalTaxTotal)&&(identical(other.deliveryTotal, deliveryTotal) || other.deliveryTotal == deliveryTotal)&&(identical(other.feeTotal, feeTotal) || other.feeTotal == feeTotal)&&(identical(other.giftCardTotal, giftCardTotal) || other.giftCardTotal == giftCardTotal)&&(identical(other.storeCreditTotal, storeCreditTotal) || other.storeCreditTotal == storeCreditTotal)&&(identical(other.total, total) || other.total == total)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.coveredByStoreCredit, coveredByStoreCredit) || other.coveredByStoreCredit == coveredByStoreCredit)&&const DeepCollectionEquality().equals(other.payments, payments)&&(identical(other.fulfillmentStatus, fulfillmentStatus) || other.fulfillmentStatus == fulfillmentStatus)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.billingAddress, billingAddress) || other.billingAddress == billingAddress)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&const DeepCollectionEquality().equals(other.orders, orders));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,number,email,currency,itemTotal,discountTotal,taxTotal,includedTaxTotal,additionalTaxTotal,deliveryTotal,feeTotal,giftCardTotal,storeCreditTotal,total,amountDue,coveredByStoreCredit,const DeepCollectionEquality().hash(payments),fulfillmentStatus,paymentStatus,completedAt,billingAddress,shippingAddress,const DeepCollectionEquality().hash(orders)]);
}

@override
String toString() {
    return 'OrderGroup(id: $id, number: $number, email: $email, currency: $currency, itemTotal: $itemTotal, discountTotal: $discountTotal, taxTotal: $taxTotal, includedTaxTotal: $includedTaxTotal, additionalTaxTotal: $additionalTaxTotal, deliveryTotal: $deliveryTotal, feeTotal: $feeTotal, giftCardTotal: $giftCardTotal, storeCreditTotal: $storeCreditTotal, total: $total, amountDue: $amountDue, coveredByStoreCredit: $coveredByStoreCredit, payments: $payments, fulfillmentStatus: $fulfillmentStatus, paymentStatus: $paymentStatus, completedAt: $completedAt, billingAddress: $billingAddress, shippingAddress: $shippingAddress, orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$OrderGroupCopyWith<$Res> implements $OrderGroupCopyWith<$Res> {
  factory _$OrderGroupCopyWith(_OrderGroup value, $Res Function(_OrderGroup) _then) = __$OrderGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String number, String? email, CurrencyCode currency, String? itemTotal, String? discountTotal, String? taxTotal, String? includedTaxTotal, String? additionalTaxTotal, String? deliveryTotal, String? feeTotal, String? giftCardTotal, String? storeCreditTotal, String? total, String? amountDue, bool coveredByStoreCredit, List<Payment> payments, OrderFulfillmentStatus? fulfillmentStatus, OrderPaymentStatus? paymentStatus, String? completedAt, Address? billingAddress, Address? shippingAddress, List<Order> orders
});


@override $AddressCopyWith<$Res>? get billingAddress;@override $AddressCopyWith<$Res>? get shippingAddress;

}
/// @nodoc
class __$OrderGroupCopyWithImpl<$Res>
    implements _$OrderGroupCopyWith<$Res> {
  __$OrderGroupCopyWithImpl(this._self, this._then);

  final _OrderGroup _self;
  final $Res Function(_OrderGroup) _then;

/// Create a copy of OrderGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? email = freezed,Object? currency = null,Object? itemTotal = freezed,Object? discountTotal = freezed,Object? taxTotal = freezed,Object? includedTaxTotal = freezed,Object? additionalTaxTotal = freezed,Object? deliveryTotal = freezed,Object? feeTotal = freezed,Object? giftCardTotal = freezed,Object? storeCreditTotal = freezed,Object? total = freezed,Object? amountDue = freezed,Object? coveredByStoreCredit = null,Object? payments = null,Object? fulfillmentStatus = freezed,Object? paymentStatus = freezed,Object? completedAt = freezed,Object? billingAddress = freezed,Object? shippingAddress = freezed,Object? orders = null,}) {
  return _then(_OrderGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as CurrencyCode,itemTotal: freezed == itemTotal ? _self.itemTotal : itemTotal // ignore: cast_nullable_to_non_nullable
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
as List<Payment>,fulfillmentStatus: freezed == fulfillmentStatus ? _self.fulfillmentStatus : fulfillmentStatus // ignore: cast_nullable_to_non_nullable
as OrderFulfillmentStatus?,paymentStatus: freezed == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as OrderPaymentStatus?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,billingAddress: freezed == billingAddress ? _self.billingAddress : billingAddress // ignore: cast_nullable_to_non_nullable
as Address?,shippingAddress: freezed == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as Address?,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,
  ));
}

/// Create a copy of OrderGroup
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
}/// Create a copy of OrderGroup
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
}
}

// dart format on
