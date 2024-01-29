import 'package:formz/formz.dart';

enum PasswordValidationError { empty, invalid }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure({this.patternValidation = true}) : super.pure('');
  const Password.dirty({this.patternValidation = true, String value = ''})
      : super.dirty(value);

  static final _passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*\d).{8,}$');

  final bool patternValidation;

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return PasswordValidationError.empty;
    if (patternValidation && !_passwordRegex.hasMatch(value)) {
      return PasswordValidationError.invalid;
    }
    return null;
  }
}

extension PasswordValidationErrorX on PasswordValidationError {
  String get message {
    switch (this) {
      case PasswordValidationError.empty:
        return 'Kata sandi tidak boleh kosong.';
      case PasswordValidationError.invalid:
        return 'Kata sandi tidak valid.';
    }
  }
}
