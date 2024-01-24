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
