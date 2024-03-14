import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

/// Freezed union class representing the response from network request
/// operations.
///
/// This class is generic over the type [T] to represent the type of data in the
/// response.
@Freezed(genericArgumentFactories: true)
class Result<T> with _$Result<T> {
  /// Default constructor for creating an [Result] instance.
  const factory Result({
    @JsonKey(name: 'data') T? data,
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    // Used in StudyPlan
    @JsonKey(name: 'meta') Meta? meta,
  }) = _Result;

  /// Factory method for creating an [Result] instance from
  /// JSON.
  factory Result.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResultFromJson(json, fromJsonT);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_data') int? totalData,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'max_page') int? maxPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, Object?> json) => _$MetaFromJson(json);
}
