part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchRequested() = ProfileFetchRequested;
  const factory ProfileEvent.reloadUserRequested() = ProfileReloadUserRequested;
  const factory ProfileEvent.logOutRequested() = ProfileLogOutRequested;
}
