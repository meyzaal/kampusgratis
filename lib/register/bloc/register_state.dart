part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required FormzSubmissionStatus status,
    required NameInput name,
    required EmailInput email,
    // required PhoneInput phone,
    required PasswordInput password,
    required ConfirmedPasswordInput confirmedPassword,
    required TermsAndConditionsInput termsAndConditions,
    required bool isValid,
    String? message,
  }) = _RegisterState;
}
