import 'package:article_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

/// A class representing data, typically used for paginated lists of articles.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Data` for implementation of equality and immutability.
@freezed
class Data with _$Data {
  /// Constructs a [Data] instance with the specified attributes.
  const factory Data({
    required List<Article> articles,
    required ArticleMeta meta,
  }) = _Data;

 
}
