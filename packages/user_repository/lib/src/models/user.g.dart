// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      userName: json['user_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      emailVerifiedAt: json['email_verified_at'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
          Gender.unknown,
      phoneNumber: json['phone_number'] as String? ?? '',
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.guest,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'user_name': instance.userName,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'avatar': instance.avatar,
      'gender': _$GenderEnumMap[instance.gender]!,
      'phone_number': instance.phoneNumber,
      'role': _$RoleEnumMap[instance.role]!,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
  Gender.unknown: 'unknown',
};

const _$RoleEnumMap = {
  Role.guest: 'GUEST',
  Role.student: 'STUDENT',
  Role.admin: 'ADMIN',
  Role.teacher: 'TEACHER',
};
