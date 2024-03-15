import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ConfirmLogoutDialog extends StatelessWidget {
  const ConfirmLogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.warning),
      iconColor: theme.extension<CustomColors>()?.sourceWarning,
      title: const Text(
        'Keluar akun',
        textAlign: TextAlign.center,
      ),
      content: const Text(
        'Yakin ingin keluar akun?',
        textAlign: TextAlign.center,
      ),
      actions: [
        BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.logOutStatus.isFailure) {
              final message =
                  state.message ?? 'Terjadi kesalahan (message-null).';
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  SnackBar(
                    content: Text(message),
                    showCloseIcon: true,
                  ),
                );
              context.pop();
            }
          },
          builder: (context, state) {
            return FilledButton(
              onPressed: () {
                if (state.logOutStatus.isLoading) return;
                context
                    .read<ProfileBloc>()
                    .add(const ProfileEvent.logOutRequested());
              },
              child: state.logOutStatus.isLoading
                  ? SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator.adaptive(
                        valueColor:
                            AlwaysStoppedAnimation(theme.colorScheme.onPrimary),
                      ),
                    )
                  : const Text('Yakin'),
            );
          },
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}
