part of 'my_study_bloc.dart';

@freezed
class MyStudyState with _$MyStudyState {
  const factory MyStudyState.initial() = MyStudyInitialState;
  const factory MyStudyState.loading() = MyStudyLoadingState;
  const factory MyStudyState.failure(String message) = MyStudyFailureState;
  const factory MyStudyState.success({
    required List<MyStudy> ongoing,
    required List<MyStudy> completed,
  }) = MyStudySuccessState;
}
