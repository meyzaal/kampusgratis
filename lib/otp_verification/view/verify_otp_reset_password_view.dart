import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/otp_verification/otp_verification.dart';

class VerifyOtpResetPasswordView extends StatelessWidget {
  const VerifyOtpResetPasswordView({required this.email, super.key});

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpVerificationBloc, OtpVerificationState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(
                content: Text('Kode OTP berhasil diverifikasi.'),
                showCloseIcon: true,
              ),
            );
          context.pop(state.token);
        }
      },
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  children: [
                    _Header(email: email),
                    _OtpInput(email: email),
                    _ResendOtp(email: email),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ResendOtp extends StatelessWidget {
  const _ResendOtp({
    required this.email,
  });

  final String email;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: ResendOtp(),
    );
  }
}

class _OtpInput extends StatelessWidget {
  const _OtpInput({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: OtpInput(
        email: email,
        type: OtpVerificationType.resetPassword,
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleWidget = Text(
      'Verifikasi OTP',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 30 / 20,
        color: theme.colorScheme.onSurface,
      ),
      textAlign: TextAlign.center,
    );
    final subtitleWidget = Text(
      'Masukkan kode yang dikirim ke:',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      textAlign: TextAlign.center,
    );
    final emailWidget = Text(
      email,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 24 / 16,
        color: theme.colorScheme.onSurface,
      ),
      textAlign: TextAlign.center,
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          titleWidget,
          const SizedBox(height: 8),
          subtitleWidget,
          emailWidget,
        ],
      ),
    );
  }
}
