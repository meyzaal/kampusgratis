import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/src/models/models.dart';

part 'administration.freezed.dart';
part 'administration.g.dart';

enum AdministrationStatus {
  @JsonValue('PENDING')
  pending,

  @JsonValue('ACCEPTED')
  accepted,

  @JsonValue('REJECTED')
  rejected,

  @JsonValue('NOT_SUBMITTED')
  notSubmitted,
}

@freezed
class Administration with _$Administration {
  const factory Administration({
    @JsonKey(name: 'details') Details? details,
    @JsonKey(name: 'biodatas') Biodatas? biodatas,
    @JsonKey(name: 'familials') Familials? familials,
    @JsonKey(name: 'files') Files? files,
  }) = _Administration;

  factory Administration.fromJson(Map<String, Object?> json) =>
      _$AdministrationFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'status') AdministrationStatus? status,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'action_by') String? actionBy,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _Details;

  factory Details.fromJson(Map<String, Object?> json) =>
      _$DetailsFromJson(json);
}

@freezed
class Biodatas with _$Biodatas {
  const factory Biodatas({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'gender') Gender? gender,
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
  }) = _Biodatas;

  factory Biodatas.fromJson(Map<String, Object?> json) =>
      _$BiodatasFromJson(json);
}

@freezed
class Familials with _$Familials {
  const factory Familials({
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
  }) = _Familials;

  factory Familials.fromJson(Map<String, Object?> json) =>
      _$FamilialsFromJson(json);
}

@freezed
class Files with _$Files {
  const factory Files({
    @JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
    @JsonKey(name: 'diploma_certificate_name') String? diplomaCertificateName,
    @JsonKey(name: 'family_card') String? familyCard,
    @JsonKey(name: 'family_card_name') String? familyCardName,
    @JsonKey(name: 'id_card') String? idCard,
    @JsonKey(name: 'id_card_name') String? idCardName,
    @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
    @JsonKey(name: 'letter_of_recommendation_name')
    String? letterOfRecommendationName,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'photo_name') String? photoName,
    @JsonKey(name: 'student_card') String? studentCard,
    @JsonKey(name: 'student_card_name') String? studentCardName,
    @JsonKey(name: 'transcript') String? transcript,
    @JsonKey(name: 'transcript_name') String? transcriptName,
  }) = _Files;

  factory Files.fromJson(Map<String, Object?> json) => _$FilesFromJson(json);
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

@freezed
class Province with _$Province {
  const factory Province({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  }) = _Province;

  factory Province.fromJson(Map<String, Object?> json) =>
      _$ProvinceFromJson(json);
}

@freezed
class Regency with _$Regency {
  const factory Regency({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'province_code') String? provinceCode,
    @JsonKey(name: 'name') String? name,
  }) = _Regency;

  factory Regency.fromJson(Map<String, Object?> json) =>
      _$RegencyFromJson(json);
}

@freezed
class District with _$District {
  const factory District({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'regency_code') String? regencyCode,
    @JsonKey(name: 'name') String? name,
  }) = _District;

  factory District.fromJson(Map<String, Object?> json) =>
      _$DistrictFromJson(json);
}

@freezed
class Village with _$Village {
  const factory Village({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'district_code') String? districtCode,
    @JsonKey(name: 'name') String? name,
  }) = _Village;

  factory Village.fromJson(Map<String, Object?> json) =>
      _$VillageFromJson(json);
}
