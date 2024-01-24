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
  }) = _Result;

  /// Factory method for creating an [Result] instance from
  /// JSON.
  factory Result.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResultFromJson(json, fromJsonT);
}
