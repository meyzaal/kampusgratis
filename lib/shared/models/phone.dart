import 'package:formz/formz.dart';

enum PhoneValidationError { empty, invalid }

final class Phone extends FormzInput<String, PhoneValidationError> {
  const Phone.pure([super.value = '']) : super.pure();
  const Phone.dirty([super.value = '']) : super.dirty();

  static final _phoneRegex = RegExp(r'^(\+62|0)(\d{3,4}[-\s]?){1,2}\d{6,12}$');

  @override
  PhoneValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return PhoneValidationError.empty;
    if (!_phoneRegex.hasMatch(value)) return PhoneValidationError.invalid;

    return null;
  }
}

extension PhoneValidationErrorX on PhoneValidationError {
  String get message {
    switch (this) {
      case PhoneValidationError.empty:
        return 'Nomor telepon tidak boleh kosong.';
      case PhoneValidationError.invalid:
        return 'Nomor telepon tidak valid.';
    }
  }
}
