import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_study.freezed.dart';
part 'my_study.g.dart';

// LEARNING PROGRESS

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

// SUBJECT SESSION

@freezed
class SubjectSession with _$SubjectSession {
  const factory SubjectSession({
    @JsonKey(name: 'subject') MsSubject? subject,
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
  @JsonValue('OVERVIEW')
  overview,
  @JsonValue('FINAL_EXAM')
  finalExam,
  @JsonValue('MIDTERM_EXAM')
  midtermExam,
  @JsonValue('REGULAR')
  regular,
}

@freezed
class MsSubject with _$MsSubject {
  const factory MsSubject({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'thumbnail') String? thumbnail,
  }) = _MsSubject;

  factory MsSubject.fromJson(Map<String, dynamic> json) =>
      _$MsSubjectFromJson(json);
}

// SESSION MODULES

@freezed
class SessionModules with _$SessionModules {
  const factory SessionModules({
    @JsonKey(name: 'detail') Detail? detail,
    @JsonKey(name: 'modules') List<ModuleSession>? modules,
  }) = _SessionModules;

  factory SessionModules.fromJson(Map<String, Object?> json) =>
      _$SessionModulesFromJson(json);
}

@freezed
class ModuleSession with _$ModuleSession {
  const factory ModuleSession({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'total_videos') String? totalVideos,
    @JsonKey(name: 'total_documents') String? totalDocuments,
    @JsonKey(name: 'total_journals') String? totalJournals,
    @JsonKey(name: 'total_articles') String? totalArticles,
    @JsonKey(name: 'is_all_video_seen') bool? isAllVideoSeen,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'submitted') bool? submitted,
  }) = _ModuleSession;

  factory ModuleSession.fromJson(Map<String, Object?> json) =>
      _$ModuleSessionFromJson(json);
}

// MODULE DETAILS

@freezed
class ModuleDetails with _$ModuleDetails {
  const factory ModuleDetails({
    @JsonKey(name: 'detail') Detail? detail,
    @JsonKey(name: 'module') DetailModule? module,
  }) = _ModuleDetails;

  factory ModuleDetails.fromJson(Map<String, dynamic> json) =>
      _$ModuleDetailsFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({
    @JsonKey(name: 'subject_id') String? subjectId,
    @JsonKey(name: 'subject_name') String? subjectName,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'session_no') int? sessionNo,
    @JsonKey(name: 'session_type') SessionType? sessionType,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

@freezed
class DetailModule with _$DetailModule {
  const factory DetailModule({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'is_all_video_seen') bool? isAllVideoSeen,
    @JsonKey(name: 'videos') List<ModuleContent>? videos,
    @JsonKey(name: 'documents') List<ModuleDocument>? documents,
    @JsonKey(name: 'journals') List<ModuleContent>? journals,
    @JsonKey(name: 'articles') List<ModuleContent>? articles,
    @JsonKey(name: 'status') ProgressStatus? status,
  }) = _DetailModule;

  factory DetailModule.fromJson(Map<String, dynamic> json) =>
      _$DetailModuleFromJson(json);
}

@freezed
class ModuleContent with _$ModuleContent {
  const factory ModuleContent({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'module_id') String? moduleId,
    @JsonKey(name: 'duration_in_seconds') int? durationInSeconds,
    @JsonKey(name: 'description') String? description,
  }) = _ModuleContent;

  factory ModuleContent.fromJson(Map<String, dynamic> json) =>
      _$ModuleContentFromJson(json);
}

@freezed
class ModuleDocument with _$ModuleDocument {
  const factory ModuleDocument({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'document_id') String? documentId,
    @JsonKey(name: 'document_file') String? documentFile,
    @JsonKey(name: 'module_id') String? moduleId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'duration_in_seconds') int? durationInSeconds,
  }) = _ModuleDocument;

  factory ModuleDocument.fromJson(Map<String, dynamic> json) =>
      _$ModuleDocumentFromJson(json);
}
