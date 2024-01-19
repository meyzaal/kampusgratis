import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

/// Freezed union class representing the response from authentication
/// operations.
///
/// This class is generic over the type [T] to represent the type of data in the
/// response.
@Freezed(genericArgumentFactories: true)
class Response<T> with _$Response<T> {
  /// Default constructor for creating an [Response] instance.
  const factory Response({
    @JsonKey(name: 'data') required T data,
    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _Response;

  /// Factory method for creating an [Response] instance from
  /// JSON.
  factory Response.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseFromJson(json, fromJsonT);
}
