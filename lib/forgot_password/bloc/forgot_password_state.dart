part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.inputEmail({
    required FormzSubmissionStatus status,
    required EmailInput email,
    required bool isValid,
    String? message,
  }) = ForgotPasswordInputEmailState;

  const factory ForgotPasswordState.inputPassword({
    required FormzSubmissionStatus status,
    required PasswordInput newPassword,
    required ConfirmedPasswordInput confirmedPassword,
    required bool isValid,
    required String token,
    String? message,
  }) = ForgotPasswordInputPasswordState;
}
