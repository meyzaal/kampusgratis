import 'package:formz/formz.dart';

enum BirthPlaceInputValidationError { empty }

final class BirthPlaceInput
    extends FormzInput<String, BirthPlaceInputValidationError> {
  const BirthPlaceInput.pure([super.value = '']) : super.pure();
  const BirthPlaceInput.dirty([super.value = '']) : super.dirty();

  @override
  BirthPlaceInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return BirthPlaceInputValidationError.empty;

    return null;
  }
}

extension BirthPlaceInputValidationErrorX on BirthPlaceInputValidationError {
  String get message {
    switch (this) {
      case BirthPlaceInputValidationError.empty:
        return 'Tempat lahir tidak boleh kosong.';
    }
  }
}
