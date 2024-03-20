import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:user_repository/user_repository.dart';

mixin NavigationMiddleware {
  void checkRole(
    BuildContext context, {
    required NavigationCallback onNavigate,
    NavigationCallback? onAdministrationAccepted,
  }) {
    final user = context.read<UserRepository>().currentUser;
    if (user?.role.isStudent != true) {
      showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => const _NotStudentUserDialog(),
      ).then((value) {
        if (value != true) return;
        onAdministrationAccepted?.call(context);
      });
    } else {
      return onNavigate.call(context);
    }
  }
}

class _NotStudentUserDialog extends StatelessWidget {
  const _NotStudentUserDialog();

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.warning),
      iconColor: Theme.of(context).extension<CustomColors>()?.sourceWarning,
      title: const Text('Tidak dapat melanjutkan'),
      content: const Text(
        '''Anda belum terdaftar sebagai mahasiswa di KampusGratis.id. Silakan mendaftar sebagai mahasiswa terlebih dahulu untuk melanjutkan.''',
        textAlign: TextAlign.center,
      ),
      actions: [
        FilledButton(
          onPressed: () => context.pop(true),
          child: const Text('Daftar'),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Batal'),
        ),
      ],
    );
  }
}
