part of 'session_overview_bloc.dart';

@freezed
class SessionOverviewEvent with _$SessionOverviewEvent {
  const factory SessionOverviewEvent.fetched({
    required String subjectId,
    required String sessionId,
    required String moduleId,
  }) = SessionOverviewFetched;
}
