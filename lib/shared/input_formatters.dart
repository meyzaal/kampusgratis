import 'package:flutter/services.dart';

class InputFormatters {
  const InputFormatters();

  static final ignoreWhiteSpaces = FilteringTextInputFormatter.deny(
    RegExp(r'\s'),
  );
  static final upperCase = UpperCaseTextFormatter();
  static final lowerCase = LowerCaseTextFormatter();
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}
