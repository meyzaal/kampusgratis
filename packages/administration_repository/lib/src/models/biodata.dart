import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'biodata.freezed.dart';

@freezed
class Biodata with _$Biodata {
  const factory Biodata({
    required String id,
    required String administrationId,
    required String fullName,
    required Gender gender,
    required String phoneNumber,
    required String birthdate,
    required String birthplace,
    required String address,
    required String lastEducation,
    required String identityNumber,
    required String province,
    required String provinceId,
    required String regency,
    required String regencyId,
    required String district,
    required String districtId,
    required String village,
    required String villageId,
    required String postalCode,
    String? university,
    String? major,
    int? semester,
    String? nim,
  }) = _Biodata;
}
