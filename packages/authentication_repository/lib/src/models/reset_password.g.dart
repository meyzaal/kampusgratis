// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
