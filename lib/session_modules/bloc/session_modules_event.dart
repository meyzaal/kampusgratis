part of 'session_modules_bloc.dart';

@freezed
class SessionModulesEvent with _$SessionModulesEvent {
  const factory SessionModulesEvent.fetched({
    required String subjectId,
    required String sessionId,
  }) = SessionModulesFetched;
}
