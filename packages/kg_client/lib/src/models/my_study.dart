import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_study.freezed.dart';
part 'my_study.g.dart';

@freezed
class MyStudy with _$MyStudy {
  const factory MyStudy({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'subject_code') String? subjectCode,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'teacher_name') String? teacherName,
    @JsonKey(name: 'credit') int? credit,
    @JsonKey(name: 'subject_semester') int? subjectSemester,
    @JsonKey(name: 'current_session') int? currentSession,
    @JsonKey(name: 'student_count') int? studentCount,
    @JsonKey(name: 'session_count') int? sessionCount,
    @JsonKey(name: 'progress_percentage') int? progressPercentage,
  }) = _MyStudy;

  factory MyStudy.fromJson(Map<String, Object?> json) =>
      _$MyStudyFromJson(json);
}

@freezed
class SubjectSession with _$SubjectSession {
  const factory SubjectSession({
    @JsonKey(name: 'subject') Subject? subject,
    @JsonKey(name: 'overview') Overview? overview,
    @JsonKey(name: 'sessions') List<Session>? sessions,
  }) = _SubjectSession;

  factory SubjectSession.fromJson(Map<String, dynamic> json) =>
      _$SubjectSessionFromJson(json);
}

@freezed
class Overview with _$Overview {
  const factory Overview({
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'module_id') String? moduleId,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'duration_seconds') int? durationSeconds,
    @JsonKey(name: 'duration_minutes') int? durationMinutes,
  }) = _Overview;

  factory Overview.fromJson(Map<String, dynamic> json) =>
      _$OverviewFromJson(json);
}

@freezed
class Session with _$Session {
  const factory Session({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'session_no') int? sessionNo,
    @JsonKey(name: 'session_type') SessionType? sessionType,
    @JsonKey(name: 'is_locked') bool? isLocked,
    @JsonKey(name: 'progress') List<Progress>? progress,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class Progress with _$Progress {
  const factory Progress({
    @JsonKey(name: 'status') ProgressStatus? status,
    @JsonKey(name: 'type') ProgressType? type,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);
}

enum ProgressStatus {
  @JsonValue('LOCKED')
  locked,
  @JsonValue('ONGOING')
  ongoing,
  @JsonValue('PENDING')
  pending,
  @JsonValue('FINISHED')
  finished,
  @JsonValue('FAILED')
  failed,
}

enum ProgressType {
  @JsonValue('ASSESSMENT')
  assessment,
  @JsonValue('ASSIGNMENT')
  assignment,
  @JsonValue('MODULE')
  module,
  @JsonValue('QUIZ')
  quiz,
  @JsonValue('REFLECTION')
  reflection,
}

enum SessionType {
  @JsonValue('FINAL_EXAM')
  finalExam,
  @JsonValue('MIDTERM_EXAM')
  midtermExam,
  @JsonValue('REGULAR')
  regular,
}

@freezed
class Subject with _$Subject {
  const factory Subject({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'thumbnail') String? thumbnail,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
