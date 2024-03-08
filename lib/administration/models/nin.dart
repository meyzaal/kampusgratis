import 'package:formz/formz.dart';

enum NinInputValidationError { empty, invalid }

final class NinInput extends FormzInput<String, NinInputValidationError> {
  const NinInput.pure([super.value = '']) : super.pure();
  const NinInput.dirty([super.value = '']) : super.dirty();

  @override
  NinInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return NinInputValidationError.empty;
    if (value.length != 16) return NinInputValidationError.invalid;

    return null;
  }
}

extension NinInputValidationErrorX on NinInputValidationError {
  String get message {
    switch (this) {
      case NinInputValidationError.empty:
        return 'NIK tidak boleh kosong.';
      case NinInputValidationError.invalid:
        return 'NIK tidak valid.';
    }
  }
}
