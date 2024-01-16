// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationResponseImpl<T> _$$AuthenticationResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$AuthenticationResponseImpl<T>(
      data: fromJsonT(json['data']),
      code: json['code'] as int? ?? 0,
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthenticationResponseImplToJson<T>(
  _$AuthenticationResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      refreshToken: json['refresh_token'] as String? ?? '',
      accessToken: json['access_token'] as String? ?? '',
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
    };

_$ResetPasswordImpl _$$ResetPasswordImplFromJson(Map<String, dynamic> json) =>
    _$ResetPasswordImpl(
      email: json['email'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$ResetPasswordImplToJson(_$ResetPasswordImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };
