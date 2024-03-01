import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:user_repository/user_repository.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.fetchStatus.isLoading) return const _Loading();
        if (state.fetchStatus.isFailure) {
          return _Failure(message: state.message);
        }

        final user = state.user;
        if (user == null) return const _EmptyUser();
        return _UserInfo(user);
      },
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ProfileAvatar(avatarUrl: user.avatar),
          const SizedBox(height: 8),
          Text(
            user.fullName,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              height: 27 / 18,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            user.email,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              height: 21 / 14,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          RoleBadge(role: user.role),
        ],
      ),
    );
  }
}

class _EmptyUser extends StatelessWidget {
  const _EmptyUser();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Text('Gagal mendapatkan informasi pengguna.'),
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ErrorStateWidget(
          message: message ?? 'Terjadi kesalahan (message-null).',
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
