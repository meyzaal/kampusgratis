import 'package:administration_repository/administration_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampusgratis/administration/administration.dart';
import 'package:kampusgratis/shared/shared.dart' hide Constants, GenderInput;
import 'package:kg_client/kg_client.dart';

part 'administration_event.dart';
part 'administration_state.dart';
part 'administration_bloc.freezed.dart';

enum AdministrationFetchStatus { initial, loading, failure, success }

enum AdministrationMode {
  initial,
  fill,
  edit,
}

class AdministrationBloc
    extends Bloc<AdministrationEvent, AdministrationState> {
  AdministrationBloc(AdministrationRepository administrationRepository)
      : _administrationRepository = administrationRepository,
        super(
          const AdministrationState(
            isValid: false,
            administrationMode: AdministrationMode.initial,
            fetchAdministrationStatus: AdministrationFetchStatus.initial,
            fetchRegenciesStatus: AdministrationFetchStatus.initial,
            fetchDistrictsStatus: AdministrationFetchStatus.initial,
            fetchVillagesStatus: AdministrationFetchStatus.initial,
            submissionStatus: FormzSubmissionStatus.initial,
            name: NameInput.pure(),
            nin: NinInput.pure(),
            gender: GenderInput.pure(),
            phone: PhoneInput.pure(),
            lastEducation: LastEducationInput.pure(),
            birthPlace: BirthPlaceInput.pure(),
            birthDate: BirthDateInput.pure(),
            address: AddressInput.pure(),
            province: ProvinceInput.pure(),
            regency: RegencyInput.pure(),
            district: DistrictInput.pure(),
            village: VillageInput.pure(),
            zipCode: ZipCodeInput.pure(),
            administrativeProvincies: [],
            administrativeRegencies: [],
            administrativeDistricts: [],
            administrativeVillages: [],
          ),
        ) {
    on<AdministrationModeChanged>(_onAdministrationModeChanged);
    on<AdministrationFetched>(_onAdministrationFetched);
    on<AdministrationNameChanged>(_onAdministrationNameChanged);
    on<AdministrationNinChanged>(_onAdministrationNinChanged);
    on<AdministrationGenderChanged>(_onAdministrationGenderChanged);
    on<AdministrationPhoneChanged>(_onAdministrationPhoneChanged);
    on<AdministrationLastEducationChanged>(
      _onAdministrationLastEducationChanged,
    );
    on<AdministrationBirthPlaceChanged>(_onAdministrationBirthPlaceChanged);
    on<AdministrationBirthDateChanged>(_onAdministrationBirthDateChanged);
    on<AdministrationAddressChanged>(_onAdministrationAddressChanged);
    on<AdministrationProvinceChanged>(_onAdministrationProvinceChanged);
    on<AdministrationRegencyChanged>(_onAdministrationRegencyChanged);
    on<AdministrationDistrictChanged>(_onAdministrationDistrictChanged);
    on<AdministrationVillageChanged>(_onAdministrationVillageChanged);
    on<AdministrationZipCodeChanged>(_onAdministrationZipCodeChanged);
    on<AdministrationSemesterChanged>(_onAdministrationSemesterChanged);
    on<AdministrationNimChanged>(_onAdministrationNimChanged);
    on<AdministrationMajorChanged>(_onAdministrationMajorChanged);
    on<AdministrationUniversityChanged>(_onAdministrationUniversityChanged);
    on<AdministrationFormSubmitted>(_onAdministrationFormSubmitted);
    on<_AdministrationRegenciesFetched>(_onAdministrationRegenciesFetched);
    on<_AdministrationDistrictsFetched>(_onAdministrationDistrictsFetched);
    on<_AdministrationVillagesFetched>(_onAdministrationVillagesFetched);
  }

  final AdministrationRepository _administrationRepository;

  void _onAdministrationModeChanged(
    AdministrationModeChanged event,
    Emitter<AdministrationState> emit,
  ) =>
      emit(state.copyWith(administrationMode: event.mode));

  Future<void> _onAdministrationFetched(
    AdministrationFetched event,
    Emitter<AdministrationState> emit,
  ) async {
    if (state.fetchAdministrationStatus.isLoading) return;
    emit(
      state.copyWith(
        fetchAdministrationStatus: AdministrationFetchStatus.loading,
      ),
    );
    try {
      var provincies = <Province>[];
      Constants? constants;
      Administration? administration;
      final results = await Future.wait([
        _administrationRepository.getConstants(),
        _administrationRepository.getProvincies(),
        _administrationRepository.getAdministration(),
      ]);
      for (final result in results) {
        if (result is List<Province>) provincies = result;
        if (result is Constants) constants = result;
        if (result is Administration) administration = result;
      }
      final biodatas = administration?.biodatas;
      final details = administration?.details;
      var name = state.name;
      var gender = state.gender;
      var phone = state.phone;
      var birthDate = state.birthDate;
      var birthPlace = state.birthPlace;
      var address = state.address;
      var lastEducation = state.lastEducation;
      var nin = state.nin;
      var province = state.province; // id
      var regency = state.regency; // id
      var district = state.district; // id
      var village = state.village; // id
      var zipCode = state.zipCode;
      var nim = state.nim;
      var university = state.university;
      var major = state.major;
      var semester = state.semester;

      if (details != null && !details.status.isNotSubmitted) {
        name = NameInput.dirty(biodatas?.fullName ?? '');
        gender = GenderInput.dirty(biodatas?.gender ?? '');
        phone = PhoneInput.dirty(biodatas?.phoneNumber ?? '');
        birthDate = BirthDateInput.dirty(biodatas?.birthdate ?? '');
        birthPlace = BirthPlaceInput.dirty(biodatas?.birthplace ?? '');
        address = AddressInput.dirty(biodatas?.address ?? '');
        lastEducation = LastEducationInput.dirty(biodatas?.lastEducation ?? '');
        nin = NinInput.dirty(biodatas?.identityNumber ?? '');
        final provinceId = biodatas?.provinceId;
        final provinceName = biodatas?.province;
        Province? provinceValue;
        if (provinceId != null) {
          provinceValue = Province(code: provinceId, name: provinceName ?? '');
          add(AdministrationEvent.regenciesFetched(provinceId));
        }
        province = ProvinceInput.dirty(value: provinceValue);
        final regencyId = biodatas?.regencyId;
        final regencyName = biodatas?.regency;
        Regency? regencyValue;
        if (regencyId != null) {
          regencyValue = Regency(
            code: regencyId,
            provinceCode: provinceId ?? '',
            name: regencyName ?? '',
          );
          add(AdministrationEvent.districtsFetched(regencyId));
        }
        regency = RegencyInput.dirty(value: regencyValue);
        final districtId = biodatas?.districtId;
        final districtName = biodatas?.district;
        District? districtValue;
        if (districtId != null) {
          districtValue = District(
            code: districtId,
            regencyCode: regencyId ?? '',
            name: districtName ?? '',
          );
          add(AdministrationEvent.villagesFetched(districtId));
        }
        district = DistrictInput.dirty(value: districtValue);
        final villageId = biodatas?.villageId;
        final villageName = biodatas?.village;
        Village? villageValue;
        if (villageId != null) {
          villageValue = Village(
            code: villageId,
            districtCode: districtId ?? '',
            name: villageName ?? '',
          );
        }
        village = VillageInput.dirty(
          value: villageValue,
        );
        zipCode = ZipCodeInput.dirty(biodatas?.postalCode ?? '');
        nim = biodatas?.nim ?? '';
        university = biodatas?.university;
        major = biodatas?.major;
        semester = SemesterInput.dirty(biodatas?.semester ?? 0);
      }
      emit(
        state.copyWith(
          administrationMode:
              administration?.details?.status.mode ?? state.administrationMode,
          fetchAdministrationStatus: AdministrationFetchStatus.success,
          administration: administration,
          constants: constants,
          administrativeProvincies: provincies,
          name: name,
          gender: gender,
          phone: phone,
          birthDate: birthDate,
          birthPlace: birthPlace,
          address: address,
          lastEducation: lastEducation,
          nin: nin,
          province: province,
          regency: regency,
          district: district,
          village: village,
          zipCode: zipCode,
          nim: nim,
          university: university,
          major: major,
          semester: semester,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          fetchAdministrationStatus: AdministrationFetchStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          fetchAdministrationStatus: AdministrationFetchStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  void _onAdministrationNameChanged(
    AdministrationNameChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final name = NameInput.dirty(event.name);
    emit(
      state.copyWith(
        name: name,
        isValid: Formz.validate([
          name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationNinChanged(
    AdministrationNinChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final nin = NinInput.dirty(event.nin);
    emit(
      state.copyWith(
        nin: nin,
        isValid: Formz.validate([
          state.name,
          nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationGenderChanged(
    AdministrationGenderChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final gender = GenderInput.dirty(event.gender);
    emit(
      state.copyWith(
        gender: gender,
        isValid: Formz.validate([
          state.name,
          state.nin,
          gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationPhoneChanged(
    AdministrationPhoneChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final phone = PhoneInput.dirty(event.phone);
    emit(
      state.copyWith(
        phone: phone,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationLastEducationChanged(
    AdministrationLastEducationChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final lastEducation = LastEducationInput.dirty(event.lastEducation);
    emit(
      state.copyWith(
        lastEducation: lastEducation,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationBirthPlaceChanged(
    AdministrationBirthPlaceChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final birthPlace = BirthPlaceInput.dirty(event.birthPlace);
    emit(
      state.copyWith(
        birthPlace: birthPlace,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationBirthDateChanged(
    AdministrationBirthDateChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final birthDate = BirthDateInput.dirty(event.birthDate);
    emit(
      state.copyWith(
        birthDate: birthDate,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationAddressChanged(
    AdministrationAddressChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final address = AddressInput.dirty(event.address);
    emit(
      state.copyWith(
        address: address,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationProvinceChanged(
    AdministrationProvinceChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final province = ProvinceInput.dirty(value: event.province);
    final value = province.value;
    final sameProvince = value?.code == state.province.value?.code;
    var regency = state.regency;
    var district = state.district;
    var village = state.village;
    if (!sameProvince) {
      if (!regency.isPure) regency = const RegencyInput.dirty();
      if (!district.isPure) district = const DistrictInput.dirty();
      if (!village.isPure) village = const VillageInput.dirty();
    }

    emit(
      state.copyWith(
        province: province,
        regency: regency,
        district: district,
        village: village,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          province,
          regency,
          district,
          village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
    final provinceId = value?.code;
    if (provinceId != null) add(_AdministrationRegenciesFetched(provinceId));
  }

  void _onAdministrationRegencyChanged(
    AdministrationRegencyChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final regency = RegencyInput.dirty(value: event.regency);
    final value = regency.value;
    final sameRegency = value?.code == state.regency.value?.code;
    var district = state.district;
    var village = state.village;
    if (!sameRegency) {
      if (!district.isPure) district = const DistrictInput.dirty();
      if (!village.isPure) village = const VillageInput.dirty();
    }
    emit(
      state.copyWith(
        regency: regency,
        district: district,
        village: village,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          regency,
          district,
          village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
    final regencyId = value?.code;
    if (regencyId != null) add(_AdministrationDistrictsFetched(regencyId));
  }

  void _onAdministrationDistrictChanged(
    AdministrationDistrictChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final district = DistrictInput.dirty(value: event.district);
    final value = district.value;
    final sameVillage = value?.code == state.village.value?.code;
    var village = state.village;
    if (!sameVillage) {
      if (!village.isPure) village = const VillageInput.dirty();
    }
    emit(
      state.copyWith(
        district: district,
        village: village,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          district,
          village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
    final districtId = value?.code;
    if (districtId != null) add(_AdministrationVillagesFetched(districtId));
  }

  void _onAdministrationVillageChanged(
    AdministrationVillageChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final village = VillageInput.dirty(value: event.village);
    emit(
      state.copyWith(
        village: village,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          village,
          state.zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationZipCodeChanged(
    AdministrationZipCodeChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final zipCode = ZipCodeInput.dirty(event.zipCode);
    emit(
      state.copyWith(
        zipCode: zipCode,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          zipCode,
          if (state.semester != null) state.semester!,
        ]),
      ),
    );
  }

  void _onAdministrationSemesterChanged(
    AdministrationSemesterChanged event,
    Emitter<AdministrationState> emit,
  ) {
    final semester = SemesterInput.dirty(int.tryParse(event.semester));
    emit(
      state.copyWith(
        semester: semester,
        isValid: Formz.validate([
          state.name,
          state.nin,
          state.gender,
          state.phone,
          state.lastEducation,
          state.birthPlace,
          state.birthDate,
          state.address,
          state.province,
          state.regency,
          state.district,
          state.village,
          state.zipCode,
          semester,
        ]),
      ),
    );
  }

  void _onAdministrationUniversityChanged(
    AdministrationUniversityChanged event,
    Emitter<AdministrationState> emit,
  ) {
    emit(state.copyWith(university: event.university));
  }

  void _onAdministrationMajorChanged(
    AdministrationMajorChanged event,
    Emitter<AdministrationState> emit,
  ) {
    emit(state.copyWith(major: event.major));
  }

  void _onAdministrationNimChanged(
    AdministrationNimChanged event,
    Emitter<AdministrationState> emit,
  ) {
    emit(state.copyWith(nim: event.nim));
  }

  Future<void> _onAdministrationFormSubmitted(
    AdministrationFormSubmitted event,
    Emitter<AdministrationState> emit,
  ) async {
    if (state.submissionStatus.isInProgress) return;
    emit(state.copyWith(submissionStatus: FormzSubmissionStatus.inProgress));
    try {
      final province = state.province.value;
      final regency = state.regency.value;
      final district = state.district.value;
      final village = state.village.value;
      if (province == null ||
          regency == null ||
          district == null ||
          village == null) {
        emit(
          state.copyWith(
            submissionStatus: FormzSubmissionStatus.canceled,
            message:
                '''Administrasi dibatalkan, pastikan semua kolom yang wajib diisi telah diisi.''',
          ),
        );
        return;
      }

      final name = state.name.value;
      final nin = state.nin.value;
      final gender = state.gender.value;
      final phone = state.phone.value;
      final lastEducation = state.lastEducation.value;
      final birthPlace = state.birthPlace.value;
      final birthDate = state.birthDate.value;
      final provinceId = province.code;
      final regencyId = regency.code;
      final districtId = district.code;
      final villageId = village.code;
      final zipCode = state.zipCode.value;
      final address = state.address.value;
      final university = state.university;
      final nim = state.nim;
      final major = state.major;
      final semester = state.semester?.value;

      if (state.administrationMode.editMode) {
        final biodatas = state.administration?.biodatas;
        if (name == biodatas?.fullName &&
            nin == biodatas?.identityNumber &&
            gender == biodatas?.gender &&
            phone == biodatas?.phoneNumber &&
            lastEducation == biodatas?.lastEducation &&
            birthPlace == biodatas?.birthplace &&
            birthDate == biodatas?.birthdate &&
            provinceId == biodatas?.provinceId &&
            regencyId == biodatas?.regencyId &&
            districtId == biodatas?.districtId &&
            villageId == biodatas?.villageId &&
            zipCode == biodatas?.postalCode &&
            address == biodatas?.address &&
            university == biodatas?.university &&
            nim == biodatas?.nim &&
            major == biodatas?.major &&
            semester == biodatas?.semester) {
          emit(
            state.copyWith(
              submissionStatus: FormzSubmissionStatus.canceled,
              message: '''Administrasi dibatalkan, tidak ada perubahan data.''',
            ),
          );
          return;
        }
      }

      final administration = await _administrationRepository.submitBiodatas(
        fullName: name,
        gender: gender,
        phoneNumber: phone,
        birthdate: birthDate,
        birthplace: birthPlace,
        address: address,
        lastEducation: lastEducation,
        identityNumber: nin,
        provinceId: provinceId,
        regencyId: regencyId,
        districtId: districtId,
        villageId: villageId,
        postalCode: zipCode,
        semester: semester,
        major: major,
        nim: nim,
        university: university,
      );

      emit(
        state.copyWith(
          submissionStatus: FormzSubmissionStatus.success,
          administration: administration,
          administrationMode: AdministrationMode.initial,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          submissionStatus: FormzSubmissionStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  Future<void> _onAdministrationRegenciesFetched(
    _AdministrationRegenciesFetched event,
    Emitter<AdministrationState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchRegenciesStatus: AdministrationFetchStatus.loading,
      ),
    );
    try {
      final regencies =
          await _administrationRepository.getRegencies(event.provinceId);
      emit(
        state.copyWith(
          fetchRegenciesStatus: AdministrationFetchStatus.success,
          administrativeRegencies: regencies,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          fetchRegenciesStatus: AdministrationFetchStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          fetchRegenciesStatus: AdministrationFetchStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  Future<void> _onAdministrationDistrictsFetched(
    _AdministrationDistrictsFetched event,
    Emitter<AdministrationState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchDistrictsStatus: AdministrationFetchStatus.loading,
      ),
    );
    try {
      final districts =
          await _administrationRepository.getDistricts(event.regencyId);
      emit(
        state.copyWith(
          fetchDistrictsStatus: AdministrationFetchStatus.success,
          administrativeDistricts: districts,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          fetchDistrictsStatus: AdministrationFetchStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          fetchDistrictsStatus: AdministrationFetchStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }

  Future<void> _onAdministrationVillagesFetched(
    _AdministrationVillagesFetched event,
    Emitter<AdministrationState> emit,
  ) async {
    emit(
      state.copyWith(fetchVillagesStatus: AdministrationFetchStatus.loading),
    );
    try {
      final villages =
          await _administrationRepository.getVillages(event.districtId);
      emit(
        state.copyWith(
          fetchVillagesStatus: AdministrationFetchStatus.success,
          administrativeVillages: villages,
        ),
      );
    } on NetworkException catch (e) {
      emit(
        state.copyWith(
          fetchVillagesStatus: AdministrationFetchStatus.failure,
          message: e.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          fetchVillagesStatus: AdministrationFetchStatus.failure,
          message: 'Terjadi kesalahan: $e.',
        ),
      );
    }
  }
}

extension AdministrationFetchStatusX on AdministrationFetchStatus {
  bool get isInitial => this == AdministrationFetchStatus.initial;
  bool get isLoading => this == AdministrationFetchStatus.loading;
  bool get isFailure => this == AdministrationFetchStatus.failure;
  bool get isSuccess => this == AdministrationFetchStatus.success;
}

extension AdministrationModeX on AdministrationMode {
  bool get isInitial => this == AdministrationMode.initial;
  bool get fillMode => this == AdministrationMode.fill;
  bool get editMode => this == AdministrationMode.edit;
}

extension AdministrationStatusX on AdministrationStatus {
  bool get isAccepted => this == AdministrationStatus.accepted;
  bool get isPending => this == AdministrationStatus.pending;
  bool get isRejected => this == AdministrationStatus.rejected;
  bool get isNotSubmitted => this == AdministrationStatus.notSubmitted;
}

extension on AdministrationStatus {
  AdministrationMode get mode {
    switch (this) {
      case AdministrationStatus.pending:
        return AdministrationMode.initial;
      case AdministrationStatus.accepted:
        return AdministrationMode.initial;
      case AdministrationStatus.rejected:
        return AdministrationMode.edit;
      case AdministrationStatus.notSubmitted:
        return AdministrationMode.fill;
    }
  }
}
