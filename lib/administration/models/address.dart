import 'package:formz/formz.dart';

enum AddressInputValidationError { empty }

final class AddressInput
    extends FormzInput<String, AddressInputValidationError> {
  const AddressInput.pure([super.value = '']) : super.pure();
  const AddressInput.dirty([super.value = '']) : super.dirty();

  @override
  AddressInputValidationError? validator(String? value) {
    if (value == null) return null;
    if (value.isEmpty) return AddressInputValidationError.empty;

    return null;
  }
}

extension AddressInputValidationErrorX on AddressInputValidationError {
  String get message {
    switch (this) {
      case AddressInputValidationError.empty:
        return 'Alamat tidak boleh kosong.';
    }
  }
}
