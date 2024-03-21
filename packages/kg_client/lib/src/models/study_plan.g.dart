// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpSubjectImpl _$$SpSubjectImplFromJson(Map<String, dynamic> json) =>
    _$SpSubjectImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      code: json['code'] as String?,
      credit: json['credit'] as int?,
      type: json['type'] as String?,
      level: json['level'] as int?,
      thumbnail: json['thumbnail'] as String?,
      brochure: json['brochure'] as String?,
      semester: json['semester'] as int?,
      totalSession: json['total_session'] as int?,
      isTaken: json['is_taken'] as bool?,
      isAvailable: json['is_available'] as bool?,
      startAt: json['start_at'] as String?,
      majorId: json['major_id'] as String?,
      majorName: json['major_name'] as String?,
    );

Map<String, dynamic> _$$SpSubjectImplToJson(_$SpSubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'code': instance.code,
      'credit': instance.credit,
      'type': instance.type,
      'level': instance.level,
      'thumbnail': instance.thumbnail,
      'brochure': instance.brochure,
      'semester': instance.semester,
      'total_session': instance.totalSession,
      'is_taken': instance.isTaken,
      'is_available': instance.isAvailable,
      'start_at': instance.startAt,
      'major_id': instance.majorId,
      'major_name': instance.majorName,
    };

_$EnrollSubjectImpl _$$EnrollSubjectImplFromJson(Map<String, dynamic> json) =>
    _$EnrollSubjectImpl(
      pending: json['pending'] == null
          ? null
          : EnrollStatus.fromJson(json['pending'] as Map<String, dynamic>),
      ongoing: json['ongoing'] == null
          ? null
          : EnrollStatus.fromJson(json['ongoing'] as Map<String, dynamic>),
      draft: json['draft'] == null
          ? null
          : EnrollStatus.fromJson(json['draft'] as Map<String, dynamic>),
      rejected: json['rejected'] == null
          ? null
          : EnrollStatus.fromJson(json['rejected'] as Map<String, dynamic>),
      totalPlanCredit: json['total_plan_credit'] as int?,
    );

Map<String, dynamic> _$$EnrollSubjectImplToJson(_$EnrollSubjectImpl instance) =>
    <String, dynamic>{
      'pending': instance.pending,
      'ongoing': instance.ongoing,
      'draft': instance.draft,
      'rejected': instance.rejected,
      'total_plan_credit': instance.totalPlanCredit,
    };

_$EnrollStatusImpl _$$EnrollStatusImplFromJson(Map<String, dynamic> json) =>
    _$EnrollStatusImpl(
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => EnrolledSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCredit: json['total_credit'] as int?,
    );

Map<String, dynamic> _$$EnrollStatusImplToJson(_$EnrollStatusImpl instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
      'total_credit': instance.totalCredit,
    };

_$EnrolledSubjectImpl _$$EnrolledSubjectImplFromJson(
        Map<String, dynamic> json) =>
    _$EnrolledSubjectImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      thumbnail: json['thumbnail'] as String?,
      subjectCode: json['subject_code'] as String?,
      credit: json['credit'] as int?,
      currentSemester: json['current_semester'] as int?,
      dateTaken: json['date_taken'] as String?,
      dateFinished: json['date_finished'] as String?,
      proof: json['proof'] as String?,
    );

Map<String, dynamic> _$$EnrolledSubjectImplToJson(
        _$EnrolledSubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'subject_code': instance.subjectCode,
      'credit': instance.credit,
      'current_semester': instance.currentSemester,
      'date_taken': instance.dateTaken,
      'date_finished': instance.dateFinished,
      'proof': instance.proof,
    };
