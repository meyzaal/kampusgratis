part of 'subject_session_bloc.dart';

@freezed
class SubjectSessionState with _$SubjectSessionState {
  const factory SubjectSessionState({
    required SubjectSessionStatus status,
    SubjectSession? data,
    String? subjectId,
    String? subjectName,
    String? message,
  }) = _SubjectSessionState;
}

enum SubjectSessionStatus { initial, loading, failure, success }

extension SubjectSessionStatusX on SubjectSessionStatus {
  bool get isInitial => this == SubjectSessionStatus.initial;
  bool get isLoading => this == SubjectSessionStatus.loading;
  bool get isFailure => this == SubjectSessionStatus.failure;
  bool get isSuccess => this == SubjectSessionStatus.success;
}

extension SubjectSessionStateX on SubjectSessionState {}
