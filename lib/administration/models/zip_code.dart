import 'package:formz/formz.dart';

enum ZipCodeInputValidationError { empty, invalid }

final class ZipCodeInput
    extends FormzInput<String, ZipCodeInputValidationError> {
  const ZipCodeInput.pure([super.value = '']) : super.pure();
  const ZipCodeInput.dirty([super.value = '']) : super.dirty();

  @override
  ZipCodeInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return ZipCodeInputValidationError.empty;
    if (value.length != 5) return ZipCodeInputValidationError.invalid;

    return null;
  }
}

extension ZipCodeInputValidationErrorX on ZipCodeInputValidationError {
  String get message {
    switch (this) {
      case ZipCodeInputValidationError.empty:
        return 'Kode Pos tidak boleh kosong.';
      case ZipCodeInputValidationError.invalid:
        return 'Kode Pos tidak valid.';
    }
  }
}
