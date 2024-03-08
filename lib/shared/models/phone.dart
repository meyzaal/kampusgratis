import 'package:formz/formz.dart';

enum PhoneInputValidationError { empty, invalid }

final class PhoneInput extends FormzInput<String, PhoneInputValidationError> {
  const PhoneInput.pure([super.value = '']) : super.pure();
  const PhoneInput.dirty([super.value = '']) : super.dirty();

  static final _phoneRegex = RegExp(r'^(\+62|0)(\d{3,4}[-\s]?){1,2}\d{6,12}$');

  @override
  PhoneInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return PhoneInputValidationError.empty;
    if (!_phoneRegex.hasMatch(value)) return PhoneInputValidationError.invalid;

    return null;
  }
}

extension PhoneInputValidationErrorX on PhoneInputValidationError {
  String get message {
    switch (this) {
      case PhoneInputValidationError.empty:
        return 'Nomor telepon tidak boleh kosong.';
      case PhoneInputValidationError.invalid:
        return 'Nomor telepon tidak valid.';
    }
  }
}
