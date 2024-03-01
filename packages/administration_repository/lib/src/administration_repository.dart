import 'dart:io';

import 'package:administration_repository/src/models/models.dart';
import 'package:kg_client/kg_client.dart';

const _defaultStatus = AdministrationStatus.notSubmitted;

class UploadAdministrationFilesFailure implements Exception {
  const UploadAdministrationFilesFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  factory UploadAdministrationFilesFailure.fromMessage(String message) {
    switch (message) {
      case 'Only JPEG, JPG, PNG, and PDF files are allowed':
        return const UploadAdministrationFilesFailure(
          'Format file hanya .jpeg, .jpg, .png dan .pdf yang diperbolehkan.',
        );
      default:
        return UploadAdministrationFilesFailure(message);
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
    final resultDetails = result.details;
    final resultBiodatas = result.biodatas;
    final resultFamilials = result.familials;
    final resultFiles = result.files;

    Details? details;
    if (resultDetails != null) {
      details = Details(
        id: resultDetails.id ?? '',
        userId: resultDetails.userId ?? '',
        status: resultDetails.status ?? _defaultStatus,
        actionBy: resultDetails.actionBy,
        createdAt: resultDetails.createdAt,
        reason: resultDetails.reason,
        type: resultDetails.type,
        updatedAt: resultDetails.updatedAt,
      );
    }
    Biodatas? biodatas;
    if (resultBiodatas != null) {
      biodatas = Biodatas(
        address: resultBiodatas.address,
        birthdate: resultBiodatas.birthdate,
        birthplace: resultBiodatas.birthplace,
        district: resultBiodatas.district,
        districtId: resultBiodatas.districtId,
        fullName: resultBiodatas.fullName,
        gender: resultBiodatas.gender,
        identityNumber: resultBiodatas.identityNumber,
        lastEducation: resultBiodatas.lastEducation,
        phoneNumber: resultBiodatas.phoneNumber,
        postalCode: resultBiodatas.postalCode,
        province: resultBiodatas.province,
        provinceId: resultBiodatas.provinceId,
        regency: resultBiodatas.regency,
        regencyId: resultBiodatas.regencyId,
        village: resultBiodatas.village,
        villageId: resultBiodatas.villageId,
        major: resultBiodatas.major,
        nim: resultBiodatas.nim,
        semester: resultBiodatas.semester,
        university: resultBiodatas.university,
      );
    }
    Familials? familials;
    if (resultFamilials != null) {
      familials = Familials(
        fatherName: resultFamilials.fatherName,
        fatherOccupation: resultFamilials.fatherOccupation,
        fatherSalary: resultFamilials.fatherSalary,
        liveWith: resultFamilials.liveWith,
        motherName: resultFamilials.motherName,
        motherOccupation: resultFamilials.motherOccupation,
        motherSalary: resultFamilials.motherSalary,
        selfOccupation: resultFamilials.selfOccupation,
        selfSalary: resultFamilials.selfSalary,
        tuitionPayer: resultFamilials.tuitionPayer,
      );
    }
    Files? files;
    if (resultFiles != null) {
      files = Files(
        idCard: resultFiles.idCard,
        idCardName: resultFiles.idCardName,
        photo: resultFiles.photo,
        photoName: resultFiles.photoName,
        diplomaCertificate: resultFiles.diplomaCertificate,
        diplomaCertificateName: resultFiles.diplomaCertificateName,
        familyCard: resultFiles.familyCard,
        familyCardName: resultFiles.familyCardName,
        letterOfRecommendation: resultFiles.letterOfRecommendation,
        letterOfRecommendationName: resultFiles.letterOfRecommendationName,
        studentCard: resultFiles.studentCard,
        studentCardName: resultFiles.studentCardName,
        transcript: resultFiles.transcript,
        transcriptName: resultFiles.transcriptName,
      );
    }

    return Administration(
      details: details,
      biodatas: biodatas,
      familials: familials,
      files: files,
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

  Future<Biodatas> submitBiodatas({
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
    final result = await _kgClient.submitAdministrationBiodatas(
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

    return Biodatas(
      address: result.address,
      birthdate: result.birthdate,
      birthplace: result.birthplace,
      district: result.district,
      districtId: result.districtId,
      fullName: result.fullName,
      gender: result.gender,
      identityNumber: result.identityNumber,
      lastEducation: result.lastEducation,
      phoneNumber: result.phoneNumber,
      postalCode: result.postalCode,
      province: result.province,
      provinceId: result.provinceId,
      regency: result.regency,
      regencyId: result.regencyId,
      village: result.village,
      villageId: result.villageId,
      major: result.major,
      nim: result.nim,
      semester: result.semester,
      university: result.university,
    );
  }

  Future<Familials> submitFamilials({
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
    final result = await _kgClient.submitAdministrationFamilials(
      fatherName: fatherName,
      fatherOccupation: fatherOccupation,
      fatherSalary: fatherSalary,
      liveWith: liveWith,
      motherName: motherName,
      motherOccupation: motherOccupation,
      motherSalary: motherSalary,
      selfOccupation: selfOccupation,
      selfSalary: selfSalary,
      tuitionPayer: tuitionPayer,
    );

    return Familials(
      fatherName: result.fatherName,
      fatherOccupation: result.fatherOccupation,
      fatherSalary: result.fatherSalary,
      liveWith: result.liveWith,
      motherName: result.motherName,
      motherOccupation: result.motherOccupation,
      motherSalary: result.motherSalary,
      selfOccupation: result.selfOccupation,
      selfSalary: result.selfSalary,
      tuitionPayer: result.tuitionPayer,
    );
  }

  Future<Files> submitFiles({
    required File idCardFile,
    required File photoFile,
    File? familyCardFile,
    File? diplomaCertificateFile,
    File? transcriptFile,
    File? studentCardFile,
    File? letterOfRecommendationFile,
  }) async {
    final result = await _kgClient.submitAdministrationFiles(
      idCardFile: idCardFile,
      photoFile: photoFile,
      diplomaCertificateFile: diplomaCertificateFile,
      familyCardFile: familyCardFile,
      letterOfRecommendationFile: letterOfRecommendationFile,
      studentCardFile: studentCardFile,
      transcriptFile: transcriptFile,
    );

    return Files(
      diplomaCertificate: result.diplomaCertificate,
      diplomaCertificateName: result.diplomaCertificateName,
      familyCard: result.familyCard,
      familyCardName: result.familyCardName,
      idCard: result.idCard,
      idCardName: result.idCardName,
      letterOfRecommendation: result.letterOfRecommendation,
      letterOfRecommendationName: result.letterOfRecommendationName,
      photo: result.photo,
      photoName: result.photoName,
      studentCard: result.studentCard,
      studentCardName: result.studentCardName,
      transcript: result.transcript,
      transcriptName: result.transcriptName,
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
