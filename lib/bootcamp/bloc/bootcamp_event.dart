part of 'bootcamp_bloc.dart';

@freezed
class BootcampEvent with _$BootcampEvent {
  const factory BootcampEvent.fetched({required bool isLoadMore}) =
      BootcampEventFetched;
  const factory BootcampEvent.enrolled(String bootcampId) =
      BootcampEventEnrolled;
  const factory BootcampEvent.dialogShown() = BootcampEventDialogShown;
}
