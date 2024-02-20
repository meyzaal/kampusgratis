part of 'profile_details_cubit.dart';

@freezed
class ProfileDetailsState with _$ProfileDetailsState {
  const factory ProfileDetailsState.initial() = ProfileDetailsInitialState;
  const factory ProfileDetailsState.loading() = ProfileDetailsLoadingState;
  const factory ProfileDetailsState.failure(String message) =
      ProfileDetailsFailureState;
  const factory ProfileDetailsState.success({
    required User user,
    required Profile details,
  }) = ProfileDetailsSuccessState;
}
