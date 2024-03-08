import 'package:administration_repository/administration_repository.dart';
import 'package:formz/formz.dart';

enum ProvinceInputValidationError { empty }

final class ProvinceInput
    extends FormzInput<Province?, ProvinceInputValidationError> {
  const ProvinceInput.pure() : super.pure(null);
  const ProvinceInput.dirty({Province? value}) : super.dirty(value);

  @override
  ProvinceInputValidationError? validator(Province? value) {
    if (value == null) return ProvinceInputValidationError.empty;
    return null;
  }
}

extension ProvinceInputValidationErrorX on ProvinceInputValidationError {
  String get message {
    switch (this) {
      case ProvinceInputValidationError.empty:
        return 'Provinsi harus dipilih.';
    }
  }
}
