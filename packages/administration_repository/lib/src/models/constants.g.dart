// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConstantsImpl _$$ConstantsImplFromJson(Map<String, dynamic> json) =>
    _$ConstantsImpl(
      gender: ConstantMap.fromJson(json['gender'] as Map<String, dynamic>),
      lastEducation:
          ConstantMap.fromJson(json['lastEducation'] as Map<String, dynamic>),
      occupation:
          ConstantMap.fromJson(json['occupation'] as Map<String, dynamic>),
      salary: ConstantMap.fromJson(json['salary'] as Map<String, dynamic>),
      liveWith: ConstantMap.fromJson(json['liveWith'] as Map<String, dynamic>),
      tuitionPayer:
          ConstantMap.fromJson(json['tuitionPayer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConstantsImplToJson(_$ConstantsImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'lastEducation': instance.lastEducation,
      'occupation': instance.occupation,
      'salary': instance.salary,
      'liveWith': instance.liveWith,
      'tuitionPayer': instance.tuitionPayer,
    };

_$ConstantMapImpl _$$ConstantMapImplFromJson(Map<String, dynamic> json) =>
    _$ConstantMapImpl(
      keys: (json['keys'] as List<dynamic>).map((e) => e as String).toList(),
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ConstantMapImplToJson(_$ConstantMapImpl instance) =>
    <String, dynamic>{
      'keys': instance.keys,
      'values': instance.values,
    };
