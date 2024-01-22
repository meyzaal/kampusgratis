import 'package:article_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

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
    @JsonKey(name: 'data') @Default(<Article>[]) List<Article> articles,
    @JsonKey(name: 'page_size') @Default(0) int pageSize,
    @JsonKey(name: 'total_data') @Default(0) int totalData,
    @JsonKey(name: 'current_page') @Default(0) int currentPage,
    @JsonKey(name: 'max_page') @Default(0) int maxPage,
  }) = _Data;

  /// Factory method to create a [Data] instance from a JSON map.
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
