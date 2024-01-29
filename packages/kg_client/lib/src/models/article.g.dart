// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleDataImpl _$$ArticleDataImplFromJson(Map<String, dynamic> json) =>
    _$ArticleDataImpl(
      articles: (json['data'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageSize: json['page_size'] as int?,
      totalData: json['total_data'] as int?,
      currentPage: json['current_page'] as int?,
      maxPage: json['max_page'] as int?,
    );

Map<String, dynamic> _$$ArticleDataImplToJson(_$ArticleDataImpl instance) =>
    <String, dynamic>{
      'data': instance.articles,
      'page_size': instance.pageSize,
      'total_data': instance.totalData,
      'current_page': instance.currentPage,
      'max_page': instance.maxPage,
    };

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      thumbnail: json['thumbnail'] as String?,
      slug: json['slug'] as String?,
      views: json['views'] as int?,
      createdAt: json['created_at'] as String?,
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      category: json['category'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'thumbnail': instance.thumbnail,
      'slug': instance.slug,
      'views': instance.views,
      'created_at': instance.createdAt,
      'author': instance.author,
      'category': instance.category,
      'is_favorite': instance.isFavorite,
      'tags': instance.tags,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      fullName: json['full_name'] as String?,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
    };

_$SearchHistoryResultImpl _$$SearchHistoryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryResultImpl(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SearchHistoryData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : SearchHistoryMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchHistoryResultImplToJson(
        _$SearchHistoryResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

_$SearchHistoryDataImpl _$$SearchHistoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryDataImpl(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchHistoryDataImplToJson(
        _$SearchHistoryDataImpl instance) =>
    <String, dynamic>{
      'articles': instance.articles,
    };

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      id: json['id'] as String?,
      keyword: json['keyword'] as String?,
      type: json['type'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keyword': instance.keyword,
      'type': instance.type,
      'created_at': instance.createdAt,
    };

_$SearchHistoryMetaImpl _$$SearchHistoryMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchHistoryMetaImpl(
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      pageSize: json['page_size'] as int?,
      totalData: json['total_data'] as int?,
    );

Map<String, dynamic> _$$SearchHistoryMetaImplToJson(
        _$SearchHistoryMetaImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'page_size': instance.pageSize,
      'total_data': instance.totalData,
    };
