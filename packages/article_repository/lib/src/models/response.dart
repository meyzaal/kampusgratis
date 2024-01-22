import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

/// A generic response class that encapsulates data, status, and message
/// information.
///
/// This class is annotated with the `@Freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. It also
/// enables generic argument factories for improved type safety.
@Freezed(genericArgumentFactories: true)
class Response<T> with _$Response<T> {
  /// Constructs a [Response] instance with required [data], and optional
  /// [code], [status], and [message].
  const factory Response({
    @JsonKey(name: 'data') required T data,
    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _Response;

  /// Factory method to create a [Response] instance from a JSON map, using a
  /// custom [fromJsonT] function for deserializing the generic type [T].
  factory Response.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseFromJson(json, fromJsonT);
}
