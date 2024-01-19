import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@Freezed(genericArgumentFactories: true)
class Response<T> with _$Response<T> {
  const factory Response({
    @JsonKey(name: 'data') required T data,
    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _Response;

  factory Response.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseFromJson(json, fromJsonT);
}
