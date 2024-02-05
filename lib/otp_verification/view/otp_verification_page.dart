import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/otp_verification/otp_verification.dart';
import 'package:kampusgratis/shared/shared.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({
    required this.email,
    required this.type,
    super.key,
  });

  final String email;
  final OtpVerificationType type;

  @override
  Widget build(BuildContext context) {
    final authenticationRepository = context.read<AuthenticationRepository>();

    return Scaffold(
      appBar: const AuthenticationAppBar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OtpVerificationBloc(
              ticker: const Ticker(),
              authenticationRepository: authenticationRepository,
            )..add(const OtpVerificationEvent.timerStarted()),
          ),
          BlocProvider(
            create: (context) => RequestOtpCodeCubit(
              authenticationRepository: authenticationRepository,
              email: email,
            ),
          ),
        ],
        child: _OtpVerificationView(email: email, type: type),
      ),
    );
  }
}

class _OtpVerificationView extends StatelessWidget {
  const _OtpVerificationView({
    required this.email,
    required this.type,
  });

  final String email;
  final OtpVerificationType type;

  @override
  Widget build(BuildContext context) {
    final Widget body;
    switch (type) {
      case OtpVerificationType.emailVerification:
        body = VerifyOtpEmailVerificationView(email: email);
      case OtpVerificationType.resetPassword:
        body = VerifyOtpResetPasswordView(email: email);
    }

    return MultiBlocListener(
      listeners: [
        BlocListener<RequestOtpCodeCubit, RequestOtpCodeState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            if (state is RequestOtpCodeSuccessState) {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Kode OTP berhasil dikirim.'),
                    showCloseIcon: true,
                  ),
                );
              context
                  .read<OtpVerificationBloc>()
                  .add(const OtpVerificationEvent.timerStarted());
            }
            if (state is RequestOtpCodeFailureState) {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                    showCloseIcon: true,
                  ),
                );
            }
          },
        ),
        BlocListener<OtpVerificationBloc, OtpVerificationState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isFailure) {
              ScaffoldMessenger.of(context).clearSnackBars();
            }
            if (state.status.isLoading) {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Memproses...'),
                    duration: Duration(days: 1),
                  ),
                );
            }
          },
        ),
      ],
      child: body,
    );
  }
}
