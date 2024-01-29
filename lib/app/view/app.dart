import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampusgratis/app/app.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  App({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    super.key,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository;

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  @override
  Widget build(BuildContext context) {
    final authenticationCubit = AuthenticationCubit(
      authenticationRepository: _authenticationRepository,
      userRepository: _userRepository,
    );
    final appRoutes = AppRoutes(authenticationCubit: authenticationCubit);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _userRepository),
      ],
      child: BlocProvider(
        create: (context) => authenticationCubit,
        child: MaterialApp.router(
          theme: AppTheme.light,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: appRoutes.router,
        ),
      ),
    );
  }
}
