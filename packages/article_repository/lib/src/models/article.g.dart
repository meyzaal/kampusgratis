// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      views: json['views'] as int? ?? 0,
      createdAt: json['created_at'] as String?,
      author: json['author'] == null
          ? const Author()
          : Author.fromJson(json['author'] as Map<String, dynamic>),
      category: json['category'] as String? ?? '',
      isFavorite: json['is_favorite'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
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
