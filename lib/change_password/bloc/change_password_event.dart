part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.oldPasswordChanged(String oldPassword) =
      ChangePasswordOldPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged(String newPassword) =
      ChangePasswordNewPasswordChanged;
  const factory ChangePasswordEvent.confirmedPasswordChanged(
    String confirmedPassword,
  ) = ChangePasswordConfirmedPasswordChanged;
  const factory ChangePasswordEvent.formSubmitted() =
      ChangePasswordFormSubmitted;
}
