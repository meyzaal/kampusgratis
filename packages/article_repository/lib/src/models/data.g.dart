// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      articles: (json['data'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Article>[],
      pageSize: json['page_size'] as int? ?? 0,
      totalData: json['total_data'] as int? ?? 0,
      currentPage: json['current_page'] as int? ?? 0,
      maxPage: json['max_page'] as int? ?? 0,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'data': instance.articles,
      'page_size': instance.pageSize,
      'total_data': instance.totalData,
      'current_page': instance.currentPage,
      'max_page': instance.maxPage,
    };
