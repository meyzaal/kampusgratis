part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus fetchStatus,
    @Default(ProfileStatus.initial) ProfileStatus logOutStatus,
    User? user,
    String? message,
  }) = _ProfileState;
}
