import 'package:formz/formz.dart';

enum BirthDateInputValidationError { empty }

final class BirthDateInput
    extends FormzInput<String, BirthDateInputValidationError> {
  const BirthDateInput.pure([super.value = '']) : super.pure();
  const BirthDateInput.dirty([super.value = '']) : super.dirty();

  @override
  BirthDateInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return BirthDateInputValidationError.empty;

    return null;
  }
}

extension BirthDateInputValidationErrorX on BirthDateInputValidationError {
  String get message {
    switch (this) {
      case BirthDateInputValidationError.empty:
        return 'Tanggal lahir tidak boleh kosong.';
    }
  }
}
