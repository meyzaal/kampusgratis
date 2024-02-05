part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.nameChanged(String name) = RegisterNameChanged;
  const factory RegisterEvent.emailChanged(String email) = RegisterEmailChanged;
  // const factory RegisterEvent.phoneChanged(String phone) = 
  // RegisterPhoneChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      RegisterPasswordChanged;
  const factory RegisterEvent.confirmedPasswordChanged(
    String confirmedPassword,
  ) = RegisterConfirmedPasswordChanged;
  const factory RegisterEvent.termsAndConditionsChanged() =
      RegisterTermsAndConditionsChanged;
  const factory RegisterEvent.formSubmitted() = RegisterFormSubmitted;
}
