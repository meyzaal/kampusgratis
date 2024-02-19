import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/otp_verification/otp_verification.dart';

class ResendOtp extends StatelessWidget {
  const ResendOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ResendOtp();
  }
}

class _ResendOtp extends StatelessWidget {
  const _ResendOtp();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final requestOtpIsLoading = context.select(
      (RequestOtpCodeCubit bloc) => bloc.state is RequestOtpCodeLoadingState,
    );

    return BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
      builder: (context, state) {
        final duration = state.duration;
        final minutes = ((duration / 60) % 60).floor();
        final seconds = (duration % 60).toString();

        var timeString = '';
        if (minutes > 0) {
          timeString = '($minutes:${seconds.padLeft(2, '0')})';
        } else {
          timeString = '(${seconds}s)';
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              spacing: 4,
              runSpacing: 8,
              children: [
                const Text(
                  'Tidak menerima kode otp?',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    height: 21 / 14,
                  ),
                ),
                if (state.timer.isRunning)
                  Text(
                    timeString,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      height: 18 / 12,
                      color: theme.colorScheme.outline,
                    ),
                  ),
              ],
            ),
            TextButton(
              onPressed: state.timer.isComplete
                  ? () {
                      if (requestOtpIsLoading) return;
                      context
                          .read<RequestOtpCodeCubit>()
                          .otpEmailVerificationRequested();
                    }
                  : null,
              child: requestOtpIsLoading
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : const Text('Kirim kode OTP'),
            ),
          ],
        );
      },
    );
  }
}
