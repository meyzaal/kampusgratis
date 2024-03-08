import 'package:formz/formz.dart';

enum LastEducationInputValidationError { empty }

final class LastEducationInput
    extends FormzInput<String, LastEducationInputValidationError> {
  const LastEducationInput.pure([super.value = '']) : super.pure();
  const LastEducationInput.dirty([super.value = '']) : super.dirty();

  @override
  LastEducationInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return LastEducationInputValidationError.empty;

    return null;
  }
}

extension LastEducationInputValidationErrorX
    on LastEducationInputValidationError {
  String get message {
    switch (this) {
      case LastEducationInputValidationError.empty:
        return 'Tanggal lahir tidak boleh kosong.';
    }
  }
}
