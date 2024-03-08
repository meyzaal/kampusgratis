part of 'administration_bloc.dart';

@freezed
class AdministrationEvent with _$AdministrationEvent {
  const factory AdministrationEvent.modeChanged(AdministrationMode mode) =
      AdministrationModeChanged;
  const factory AdministrationEvent.fetched() = AdministrationFetched;
  const factory AdministrationEvent.nameChanged(String name) =
      AdministrationNameChanged;
  const factory AdministrationEvent.ninChanged(String nin) =
      AdministrationNinChanged;
  const factory AdministrationEvent.genderChanged(String gender) =
      AdministrationGenderChanged;
  const factory AdministrationEvent.phoneChanged(String phone) =
      AdministrationPhoneChanged;
  const factory AdministrationEvent.lastEducationChanged(
    String lastEducation,
  ) = AdministrationLastEducationChanged;
  const factory AdministrationEvent.birthPlaceChanged(String birthPlace) =
      AdministrationBirthPlaceChanged;
  const factory AdministrationEvent.birthDateChanged(String birthDate) =
      AdministrationBirthDateChanged;
  const factory AdministrationEvent.addressChanged(String address) =
      AdministrationAddressChanged;
  const factory AdministrationEvent.provinceChanged(Province province) =
      AdministrationProvinceChanged;
  const factory AdministrationEvent.regencyChanged(Regency regency) =
      AdministrationRegencyChanged;
  const factory AdministrationEvent.districtChanged(District district) =
      AdministrationDistrictChanged;
  const factory AdministrationEvent.villageChanged(Village village) =
      AdministrationVillageChanged;
  const factory AdministrationEvent.zipCodeChanged(String zipCode) =
      AdministrationZipCodeChanged;
  const factory AdministrationEvent.semesterChanged(String semester) =
      AdministrationSemesterChanged;
  const factory AdministrationEvent.nimChanged(String nim) =
      AdministrationNimChanged;
  const factory AdministrationEvent.universityChanged(String university) =
      AdministrationUniversityChanged;
  const factory AdministrationEvent.majorChanged(String major) =
      AdministrationMajorChanged;
  const factory AdministrationEvent.formSubmitted() =
      AdministrationFormSubmitted;
  const factory AdministrationEvent.regenciesFetched(String provinceId) =
      _AdministrationRegenciesFetched;
  const factory AdministrationEvent.districtsFetched(String regencyId) =
      _AdministrationDistrictsFetched;
  const factory AdministrationEvent.villagesFetched(String districtId) =
      _AdministrationVillagesFetched;
}
