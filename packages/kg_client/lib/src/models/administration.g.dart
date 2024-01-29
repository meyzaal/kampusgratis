// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'administration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdministrationImpl _$$AdministrationImplFromJson(Map<String, dynamic> json) =>
    _$AdministrationImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      type: json['type'] as String?,
      reason: json['reason'] as String?,
      actionBy: json['action_by'] as String?,
      biodata: json['biodata'] == null
          ? null
          : Biodata.fromJson(json['biodata'] as Map<String, dynamic>),
      familial: json['familial'] == null
          ? null
          : Familial.fromJson(json['familial'] as Map<String, dynamic>),
      file: json['file'] == null
          ? null
          : Documents.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdministrationImplToJson(
        _$AdministrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'status': _$StatusEnumMap[instance.status],
      'type': instance.type,
      'reason': instance.reason,
      'action_by': instance.actionBy,
      'biodata': instance.biodata,
      'familial': instance.familial,
      'file': instance.file,
    };

const _$StatusEnumMap = {
  Status.pending: 'PENDING',
  Status.accepted: 'ACCEPTED',
  Status.rejected: 'REJECTED',
  Status.notSubmitted: 'NOT_SUBMITTED',
};

_$BiodataImpl _$$BiodataImplFromJson(Map<String, dynamic> json) =>
    _$BiodataImpl(
      id: json['id'] as String?,
      administrationId: json['administration_id'] as String?,
      fullName: json['full_name'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      phoneNumber: json['phone_number'] as String?,
      birthdate: json['birthdate'] as String?,
      birthplace: json['birthplace'] as String?,
      address: json['address'] as String?,
      lastEducation: json['last_education'] as String?,
      nim: json['nim'] as String?,
      university: json['university'] as String?,
      major: json['major'] as String?,
      semester: json['semester'] as int?,
      identityNumber: json['identity_number'] as String?,
      province: json['province'] as String?,
      provinceId: json['province_id'] as String?,
      regency: json['regency'] as String?,
      regencyId: json['regency_id'] as String?,
      district: json['district'] as String?,
      districtId: json['district_id'] as String?,
      village: json['village'] as String?,
      villageId: json['village_id'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$BiodataImplToJson(_$BiodataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'administration_id': instance.administrationId,
      'full_name': instance.fullName,
      'gender': _$GenderEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'birthdate': instance.birthdate,
      'birthplace': instance.birthplace,
      'address': instance.address,
      'last_education': instance.lastEducation,
      'nim': instance.nim,
      'university': instance.university,
      'major': instance.major,
      'semester': instance.semester,
      'identity_number': instance.identityNumber,
      'province': instance.province,
      'province_id': instance.provinceId,
      'regency': instance.regency,
      'regency_id': instance.regencyId,
      'district': instance.district,
      'district_id': instance.districtId,
      'village': instance.village,
      'village_id': instance.villageId,
      'postal_code': instance.postalCode,
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
};

_$FamilialImpl _$$FamilialImplFromJson(Map<String, dynamic> json) =>
    _$FamilialImpl(
      id: json['id'] as String?,
      administrationId: json['administration_id'] as String?,
      fatherName: json['father_name'] as String?,
      fatherOccupation: json['father_occupation'] as String?,
      fatherSalary: json['father_salary'] as String?,
      motherName: json['mother_name'] as String?,
      motherOccupation: json['mother_occupation'] as String?,
      motherSalary: json['mother_salary'] as String?,
      selfSalary: json['self_salary'] as String?,
      selfOccupation: json['self_occupation'] as String?,
      liveWith: json['live_with'] as String?,
      tuitionPayer: json['tuition_payer'] as String?,
    );

Map<String, dynamic> _$$FamilialImplToJson(_$FamilialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'administration_id': instance.administrationId,
      'father_name': instance.fatherName,
      'father_occupation': instance.fatherOccupation,
      'father_salary': instance.fatherSalary,
      'mother_name': instance.motherName,
      'mother_occupation': instance.motherOccupation,
      'mother_salary': instance.motherSalary,
      'self_salary': instance.selfSalary,
      'self_occupation': instance.selfOccupation,
      'live_with': instance.liveWith,
      'tuition_payer': instance.tuitionPayer,
    };

_$DocumentsImpl _$$DocumentsImplFromJson(Map<String, dynamic> json) =>
    _$DocumentsImpl(
      id: json['id'] as String?,
      administrationId: json['administration_id'] as String?,
      idCardId: json['id_card_id'] as int?,
      idCard: json['id_card'] as String?,
      diplomaCertificateId: json['diploma_certificate_id'] as int?,
      diplomaCertificate: json['diploma_certificate'] as String?,
      familyCardId: json['family_card_id'] as int?,
      familyCard: json['family_card'] as String?,
      photoId: json['photo_id'] as int?,
      photo: json['photo'] as String?,
      transcriptId: json['transcript_id'] as int?,
      transcript: json['transcript'] as String?,
      letterOfRecommendationId: json['letter_of_recommendation_id'] as int?,
      letterOfRecommendation: json['letter_of_recommendation'] as String?,
      studentCardId: json['student_card_id'] as int?,
      studentCard: json['student_card'] as String?,
    );

Map<String, dynamic> _$$DocumentsImplToJson(_$DocumentsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'administration_id': instance.administrationId,
      'id_card_id': instance.idCardId,
      'id_card': instance.idCard,
      'diploma_certificate_id': instance.diplomaCertificateId,
      'diploma_certificate': instance.diplomaCertificate,
      'family_card_id': instance.familyCardId,
      'family_card': instance.familyCard,
      'photo_id': instance.photoId,
      'photo': instance.photo,
      'transcript_id': instance.transcriptId,
      'transcript': instance.transcript,
      'letter_of_recommendation_id': instance.letterOfRecommendationId,
      'letter_of_recommendation': instance.letterOfRecommendation,
      'student_card_id': instance.studentCardId,
      'student_card': instance.studentCard,
    };

_$AdministrationConstantsImpl _$$AdministrationConstantsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdministrationConstantsImpl(
      gender: json['gender'] == null
          ? null
          : ConstantMap.fromJson(json['gender'] as Map<String, dynamic>),
      lastEducation: json['last_education'] == null
          ? null
          : ConstantMap.fromJson(
              json['last_education'] as Map<String, dynamic>),
      occupation: json['occupation'] == null
          ? null
          : ConstantMap.fromJson(json['occupation'] as Map<String, dynamic>),
      salary: json['salary'] == null
          ? null
          : ConstantMap.fromJson(json['salary'] as Map<String, dynamic>),
      liveWith: json['live_with'] == null
          ? null
          : ConstantMap.fromJson(json['live_with'] as Map<String, dynamic>),
      tuitionPayer: json['tuition_payer'] == null
          ? null
          : ConstantMap.fromJson(json['tuition_payer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdministrationConstantsImplToJson(
        _$AdministrationConstantsImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'last_education': instance.lastEducation,
      'occupation': instance.occupation,
      'salary': instance.salary,
      'live_with': instance.liveWith,
      'tuition_payer': instance.tuitionPayer,
    };

_$ConstantMapImpl _$$ConstantMapImplFromJson(Map<String, dynamic> json) =>
    _$ConstantMapImpl(
      keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ConstantMapImplToJson(_$ConstantMapImpl instance) =>
    <String, dynamic>{
      'keys': instance.keys,
      'values': instance.values,
    };

_$ProvinceImpl _$$ProvinceImplFromJson(Map<String, dynamic> json) =>
    _$ProvinceImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ProvinceImplToJson(_$ProvinceImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$RegencyImpl _$$RegencyImplFromJson(Map<String, dynamic> json) =>
    _$RegencyImpl(
      code: json['code'] as String?,
      provinceCode: json['province_code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$RegencyImplToJson(_$RegencyImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'province_code': instance.provinceCode,
      'name': instance.name,
    };

_$DistrictImpl _$$DistrictImplFromJson(Map<String, dynamic> json) =>
    _$DistrictImpl(
      code: json['code'] as String?,
      regencyCode: json['regency_code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DistrictImplToJson(_$DistrictImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'regency_code': instance.regencyCode,
      'name': instance.name,
    };

_$VillageImpl _$$VillageImplFromJson(Map<String, dynamic> json) =>
    _$VillageImpl(
      code: json['code'] as String?,
      districtCode: json['district_code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$VillageImplToJson(_$VillageImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'district_code': instance.districtCode,
      'name': instance.name,
    };
