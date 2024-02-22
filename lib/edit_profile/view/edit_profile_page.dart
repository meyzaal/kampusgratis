import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/edit_profile/edit_profile.dart';
import 'package:user_repository/user_repository.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
      ),
      body: BlocProvider(
        create: (context) => EditProfileBloc(context.read<UserRepository>())
          ..add(const EditProfileEvent.started()),
        child: const EditProfileForm(),
      ),
    );
  }
}
