import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_study_repository/src/models/models.dart';

part 'subject_session.freezed.dart';

@freezed
class SubjectSession with _$SubjectSession {
  const factory SubjectSession({
    required Subject subject,
    required SessionOverview overview,
    required List<Session> sessions,
  }) = _SubjectSession;
}
