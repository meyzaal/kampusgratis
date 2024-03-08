import 'package:formz/formz.dart';

enum EmailInputValidationError { empty, invalid }

final class EmailInput extends FormzInput<String, EmailInputValidationError> {
  const EmailInput.pure([super.value = '']) : super.pure();
  const EmailInput.dirty([super.value = '']) : super.dirty();

  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return EmailInputValidationError.empty;
    if (!_emailRegex.hasMatch(value)) return EmailInputValidationError.invalid;

    return null;
  }
}

extension EmailInputValidationErrorX on EmailInputValidationError {
  String get message {
    switch (this) {
      case EmailInputValidationError.empty:
        return 'Email tidak boleh kosong.';
      case EmailInputValidationError.invalid:
        return 'Email tidak valid.';
    }
  }
}
