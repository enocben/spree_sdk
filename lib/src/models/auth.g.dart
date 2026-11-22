// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokens _$AuthTokensFromJson(Map<String, dynamic> json) => _AuthTokens(
  token: json['token'] as String,
  refreshToken: json['refresh_token'] as String,
  user: AuthUser.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AuthTokensToJson(_AuthTokens instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'user': instance.user.toJson(),
    };

_AuthUser _$AuthUserFromJson(Map<String, dynamic> json) => _AuthUser(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  phone: json['phone'] as String?,
  acceptsEmailMarketing: json['accepts_email_marketing'] as bool?,
  emailMarketingConsentUpdatedAt:
      json['email_marketing_consent_updated_at'] as String?,
  fullName: json['full_name'] as String?,
  availableStoreCreditTotal: json['available_store_credit_total'] as String?,
);

Map<String, dynamic> _$AuthUserToJson(_AuthUser instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'accepts_email_marketing': instance.acceptsEmailMarketing,
  'email_marketing_consent_updated_at': instance.emailMarketingConsentUpdatedAt,
  'full_name': instance.fullName,
  'available_store_credit_total': instance.availableStoreCreditTotal,
};
