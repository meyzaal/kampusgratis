import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SuccessEnrollBootcampDialog extends StatelessWidget {
  const SuccessEnrollBootcampDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.checkCircle),
      iconColor: Theme.of(context).extension<CustomColors>()?.sourceSuccess,
      title: const Text('Berhasil mendaftar Bootcamp'),
      content: const Text(
        '''Selamat! Anda berhasil mendaftar Bootcamp di Kampus Gratis.''',
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
