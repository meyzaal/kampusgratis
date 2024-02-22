import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/change_password/change_password.dart';
import 'package:kampusgratis/shared/models/confirmed_password.dart';
import 'package:kampusgratis/shared/models/password.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChangePasswordForm extends StatelessWidget {
  const ChangePasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordBloc, ChangePasswordState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          final message = state.message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(message), showCloseIcon: true),
            );
        }
        if (state.status.isSuccess) {
          showDialog<void>(
            context: context,
            builder: (_) => const ChangePasswordSuccessDialog(),
          ).then((_) => context.pop());
        }
      },
      child: ListView(
        children: const [
          _OldPasswordInput(),
          _PasswordTip(),
          _NewPasswordInput(),
          _ConfirmedPasswordInput(),
          _SubmitButton(),
        ],
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        builder: (context, state) {
          return FilledButton(
            onPressed: state.isValid
                ? () {
                    final focus = FocusScope.of(context);
                    if (focus.hasFocus) focus.unfocus();
                    if (state.status.isInProgress) return;
                    context
                        .read<ChangePasswordBloc>()
                        .add(const ChangePasswordEvent.formSubmitted());
                  }
                : null,
            child: state.status.isInProgress
                ? SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator.adaptive(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.onPrimary,
                      ),
                    ),
                  )
                : const Text('Daftar'),
          );
        },
      ),
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  const _ConfirmedPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        buildWhen: (previous, current) =>
            previous.oldPassword != current.oldPassword ||
            previous.confirmedPassword != current.confirmedPassword,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Konfirmasi Kata Sandi',
            hintText: 'Masukkan kata sandi',
            onChanged: (confirmedPassword) =>
                context.read<ChangePasswordBloc>().add(
                      ChangePasswordEvent.confirmedPasswordChanged(
                        confirmedPassword,
                      ),
                    ),
            errorText: state.confirmedPassword.isPure
                ? null
                : state.confirmedPassword.error?.message,
          );
        },
      ),
    );
  }
}

class _NewPasswordInput extends StatelessWidget {
  const _NewPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        buildWhen: (previous, current) =>
            previous.newPassword != current.newPassword ||
            previous.confirmedPassword != current.confirmedPassword,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Kata Sandi Baru',
            hintText: 'Masukkan kata sandi yang baru',
            onChanged: (newPassword) => context
                .read<ChangePasswordBloc>()
                .add(ChangePasswordEvent.newPasswordChanged(newPassword)),
            errorText: state.newPassword.isPure
                ? null
                : state.newPassword.error?.message,
          );
        },
      ),
    );
  }
}

class _PasswordTip extends StatelessWidget {
  const _PasswordTip();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      elevation: 0,
      color: theme.extension<CustomColors>()?.warningContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhosphorIcon(
              PhosphorIconsFill.warning,
              color: theme.extension<CustomColors>()?.onWarningContainer,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                '''Kata sandi harus terdiri dari 8 karakter atau lebih, serta mengandung setidaknya 1 angka dan 1 huruf kapital.''',
                style: TextStyle(
                  fontSize: 12,
                  height: 18 / 12,
                  color: theme.extension<CustomColors>()?.onWarningContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OldPasswordInput extends StatelessWidget {
  const _OldPasswordInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
      child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
        buildWhen: (previous, current) =>
            previous.oldPassword != current.oldPassword,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Kata Sandi Lama',
            hintText: 'Masukkan kata sandi sebelumnya',
            autofocus: true,
            onChanged: (oldPassword) => context
                .read<ChangePasswordBloc>()
                .add(ChangePasswordEvent.oldPasswordChanged(oldPassword)),
            errorText: state.oldPassword.isPure
                ? null
                : state.oldPassword.error?.message,
          );
        },
      ),
    );
  }
}
