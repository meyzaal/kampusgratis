import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

/// A class representing data, typically used for paginated lists of articles.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_ArticleData` for implementation of equality and immutability.
@freezed
class ArticleData with _$ArticleData {
  /// Constructs a [ArticleData] instance with the specified attributes.
  const factory ArticleData({
    @JsonKey(name: 'data') List<Article>? articles,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_data') int? totalData,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'max_page') int? maxPage,
  }) = _ArticleData;

  /// Factory method to create a [ArticleData] instance from a JSON map.
  factory ArticleData.fromJson(Map<String, Object?> json) =>
      _$ArticleDataFromJson(json);
}

/// A class representing an article with various attributes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Article` for implementation of equality and immutability.
@freezed
class Article with _$Article {
  /// Constructs an [Article] instance with the specified attributes.
  const factory Article({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'author') Author? author,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'is_favorite') bool? isFavorite,
    @JsonKey(name: 'tags') List<String>? tags,
  }) = _Article;

  /// Factory method to create an [Article] instance from a JSON map.
  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);
}

/// A class representing the author of an article with the author's full name as
/// the primary attribute.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Author` for implementation of equality and immutability.
@freezed
class Author with _$Author {
  /// Constructs an [Author] instance with the specified full name.
  const factory Author({
    @JsonKey(name: 'full_name') String? fullName,
  }) = _Author;

  /// Factory method to create an [Author] instance from a JSON map.
  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}
