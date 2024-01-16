import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

/// Freezed union class representing the response from authentication 
/// operations.
///
/// This class is generic over the type [T] to represent the type of data in the
/// response.
@Freezed(genericArgumentFactories: true)
class AuthenticationResponse<T> with _$AuthenticationResponse<T> {
  /// Default constructor for creating an [AuthenticationResponse] instance.
  const factory AuthenticationResponse({
    @JsonKey(name: 'data') required T data,
    @JsonKey(name: 'code') @Default(0) int code,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'message') @Default('') String message,
  }) = _AuthenticationResponse;

  /// Factory method for creating an [AuthenticationResponse] instance from 
  /// JSON.
  factory AuthenticationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$AuthenticationResponseFromJson(json, fromJsonT);
}

/// Freezed union class representing an authentication token.
@freezed
class Token with _$Token {
  /// Default constructor for creating a [Token] instance.
  const factory Token({
    @JsonKey(name: 'refresh_token') @Default('') String refreshToken,
    @JsonKey(name: 'access_token') @Default('') String accessToken,
  }) = _Token;

  /// Factory method for creating a [Token] instance from JSON.
  factory Token.fromJson(Map<String, Object?> json) => _$TokenFromJson(json);
}

/// Freezed union class representing the data structure for resetting a 
/// password.
@freezed
class ResetPassword with _$ResetPassword {
  /// Default constructor for creating a [ResetPassword] instance.
  const factory ResetPassword({
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'token') @Default('') String token,
  }) = _ResetPassword;

  /// Factory method for creating a [ResetPassword] instance from JSON.
  factory ResetPassword.fromJson(Map<String, Object?> json) =>
      _$ResetPasswordFromJson(json);
}
