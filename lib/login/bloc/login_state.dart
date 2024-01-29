part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required FormzSubmissionStatus status,
    required Email email,
    required Password password,
    required bool isValid,
    String? message,
  }) = _LoginState;
}
