part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    @Default(EditProfileStatus.initial)
    EditProfileStatus status,
    @Default(Name.pure()) Name name,
    @Default(Phone.pure()) Phone phone,
    @Default(GenderInput.pure()) GenderInput gender,
    @Default(false) bool isValid,
    User? user,
    String? message,
  }) = _EditProfileState;
}
