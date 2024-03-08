import 'package:formz/formz.dart';

enum GenderInputValidationError { empty }

final class GenderInput extends FormzInput<String, GenderInputValidationError> {
  const GenderInput.pure([super.value = '']) : super.pure();
  const GenderInput.dirty([super.value = '']) : super.dirty();

  @override
  GenderInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return GenderInputValidationError.empty;

    return null;
  }
}

extension GenderInputValidationErrorX on GenderInputValidationError {
  String get message {
    switch (this) {
      case GenderInputValidationError.empty:
        return 'Tanggal lahir tidak boleh kosong.';
    }
  }
}
