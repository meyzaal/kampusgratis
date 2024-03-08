import 'package:formz/formz.dart';

enum PasswordInputValidationError { empty, invalid }

class PasswordInput extends FormzInput<String, PasswordInputValidationError> {
  const PasswordInput.pure({this.patternValidation = true}) : super.pure('');
  const PasswordInput.dirty({this.patternValidation = true, String value = ''})
      : super.dirty(value);

  static final _passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,}$');

  final bool patternValidation;

  @override
  PasswordInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return PasswordInputValidationError.empty;
    if (patternValidation && !_passwordRegex.hasMatch(value)) {
      return PasswordInputValidationError.invalid;
    }
    return null;
  }
}

extension PasswordInputValidationErrorX on PasswordInputValidationError {
  String get message {
    switch (this) {
      case PasswordInputValidationError.empty:
        return 'Kata sandi tidak boleh kosong.';
      case PasswordInputValidationError.invalid:
        return 'Kata sandi tidak valid.';
    }
  }
}
