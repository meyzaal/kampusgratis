import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:user_repository/user_repository.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final listViewChildren = [
      const ProfileUserInfo(),
      ...ListTile.divideTiles(
        context: context,
        tiles: [
          ProfileButton(
            leadingIcon: ProfileButton.editUser,
            title: const Text('Edit Profil'),
            trailing: ProfileButton.arrowRight,
            onTap: () =>
                const EditProfileRoute().push<bool>(context).then((value) {
              if (value != true) return;
              context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.reloadUserRequested());
            }),
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
            onTap: () => const ChangePasswordRoute().push<void>(context),
          ),
          ProfileButton(
            leadingIcon: ProfileButton.about,
            title: const Text('Tentang'),
            trailing: ProfileButton.arrowRight,
            onTap: () => const AboutRoute().push<void>(context),
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
      ),
    ];
    return RefreshIndicator.adaptive(
      onRefresh: () async =>
          context.read<ProfileBloc>().add(const ProfileEvent.fetchRequested()),
      child: ListView.separated(
        itemBuilder: (context, index) => listViewChildren[index],
        separatorBuilder: (context, index) {
          return SizedBox(
            height: index == 0 || index == listViewChildren.length ? 16 : 0,
          );
        },
        itemCount: listViewChildren.length,
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
