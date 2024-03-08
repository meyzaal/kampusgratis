import 'package:formz/formz.dart';

enum NameInputValidationError { empty }

final class NameInput extends FormzInput<String, NameInputValidationError> {
  const NameInput.pure([super.value = '']) : super.pure();
  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return NameInputValidationError.empty;

    return null;
  }
}

extension NameInputValidationErrorX on NameInputValidationError {
  String get message {
    switch (this) {
      case NameInputValidationError.empty:
        return 'Nama tidak boleh kosong.';
    }
  }
}
