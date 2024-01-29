import 'package:flutter/material.dart';
import 'package:kampusgratis/gen/gen.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidget = Assets.icons.socialGoogle.svg(
      width: 20,
      placeholderBuilder: (context) => const Icon(
        Icons.g_mobiledata_rounded,
        size: 20,
        color: Colors.grey,
      ),
    );
    const labelWidget = Text('Lanjutkan dengan Google');
    final buttonStyle = OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF171717),
      side: const BorderSide(color: Color(0xFFD4D4D4)),
    );

    return OutlinedButton.icon(
      onPressed: () {
        final focus = FocusScope.of(context);
        if (focus.hasFocus) focus.unfocus();
      },
      icon: iconWidget,
      label: labelWidget,
      style: buttonStyle,
    );
  }
}
