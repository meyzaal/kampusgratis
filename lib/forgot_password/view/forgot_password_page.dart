import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/forgot_password/forgot_password.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthenticationAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: BlocProvider(
                create: (context) => ForgotPasswordBloc(
                  context.read<AuthenticationRepository>(),
                ),
                child: const ForgotPasswordForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _Header(),
            if (state.isInputEmail) ...InputEmailForm.fields,
            if (state.isInputPassword) ...InputPasswordForm.fields,
          ],
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleWidget = Text(
      'Lupa Kata Sandi',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 30 / 20,
        color: theme.colorScheme.onSurface,
      ),
      textAlign: TextAlign.center,
    );
    final subtitleWidget = Text(
      'Ubah Kata Sandi Kamu',
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
