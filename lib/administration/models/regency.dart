import 'package:administration_repository/administration_repository.dart';
import 'package:formz/formz.dart';

enum RegencyInputValidationError { empty }

final class RegencyInput
    extends FormzInput<Regency?, RegencyInputValidationError> {
  const RegencyInput.pure() : super.pure(null);
  const RegencyInput.dirty({ Regency? value}) : super.dirty(value);

  @override
  RegencyInputValidationError? validator(Regency? value) {
    if (value == null) return RegencyInputValidationError.empty;
    return null;
  }
}

extension RegencyInputValidationErrorX on RegencyInputValidationError {
  String get message {
    switch (this) {
      case RegencyInputValidationError.empty:
        return 'Kabupaten/Kota harus dipilih.';
    }
  }
}
