import 'package:formz/formz.dart';

enum ConfirmedPasswordInputValidationError { invalid }

class ConfirmedPasswordInput
    extends FormzInput<String, ConfirmedPasswordInputValidationError> {
  const ConfirmedPasswordInput.pure({this.password = ''}) : super.pure('');
  const ConfirmedPasswordInput.dirty({
    required this.password,
    String value = '',
  }) : super.dirty(value);

  final String password;

  @override
  ConfirmedPasswordInputValidationError? validator(String? value) {
    return password == value
        ? null
        : ConfirmedPasswordInputValidationError.invalid;
  }
}

extension ConfirmedPasswordInputValidationErrorX
    on ConfirmedPasswordInputValidationError {
  String get message {
    switch (this) {
      case ConfirmedPasswordInputValidationError.invalid:
        return 'Kata sandi tidak sama.';
    }
  }
}
