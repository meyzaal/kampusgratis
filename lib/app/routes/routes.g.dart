// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $onboardingRoute,
      $authRoute,
      $mainRoute,
      $administrationRoute,
      $pdfViewerRoute,
      $bootcampRoute,
    ];

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authRoute => GoRouteData.$route(
      path: '/auth',
      factory: $AuthRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'register',
          factory: $RegisterRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: ':type/:email/verify',
          factory: $VerifyOtpRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'forgot-password',
          factory: $ForgotPasswordRouteExtension._fromState,
        ),
      ],
    );

extension $AuthRouteExtension on AuthRoute {
  static AuthRoute _fromState(GoRouterState state) => const AuthRoute();

  String get location => GoRouteData.$location(
        '/auth',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/auth/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  String get location => GoRouteData.$location(
        '/auth/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VerifyOtpRouteExtension on VerifyOtpRoute {
  static VerifyOtpRoute _fromState(GoRouterState state) => VerifyOtpRoute(
        email: state.pathParameters['email']!,
        type: _$OtpVerificationTypeEnumMap
            ._$fromName(state.pathParameters['type']!),
      );

  String get location => GoRouteData.$location(
        '/auth/${Uri.encodeComponent(_$OtpVerificationTypeEnumMap[type]!)}/${Uri.encodeComponent(email)}/verify',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$OtpVerificationTypeEnumMap = {
  OtpVerificationType.emailVerification: 'email-verification',
  OtpVerificationType.resetPassword: 'reset-password',
};

extension $ForgotPasswordRouteExtension on ForgotPasswordRoute {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  String get location => GoRouteData.$location(
        '/auth/forgot-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

RouteBase get $mainRoute => ShellRouteData.$route(
      navigatorKey: MainRoute.$navigatorKey,
      factory: $MainRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'features',
              parentNavigatorKey: FeatureRoute.$parentNavigatorKey,
              factory: $FeatureRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/my-study',
          factory: $MyStudyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/assignment',
          factory: $AssignmentRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/my-calendar',
          factory: $MyCalendarRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/profile',
          factory: $ProfileRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'edit',
              parentNavigatorKey: EditProfileRoute.$parentNavigatorKey,
              factory: $EditProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'about',
              parentNavigatorKey: AboutRoute.$parentNavigatorKey,
              factory: $AboutRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'change-password',
              parentNavigatorKey: ChangePasswordRoute.$parentNavigatorKey,
              factory: $ChangePasswordRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute(
        needRedirect: _$convertMapValue(
                'need-redirect', state.uri.queryParameters, _$boolConverter) ??
            false,
      );

  String get location => GoRouteData.$location(
        '/home',
        queryParams: {
          if (needRedirect != false) 'need-redirect': needRedirect.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FeatureRouteExtension on FeatureRoute {
  static FeatureRoute _fromState(GoRouterState state) => const FeatureRoute();

  String get location => GoRouteData.$location(
        '/home/features',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyStudyRouteExtension on MyStudyRoute {
  static MyStudyRoute _fromState(GoRouterState state) => const MyStudyRoute();

  String get location => GoRouteData.$location(
        '/my-study',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AssignmentRouteExtension on AssignmentRoute {
  static AssignmentRoute _fromState(GoRouterState state) =>
      const AssignmentRoute();

  String get location => GoRouteData.$location(
        '/assignment',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyCalendarRouteExtension on MyCalendarRoute {
  static MyCalendarRoute _fromState(GoRouterState state) =>
      const MyCalendarRoute();

  String get location => GoRouteData.$location(
        '/my-calendar',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EditProfileRouteExtension on EditProfileRoute {
  static EditProfileRoute _fromState(GoRouterState state) =>
      const EditProfileRoute();

  String get location => GoRouteData.$location(
        '/profile/edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutRouteExtension on AboutRoute {
  static AboutRoute _fromState(GoRouterState state) => const AboutRoute();

  String get location => GoRouteData.$location(
        '/profile/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangePasswordRouteExtension on ChangePasswordRoute {
  static ChangePasswordRoute _fromState(GoRouterState state) =>
      const ChangePasswordRoute();

  String get location => GoRouteData.$location(
        '/profile/change-password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

bool _$boolConverter(String value) {
  switch (value) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw UnsupportedError('Cannot convert "$value" into a bool.');
  }
}

RouteBase get $administrationRoute => GoRouteData.$route(
      path: '/administration',
      parentNavigatorKey: AdministrationRoute.$parentNavigatorKey,
      factory: $AdministrationRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'select/:type',
          factory: $SingleChoicesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'pick/:type',
          factory: $DatePickerRouteExtension._fromState,
        ),
      ],
    );

extension $AdministrationRouteExtension on AdministrationRoute {
  static AdministrationRoute _fromState(GoRouterState state) =>
      const AdministrationRoute();

  String get location => GoRouteData.$location(
        '/administration',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SingleChoicesRouteExtension on SingleChoicesRoute {
  static SingleChoicesRoute _fromState(GoRouterState state) =>
      SingleChoicesRoute(
        _$SingleChoicesTypeEnumMap._$fromName(state.pathParameters['type']!),
        $extra: state.extra as SingleChoicesOptions,
      );

  String get location => GoRouteData.$location(
        '/administration/select/${Uri.encodeComponent(_$SingleChoicesTypeEnumMap[type]!)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$SingleChoicesTypeEnumMap = {
  SingleChoicesType.gender: 'gender',
  SingleChoicesType.lastEducation: 'last-education',
  SingleChoicesType.province: 'province',
  SingleChoicesType.regency: 'regency',
  SingleChoicesType.district: 'district',
  SingleChoicesType.village: 'village',
};

extension $DatePickerRouteExtension on DatePickerRoute {
  static DatePickerRoute _fromState(GoRouterState state) => DatePickerRoute(
        _$DatePickerTypeEnumMap._$fromName(state.pathParameters['type']!),
        $extra: state.extra as DatePickerExtra,
      );

  String get location => GoRouteData.$location(
        '/administration/pick/${Uri.encodeComponent(_$DatePickerTypeEnumMap[type]!)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$DatePickerTypeEnumMap = {
  DatePickerType.birthDate: 'birth-date',
  DatePickerType.schedule: 'schedule',
};

RouteBase get $pdfViewerRoute => GoRouteData.$route(
      path: '/view-pdf/:type',
      factory: $PdfViewerRouteExtension._fromState,
    );

extension $PdfViewerRouteExtension on PdfViewerRoute {
  static PdfViewerRoute _fromState(GoRouterState state) => PdfViewerRoute(
        _$PdfViewerTypeEnumMap._$fromName(state.pathParameters['type']!),
        $extra: state.extra as PdfViewerExtra,
      );

  String get location => GoRouteData.$location(
        '/view-pdf/${Uri.encodeComponent(_$PdfViewerTypeEnumMap[type]!)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

const _$PdfViewerTypeEnumMap = {
  PdfViewerType.network: 'network',
  PdfViewerType.asset: 'asset',
};

RouteBase get $bootcampRoute => GoRouteData.$route(
      path: '/bootcamp',
      factory: $BootcampRouteExtension._fromState,
    );

extension $BootcampRouteExtension on BootcampRoute {
  static BootcampRoute _fromState(GoRouterState state) => const BootcampRoute();

  String get location => GoRouteData.$location(
        '/bootcamp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
