import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/app/theme/theme.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  App({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    super.key,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _routerConfig = AppRoutes(
          authenticationCubit: AuthenticationCubit(
            authenticationRepository: authenticationRepository,
            userRepository: userRepository,
          ),
        ).router;

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  final GoRouter _routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _userRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationCubit(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository,
            ),
          ),
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
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
    final defaultBrightness = MediaQuery.platformBrightnessOf(context);
    final brightness = context.select((ThemeCubit bloc) => bloc.state);

    return MaterialApp.router(
      theme: AppTheme.fromBrightness(brightness ?? defaultBrightness),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: routerConfig,
    );
  }
}
