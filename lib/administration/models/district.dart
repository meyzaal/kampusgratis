import 'package:administration_repository/administration_repository.dart';
import 'package:formz/formz.dart';

enum DistrictInputValidationError { empty }

final class DistrictInput
    extends FormzInput<District?, DistrictInputValidationError> {
  const DistrictInput.pure() : super.pure(null);
  const DistrictInput.dirty({District? value}) : super.dirty(value);

  @override
  DistrictInputValidationError? validator(District? value) {
    if (value == null) return DistrictInputValidationError.empty;
    return null;
  }
}

extension DistrictInputValidationErrorX on DistrictInputValidationError {
  String get message {
    switch (this) {
      case DistrictInputValidationError.empty:
        return 'Kecamatan harus dipilih.';
    }
  }
}
