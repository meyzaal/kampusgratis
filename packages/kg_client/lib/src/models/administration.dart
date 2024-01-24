import 'package:freezed_annotation/freezed_annotation.dart';

part 'administration.freezed.dart';
part 'administration.g.dart';

@freezed
class Administration with _$Administration {
  const factory Administration({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'action_by') String? actionBy,
    @JsonKey(name: 'biodata') Biodata? biodata,
    @JsonKey(name: 'familial') Familial? familial,
    @JsonKey(name: 'file') Documents? file,
  }) = _Administration;

  factory Administration.fromJson(Map<String, Object?> json) =>
      _$AdministrationFromJson(json);
}

@freezed
class Biodata with _$Biodata {
  const factory Biodata({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'administration_id') String? administrationId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'birthdate') String? birthdate,
    @JsonKey(name: 'birthplace') String? birthplace,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'last_education') String? lastEducation,
    @JsonKey(name: 'nim') String? nim,
    @JsonKey(name: 'university') String? university,
    @JsonKey(name: 'major') String? major,
    @JsonKey(name: 'semester') int? semester,
    @JsonKey(name: 'identity_number') String? identityNumber,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'province_id') String? provinceId,
    @JsonKey(name: 'regency') String? regency,
    @JsonKey(name: 'regency_id') String? regencyId,
    @JsonKey(name: 'district') String? district,
    @JsonKey(name: 'district_id') String? districtId,
    @JsonKey(name: 'village') String? village,
    @JsonKey(name: 'village_id') String? villageId,
    @JsonKey(name: 'postal_code') String? postalCode,
  }) = _Biodata;

  factory Biodata.fromJson(Map<String, Object?> json) =>
      _$BiodataFromJson(json);
}

@freezed
class Familial with _$Familial {
  const factory Familial({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'administration_id') String? administrationId,
    @JsonKey(name: 'father_name') String? fatherName,
    @JsonKey(name: 'father_occupation') String? fatherOccupation,
    @JsonKey(name: 'father_salary') String? fatherSalary,
    @JsonKey(name: 'mother_name') String? motherName,
    @JsonKey(name: 'mother_occupation') String? motherOccupation,
    @JsonKey(name: 'mother_salary') String? motherSalary,
    @JsonKey(name: 'self_salary') String? selfSalary,
    @JsonKey(name: 'self_occupation') String? selfOccupation,
    @JsonKey(name: 'live_with') String? liveWith,
    @JsonKey(name: 'tuition_payer') String? tuitionPayer,
  }) = _Familial;

  factory Familial.fromJson(Map<String, Object?> json) =>
      _$FamilialFromJson(json);
}

@freezed
class Documents with _$Documents {
  const factory Documents({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'administration_id') String? administrationId,
    @JsonKey(name: 'id_card_id') String? idCardId,
    @JsonKey(name: 'id_card') String? idCard,
    @JsonKey(name: 'diploma_certificate_id') String? diplomaCertificateId,
    @JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
    @JsonKey(name: 'family_card_id') String? familyCardId,
    @JsonKey(name: 'family_card') String? familyCard,
    @JsonKey(name: 'photo_id') String? photoId,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'transcript_id') String? transcriptId,
    @JsonKey(name: 'transcript') String? transcript,
    @JsonKey(name: 'letter_of_recommendation_id')
    String? letterOfRecommendationId,
    @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
    @JsonKey(name: 'student_card_id') String? studentCardId,
    @JsonKey(name: 'student_card') String? studentCard,
  }) = _Documents;

  factory Documents.fromJson(Map<String, Object?> json) =>
      _$DocumentsFromJson(json);
}

@freezed
class AdministrationConstants with _$AdministrationConstants {
  const factory AdministrationConstants({
    @JsonKey(name: 'gender') ConstantMap? gender,
    @JsonKey(name: 'last_education') ConstantMap? lastEducation,
    @JsonKey(name: 'occupation') ConstantMap? occupation,
    @JsonKey(name: 'salary') ConstantMap? salary,
    @JsonKey(name: 'live_with') ConstantMap? liveWith,
    @JsonKey(name: 'tuition_payer') ConstantMap? tuitionPayer,
  }) = _AdministrationConstants;

  factory AdministrationConstants.fromJson(Map<String, Object?> json) =>
      _$AdministrationConstantsFromJson(json);
}

@freezed
class ConstantMap with _$ConstantMap {
  const factory ConstantMap({
    @JsonKey(name: 'keys') List<String>? keys,
    @JsonKey(name: 'values') List<String>? values,
  }) = _ConstantMap;

  factory ConstantMap.fromJson(Map<String, Object?> json) =>
      _$ConstantMapFromJson(json);
}
