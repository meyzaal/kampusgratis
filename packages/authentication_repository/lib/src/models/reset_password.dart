import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password.freezed.dart';
part 'reset_password.g.dart';

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
