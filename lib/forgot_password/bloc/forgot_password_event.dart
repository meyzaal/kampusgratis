part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String email) =
      ForgotPasswordEmailChanged;
  const factory ForgotPasswordEvent.tokenReceived(String token) =
      ForgotPasswordTokenReceived;
  const factory ForgotPasswordEvent.newPasswordChanged(String newPassword) =
      ForgotPasswordNewPasswordChanged;
  const factory ForgotPasswordEvent.confirmedPasswordChanged(
    String confirmedPassword,
  ) = ForgotPasswordConfirmedPasswordChanged;
  const factory ForgotPasswordEvent.inputEmailFormSubmitted() =
      ForgotPasswordInputEmailFormSubmitted;
  const factory ForgotPasswordEvent.inputPasswordFormSubmitted() =
      ForgotPasswordInputPasswordFormSubmitted;
}
