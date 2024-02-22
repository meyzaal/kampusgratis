import 'package:formz/formz.dart';

enum NameValidationError { empty }

final class Name extends FormzInput<String, NameValidationError> {
  const Name.pure([super.value = '']) : super.pure();
  const Name.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return NameValidationError.empty;

    return null;
  }
}

extension NameValidationErrorX on NameValidationError {
  String get message {
    switch (this) {
      case NameValidationError.empty:
        return 'Nama tidak boleh kosong.';
    }
  }
}
