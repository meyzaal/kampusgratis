import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/counter/counter.dart';
import 'package:kampusgratis/login/login.dart';
import 'package:kampusgratis/onboarding/onboarding.dart';
import 'package:stream_listener/stream_listener.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRoutes {
  AppRoutes({required AuthenticationCubit authenticationCubit})
      : _authenticationCubit = authenticationCubit;

  final AuthenticationCubit _authenticationCubit;

  GoRouter get router {
    return GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: '/dashboard',
      navigatorKey: _rootNavigatorKey,
      redirect: (context, state) {
        final loggedIn = _authenticationCubit.state.isAuthenticated;
        final onAuthPage = state.matchedLocation.startsWith('/auth');

        // if the user is not logged in, they need to login
        if (!loggedIn && !onAuthPage) return '/auth';

        // if the user is logged in but still on the login page, send them
        // to the home page
        if (loggedIn && onAuthPage) return '/dashboard';

        // no need to redirect at all
        return null;
      },
      refreshListenable: StreamListener(
        _authenticationCubit.stream
            .map((state) => state.isAuthenticated)
            .distinct(),
      ),
      routes: $appRoutes,
    );
  }
}

@TypedGoRoute<OnboardingRoute>(
  path: '/onboarding',
)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingPage();
}

@TypedGoRoute<AuthRoute>(
  path: '/auth',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<LoginRoute>(path: 'login'),
  ],
)
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingPage();
}

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<DashboardRoute>(
  path: '/dashboard',
)
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CounterPage(pageName: 'DASHBOARD');
}
