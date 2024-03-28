import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kampusgratis/about/about.dart';
import 'package:kampusgratis/administration/administration.dart';
import 'package:kampusgratis/assignment/assignment.dart';
import 'package:kampusgratis/authentication/authentication.dart';
import 'package:kampusgratis/bootcamp/bootcamp.dart';
import 'package:kampusgratis/change_password/change_password.dart';
import 'package:kampusgratis/date_picker/date_picker.dart';
import 'package:kampusgratis/edit_profile/edit_profile.dart';
import 'package:kampusgratis/features/features.dart';
import 'package:kampusgratis/forgot_password/forgot_password.dart';
import 'package:kampusgratis/home/home.dart';
import 'package:kampusgratis/login/login.dart';
import 'package:kampusgratis/main/main.dart';
import 'package:kampusgratis/my_calendar/my_calendar.dart';
import 'package:kampusgratis/my_study/my_study.dart';
import 'package:kampusgratis/onboarding/onboarding.dart';
import 'package:kampusgratis/otp_verification/otp_verification.dart';
import 'package:kampusgratis/pdf_viewer/pdf_viewer.dart';
import 'package:kampusgratis/profile/profile.dart';
import 'package:kampusgratis/register/register.dart';
import 'package:kampusgratis/session_modules/session_modules.dart';
import 'package:kampusgratis/session_overview/session_overview.dart';
import 'package:kampusgratis/single_choices/single_choices.dart';
import 'package:kampusgratis/subject_session/subject_session.dart';
import 'package:stream_listener/stream_listener.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

enum OtpVerificationType { emailVerification, resetPassword }

class AppRoutes {
  AppRoutes({required AuthenticationCubit authenticationCubit})
      : _authenticationCubit = authenticationCubit;

  final AuthenticationCubit _authenticationCubit;

  GoRouter get router {
    return GoRouter(
      debugLogDiagnostics: kDebugMode,
      initialLocation: const HomeRoute(needRedirect: true).location,
      navigatorKey: _rootNavigatorKey,
      redirect: (context, state) {
        final loggedIn = _authenticationCubit.state.isAuthenticated;
        final onOnboardingPage = state.matchedLocation == '/onboarding';
        final onAuthPage = state.matchedLocation.startsWith('/auth');

        // if the user is not logged in, they need to login
        if (!loggedIn && !onAuthPage && !onOnboardingPage) {
          return const OnboardingRoute().location;
        }

        // if the user is logged in but still on the login page, send them
        // to the home page
        if (loggedIn && (onAuthPage || onOnboardingPage)) {
          return const HomeRoute(needRedirect: true).location;
        }

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
    TypedGoRoute<RegisterRoute>(path: 'register'),
    TypedGoRoute<VerifyOtpRoute>(path: ':type/:email/verify'),
    TypedGoRoute<ForgotPasswordRoute>(path: 'forgot-password'),
  ],
)
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) =>
      state.uri.path;
}

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterPage();
}

class VerifyOtpRoute extends GoRouteData {
  const VerifyOtpRoute({required this.email, required this.type});

  final OtpVerificationType type;
  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      OtpVerificationPage(email: email, type: type);
}

class ForgotPasswordRoute extends GoRouteData {
  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordPage();
}

@TypedShellRoute<MainRoute>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(
      path: '/home',
      routes: [
        TypedGoRoute<FeatureRoute>(path: 'features'),
      ],
    ),
    TypedGoRoute<MyStudyRoute>(
      path: '/my-study',
      routes: [
        TypedGoRoute<SubjectSessionRoute>(
          path: ':subjectId/sessions',
          routes: [
            TypedGoRoute<SessionOverviewRoute>(
              path: ':sessionId/overview',
            ),
            TypedGoRoute<SessionModulesRoute>(
              path: ':sessionId/modules',
            ),
          ],
        ),
      ],
    ),
    TypedGoRoute<AssignmentRoute>(path: '/assignment'),
    TypedGoRoute<MyCalendarRoute>(path: '/my-calendar'),
    TypedGoRoute<ProfileRoute>(
      path: '/profile',
      routes: [
        TypedGoRoute<EditProfileRoute>(path: 'edit'),
        TypedGoRoute<AboutRoute>(path: 'about'),
        TypedGoRoute<ChangePasswordRoute>(path: 'change-password'),
      ],
    ),
  ],
)
class MainRoute extends ShellRouteData {
  const MainRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      MainPage(child: navigator);
}

class HomeRoute extends GoRouteData {
  const HomeRoute({this.needRedirect = false});

  final bool needRedirect;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      NoTransitionPage<void>(child: HomePage(needRedirect: needRedirect));
}

class FeatureRoute extends GoRouteData {
  const FeatureRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(
        child: FeaturesPage(),
        fullscreenDialog: true,
      );
}

class MyStudyRoute extends GoRouteData {
  const MyStudyRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage<void>(child: MyStudyPage());
}

class SubjectSessionRoute extends GoRouteData {
  const SubjectSessionRoute(this.subjectId);

  final String subjectId;

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => SubjectSessionPage(
        subjectId: subjectId,
      );
}

class SessionModulesRoute extends GoRouteData {
  const SessionModulesRoute(
    this.subjectId,
    this.sessionId,
  );

  final String subjectId;
  final String sessionId;

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => SessionModulesPage(
        subjectId: subjectId,
        sessionId: sessionId,
      );
}

class SessionOverviewRoute extends GoRouteData {
  const SessionOverviewRoute(
    this.subjectId,
    this.sessionId,
    this.moduleId, {
    this.$extra,
  });

  final String subjectId;
  final String sessionId;
  final String moduleId;

  /// YouTube video ID
  final String? $extra;

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      SessionOverviewPage(
        subjectId: subjectId,
        sessionId: sessionId,
        moduleId: moduleId,
        videoId: $extra,
      );
}

class AssignmentRoute extends GoRouteData {
  const AssignmentRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage<void>(child: AssignmentPage());
}

class MyCalendarRoute extends GoRouteData {
  const MyCalendarRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage<void>(child: MyCalendarPage());
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage<void>(child: ProfilePage());
}

class EditProfileRoute extends GoRouteData {
  const EditProfileRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EditProfilePage();
}

class AboutRoute extends GoRouteData {
  const AboutRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => const AboutPage();
}

class ChangePasswordRoute extends GoRouteData {
  const ChangePasswordRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ChangePasswordPage();
}

@TypedGoRoute<AdministrationRoute>(
  path: '/administration',
  routes: [
    TypedGoRoute<SingleChoicesRoute>(path: 'choose'),
    TypedGoRoute<DatePickerRoute>(path: 'pick-date'),
  ],
)
class AdministrationRoute extends GoRouteData {
  const AdministrationRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey =
      _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AdministrationPage();
}

class SingleChoicesOptions {
  const SingleChoicesOptions({
    required this.values,
    required this.title,
    this.initialValue,
  });

  final List<String> values;
  final String title;
  final String? initialValue;
}

class SingleChoicesRoute extends GoRouteData {
  const SingleChoicesRoute({required this.$extra});

  final SingleChoicesOptions $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      child: SingleChoicesPage(
        title: $extra.title,
        values: $extra.values,
        initialValue: $extra.initialValue,
      ),
    );
  }
}

class DatePickerExtra {
  const DatePickerExtra({
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
  });

  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
}

class DatePickerRoute extends GoRouteData {
  const DatePickerRoute({required this.$extra});

  final DatePickerExtra $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      child: DatePickerPage(
        firstDate: $extra.firstDate,
        lastDate: $extra.lastDate,
        initialDate: $extra.initialDate,
      ),
    );
  }
}

class BootcampExtra {
  const BootcampExtra(this.onBootcampEnrolled);

  final VoidCallback? onBootcampEnrolled;
}

@TypedGoRoute<BootcampRoute>(
  path: '/bootcamp',
  routes: [
    TypedGoRoute<PdfViewerRoute>(path: 'view-pdf'),
  ],
)
class BootcampRoute extends GoRouteData {
  const BootcampRoute({this.$extra});

  final BootcampExtra? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BootcampPage(onBootcampEnrolled: $extra?.onBootcampEnrolled);
  }
}

enum PdfViewerType { network, asset }

class PdfViewerExtra {
  const PdfViewerExtra({
    required this.type,
    required this.path,
    required this.title,
  });

  final PdfViewerType type;
  final String path;
  final String title;
}

class PdfViewerRoute extends GoRouteData {
  const PdfViewerRoute({required this.$extra});

  PdfViewerRoute.network(String url, {String? title})
      : $extra = PdfViewerExtra(
          type: PdfViewerType.network,
          path: url,
          title: '$title',
        );
  PdfViewerRoute.asset(String path, {String? title})
      : $extra = PdfViewerExtra(
          type: PdfViewerType.asset,
          path: path,
          title: '$title',
        );

  final PdfViewerExtra $extra;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(child: child, fullscreenDialog: true);
  }

  Widget get child => switch ($extra.type) {
        PdfViewerType.network =>
          PdfViewerPage.network(title: $extra.title, url: $extra.path),
        PdfViewerType.asset =>
          PdfViewerPage.asset(title: $extra.title, path: $extra.path)
      };
}
