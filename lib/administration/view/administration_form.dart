import 'package:administration_repository/administration_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kampusgratis/administration/administration.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:kg_client/kg_client.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AdministrationForm extends StatelessWidget {
  const AdministrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final details =
        context.read<AdministrationBloc>().state.administration?.details;
    final status = details?.status;
    final reason = details?.reason;
    Widget? statusWidget;
    if (status != null) {
      if (status.isAccepted) {
        statusWidget = const _AdministrationStatus.accepted();
      }
      if (status.isRejected) {
        statusWidget = _AdministrationStatus.rejected(reason);
      }
      if (status.isNotSubmitted) {
        statusWidget = const _AdministrationStatus.notSubmitted();
      }
    }

    final listViewItems = [
      if (statusWidget != null) statusWidget,
      const Text(
        'Informasi Pribadi',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 24 / 16,
        ),
      ),
      const _NameInput(),
      const _NinInput(),
      const _GenderInput(),
      const _PhoneInput(),
      const _LastEducationInput(),
      const _BirthPlaceInput(),
      const _BirthDateInput(),
      const _ProvinceInput(),
      const _RegencyInput(),
      const _DistrictInput(),
      const _VillageInput(),
      const _ZipCodeInput(),
      const _AddressInput(),
      const _UniversityInput(),
      const _NimInput(),
      const _MajorInput(),
      const _SemesterInput(),
    ];

    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        final canPop =
            !state.administrationMode.editMode && status?.isAccepted != true;
        return PopScope(
          canPop: canPop,
          onPopInvoked: (didPop) {
            if (!didPop) {
              context.read<AdministrationBloc>().add(
                    const AdministrationEvent.modeChanged(
                      AdministrationMode.initial,
                    ),
                  );
            }
          },
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) => listViewItems[index],
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: listViewItems.length,
          ),
        );
      },
    );
  }
}

class _AdministrationStatus extends StatelessWidget {
  const _AdministrationStatus({
    required this.status,
    required this.message,
  });

  const _AdministrationStatus.accepted()
      : status = AdministrationStatus.accepted,
        message = 'Semua keperluan administrasi sudah terpenuhi.';

  const _AdministrationStatus.rejected(String? message)
      : status = AdministrationStatus.rejected,
        message = 'Administrasi ditolak. $message';

  const _AdministrationStatus.notSubmitted()
      : status = AdministrationStatus.notSubmitted,
        message =
            '''Anda perlu harus mengisi formulir administrasi agar dapat mengikuti pembelajaran di KampusGratis.id''';

  final AdministrationStatus status;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: backgroundColor(context),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (icon != null) ...[
              IconTheme(
                data: IconThemeData(
                  color: contentColor(context),
                  size: 20,
                ),
                child: icon!,
              ),
              const SizedBox(width: 8),
            ],
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 14,
                  height: 21 / 14,
                  color: contentColor(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color? backgroundColor(BuildContext context) {
    final color = Theme.of(context).extension<CustomColors>();
    if (status.isNotSubmitted) return color?.infoContainer;
    if (status.isAccepted) return color?.successContainer;
    if (status.isRejected) return color?.dangerContainer;
    return null;
  }

  Color? contentColor(BuildContext context) {
    final color = Theme.of(context).extension<CustomColors>();
    if (status.isNotSubmitted) return color?.onInfoContainer;
    if (status.isAccepted) return color?.onSuccessContainer;
    if (status.isRejected) return color?.onDangerContainer;
    return null;
  }

  Widget? get icon {
    IconData? iconData;
    if (status.isNotSubmitted) iconData = PhosphorIconsFill.info;
    if (status.isAccepted) iconData = PhosphorIconsFill.checkCircle;
    if (status.isRejected) iconData = PhosphorIconsFill.warning;
    if (iconData != null) return PhosphorIcon(iconData, size: 20);
    return null;
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          initialValue: state.administration?.biodatas?.fullName,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Nama Lengkap',
          decoration: InputDecoration(
            hintText: 'Masukkan nama lengkap sesuai KTP',
            errorText: state.name.isPure ? null : state.name.error?.message,
          ),
          onChanged: (name) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.nameChanged(name)),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _NinInput extends StatelessWidget {
  const _NinInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          initialValue: state.administration?.biodatas?.identityNumber,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Nomor Induk Kependudukan',
          decoration: InputDecoration(
            hintText: 'Masukkan 16 digit NIK',
            errorText: state.nin.isPure ? null : state.nin.error?.message,
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (nin) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.ninChanged(nin)),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _GenderInput extends StatelessWidget {
  const _GenderInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        String? genderValue;
        final genderKey = state.gender.isPure
            ? state.administration?.biodatas?.gender
            : state.gender.value;
        if (genderKey != null && genderKey.isNotEmpty) {
          genderValue = state.constants?.gender.valueFromKey(genderKey);
        }
        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Jenis Kelamin',
          value: genderValue,
          decoration: InputDecoration(
            hintText: 'Pilih jenis kelamin',
            errorText: state.gender.isPure ? null : state.gender.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: () {
            final constants = state.constants;
            if (constants != null) {
              SingleChoicesRoute(
                SingleChoicesType.gender,
                $extra: SingleChoicesOptions(
                  values: constants.gender.values,
                  title: 'Pilih Jenis Kelamin',
                  initialValue: genderValue,
                ),
              ).push<String>(context).then((value) {
                if (value == null) return;
                final gender = constants.gender.keyFromValue(value);
                context
                    .read<AdministrationBloc>()
                    .add(AdministrationEvent.genderChanged(gender));
              });
            } else {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  const SnackBar(
                    showCloseIcon: true,
                    content:
                        Text('Tidak dapat menemukan data, coba lagi nanti.'),
                  ),
                );
            }
          },
        );
      },
    );
  }
}

class _PhoneInput extends StatelessWidget {
  const _PhoneInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          initialValue: state.administration?.biodatas?.phoneNumber,
          labelText: 'Nomor Telepon',
          decoration: InputDecoration(
            hintText: 'Masukkan nomor telepon',
            errorText: state.phone.isPure ? null : state.phone.error?.message,
          ),
          onChanged: (phone) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.phoneChanged(phone)),
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }
}

class _LastEducationInput extends StatelessWidget {
  const _LastEducationInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        String? lastEducationValue;
        final lastEducationKey = state.lastEducation.isPure
            ? state.administration?.biodatas?.lastEducation
            : state.lastEducation.value;
        if (lastEducationKey != null && lastEducationKey.isNotEmpty) {
          lastEducationValue =
              state.constants?.lastEducation.valueFromKey(lastEducationKey);
        }
        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Pendidikan Terakhir',
          value: lastEducationValue,
          decoration: InputDecoration(
            hintText: 'Pilih pendidikan terakhir',
            errorText: state.lastEducation.isPure
                ? null
                : state.lastEducation.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: () {
            final constants = state.constants;
            if (constants != null) {
              SingleChoicesRoute(
                SingleChoicesType.lastEducation,
                $extra: SingleChoicesOptions(
                  values: constants.lastEducation.values,
                  title: 'Pilih Pendidikan Terakhir',
                  initialValue: lastEducationValue,
                ),
              ).push<String>(context).then((value) {
                if (value == null) return;
                final lastEducation =
                    constants.lastEducation.keyFromValue(value);
                context.read<AdministrationBloc>().add(
                      AdministrationEvent.lastEducationChanged(lastEducation),
                    );
              });
            } else {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  const SnackBar(
                    showCloseIcon: true,
                    content:
                        Text('Tidak dapat menemukan data, coba lagi nanti.'),
                  ),
                );
            }
          },
        );
      },
    );
  }
}

class _BirthPlaceInput extends StatelessWidget {
  const _BirthPlaceInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          initialValue: state.administration?.biodatas?.birthplace,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Tempat Lahir',
          decoration: InputDecoration(
            hintText: 'Masukkan tempat lahir',
            errorText: state.birthPlace.isPure
                ? null
                : state.birthPlace.error?.message,
          ),
          onChanged: (birthPlace) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.birthPlaceChanged(birthPlace)),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _BirthDateInput extends StatelessWidget {
  const _BirthDateInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        String? value;
        DateTime? date;
        final birthDate = state.birthDate.isPure
            ? state.administration?.biodatas?.birthdate
            : state.birthDate.value;
        if (birthDate != null) {
          date = DateTime.parse(birthDate).toLocal();
          value = DateFormat.yMMMMd('id_ID').format(date);
        }

        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Tanggal Lahir',
          value: value,
          decoration: InputDecoration(
            hintText: 'Masukkan tanggal lahir',
            errorText:
                state.birthDate.isPure ? null : state.birthDate.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.calendar,
              size: 18,
            ),
          ),
          onTap: () {
            var initialDate = DateTime(2000);
            final now = DateTime.now();
            final firstDate = DateTime(now.year - 70);
            final lastDate = DateTime(now.year - 12);

            if (date != null) initialDate = date;
            DatePickerRoute(
              DatePickerType.birthDate,
              $extra: DatePickerExtra(
                initialDate: initialDate,
                firstDate: firstDate,
                lastDate: lastDate,
              ),
            ).push<DateTime>(context).then((value) {
              if (value == null) return;
              final selectedDate = value.toIso8601String();
              context
                  .read<AdministrationBloc>()
                  .add(AdministrationEvent.birthDateChanged(selectedDate));
            });
          },
        );
      },
    );
  }
}

class _ProvinceInput extends StatelessWidget {
  const _ProvinceInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        final initialValue = state.province.isPure
            ? state.administration?.biodatas?.province
            : state.province.value?.name;
        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Provinsi',
          value: initialValue,
          decoration: InputDecoration(
            hintText: 'Pilih provinsi',
            errorText:
                state.province.isPure ? null : state.province.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: () {
            final provincies = state.administrativeProvincies;
            final values = provincies.map((e) => e.name).toList();
            SingleChoicesRoute(
              SingleChoicesType.province,
              $extra: SingleChoicesOptions(
                values: values,
                title: 'Pilih Provinsi',
                initialValue: initialValue,
              ),
            ).push<String>(context).then((value) {
              if (value == null) return;
              final province = provincies.byName(value);
              context
                  .read<AdministrationBloc>()
                  .add(AdministrationEvent.provinceChanged(province));
            });
          },
        );
      },
    );
  }
}

class _RegencyInput extends StatelessWidget {
  const _RegencyInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        final initialValue = state.regency.isPure
            ? state.administration?.biodatas?.regency
            : state.regency.value?.name;

        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Kabupaten/Kota',
          value: initialValue,
          decoration: InputDecoration(
            hintText: 'Pilih kabupaten/kota',
            errorText:
                state.regency.isPure ? null : state.regency.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: state.fetchRegenciesStatus.isSuccess
              ? () {
                  final regencies = state.administrativeRegencies;
                  final values = regencies.map((e) => e.name).toList();
                  SingleChoicesRoute(
                    SingleChoicesType.regency,
                    $extra: SingleChoicesOptions(
                      values: values,
                      title: 'Pilih Kabupaten/Kota',
                      initialValue: initialValue,
                    ),
                  ).push<String>(context).then((value) {
                    if (value == null) return;
                    final regency = regencies.byName(value);
                    context
                        .read<AdministrationBloc>()
                        .add(AdministrationEvent.regencyChanged(regency));
                  });
                }
              : () {
                  if (state.province.isPure) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Provinsi harus dipilih terlebih dahulu.',
                          ),
                        ),
                      );
                  }
                },
        );
      },
    );
  }
}

class _DistrictInput extends StatelessWidget {
  const _DistrictInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        final initialValue = state.district.isPure
            ? state.administration?.biodatas?.district
            : state.district.value?.name;

        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Kecamatan',
          value: initialValue,
          decoration: InputDecoration(
            hintText: 'Pilih kecamatan',
            errorText:
                state.district.isPure ? null : state.district.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: state.fetchDistrictsStatus.isSuccess
              ? () {
                  final districts = state.administrativeDistricts;
                  final values = districts.map((e) => e.name).toList();
                  SingleChoicesRoute(
                    SingleChoicesType.district,
                    $extra: SingleChoicesOptions(
                      values: values,
                      title: 'Pilih Kecamatan',
                      initialValue: initialValue,
                    ),
                  ).push<String>(context).then((value) {
                    if (value == null) return;
                    final district = districts.byName(value);
                    context
                        .read<AdministrationBloc>()
                        .add(AdministrationEvent.districtChanged(district));
                  });
                }
              : () {
                  if (state.regency.isPure) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Kabupaten/Kota harus dipilih terlebih dahulu.',
                          ),
                        ),
                      );
                  }
                },
        );
      },
    );
  }
}

class _VillageInput extends StatelessWidget {
  const _VillageInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        final initialValue = state.village.isPure
            ? state.administration?.biodatas?.village
            : state.village.value?.name;

        return CustomInputField(
          suffixLabelWidget: const Asterisk(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Kelurahan/Desa',
          value: initialValue,
          decoration: InputDecoration(
            hintText: 'Pilih kelurahan/desa',
            errorText:
                state.village.isPure ? null : state.village.error?.message,
            suffixIcon: const PhosphorIcon(
              PhosphorIconsFill.caretDown,
              size: 18,
            ),
          ),
          onTap: state.fetchVillagesStatus.isSuccess
              ? () {
                  final villages = state.administrativeVillages;
                  final values = villages.map((e) => e.name).toList();
                  SingleChoicesRoute(
                    SingleChoicesType.village,
                    $extra: SingleChoicesOptions(
                      values: values,
                      title: 'Pilih kelurahan/desa',
                      initialValue: initialValue,
                    ),
                  ).push<String>(context).then((value) {
                    if (value == null) return;
                    final village = villages.byName(value);
                    context
                        .read<AdministrationBloc>()
                        .add(AdministrationEvent.villageChanged(village));
                  });
                }
              : () {
                  if (state.district.isPure) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Kecamatan harus dipilih terlebih dahulu.',
                          ),
                        ),
                      );
                  }
                },
        );
      },
    );
  }
}

class _ZipCodeInput extends StatelessWidget {
  const _ZipCodeInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          initialValue: state.administration?.biodatas?.postalCode,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Kode Pos',
          decoration: InputDecoration(
            hintText: 'Masukkan 5 digit kode pos',
            errorText:
                state.zipCode.isPure ? null : state.zipCode.error?.message,
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (zipCode) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.zipCodeChanged(zipCode)),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _AddressInput extends StatelessWidget {
  const _AddressInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Asterisk(),
          initialValue: state.administration?.biodatas?.address,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Alamat Lengkap',
          decoration: InputDecoration(
            hintText: 'Masukkan alamat lengkap',
            errorText:
                state.address.isPure ? null : state.address.error?.message,
          ),
          onChanged: (address) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.addressChanged(address)),
          keyboardType: TextInputType.streetAddress,
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _UniversityInput extends StatelessWidget {
  const _UniversityInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Optional(),
          initialValue: state.administration?.biodatas?.university,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Universitas Asal',
          decoration: const InputDecoration(
            hintText: 'Masukkan universitas asal',
          ),
          onChanged: (university) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.universityChanged(university)),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _NimInput extends StatelessWidget {
  const _NimInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Optional(),
          initialValue: state.administration?.biodatas?.nim,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'NIM Atau NPM',
          decoration: const InputDecoration(
            hintText: 'Masukkan NIM atau NPM',
          ),
          onChanged: (nim) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.nimChanged(nim)),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _MajorInput extends StatelessWidget {
  const _MajorInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Optional(),
          initialValue: state.administration?.biodatas?.major,
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Program Studi',
          decoration: const InputDecoration(
            hintText: 'Masukkan program studi',
          ),
          onChanged: (major) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.majorChanged(major)),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _SemesterInput extends StatelessWidget {
  const _SemesterInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdministrationBloc, AdministrationState>(
      builder: (context, state) {
        return CustomTextField(
          suffixLabelWidget: const Optional(),
          initialValue: state.administration?.biodatas?.semester?.toString(),
          readOnly: state.administration?.details?.status.isPending ?? false,
          labelText: 'Semester',
          decoration: InputDecoration(
            hintText: 'Masukkan semester saat ini',
            errorText: state.semester?.isPure != true
                ? state.semester?.error?.message
                : null,
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: (semester) => context
              .read<AdministrationBloc>()
              .add(AdministrationEvent.semesterChanged(semester)),
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }
}
