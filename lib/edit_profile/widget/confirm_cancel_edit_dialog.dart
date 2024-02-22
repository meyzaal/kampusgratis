import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ConfirmCancelEditDialog extends StatelessWidget {
  const ConfirmCancelEditDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final buttonStyle = theme.filledButtonTheme.style?.copyWith(
      backgroundColor:
          MaterialStatePropertyAll(theme.extension<CustomColors>()?.danger),
      foregroundColor:
          MaterialStatePropertyAll(theme.extension<CustomColors>()?.onDanger),
    );
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.warning),
      iconColor: theme.extension<CustomColors>()?.sourceWarning,
      title: const Text('Batal edit profil?'),
      content: const Text(
        'Apa anda yakin akan membuang perubahan?',
        textAlign: TextAlign.center,
      ),
      actions: [
        FilledButton(
          style: buttonStyle,
          onPressed: () => context.pop(true),
          child: const Text('Buang perubahan'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Batal'),
        ),
      ],
    );
  }
}
