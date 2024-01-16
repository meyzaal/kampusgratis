import 'package:authentication_repository/src/utils/utils.dart';

/// Extension on the [Status] enum to provide convenient methods for checking 
/// authentication status.
///
/// This extension adds three boolean getters:
/// - [isInitial]: Returns `true` if the status is [Status.initial], indicating 
///   the initial authentication state.
/// - [isAuthenticated]: Returns `true` if the status is [Status.authenticated],
///   indicating a successful authentication.
/// - [isUnauthenticated]: Returns `true` if the status is 
///   [Status.unauthenticated], indicating an unauthenticated state.
extension AuthenticationStatus on Status {
  /// Returns `true` if the status is [Status.initial].
  bool get isInitial => this == Status.initial;

  /// Returns `true` if the status is [Status.authenticated].
  bool get isAuthenticated => this == Status.authenticated;

  /// Returns `true` if the status is [Status.unauthenticated].
  bool get isUnauthenticated => this == Status.unauthenticated;
}
