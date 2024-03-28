part of 'session_modules_bloc.dart';

@freezed
class SessionModulesState with _$SessionModulesState {
  const factory SessionModulesState.initial() = SessionModulesInitialState;
  const factory SessionModulesState.loading() = SessionModulesLoadingState;
  const factory SessionModulesState.failure(String message) =
      SessionModulesFailureState;
  const factory SessionModulesState.success(SessionModules data) =
      SessionModulesSuccessState;
}
