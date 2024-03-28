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
          : MsSubject.fromJson(json['subject'] as Map<String, dynamic>),
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
  SessionType.overview: 'OVERVIEW',
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

_$MsSubjectImpl _$$MsSubjectImplFromJson(Map<String, dynamic> json) =>
    _$MsSubjectImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$MsSubjectImplToJson(_$MsSubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };

_$SessionModulesImpl _$$SessionModulesImplFromJson(Map<String, dynamic> json) =>
    _$SessionModulesImpl(
      detail: json['detail'] == null
          ? null
          : Detail.fromJson(json['detail'] as Map<String, dynamic>),
      modules: (json['modules'] as List<dynamic>?)
          ?.map((e) => ModuleSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SessionModulesImplToJson(
        _$SessionModulesImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'modules': instance.modules,
    };

_$ModuleSessionImpl _$$ModuleSessionImplFromJson(Map<String, dynamic> json) =>
    _$ModuleSessionImpl(
      id: json['id'] as String?,
      totalVideos: json['total_videos'] as String?,
      totalDocuments: json['total_documents'] as String?,
      totalJournals: json['total_journals'] as String?,
      totalArticles: json['total_articles'] as String?,
      isAllVideoSeen: json['is_all_video_seen'] as bool?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      submitted: json['submitted'] as bool?,
    );

Map<String, dynamic> _$$ModuleSessionImplToJson(_$ModuleSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_videos': instance.totalVideos,
      'total_documents': instance.totalDocuments,
      'total_journals': instance.totalJournals,
      'total_articles': instance.totalArticles,
      'is_all_video_seen': instance.isAllVideoSeen,
      'title': instance.title,
      'description': instance.description,
      'submitted': instance.submitted,
    };

_$ModuleDetailsImpl _$$ModuleDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ModuleDetailsImpl(
      detail: json['detail'] == null
          ? null
          : Detail.fromJson(json['detail'] as Map<String, dynamic>),
      module: json['module'] == null
          ? null
          : DetailModule.fromJson(json['module'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModuleDetailsImplToJson(_$ModuleDetailsImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'module': instance.module,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      subjectId: json['subject_id'] as String?,
      subjectName: json['subject_name'] as String?,
      sessionId: json['session_id'] as String?,
      sessionNo: json['session_no'] as int?,
      sessionType:
          $enumDecodeNullable(_$SessionTypeEnumMap, json['session_type']),
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'subject_id': instance.subjectId,
      'subject_name': instance.subjectName,
      'session_id': instance.sessionId,
      'session_no': instance.sessionNo,
      'session_type': _$SessionTypeEnumMap[instance.sessionType],
    };

_$DetailModuleImpl _$$DetailModuleImplFromJson(Map<String, dynamic> json) =>
    _$DetailModuleImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isAllVideoSeen: json['is_all_video_seen'] as bool?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => ModuleContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => ModuleDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      journals: (json['journals'] as List<dynamic>?)
          ?.map((e) => ModuleContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ModuleContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$ProgressStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$DetailModuleImplToJson(_$DetailModuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'is_all_video_seen': instance.isAllVideoSeen,
      'videos': instance.videos,
      'documents': instance.documents,
      'journals': instance.journals,
      'articles': instance.articles,
      'status': _$ProgressStatusEnumMap[instance.status],
    };

_$ModuleContentImpl _$$ModuleContentImplFromJson(Map<String, dynamic> json) =>
    _$ModuleContentImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      url: json['url'] as String?,
      moduleId: json['module_id'] as String?,
      durationInSeconds: json['duration_in_seconds'] as int?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ModuleContentImplToJson(_$ModuleContentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'module_id': instance.moduleId,
      'duration_in_seconds': instance.durationInSeconds,
      'description': instance.description,
    };

_$ModuleDocumentImpl _$$ModuleDocumentImplFromJson(Map<String, dynamic> json) =>
    _$ModuleDocumentImpl(
      id: json['id'] as String?,
      documentId: json['document_id'] as String?,
      documentFile: json['document_file'] as String?,
      moduleId: json['module_id'] as String?,
      title: json['title'] as String?,
      durationInSeconds: json['duration_in_seconds'] as int?,
    );

Map<String, dynamic> _$$ModuleDocumentImplToJson(
        _$ModuleDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'document_id': instance.documentId,
      'document_file': instance.documentFile,
      'module_id': instance.moduleId,
      'title': instance.title,
      'duration_in_seconds': instance.durationInSeconds,
    };
