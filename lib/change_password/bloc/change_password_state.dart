part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required bool isValid,
    required FormzSubmissionStatus status,
    required Password oldPassword,
    required Password newPassword,
    required ConfirmedPassword confirmedPassword,
    String? message,
  }) = _ChangePasswordState;
}
