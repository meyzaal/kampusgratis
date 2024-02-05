// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderAdapter extends TypeAdapter<Gender> {
  @override
  final int typeId = 2;

  @override
  Gender read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Gender.male;
      case 1:
        return Gender.female;
      default:
        return Gender.male;
    }
  }

  @override
  void write(BinaryWriter writer, Gender obj) {
    switch (obj) {
      case Gender.male:
        writer.writeByte(0);
        break;
      case Gender.female:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RoleAdapter extends TypeAdapter<Role> {
  @override
  final int typeId = 1;

  @override
  Role read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return Role.guest;
      case 2:
        return Role.student;
      case 3:
        return Role.admin;
      case 4:
        return Role.teacher;
      default:
        return Role.guest;
    }
  }

  @override
  void write(BinaryWriter writer, Role obj) {
    switch (obj) {
      case Role.guest:
        writer.writeByte(1);
        break;
      case Role.student:
        writer.writeByte(2);
        break;
      case Role.admin:
        writer.writeByte(3);
        break;
      case Role.teacher:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      activities: json['activities'] == null
          ? null
          : Activities.fromJson(json['activities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'activities': instance.activities,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      userName: json['user_name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] as String?,
      avatar: json['avatar'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      phoneNumber: json['phone_number'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'user_name': instance.userName,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'avatar': instance.avatar,
      'gender': _$GenderEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'role': _$RoleEnumMap[instance.role],
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
};

const _$RoleEnumMap = {
  Role.guest: 'GUEST',
  Role.student: 'STUDENT',
  Role.admin: 'ADMIN',
  Role.teacher: 'TEACHER',
};

_$ActivitiesImpl _$$ActivitiesImplFromJson(Map<String, dynamic> json) =>
    _$ActivitiesImpl(
      quizzes: (json['quizzes'] as List<dynamic>?)
          ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActivitiesImplToJson(_$ActivitiesImpl instance) =>
    <String, dynamic>{
      'quizzes': instance.quizzes,
    };

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      totalQuestions: json['total_questions'] as int?,
      questionPoint: json['question_point'] as String?,
      kkm: json['kkm'] as int?,
      duration: json['duration'] as int?,
      remainingAttempt: json['remaining_attempt'] as int?,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'total_questions': instance.totalQuestions,
      'question_point': instance.questionPoint,
      'kkm': instance.kkm,
      'duration': instance.duration,
      'remaining_attempt': instance.remainingAttempt,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      avatar: json['avatar'] as String?,
      poin: json['poin'] as int?,
      userName: json['user_name'] as String?,
      discussionLikes: json['discussion_likes'] as int?,
      discussionPosted: json['discussion_posted'] as int?,
      fullName: json['full_name'] as String?,
      semester: json['semester'] as int?,
      ipk: json['ipk'] as String?,
      major: json['major'] as String?,
      role: $enumDecodeNullable(_$RoleEnumMap, json['role']),
      totalCertificates: json['total_certificates'] as int?,
      currentSubjects: json['current_subjects'] as int?,
      finishedSubjects: json['finished_subjects'] as int?,
      faculty: json['faculty'] as String?,
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
      'role': _$RoleEnumMap[instance.role],
      'total_certificates': instance.totalCertificates,
      'current_subjects': instance.currentSubjects,
      'finished_subjects': instance.finishedSubjects,
      'faculty': instance.faculty,
    };
