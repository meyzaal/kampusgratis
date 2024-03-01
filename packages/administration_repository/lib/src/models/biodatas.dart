import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'biodatas.freezed.dart';

@freezed
class Biodatas with _$Biodatas {
  const factory Biodatas({
    String? fullName,
    Gender? gender,
    String? phoneNumber,
    String? birthdate,
    String? birthplace,
    String? address,
    String? lastEducation,
    String? identityNumber,
    String? province,
    String? provinceId,
    String? regency,
    String? regencyId,
    String? district,
    String? districtId,
    String? village,
    String? villageId,
    String? postalCode,
    String? nim,
    String? university,
    String? major,
    int? semester,
  }) = _Biodatas;
}
