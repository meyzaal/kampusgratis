import 'package:formz/formz.dart';

enum TermsAndConditionsValidationError { unchecked }

final class TermsAndConditions
    extends FormzInput<bool?, TermsAndConditionsValidationError> {
  const TermsAndConditions.pure([super.value]) : super.pure();
  const TermsAndConditions.dirty([super.value]) : super.dirty();

  @override
  TermsAndConditionsValidationError? validator(bool? value) {
    if (value != true) return TermsAndConditionsValidationError.unchecked;

    return null;
  }
}
