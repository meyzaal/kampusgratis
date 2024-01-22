// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      avatar: json['avatar'] as String? ?? '',
      poin: json['poin'] as int? ?? 0,
      userName: json['user_name'] as String? ?? '',
      discussionLikes: json['discussion_likes'] as int? ?? 0,
      discussionPosted: json['discussion_posted'] as int? ?? 0,
      fullName: json['full_name'] as String? ?? '',
      semester: json['semester'] as int? ?? -1,
      ipk: json['ipk'] as String? ?? '-',
      major: json['major'] as String? ?? '',
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']) ?? Role.guest,
      totalCertificates: json['total_certificates'] as int? ?? 0,
      currentSubjects: json['current_subjects'] as int? ?? 0,
      finishedSubjects: json['finished_subjects'] as int? ?? 0,
      faculty: json['faculty'] as String? ?? '',
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'poin': instance.poin,
      'user_name': instance.userName,
      'discussion_likes': instance.discussionLikes,
      'discussion_posted': instance.discussionPosted,
      'full_name': instance.fullName,
      'semester': instance.semester,
      'ipk': instance.ipk,
      'major': instance.major,
      'role': _$RoleEnumMap[instance.role]!,
      'total_certificates': instance.totalCertificates,
      'current_subjects': instance.currentSubjects,
      'finished_subjects': instance.finishedSubjects,
      'faculty': instance.faculty,
    };

const _$RoleEnumMap = {
  Role.guest: 'GUEST',
  Role.student: 'STUDENT',
  Role.admin: 'ADMIN',
  Role.teacher: 'TEACHER',
};
