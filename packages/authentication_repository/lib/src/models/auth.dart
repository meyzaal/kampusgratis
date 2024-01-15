import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

/// A Dart class representing the authentication response data.
///
/// This class is annotated with the `@freezed` annotation and utilizes code 
/// generation through the Freezed library to generate immutable classes and 
/// JSON serialization methods. The generated class is named `_Auth`, and an 
/// instance can be created using the named constructor `Auth` with optional 
/// parameters and default values.
@freezed
class Auth with _$Auth {
  /// Default constructor for creating an instance of Auth.
  ///
  /// Parameters:
  /// - [code]: The status code. Default is 0.
  /// - [status]: The status message. Default is an empty string.
  /// - [message]: The additional message. Default is an empty string.
  /// - [data]: An instance of Token, representing the authentication token 
  ///   data.
  const factory Auth({
    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'data') @Default(Token()) Token data,
  }) = _Auth;

  /// JSON deserialization method for creating an Auth instance from a JSON map.
  factory Auth.fromJson(Map<String, Object?> json) => _$AuthFromJson(json);
}

/// A Dart class representing the authentication token data.
///
/// This class is annotated with the `@freezed` annotation and utilizes code 
/// generation through the Freezed library to generate immutable classes and 
/// JSON serialization methods. The generated class is named `_Token`, and an 
/// instance can be created using the named constructor `Token` with optional 
/// parameters and default values.
@freezed
class Token with _$Token {
  /// Default constructor for creating an instance of Token.
  ///
  /// Parameters:
  /// - [refreshToken]: The refresh token. Default is an empty string.
  /// - [accessToken]: The access token. Default is an empty string.
  const factory Token({
    @JsonKey(name: 'refresh_token') @Default('') String refreshToken,
    @JsonKey(name: 'access_token') @Default('') String accessToken,
  }) = _Token;

  /// JSON deserialization method for creating a Token instance from a JSON map.
  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}
