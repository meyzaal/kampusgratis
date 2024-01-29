import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _Appbar(),
                    SizedBox(height: 16),
                    _Header(),
                    SizedBox(height: 32),
                    _LoginForm(),
                    SizedBox(height: 24),
                    _LoginDivider(),
                    SizedBox(height: 24),
                    ContinueWithGoogleButton(),
                    SizedBox(height: 32),
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

class _Appbar extends StatelessWidget {
  const _Appbar();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Transform.translate(
      offset: const Offset(-16, -16),
      child: AppBar(
        iconTheme: IconThemeData(color: theme.colorScheme.primary),
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
          children: [
            TextSpan(
              text: 'Belum Punya Akun?',
              style: GoogleFonts.poppins(
                color: const Color(0xFF697586),
              ),
            ),
            const TextSpan(text: ' Daftar'),
          ],
        ),
      ),
    );
  }
}

class _LoginDivider extends StatelessWidget {
  const _LoginDivider();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(endIndent: 16, color: Color(0xFF404040))),
        Text(
          'Atau Login Dengan',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            height: 18 / 12,
            color: Color(0xFF404040),
          ),
        ),
        Expanded(child: Divider(indent: 16, color: Color(0xFF404040))),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    const titleWidget = Text(
      'Masuk',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 30 / 20,
      ),
      textAlign: TextAlign.center,
    );
    const subtitleWidget = Text(
      'Masukkan Akun Kamu',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        color: Color(0xFF737373),
      ),
      textAlign: TextAlign.center,
    );

    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [titleWidget, SizedBox(height: 8), subtitleWidget],
    );
  }
}
