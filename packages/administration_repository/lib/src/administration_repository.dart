import 'dart:io';

import 'package:administration_repository/src/models/models.dart';
import 'package:kg_client/kg_client.dart';
import 'package:path/path.dart';

const _defaultGender = Gender.male;
const _defaultLastEducation = 'NA';
const _defaultOccupation = 'BELUM_TIDAK_BEKERJA';
const _defaultSalary = 'TANPA_PENGHASILAN';
const _defaultLiveWith = 'PARENT';
const _defaultTuitionPayer = 'PARENT';

class UploadAdministrationDocumentsFailure implements Exception {
  const UploadAdministrationDocumentsFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  factory UploadAdministrationDocumentsFailure.fromMessage(String message) {
    switch (message) {
      case 'Only JPEG, JPG, PNG, and PDF files are allowed':
        return const UploadAdministrationDocumentsFailure(
          'Format file hanya .jpeg, .jpg, .png dan .pdf yang diperbolehkan.',
        );
      default:
        return UploadAdministrationDocumentsFailure(message);
    }
  }
  final String message;
}

class AdministrationRepository {
  AdministrationRepository({KgClient? kgClient})
      : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  Future<Administration> getAdministration() async {
    final result = await _kgClient.getAdministration();
    final resultBiodata = result.biodata;
    final resultFamilial = result.familial;
    final resultFile = result.file;

    Biodata? biodata;
    if (resultBiodata != null) {
      biodata = Biodata(
        address: resultBiodata.address ?? '',
        administrationId: resultBiodata.administrationId ?? '',
        birthdate: resultBiodata.birthdate ?? '',
        birthplace: resultBiodata.birthplace ?? '',
        district: resultBiodata.district ?? '',
        districtId: resultBiodata.districtId ?? '',
        fullName: resultBiodata.fullName ?? '',
        gender: resultBiodata.gender ?? _defaultGender,
        id: resultBiodata.id ?? '',
        identityNumber: resultBiodata.identityNumber ?? '',
        lastEducation: resultBiodata.lastEducation ?? _defaultLastEducation,
        phoneNumber: resultBiodata.phoneNumber ?? '',
        postalCode: resultBiodata.postalCode ?? '',
        province: resultBiodata.province ?? '',
        provinceId: resultBiodata.provinceId ?? '',
        regency: resultBiodata.regency ?? '',
        regencyId: resultBiodata.regencyId ?? '',
        village: resultBiodata.village ?? '',
        villageId: resultBiodata.villageId ?? '',
        major: resultBiodata.major,
        nim: resultBiodata.nim,
        semester: resultBiodata.semester,
        university: resultBiodata.university,
      );
    }
    Familial? familial;
    if (resultFamilial != null) {
      familial = Familial(
        administrationId: resultFamilial.administrationId ?? '',
        fatherName: resultFamilial.fatherName ?? '',
        fatherOccupation: resultFamilial.fatherOccupation ?? _defaultOccupation,
        fatherSalary: resultFamilial.fatherSalary ?? _defaultSalary,
        id: resultFamilial.id ?? '',
        liveWith: resultFamilial.liveWith ?? _defaultLiveWith,
        motherName: resultFamilial.motherName ?? '',
        motherOccupation: resultFamilial.motherOccupation ?? _defaultOccupation,
        motherSalary: resultFamilial.motherSalary ?? _defaultSalary,
        selfOccupation: resultFamilial.selfOccupation ?? _defaultOccupation,
        selfSalary: resultFamilial.selfSalary ?? _defaultSalary,
        tuitionPayer: resultFamilial.tuitionPayer ?? _defaultTuitionPayer,
      );
    }
    Documents? file;
    if (resultFile != null) {
      file = Documents(
        administrationId: resultFile.administrationId ?? '',
        id: resultFile.id ?? '',
        idCard: resultFile.idCard ?? '',
        idCardId: resultFile.idCardId ?? -1,
        photo: resultFile.photo ?? '',
        photoId: resultFile.photoId ?? -1,
        diplomaCertificate: resultFile.diplomaCertificate,
        diplomaCertificateId: resultFile.diplomaCertificateId,
        familyCard: resultFile.familyCard,
        familyCardId: resultFile.familyCardId,
        letterOfRecommendation: resultFile.letterOfRecommendation,
        letterOfRecommendationId: resultFile.letterOfRecommendationId,
        studentCard: resultFile.studentCard,
        studentCardId: resultFile.studentCardId,
        transcript: resultFile.transcript,
        transcriptId: resultFile.transcriptId,
      );
    }

    return Administration(
      id: result.id ?? '',
      userId: result.userId ?? '',
      status: result.status ?? Status.notSubmitted,
      reason: result.reason,
      actionBy: result.actionBy,
      biodata: biodata,
      familial: familial,
      file: file,
    );
  }

  Future<Constants> getConstants() async {
    final result = await _kgClient.getAdministrationConstants();

    final gender = ConstantMap(
      keys: result.gender?.keys ?? [],
      values: result.gender?.values ?? [],
    );
    final lastEducation = ConstantMap(
      keys: result.lastEducation?.keys ?? [],
      values: result.lastEducation?.values ?? [],
    );
    final liveWith = ConstantMap(
      keys: result.liveWith?.keys ?? [],
      values: result.liveWith?.values ?? [],
    );
    final occupation = ConstantMap(
      keys: result.occupation?.keys ?? [],
      values: result.occupation?.values ?? [],
    );
    final salary = ConstantMap(
      keys: result.salary?.keys ?? [],
      values: result.salary?.values ?? [],
    );
    final tuitionPayer = ConstantMap(
      keys: result.tuitionPayer?.keys ?? [],
      values: result.tuitionPayer?.values ?? [],
    );

    return Constants(
      gender: gender,
      lastEducation: lastEducation,
      liveWith: liveWith,
      occupation: occupation,
      salary: salary,
      tuitionPayer: tuitionPayer,
    );
  }

  Future<Biodata> submitBiodata({
    required String fullName,
    required Gender gender,
    required String phoneNumber,
    required String birthdate,
    required String birthplace,
    required String address,
    required String lastEducation,
    required String identityNumber,
    required String provinceId,
    required String regencyId,
    required String districtId,
    required String villageId,
    required String postalCode,
    String? university,
    String? major,
    int? semester,
    String? nim,
  }) async {
    final result = await _kgClient.submitAdministrationBiodata(
      fullName: fullName,
      gender: gender.name.toUpperCase(),
      phoneNumber: phoneNumber,
      birthdate: birthdate,
      birthplace: birthplace,
      address: address,
      lastEducation: lastEducation,
      identityNumber: identityNumber,
      provinceId: provinceId,
      regencyId: regencyId,
      districtId: districtId,
      villageId: villageId,
      postalCode: postalCode,
      major: major,
      nim: nim,
      semester: semester,
      university: university,
    );

    return Biodata(
      address: result.address ?? '',
      administrationId: result.administrationId ?? '',
      birthdate: result.birthdate ?? '',
      birthplace: result.birthplace ?? '',
      district: result.district ?? '',
      districtId: result.districtId ?? '',
      fullName: result.fullName ?? '',
      gender: result.gender ?? _defaultGender,
      id: result.id ?? '',
      identityNumber: result.identityNumber ?? '',
      lastEducation: result.lastEducation ?? _defaultLastEducation,
      phoneNumber: result.phoneNumber ?? '',
      postalCode: result.postalCode ?? '',
      province: result.province ?? '',
      provinceId: result.provinceId ?? '',
      regency: result.regency ?? '',
      regencyId: result.regencyId ?? '',
      village: result.village ?? '',
      villageId: result.villageId ?? '',
      major: result.major,
      nim: result.nim,
      semester: result.semester,
      university: result.university,
    );
  }

  Future<Familial> submitFamilial({
    required String fatherName,
    required String fatherOccupation,
    required String fatherSalary,
    required String motherName,
    required String motherOccupation,
    required String motherSalary,
    required String selfOccupation,
    required String selfSalary,
    required String liveWith,
    required String tuitionPayer,
  }) async {
    final result = await _kgClient.submitAdministrationFamilial(
      fatherName: fatherName,
      fatherOccupation: fatherOccupation,
      fatherSalary: fatherSalary,
      motherName: motherName,
      motherOccupation: motherOccupation,
      motherSalary: motherSalary,
      selfOccupation: selfOccupation,
      selfSalary: selfSalary,
      liveWith: liveWith,
      tuitionPayer: tuitionPayer,
    );

    return Familial(
      administrationId: result.administrationId ?? '',
      fatherName: result.fatherName ?? '',
      fatherOccupation: result.fatherOccupation ?? _defaultOccupation,
      fatherSalary: result.fatherSalary ?? _defaultSalary,
      id: result.id ?? '',
      liveWith: result.liveWith ?? _defaultLiveWith,
      motherName: result.motherName ?? '',
      motherOccupation: result.motherOccupation ?? _defaultOccupation,
      motherSalary: result.motherSalary ?? _defaultSalary,
      selfOccupation: result.selfOccupation ?? _defaultOccupation,
      selfSalary: result.selfSalary ?? _defaultSalary,
      tuitionPayer: result.tuitionPayer ?? _defaultTuitionPayer,
    );
  }

  Future<Documents> submitDocuments({
    required File idCardFile,
    required File photoFile,
    File? familyCardFile,
    File? diplomaCertificateFile,
    File? transcriptFile,
    File? studentCardFile,
    File? letterOfRecommendationFile,
  }) async {
    final result = await _kgClient.submitAdministrationDocuments(
      idCardFile: idCardFile,
      photoFile: photoFile,
      diplomaCertificateFile: diplomaCertificateFile,
      familyCardFile: familyCardFile,
      letterOfRecommendationFile: letterOfRecommendationFile,
      studentCardFile: studentCardFile,
      transcriptFile: transcriptFile,
    );

    return Documents(
      administrationId: result.administrationId ?? '',
      id: result.id ?? '',
      idCard: _getFileName(result.idCard) ?? '',
      idCardId: result.idCardId ?? -1,
      photo: _getFileName(result.photo) ?? '',
      photoId: result.photoId ?? -1,
      diplomaCertificate: _getFileName(result.diplomaCertificate),
      diplomaCertificateId: result.diplomaCertificateId,
      familyCard: _getFileName(result.familyCard),
      familyCardId: result.familyCardId,
      letterOfRecommendation: _getFileName(result.letterOfRecommendation),
      letterOfRecommendationId: result.letterOfRecommendationId,
      studentCard: _getFileName(result.studentCard),
      studentCardId: result.studentCardId,
      transcript: _getFileName(result.transcript),
      transcriptId: result.transcriptId,
    );
  }

  Future<List<Province>> getProvincies() async {
    final result = await _kgClient.getProvincies();

    return result
        .map(
          (province) =>
              Province(code: province.code ?? '', name: province.name ?? ''),
        )
        .toList();
  }

  Future<List<Regency>> getRegencies(String provinceId) async {
    final result = await _kgClient.getRegencies(provinceId);

    return result
        .map(
          (regency) => Regency(
            code: regency.code ?? '',
            name: regency.name ?? '',
            provinceCode: regency.provinceCode ?? '',
          ),
        )
        .toList();
  }

  Future<List<District>> getDistricts(String regencyId) async {
    final result = await _kgClient.getDistricts(regencyId);

    return result
        .map(
          (district) => District(
            code: district.code ?? '',
            name: district.name ?? '',
            regencyCode: district.regencyCode ?? '',
          ),
        )
        .toList();
  }

  Future<List<Village>> getVillages(String districtId) async {
    final result = await _kgClient.getVillages(districtId);

    return result
        .map(
          (village) => Village(
            code: village.code ?? '',
            name: village.name ?? '',
            districtCode: village.districtCode ?? '',
          ),
        )
        .toList();
  }
}

String? _getFileName(String? path) {
  if (path == null) return null;

  return basename(path);
}
