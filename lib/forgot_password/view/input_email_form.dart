import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/forgot_password/forgot_password.dart';
import 'package:kampusgratis/shared/shared.dart';

class InputEmailForm {
  const InputEmailForm();

  static List<Widget> get fields => const [_EmailInput(), _SubmitButton()];
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listenWhen: _listenWhen,
        listener: (context, state) {
          if (state.isInputEmail) {
            final currentState = state as ForgotPasswordInputEmailState;
            if (currentState.status.isSuccess) {
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  const SnackBar(
                    content: Text('Kode OTP berhasil dikirim'),
                    showCloseIcon: true,
                  ),
                );
              VerifyOtpRoute(
                email: currentState.email.value,
                type: OtpVerificationType.resetPassword,
              ).push<String>(context).then((token) {
                if (token != null) {
                  context
                      .read<ForgotPasswordBloc>()
                      .add(ForgotPasswordEvent.tokenReceived(token));
                }
              });
            }
            if (currentState.status.isFailure) {
              final message =
                  currentState.message ?? 'Terjadi kesalahan (message-null).';
              ScaffoldMessenger.of(context)
                ..clearSnackBars()
                ..showSnackBar(
                  SnackBar(content: Text(message), showCloseIcon: true),
                );
            }
          }
        },
        builder: (context, state) {
          if (!state.isInputEmail) return const SizedBox();
          final currentState = state as ForgotPasswordInputEmailState;
          return FilledButton(
            onPressed: currentState.isValid
                ? () {
                    final focus = FocusScope.of(context);
                    if (focus.hasFocus) focus.unfocus();
                    if (currentState.status.isInProgress) return;
                    context.read<ForgotPasswordBloc>().add(
                          const ForgotPasswordEvent.inputEmailFormSubmitted(),
                        );
                  }
                : null,
            child: currentState.status.isInProgress
                ? const SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : const Text('Kirim'),
          );
        },
      ),
    );
  }

  bool _listenWhen(ForgotPasswordState previous, ForgotPasswordState current) {
    if (!previous.isInputEmail && !current.isInputEmail) return false;
    return (previous as ForgotPasswordInputEmailState).status !=
        (current as ForgotPasswordInputEmailState).status;
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 12),
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: _buildWhen,
        builder: (context, state) {
          if (!state.isInputEmail) return const SizedBox();
          final currentState = state as ForgotPasswordInputEmailState;

          return CustomTextField(
            labelText: 'Email',
            decoration: InputDecoration(
              hintText: 'Masukkan email',
              errorText: currentState.email.isPure
                  ? null
                  : currentState.email.error?.message,
            ),
            autofocus: true,
            onChanged: (email) => context
                .read<ForgotPasswordBloc>()
                .add(ForgotPasswordEvent.emailChanged(email)),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.emailAddress,
            inputFormatters: [
              InputFormatters.ignoreWhiteSpaces,
              InputFormatters.lowerCase,
            ],
          );
        },
      ),
    );
  }

  bool _buildWhen(ForgotPasswordState previous, ForgotPasswordState current) {
    if (!previous.isInputEmail && !current.isInputEmail) return false;
    return (previous as ForgotPasswordInputEmailState).email !=
        (current as ForgotPasswordInputEmailState).email;
  }
}
