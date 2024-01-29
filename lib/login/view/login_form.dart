import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/components/components.dart';
import 'package:kampusgratis/login/login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          final message = state.message ?? 'Terjadi kesalahan (message-null).';
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(message)),
            );
        }
        if (state.status.isCanceled) {
          showDialog<bool>(
            context: context,
            builder: (_) => const VerifyEmailDialog(),
          ).then((value) {
            if (value != true) return;
            // TODO(meyzaal): Add actions
          });
        }
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _EmailInput(),
          SizedBox(height: 16),
          _PasswordInput(),
          SizedBox(height: 16),
          _ForgotPasswordButton(),
          SizedBox(height: 24),
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
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.isValid
              ? () {
                  final focus = FocusScope.of(context);
                  if (focus.hasFocus) focus.unfocus();

                  if (state.status.isInProgress) return;
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.formSubmitted());
                }
              : null,
          child: state.status.isInProgress
              ? const SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Text('Masuk'),
        );
      },
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(16, 0),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: const Text('Lupa kata sandi?'),
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return PasswordInputField(
          labelText: 'Kata Sandi',
          hintText: 'Masukan Kata Sandi',
          onChanged: (password) => context
              .read<LoginBloc>()
              .add(LoginEvent.passwordChanged(password)),
          errorText:
              state.password.isPure ? null : state.password.error?.message,
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomTextField(
          labelText: 'Email',
          decoration: InputDecoration(
            hintText: 'Masukan Email',
            errorText: state.email.isPure ? null : state.email.error?.message,
          ),
          onChanged: (email) =>
              context.read<LoginBloc>().add(LoginEvent.emailChanged(email)),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}
