import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

enum VerifyEmailType { login, register }

class VerifyEmailDialog extends StatelessWidget {
  const VerifyEmailDialog({
    required this.type,
    required this.email,
    super.key,
  });

  final VerifyEmailType type;
  final String email;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String title;
    String content;
    Widget icon;
    Color? iconColor;

    switch (type) {
      case VerifyEmailType.register:
        title = 'Berhasil mendaftar';
        content =
            '''Silakan verifikasi email Anda agar dapat masuk dengan akun yang telah berhasil dibuat.''';
        icon = const PhosphorIcon(PhosphorIconsFill.checkCircle);
        iconColor = theme.extension<CustomColors>()?.sourceSuccess;
      case VerifyEmailType.login:
        title = 'Email belum diverifikasi';
        content =
            '''Silakan verifikasi email Anda terlebih dahulu untuk melanjutkan.''';
        icon = const PhosphorIcon(PhosphorIconsFill.warningCircle);
        iconColor = theme.extension<CustomColors>()?.sourceDanger;
    }

    return CustomDialog(
      icon: icon,
      iconColor: iconColor,
      title: Text(title),
      content: Text(content, textAlign: TextAlign.center),
      actions: [
        BlocProvider(
          create: (context) => RequestOtpCodeCubit(
            authenticationRepository: context.read<AuthenticationRepository>(),
            email: email,
          ),
          child: const _SubmitButton(),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: const Text('Tutup'),
        ),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<RequestOtpCodeCubit, RequestOtpCodeState>(
      listener: (context, state) {
        if (state is RequestOtpCodeFailureState) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(state.message), showCloseIcon: true),
            );
          context.pop(false);
        }
        if (state is RequestOtpCodeSuccessState) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text('Berhasil mengirim kode OTP.'),
                showCloseIcon: true,
              ),
            );
          context.pop(true);
        }
      },
      builder: (context, state) {
        return FilledButton(
          onPressed: () {
            if (state is RequestOtpCodeLoadingState) return;
            context.read<RequestOtpCodeCubit>().otpEmailVerificationRequested();
          },
          child: state is RequestOtpCodeLoadingState
              ? SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.onPrimary,
                    ),
                  ),
                )
              : const Text('Verifikasi email'),
        );
      },
    );
  }
}
