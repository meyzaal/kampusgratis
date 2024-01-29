import 'package:article_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

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
    required String id,
    required String title,
    required String content,
    required String thumbnail,
    required String slug,
    required int views,
    required Author author,
    required bool isFavorite,
    required List<String> tags,
    DateTime? createdAt,
    // String? category,
  }) = _Article;
}
