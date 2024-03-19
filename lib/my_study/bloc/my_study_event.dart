part of 'my_study_bloc.dart';

@freezed
class MyStudyEvent with _$MyStudyEvent {
  const factory MyStudyEvent.fetched({required bool forceRefresh}) =
      MyStudyFetched;
}
