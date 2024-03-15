import 'package:administration_repository/administration_repository.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:banner_repository/banner_repository.dart';
import 'package:bootcamp_repository/bootcamp_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/l10n/l10n.dart';
import 'package:my_study_repository/my_study_repository.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  App({
    required AdministrationRepository administrationRepository,
    required AuthenticationRepository authenticationRepository,
    required BannerRepository bannerRepository,
    required MyStudyRepository myStudyRepository,
    required UserRepository userRepository,
    required BootcampRepository bootcampRepository,
    super.key,
  })  : _administrationRepository = administrationRepository,
        _authenticationRepository = authenticationRepository,
        _bannerRepository = bannerRepository,
        _bootcampRepository = bootcampRepository,
        _myStudyRepository = myStudyRepository,
        _userRepository = userRepository,
        _routerConfig = AppRoutes(
          authenticationCubit: AuthenticationCubit(
            authenticationRepository: authenticationRepository,
          ),
        ).router;

  final AdministrationRepository _administrationRepository;
  final AuthenticationRepository _authenticationRepository;
  final BannerRepository _bannerRepository;
  final BootcampRepository _bootcampRepository;
  final MyStudyRepository _myStudyRepository;
  final UserRepository _userRepository;
  final GoRouter _routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _administrationRepository),
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _bannerRepository),
        RepositoryProvider.value(value: _bootcampRepository),
        RepositoryProvider.value(value: _myStudyRepository),
        RepositoryProvider.value(value: _userRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationCubit(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          BlocProvider(create: (context) => ThemeCubit()),
        ],
        child: AppView(routerConfig: _routerConfig),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({required this.routerConfig, super.key});

  final GoRouter routerConfig;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: state,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: routerConfig,
        );
      },
    );
  }
}
