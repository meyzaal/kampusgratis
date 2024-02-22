import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/change_password/change_password.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Kata Sandi'),
      ),
      body: BlocProvider(
        create: (context) =>
            ChangePasswordBloc(context.read<AuthenticationRepository>()),
        child: const ChangePasswordForm(),
      ),
    );
  }
}
