import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/profile_details/profile_details.dart';
import 'package:user_repository/user_repository.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Pengguna'),
      ),
      body: BlocProvider(
        create: (context) =>
            ProfileDetailsCubit(context.read<UserRepository>())..started(),
        child: const ProfileDetailsView(),
      ),
    );
  }
}
