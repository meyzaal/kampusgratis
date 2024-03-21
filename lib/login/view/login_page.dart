import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthenticationAppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _Header(),
                    _LoginForm(),
                    _LoginDivider(),
                    _LoginWIthGoogleButton(),
                    _RegisterButton(),
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

class _LoginWIthGoogleButton extends StatelessWidget {
  const _LoginWIthGoogleButton();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16,
        top: 12,
        right: 16,
        bottom: 16,
      ),
      child: ContinueWithGoogleButton(),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(context.read<AuthenticationRepository>()),
      child: const LoginForm(),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextButton(
        onPressed: () {
          final focus = FocusScope.of(context);
          if (focus.hasFocus) focus.unfocus();
          const RegisterRoute().pushReplacement(context);
        },
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: theme.colorScheme.primary,
            ),
            children: [
              TextSpan(
                text: 'Belum Punya Akun?',
                style: TextStyle(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const TextSpan(text: ' Daftar'),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginDivider extends StatelessWidget {
  const _LoginDivider();

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.outline;

    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              endIndent: 16,
              color: color,
            ),
          ),
          Text(
            'Atau Login Dengan',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              height: 18 / 12,
              color: color,
            ),
          ),
          Expanded(child: Divider(indent: 16, color: color)),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleWidget = Text(
      'Masuk',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 30 / 20,
        color: theme.colorScheme.onSurface,
      ),
      textAlign: TextAlign.center,
    );
    final subtitleWidget = Text(
      'Masukkan Akun Kamu',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        color: theme.colorScheme.onSurfaceVariant,
      ),
      textAlign: TextAlign.center,
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [titleWidget, const SizedBox(height: 8), subtitleWidget],
      ),
    );
  }
}
