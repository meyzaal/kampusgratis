import 'package:article_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

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
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'content') @Default('') String content,
    @JsonKey(name: 'thumbnail') @Default('') String thumbnail,
    @JsonKey(name: 'slug') @Default('') String slug,
    @JsonKey(name: 'views') @Default(0) int views,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'author') @Default(Author()) Author author,
    @JsonKey(name: 'category') @Default('') String category,
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
    @JsonKey(name: 'tags') @Default(<String>[]) List<String> tags,
  }) = _Article;

  /// Factory method to create an [Article] instance from a JSON map.
  factory Article.fromJson(Map<String, Object?> json) =>
      _$ArticleFromJson(json);
}
