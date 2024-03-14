// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultImpl<T> _$$ResultImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResultImpl<T>(
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson<T>(
  _$ResultImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'meta': instance.meta,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      pageSize: json['page_size'] as int?,
      totalData: json['total_data'] as int?,
      currentPage: json['current_page'] as int?,
      maxPage: json['max_page'] as int?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'page_size': instance.pageSize,
      'total_data': instance.totalData,
      'current_page': instance.currentPage,
      'max_page': instance.maxPage,
    };
