import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/shared/shared.dart';
import 'package:user_repository/user_repository.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async =>
          context.read<ProfileBloc>().add(const ProfileEvent.fetchRequested()),
      child: ListView(
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              switch (state.fetchStatus) {
                case ProfileStatus.initial:
                  return const SizedBox();
                case ProfileStatus.loading:
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                case ProfileStatus.failure:
                  final message =
                      state.message ?? 'Terjadi kesalahan (message-null).';
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(message),
                    ),
                  );
                case ProfileStatus.success:
                  final user = state.user;
                  if (user == null) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: Text('Gagal mendapatkan informasi pengguna.'),
                      ),
                    );
                  }
                  return _UserInfo(user);
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  ProfileButton(
                    leadingIcon: ProfileButton.userInfo,
                    title: const Text('Informasi Pribadi'),
                    trailing: ProfileButton.arrowRight,
                    onTap: () =>
                        const ProfileDetailsRoute().push<void>(context),
                  ),
                  ProfileButton(
                    leadingIcon: ProfileButton.editUser,
                    title: const Text('Edit Profil'),
                    trailing: ProfileButton.arrowRight,
                  ),
                  ProfileButton(
                    leadingIcon: ProfileButton.gradesAndCertificates,
                    title: const Text('Nilai & Sertifikat'),
                    trailing: ProfileButton.arrowRight,
                  ),
                  ProfileButton(
                    leadingIcon: ProfileButton.changePassword,
                    title: const Text('Ubah Kata Sandi'),
                    trailing: ProfileButton.arrowRight,
                  ),
                  ProfileButton(
                    leadingIcon: ProfileButton.about,
                    title: const Text('Tentang'),
                    trailing: ProfileButton.arrowRight,
                  ),
                  BlocProvider.value(
                    value: BlocProvider.of<ThemeCubit>(context),
                    child: const _ThemeButton(),
                  ),
                  ProfileButton(
                    leadingIcon: ProfileButton.logOut,
                    title: const Text('Keluar'),
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (context) => BlocProvider(
                          create: (context) => ProfileBloc(
                            userRepository: context.read<UserRepository>(),
                            authenticationRepository:
                                context.read<AuthenticationRepository>(),
                          ),
                          child: const ConfirmLogoutDialog(),
                        ),
                      );
                    },
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ThemeButton extends StatelessWidget {
  const _ThemeButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        final systemBrightness = MediaQuery.platformBrightnessOf(context);
        Widget leadingIcon;
        if ((state.brightness ?? systemBrightness) == Brightness.dark) {
          leadingIcon = ProfileButton.themeDark;
        } else {
          leadingIcon = ProfileButton.themeLight;
        }

        return ProfileButton(
          leadingIcon: leadingIcon,
          title: const Text('Ubah Tema'),
          trailing: Text(state.nameInIdn),
          onTap: () {
            showDialog<ThemeMode>(
              context: context,
              builder: (context) => BlocProvider(
                create: (context) => SelectThemeCubit(selectedTheme: state),
                child: const SelectThemeDialog(),
              ),
            ).then((value) {
              if (value == null) return;
              context.read<ThemeCubit>().themeChanged(value);
            });
          },
        );
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
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Hero(
            tag: 'profile-hero-avatar',
            child: CustomAvatar(
              avatarUrl: user.avatar,
              radius: 48,
            ),
          ),
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
