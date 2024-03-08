part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required bool isValid,
    required FormzSubmissionStatus status,
    required PasswordInput oldPassword,
    required PasswordInput newPassword,
    required ConfirmedPasswordInput confirmedPassword,
    String? message,
  }) = _ChangePasswordState;
}
