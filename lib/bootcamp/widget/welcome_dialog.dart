import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/shared/shared.dart';

class BootcampWelcomeDialog extends StatelessWidget {
  const BootcampWelcomeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: const Text(
        'Selamat datang di program Bootcamp Kampus Gratis',
      ),
      content: const Text(
        '''Dengan bangga mempersembahkan bootcamp unggulan kami yang dirancang khusus untuk membantu mengembangkan keterampilan dan pengetahuan Anda, dalam berbagai bidang. Bootcamp kami, menawarkan pelatihan intensif dengan para mentor yang ahli dan berpengalaman dalam beragam industri, Mempersiapkan diri Anda untuk sukses di dunia kerja yang kompetitif.''',
      ),
      actions: [
        FilledButton(
          onPressed: () => context.pop(true),
          child: const Text('Informasi Lanjut'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}
