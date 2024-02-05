import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/otp_verification/bloc/otp_verification_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({required this.email, required this.type, super.key});

  final String email;
  final OtpVerificationType type;

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  final _focusNode = FocusNode();
  final _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultPinTheme = PinTheme(
      width: 48,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        height: 30 / 20,
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: theme.colorScheme.primary, width: 2),
      borderRadius: BorderRadius.circular(8),
    );
    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: theme.colorScheme.error, width: 2),
      borderRadius: BorderRadius.circular(8),
    );

    return BlocListener<RequestOtpCodeCubit, RequestOtpCodeState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state is RequestOtpCodeSuccessState) {
          _inputController.clear();
          _focusNode.requestFocus();
        }
      },
      child: BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
        builder: (context, state) {
          return Pinput(
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            errorPinTheme: errorPinTheme,
            focusNode: _focusNode,
            controller: _inputController,
            length: 6,
            autofocus: true,
            onCompleted: (value) {
              _focusNode.unfocus();
              if (state.status.isLoading) return;
              context.read<OtpVerificationBloc>().add(
                    OtpVerificationEvent.otpCodeSubmitted(
                      type: widget.type,
                      otpCode: value,
                      email: widget.email,
                    ),
                  );
            },
            errorText: state.message,
            errorBuilder: (errorText, pin) => Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                errorText ?? 'Terjadi kesalahan.',
                style: TextStyle(color: theme.colorScheme.error),
              ),
            ),
            forceErrorState: state.status.isFailure,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _inputController.dispose();
    super.dispose();
  }
}
