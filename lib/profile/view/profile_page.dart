import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:user_repository/user_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: BlocProvider(
        create: (context) => ProfileBloc(
          userRepository: context.read<UserRepository>(),
          authenticationRepository: context.read<AuthenticationRepository>(),
        )..add(const ProfileEvent.fetchRequested()),
        child: const ProfileBody(),
      ),
    );
  }
}
