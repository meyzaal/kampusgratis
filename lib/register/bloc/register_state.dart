part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required FormzSubmissionStatus status,
    required Name name,
    required Email email,
    // required Phone phone,
    required Password password,
    required ConfirmedPassword confirmedPassword,
    required TermsAndConditions termsAndConditions,
    required bool isValid,
    String? message,
  }) = _RegisterState;
}
