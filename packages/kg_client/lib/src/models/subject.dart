import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

enum SubjectType { group, individual }

@freezed
class Subject with _$Subject {
  const factory Subject({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'credit') int? credit,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'level') int? level,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'brochure') String? brochure,
    @JsonKey(name: 'semester') int? semester,
    @JsonKey(name: 'total_session') int? totalSession,
    @JsonKey(name: 'is_taken') bool? isTaken,
    @JsonKey(name: 'is_available') bool? isAvailable,
    @JsonKey(name: 'start_at') String? startAt,
    @JsonKey(name: 'major_id') String? majorId,
    @JsonKey(name: 'major_name') String? majorName,
  }) = _Subject;

  factory Subject.fromJson(Map<String, Object?> json) =>
      _$SubjectFromJson(json);
}

@freezed
class EnrollSubject with _$EnrollSubject {
  const factory EnrollSubject({
    @JsonKey(name: 'pending') EnrollStatus? pending,
    @JsonKey(name: 'ongoing') EnrollStatus? ongoing,
    @JsonKey(name: 'draft') EnrollStatus? draft,
    @JsonKey(name: 'rejected') EnrollStatus? rejected,
    @JsonKey(name: 'total_plan_credit') int? totalPlanCredit,
  }) = _EnrollSubject;

  factory EnrollSubject.fromJson(Map<String, Object?> json) =>
      _$EnrollSubjectFromJson(json);
}

@freezed
class EnrollStatus with _$EnrollStatus {
  const factory EnrollStatus({
    @JsonKey(name: 'subjects') List<EnrolledSubject>? subjects,
    @JsonKey(name: 'total_credit') int? totalCredit,
  }) = _EnrollStatus;

  factory EnrollStatus.fromJson(Map<String, Object?> json) =>
      _$EnrollStatusFromJson(json);
}

@freezed
class EnrolledSubject with _$EnrolledSubject {
  const factory EnrolledSubject({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'thumbnail') String? thumbnail,
    @JsonKey(name: 'subject_code') String? subjectCode,
    @JsonKey(name: 'credit') int? credit,
    @JsonKey(name: 'current_semester') int? currentSemester,
    @JsonKey(name: 'date_taken') String? dateTaken,
    @JsonKey(name: 'date_finished') String? dateFinished,
    @JsonKey(name: 'proof') String? proof,
  }) = _EnrolledSubject;

  factory EnrolledSubject.fromJson(Map<String, Object?> json) =>
      _$EnrolledSubjectFromJson(json);
}
