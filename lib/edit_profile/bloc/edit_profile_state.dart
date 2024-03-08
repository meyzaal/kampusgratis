part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(EditProfileStatus.initial)
    EditProfileStatus status,
    @Default(NameInput.pure()) NameInput name,
    @Default(PhoneInput.pure()) PhoneInput phone,
    @Default(GenderInput.pure()) GenderInput gender,
    @Default(false) bool isValid,
    User? user,
    String? message,
  }) = _EditProfileState;
}
