import 'package:formz/formz.dart';

enum TermsAndConditionsInputValidationError { unchecked }

final class TermsAndConditionsInput
    extends FormzInput<bool?, TermsAndConditionsInputValidationError> {
  const TermsAndConditionsInput.pure({bool? value}) : super.pure(value);
  const TermsAndConditionsInput.dirty({bool? value}) : super.dirty(value);

  @override
  TermsAndConditionsInputValidationError? validator(bool? value) {
    if (value != true) return TermsAndConditionsInputValidationError.unchecked;

    return null;
  }
}
