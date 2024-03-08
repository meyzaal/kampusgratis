import 'package:formz/formz.dart';

enum SemesterInputValidationError { invalid }

final class SemesterInput
    extends FormzInput<int?, SemesterInputValidationError> {
  const SemesterInput.pure() : super.pure(null);
  const SemesterInput.dirty([super.value = 0]) : super.dirty();

  @override
  SemesterInputValidationError? validator(int? value) {
    if (value == null) return null;
    if (value > 14 || value < 1) return SemesterInputValidationError.invalid;

    return null;
  }
}

extension SemesterInputValidationErrorX on SemesterInputValidationError {
  String get message {
    switch (this) {
      case SemesterInputValidationError.invalid:
        return 'Semester tidak valid.';
    }
  }
}
