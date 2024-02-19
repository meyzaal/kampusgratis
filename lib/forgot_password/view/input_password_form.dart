import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/forgot_password/forgot_password.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class InputPasswordForm {
  const InputPasswordForm();

  static List<Widget> get fields => const [
        _NewPasswordInput(),
        _ConfirmedPasswordInput(),
        _SubmitButton(),
      ];
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listenWhen: _listenWhen,
        listener: (context, state) {
          if (state.isInputPassword) {
            final currentState = state as ForgotPasswordInputPasswordState;
            if (currentState.status.isSuccess) {
              showDialog<void>(
                context: context,
                builder: (context) => const _SuccessDialog(),
              ).then((_) => context.pop());
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
          if (!state.isInputPassword) return const SizedBox();
          final currentState = state as ForgotPasswordInputPasswordState;
          return FilledButton(
            onPressed: currentState.isValid
                ? () {
                    final focus = FocusScope.of(context);
                    if (focus.hasFocus) focus.unfocus();
                    if (currentState.status.isInProgress) return;
                    context.read<ForgotPasswordBloc>().add(
                          const ForgotPasswordEvent
                              .inputPasswordFormSubmitted(),
                        );
                  }
                : null,
            child: currentState.status.isInProgress
                ? SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.onPrimary,
                      ),
                    ),
                  )
                : const Text('Atur Ulang Kata Sandi'),
          );
        },
      ),
    );
  }

  bool _listenWhen(ForgotPasswordState previous, ForgotPasswordState current) {
    if (!previous.isInputPassword && !current.isInputPassword) return false;
    return (previous as ForgotPasswordInputPasswordState).status !=
        (current as ForgotPasswordInputPasswordState).status;
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  const _ConfirmedPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: _buildWhen,
        builder: (context, state) {
          if (!state.isInputPassword) return const SizedBox();
          final currentState = state as ForgotPasswordInputPasswordState;

          return PasswordInputField(
            labelText: 'Konfirmasi Kata Sandi',
            hintText: 'Masukkan kata sandi',
            onChanged: (confirmedPassword) =>
                context.read<ForgotPasswordBloc>().add(
                      ForgotPasswordEvent.confirmedPasswordChanged(
                        confirmedPassword,
                      ),
                    ),
            errorText: currentState.confirmedPassword.isPure
                ? null
                : currentState.confirmedPassword.error?.message,
          );
        },
      ),
    );
  }

  bool _buildWhen(ForgotPasswordState previous, ForgotPasswordState current) {
    if (!previous.isInputPassword && !current.isInputPassword) return false;
    final previousState = previous as ForgotPasswordInputPasswordState;
    final currentState = current as ForgotPasswordInputPasswordState;
    return previousState.newPassword != currentState.newPassword ||
        previousState.confirmedPassword != currentState.confirmedPassword;
  }
}

class _NewPasswordInput extends StatelessWidget {
  const _NewPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
        buildWhen: _buildWhen,
        builder: (context, state) {
          if (!state.isInputPassword) return const SizedBox();
          final currentState = state as ForgotPasswordInputPasswordState;

          return PasswordInputField(
            labelText: 'Kata Sandi Baru',
            hintText: 'Masukkan kata sandi',
            helperText: currentState.newPassword.isValid
                ? null
                : '''Harus terdiri dari 8 karakter atau lebih dan mengandung setidaknya 1 angka dan 1 huruf kapital.''',
            helperMaxLines: 3,
            autofocus: true,
            onChanged: (password) => context
                .read<ForgotPasswordBloc>()
                .add(ForgotPasswordEvent.newPasswordChanged(password)),
            errorText: currentState.newPassword.isPure
                ? null
                : currentState.newPassword.error?.message,
          );
        },
      ),
    );
  }

  bool _buildWhen(ForgotPasswordState previous, ForgotPasswordState current) {
    if (!previous.isInputPassword && !current.isInputPassword) return false;
    return (previous as ForgotPasswordInputPasswordState).newPassword !=
        (current as ForgotPasswordInputPasswordState).newPassword;
  }
}

class _SuccessDialog extends StatelessWidget {
  const _SuccessDialog();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomDialog(
      icon: const PhosphorIcon(PhosphorIconsFill.checkCircle),
      iconColor: theme.extension<CustomColors>()?.sourceSuccess,
      title: const Text('Kata sandi berhasil diubah!'),
      content: const Text('Silakan masuk kembali.'),
      actions: [
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('Masuk'),
        ),
      ],
    );
  }
}
