import 'package:administration_repository/administration_repository.dart';
import 'package:formz/formz.dart';

enum VillageInputValidationError { empty }

final class VillageInput
    extends FormzInput<Village?, VillageInputValidationError> {
  const VillageInput.pure() : super.pure(null);
  const VillageInput.dirty({ Village? value}) : super.dirty(value);

  @override
  VillageInputValidationError? validator(Village? value) {
    if (value == null) return VillageInputValidationError.empty;
    return null;
  }
}

extension VillageInputValidationErrorX on VillageInputValidationError {
  String get message {
    switch (this) {
      case VillageInputValidationError.empty:
        return 'Kelurahan harus dipilih.';
    }
  }
}
