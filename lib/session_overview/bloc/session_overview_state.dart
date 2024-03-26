part of 'session_overview_bloc.dart';

@freezed
class SessionOverviewState with _$SessionOverviewState {
  const factory SessionOverviewState.initial() = SessionOverviewInitialState;
  const factory SessionOverviewState.loading() = SessionOverviewLoadingState;
  const factory SessionOverviewState.failure(String message) =
      SessionOverviewFailureState;
  const factory SessionOverviewState.success(OverviewDetails data) =
      SessionOverviewSuccessState;
}
