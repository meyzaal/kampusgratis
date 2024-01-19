import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

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
