import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChangePasswordSuccessDialog extends StatelessWidget {
  const ChangePasswordSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.checkCircle),
      iconColor: theme.extension<CustomColors>()?.sourceSuccess,
      title: const Text('Berhasil ubah kata sandi'),
      content: const Text(
        'Kata sandi berhasil diubah, anda dapat masuk dengan kata sandi baru.',
        textAlign: TextAlign.center,
      ),
      actions: [
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}
