import 'package:flutter/material.dart';
import 'package:kampusgratis/gen/gen.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  const ContinueWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconWidget = Assets.icons.socialGoogle.svg(
      width: 20,
      placeholderBuilder: (context) => Icon(
        Icons.g_mobiledata_rounded,
        size: 20,
        color: theme.colorScheme.onSurfaceVariant,
      ),
    );
    const labelWidget = Text('Lanjutkan dengan Google');
    final buttonStyle = OutlinedButton.styleFrom(
      foregroundColor: theme.colorScheme.onSurface,
      side: BorderSide(color: theme.colorScheme.outlineVariant),
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
