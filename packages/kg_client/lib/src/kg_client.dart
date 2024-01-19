import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kg_client/src/local_storage.dart';
import 'package:kg_client/src/models/models.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

/// Box name for storing and retrieving tokens in local storage.
const _tokenBoxName = 'token';

/// Enum representing different flavors of the application.
enum KgFlavor {
  /// Development environment flavor.
  development,

  /// Production environment flavor.
  production,
}

/// A Dart class representing the KgClient, which is responsible for managing
/// HTTP requests to the Kg API. It can be configured with a custom Dio HTTP
/// client and KgFlavor.
class KgClient {
  /// Constructs a KgClient instance.
  ///
  /// Parameters:
  /// - [httpClient]: Optional Dio HTTP client. If not provided, a default
  ///   instance will be created.
  /// - [flavor]: Optional KgFlavor specifying the environment flavor. If not
  ///   provided, the default is KgFlavor.development.
  KgClient({
    Dio? httpClient,
    KgFlavor? flavor,
  }) : _httpClient = (httpClient ?? Dio())
          ..options.baseUrl = (flavor ?? KgFlavor.development).baseUrl
          ..interceptors.add(_fresh)
          ..interceptors.add(
            LogInterceptor(requestBody: true, responseBody: true),
          )
          ..interceptors.add(
            InterceptorsWrapper(
              onRequest: (options, handler) async {
                if (Platform.isAndroid || Platform.isIOS) {
                  options.headers.addAll(await userAgentClientHintsHeader());
                }

                return handler.next(options);
              },
            ),
          ) {
    Hive.registerAdapter<Token>(TokenAdapter());
  }

  /// Authenticates the user with the provided access and refresh tokens.
  ///
  /// This method sets the access and refresh tokens for the user in the
  /// [_fresh] object. If a [refreshToken] is not provided, it can be set to
  /// `null`.
  ///
  /// Throws an error if the [_fresh] object is not initialized.
  Future<void> authenticate({
    required String accessToken,
    required String? refreshToken,
  }) =>
      _fresh.setToken(
        Token(
          accessToken: accessToken,
          refreshToken: refreshToken,
        ),
      );

  /// Unauthenticates the user by setting the access and refresh tokens to null.
  ///
  /// This method effectively logs the user out by removing the stored tokens.
  /// Throws an error if the [_fresh] object is not initialized.
  Future<void> unauthenticate() => _fresh.setToken(null);

  /// Dio instance for making HTTP requests.
  final Dio _httpClient;

  /// Instance of [Fresh] for managing token freshness in the application.
  ///
  /// The [_fresh] instance is configured with a [LocalStorage] for token
  /// storage, a refresh token function, a token header function, and a should
  /// refresh function. It allows for automatic token refreshing when needed.
  static final Fresh<Token> _fresh = Fresh<Token>(
    tokenStorage: LocalStorage<Token>(_tokenBoxName),
    refreshToken: (token, httpClient) async {
      debugPrint('refreshing token...');

      final refreshToken = token?.refreshToken;
      if (refreshToken == null) throw RevokeTokenException();

      try {
        final requestBody = {'refresh_token': refreshToken};
        final response = await httpClient.post<JSON>(
          '/api/v1/auth/refresh',
          data: requestBody,
        );

        if (response.data == null) throw RevokeTokenException();

        debugPrint('token refreshed!');
        final result = Token.fromJson(response.data?['data'] as JSON);
        return Token(
          accessToken: result.accessToken,
          refreshToken: result.refreshToken,
        );
      } catch (_) {
        throw RevokeTokenException();
      }
    },
    tokenHeader: (token) {
      return {'authorization': '${token.tokenType} ${token.accessToken}'};
    },
    shouldRefresh: (response) {
      return response?.statusCode == 401;
    },
  );

  /// Asynchronously retrieves the authentication token from local storage.
  ///
  /// Returns a [Token] instance representing the authentication token if
  /// available, otherwise returns `null` if no token is found in local storage.
  ///
  /// This method uses the [LocalStorage] utility with the specified
  /// [_tokenBoxName].
  ///
  /// Example:
  /// ```dart
  /// final token = await getToken();
  /// if (token != null) {
  ///   // Use the retrieved authentication token
  /// } else {
  ///   // Token not found, user may need to sign in
  /// }
  /// ```
  Future<Token?> getToken() => LocalStorage<Token>(_tokenBoxName).read();

  /// Returns a stream providing updates on the authentication status.
  ///
  /// This Dart getter returns a `Stream` of `AuthenticationStatus` objects,
  /// allowing consumers to listen for changes in the authentication status.
  /// The stream is sourced from the `_fresh` object's `authenticationStatus`
  /// property.
  ///
  /// The `AuthenticationStatus` enum typically represents different states of
  /// authentication, such as authenticated, unauthenticated, or in the process
  /// of authentication.
  ///
  /// Example:
  /// ```dart
  /// final authenticationStream = myAuthenticationManager.status;
  ///
  /// authenticationStream.listen((status) {
  ///   if (status == AuthenticationStatus.authenticated) {
  ///     // User is authenticated, perform necessary actions.
  ///   } else {
  ///     // User is unauthenticated or in another authentication state.
  ///   }
  /// });
  /// ```
  Stream<AuthenticationStatus> get status => _fresh.authenticationStatus;

  /// Returns the underlying Dio HTTP client instance without any additional
  /// modifications.
  ///
  /// Use this client for making regular HTTP requests without authentication.
  Dio get client => _httpClient;

  /// Returns an authorized instance of the Dio HTTP client with interceptors
  /// for handling authentication tokens.
  ///
  /// The Dio instance is enhanced with an interceptor that adds authorization
  /// headers to the outgoing requests based on the authentication token
  /// obtained from the [_fresh] object. If a valid token is present, the
  /// 'authorization' header is added with the token type and access token. If
  /// no token is available, the request proceeds without modification.
  ///
  /// Returns:
  /// - An authorized Dio HTTP client with the necessary interceptors for
  ///   handling authentication.
  Dio get authorizedClient {
    return _httpClient
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            // Retrieve the authentication token from the [fresh] object.
            final token = await _fresh.token;

            // Add authorization headers if a valid token is present.
            if (token != null) {
              options.headers.addAll(
                {'authorization': '${token.tokenType} ${token.accessToken}'},
              );
            }

            return handler.next(options);
          },
        ),
      );
  }
}

/// JSON type definition for Map<String, dynamic>.
typedef JSON = Map<String, dynamic>;

/// Extension on [KgFlavor] providing base URLs for different flavors.
extension on KgFlavor {
  /// Gets the base URL for the associated flavor.
  String get baseUrl {
    switch (this) {
      case KgFlavor.production:
        return 'https://api.kampusgratis.id/api';
      case KgFlavor.development:
        return 'https://www.mknows.my.id/lms/api';
    }
  }
}

/// Dart extension providing convenience methods for working with
/// `AuthenticationStatus`.
///
/// This extension, named `AuthenticationStatusX`, adds three boolean getters to
/// the `AuthenticationStatus` enum. These getters allow for easier and more
/// readable conditional checks on the authentication status.
///
/// - `isInitial`: Returns `true` if the authentication status is
///   `AuthenticationStatus.initial`, indicating that the authentication process
///   is in its initial state.
///
/// - `isAuthenticated`: Returns `true` if the authentication status is
///   `AuthenticationStatus.authenticated`, indicating that the user is
///   currently authenticated.
///
/// - `isUnauthenticated`: Returns `true` if the authentication status is
///   `AuthenticationStatus.unauthenticated`, indicating that the user is
///   currently unauthenticated.
///
/// Example:
/// ```dart
/// AuthenticationStatus status = AuthenticationStatus.authenticated;
///
/// if (status.isInitial) {
///   // Handle initial authentication state.
/// } else if (status.isAuthenticated) {
///   // Handle authenticated state.
/// } else if (status.isUnauthenticated) {
///   // Handle unauthenticated state.
/// }
/// ```
extension AuthenticationStatusX on AuthenticationStatus {
  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.initial`.
  bool get isInitial => this == AuthenticationStatus.initial;

  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.authenticated`.
  bool get isAuthenticated => this == AuthenticationStatus.authenticated;

  /// Returns `true` if the authentication status is
  /// `AuthenticationStatus.unauthenticated`.
  bool get isUnauthenticated => this == AuthenticationStatus.unauthenticated;
}
