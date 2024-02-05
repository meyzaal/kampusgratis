import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EmailAlreadyRegisteredDialog extends StatelessWidget {
  const EmailAlreadyRegisteredDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.warning),
      iconColor: AppColors.warning,
      title: const Text('Email sudah terdaftar'),
      content: const Text(
        'Silakan masuk dengan email yang sudah terdaftar',
        textAlign: TextAlign.center,
      ),
      actions: [
        FilledButton(
          onPressed: () => context.pop(true),
          child: const Text('Masuk'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}
