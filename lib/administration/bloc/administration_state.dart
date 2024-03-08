part of 'administration_bloc.dart';

@freezed
class AdministrationState with _$AdministrationState {
  const factory AdministrationState({
    required bool isValid,
    required AdministrationMode administrationMode,
    required AdministrationFetchStatus fetchAdministrationStatus,
    required AdministrationFetchStatus fetchRegenciesStatus,
    required AdministrationFetchStatus fetchDistrictsStatus,
    required AdministrationFetchStatus fetchVillagesStatus,
    required FormzSubmissionStatus submissionStatus,
    required NameInput name,
    required NinInput nin,
    required GenderInput gender,
    required PhoneInput phone,
    required LastEducationInput lastEducation,
    required BirthPlaceInput birthPlace,
    required BirthDateInput birthDate,
    required AddressInput address,
    required ProvinceInput province,
    required RegencyInput regency,
    required DistrictInput district,
    required VillageInput village,
    required ZipCodeInput zipCode,
    required List<Province> administrativeProvincies,
    required List<Regency> administrativeRegencies,
    required List<District> administrativeDistricts,
    required List<Village> administrativeVillages,
    SemesterInput? semester,
    String? nim,
    String? university,
    String? major,
    Administration? administration,
    Constants? constants,
    String? message,
  }) = _AdministrationState;
}
