import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ConfirmEnrollBootcampDialog extends StatelessWidget {
  const ConfirmEnrollBootcampDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.question),
      iconColor: Theme.of(context).extension<CustomColors>()?.sourceInfo,
      title: const Text('Yakin ingin mendaftar bootcamp ini?'),
      content: const Text(
        '''Pastikan topik bootcamp yang Anda pilih sudah sesuai.''',
        textAlign: TextAlign.center,
      ),
      actions: [
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Batal'),
        ),
        FilledButton(
          onPressed: () => context.pop(true),
          child: const Text('Yakin'),
        ),
      ],
    );
  }
}
