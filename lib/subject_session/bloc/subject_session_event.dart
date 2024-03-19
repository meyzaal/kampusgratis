part of 'subject_session_bloc.dart';

@freezed
class SubjectSessionEvent with _$SubjectSessionEvent {
  const factory SubjectSessionEvent.fetched(String subjectId) =
      SubjectSessionFetched;
}
