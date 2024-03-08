part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required FormzSubmissionStatus status,
    required EmailInput email,
    required PasswordInput password,
    required bool isValid,
    String? message,
  }) = _LoginState;
}
