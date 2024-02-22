part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.started() =
      _EditProfileStarted;
  const factory EditProfileEvent.nameChanged(String name) =
      EditProfileNameChanged;
  const factory EditProfileEvent.genderChanged(Gender gender) =
      EditProfileGenderChanged;
  const factory EditProfileEvent.phoneChanged(String phone) =
      EditProfilePhoneChanged;
  const factory EditProfileEvent.formSubmitted() = EditProfileFormSubmitted;
}
