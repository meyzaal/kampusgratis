import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/login/login.dart';
import 'package:kampusgratis/shared/shared.dart';

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
            ..clearSnackBars()
            ..showSnackBar(
              SnackBar(content: Text(message), showCloseIcon: true),
            );
        }
        if (state.status.isCanceled) {
          showDialog<bool>(
            context: context,
            builder: (_) => VerifyEmailDialog(
              type: VerifyEmailType.login,
              email: state.email.value,
            ),
          ).then((value) {
            if (value != true) return;
            VerifyOtpRoute(
              email: state.email.value,
              type: OtpVerificationType.emailVerification,
            ).push<void>(context);
          });
        }
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _EmailInput(),
          _PasswordInput(),
          _ForgotPasswordButton(),
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
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: BlocBuilder<LoginBloc, LoginState>(
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
      ),
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 4, right: 16, bottom: 12),
      child: Center(
        child: TextButton(
          onPressed: () {
            final focus = FocusScope.of(context);
            if (focus.hasFocus) focus.unfocus();
            const ForgotPasswordRoute().push<void>(context);
          },
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
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 4),
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return PasswordInputField(
            labelText: 'Kata Sandi',
            hintText: 'Masukkan kata sandi',
            onChanged: (password) => context
                .read<LoginBloc>()
                .add(LoginEvent.passwordChanged(password)),
            errorText:
                state.password.isPure ? null : state.password.error?.message,
          );
        },
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 8),
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return CustomTextField(
            labelText: 'Email',
            decoration: InputDecoration(
              hintText: 'Masukkan email',
              errorText: state.email.isPure ? null : state.email.error?.message,
            ),
            onChanged: (email) =>
                context.read<LoginBloc>().add(LoginEvent.emailChanged(email)),
            textInputAction: TextInputAction.next,
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
}
