import 'package:formz/formz.dart';

enum TermsAndConditionsValidationError { unchecked }

final class TermsAndConditions
    extends FormzInput<bool?, TermsAndConditionsValidationError> {
  const TermsAndConditions.pure({bool? value}) : super.pure(value);
  const TermsAndConditions.dirty({bool? value}) : super.dirty(value);

  @override
  TermsAndConditionsValidationError? validator(bool? value) {
    if (value != true) return TermsAndConditionsValidationError.unchecked;

    return null;
  }
}
