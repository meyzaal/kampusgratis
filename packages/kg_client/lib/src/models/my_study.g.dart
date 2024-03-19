// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_study.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyStudyImpl _$$MyStudyImplFromJson(Map<String, dynamic> json) =>
    _$MyStudyImpl(
      id: json['id'] as String?,
      subjectCode: json['subject_code'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      thumbnail: json['thumbnail'] as String?,
      teacherName: json['teacher_name'] as String?,
      credit: json['credit'] as int?,
      subjectSemester: json['subject_semester'] as int?,
      currentSession: json['current_session'] as int?,
      studentCount: json['student_count'] as int?,
      sessionCount: json['session_count'] as int?,
      progressPercentage: json['progress_percentage'] as int?,
    );

Map<String, dynamic> _$$MyStudyImplToJson(_$MyStudyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_code': instance.subjectCode,
      'name': instance.name,
      'slug': instance.slug,
      'thumbnail': instance.thumbnail,
      'teacher_name': instance.teacherName,
      'credit': instance.credit,
      'subject_semester': instance.subjectSemester,
      'current_session': instance.currentSession,
      'student_count': instance.studentCount,
      'session_count': instance.sessionCount,
      'progress_percentage': instance.progressPercentage,
    };

_$SubjectSessionImpl _$$SubjectSessionImplFromJson(Map<String, dynamic> json) =>
    _$SubjectSessionImpl(
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
      overview: json['overview'] == null
          ? null
          : Overview.fromJson(json['overview'] as Map<String, dynamic>),
      sessions: (json['sessions'] as List<dynamic>?)
          ?.map((e) => Session.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectSessionImplToJson(
        _$SubjectSessionImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'overview': instance.overview,
      'sessions': instance.sessions,
    };

_$OverviewImpl _$$OverviewImplFromJson(Map<String, dynamic> json) =>
    _$OverviewImpl(
      subjectId: json['subject_id'] as String?,
      sessionId: json['session_id'] as String?,
      moduleId: json['module_id'] as String?,
      link: json['link'] as String?,
      durationSeconds: json['duration_seconds'] as int?,
      durationMinutes: json['duration_minutes'] as int?,
    );

Map<String, dynamic> _$$OverviewImplToJson(_$OverviewImpl instance) =>
    <String, dynamic>{
      'subject_id': instance.subjectId,
      'session_id': instance.sessionId,
      'module_id': instance.moduleId,
      'link': instance.link,
      'duration_seconds': instance.durationSeconds,
      'duration_minutes': instance.durationMinutes,
    };

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      sessionNo: json['session_no'] as int?,
      sessionType:
          $enumDecodeNullable(_$SessionTypeEnumMap, json['session_type']),
      isLocked: json['is_locked'] as bool?,
      progress: (json['progress'] as List<dynamic>?)
          ?.map((e) => Progress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'session_no': instance.sessionNo,
      'session_type': _$SessionTypeEnumMap[instance.sessionType],
      'is_locked': instance.isLocked,
      'progress': instance.progress,
    };

const _$SessionTypeEnumMap = {
  SessionType.finalExam: 'FINAL_EXAM',
  SessionType.midtermExam: 'MIDTERM_EXAM',
  SessionType.regular: 'REGULAR',
};

_$ProgressImpl _$$ProgressImplFromJson(Map<String, dynamic> json) =>
    _$ProgressImpl(
      status: $enumDecodeNullable(_$ProgressStatusEnumMap, json['status']),
      type: $enumDecodeNullable(_$ProgressTypeEnumMap, json['type']),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ProgressImplToJson(_$ProgressImpl instance) =>
    <String, dynamic>{
      'status': _$ProgressStatusEnumMap[instance.status],
      'type': _$ProgressTypeEnumMap[instance.type],
      'updated_at': instance.updatedAt,
    };

const _$ProgressStatusEnumMap = {
  ProgressStatus.locked: 'LOCKED',
  ProgressStatus.ongoing: 'ONGOING',
  ProgressStatus.pending: 'PENDING',
  ProgressStatus.finished: 'FINISHED',
  ProgressStatus.failed: 'FAILED',
};

const _$ProgressTypeEnumMap = {
  ProgressType.assessment: 'ASSESSMENT',
  ProgressType.assignment: 'ASSIGNMENT',
  ProgressType.module: 'MODULE',
  ProgressType.quiz: 'QUIZ',
  ProgressType.reflection: 'REFLECTION',
};

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };
