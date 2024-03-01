import 'package:formz/formz.dart';
import 'package:kg_client/kg_client.dart';

enum GenderInputValidationError { empty }

final class GenderInput
    extends FormzInput<Gender?, GenderInputValidationError> {
  const GenderInput.pure([super.value]) : super.pure();
  const GenderInput.dirty([super.value]) : super.dirty();

  @override
  GenderInputValidationError? validator(Gender? value) {
    if (value == null) return GenderInputValidationError.empty;
    // if (value.isEmpty) return GenderInputValidationError.empty;

    return null;
  }
}

extension GenderInputValidationErrorX on GenderInputValidationError {
  String get message {
    switch (this) {
      case GenderInputValidationError.empty:
        return 'Jenis kelamin tidak boleh kosong.';
    }
  }
}
