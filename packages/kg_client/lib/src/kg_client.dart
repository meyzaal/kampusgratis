import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:kg_client/src/local_storage.dart';
import 'package:kg_client/src/models/token.dart';
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

/// A client for interacting with the Kg API.
///
/// The [KgClient] provides methods for making HTTP requests to the Kg API,
/// handling token authentication, and supporting different application flavors.
class KgClient {
  /// Private constructor for initializing the [KgClient].
  ///
  /// The constructor takes an [httpClient] and [flavor], and initializes
  /// interceptors, including token management, logging, and user agent headers.
  KgClient._({
    required Dio httpClient,
    required KgFlavor flavor,
  }) : _httpClient = httpClient {
    _initializeInterceptors(baseUrl: flavor.baseUrl);
  }

  /// Public constructor for creating an instance of [KgClient].
  ///
  /// Optionally, you can provide a custom [httpClient] or it will create a new
  /// one.
  KgClient.init({
    required KgFlavor flavor,
    Dio? httpClient,
  }) : this._(httpClient: httpClient ?? Dio(), flavor: flavor);

  /// Initializes HTTP request interceptors including token management,
  /// logging, and user agent headers.
  void _initializeInterceptors({required String baseUrl}) {
    _httpClient
      ..options.baseUrl = baseUrl
      ..interceptors.add(fresh)
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
      );
  }

  /// Dio instance for making HTTP requests.
  final Dio _httpClient;

  /// Instance of [Fresh] for managing token freshness in the application.
  ///
  /// The [fresh] instance is configured with a [LocalStorage] for token
  /// storage, a refresh token function, a token header function, and a should
  /// refresh function. It allows for automatic token refreshing when needed.
  final Fresh<Token> fresh = Fresh<Token>(
    tokenStorage: LocalStorage<Token>(_tokenBoxName),
    refreshToken: _refreshToken,
    tokenHeader: _tokenHeader,
    shouldRefresh: _shouldRefresh,
  );

  /// Determines whether a token refresh is needed based on the HTTP response.
  ///
  /// This function checks if the HTTP response status code is 401
  /// (Unauthorized), indicating that the current token is invalid. If true, a
  /// token refresh is triggered.
  static bool _shouldRefresh(Response<dynamic>? response) {
    return response?.statusCode == 401;
  }

  /// Refreshes the authentication token using a refresh token.
  static Future<Token> _refreshToken(Token? token, Dio client) async {
    debugPrint('refreshing token...');

    final refreshToken = token?.refreshToken;
    if (refreshToken == null) throw RevokeTokenException();

    try {
      final requestBody = {'refresh_token': refreshToken};
      final response =
          await client.post<JSON>('/api/v1/auth/refresh', data: requestBody);

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
  }

  /// Generates headers containing the authentication token.
  static Map<String, String> _tokenHeader(Token token) {
    return {'authorization': '${token.tokenType} ${token.accessToken}'};
  }

  /// A utility function for authenticating a user with access and refresh tokens.
  ///
  /// This function sets the provided access and refresh tokens in the token storage
  /// using the Fresh package. It creates a new [Token] instance and updates the
  /// token storage with the user's authentication information.
  ///
  /// Parameters:
  /// - [accessToken]: The access token received after user authentication.
  /// - [refreshToken]: The refresh token used for refreshing the access token.
  ///
  /// Example usage:
  /// ```dart
  /// await authenticate(
  ///   accessToken: 'sampleAccessToken',
  ///   refreshToken: 'sampleRefreshToken',
  /// );
  /// ```
  Future<void> authenticate({
    required String accessToken,
    required String refreshToken,
  }) {
    return fresh.setToken(
      Token(
        accessToken: accessToken,
        refreshToken: refreshToken,
      ),
    );
  }

  /// A utility function for unauthenticating a user.
  ///
  /// This function clears the authentication tokens in the token storage
  /// by setting the token to null using the Fresh package. It effectively
  /// logs out the user by removing their authentication information.
  ///
  /// Example usage:
  /// ```dart
  /// await unauthenticate();
  /// ```
  Future<void> unauthenticate() => fresh.setToken(null);
}

/// JSON type definition for Map<String, dynamic>.
typedef JSON = Map<String, dynamic>;

/// Extension on [KgFlavor] providing base URLs for different flavors.
extension on KgFlavor {
  /// Gets the base URL for the associated flavor.
  String get baseUrl {
    switch (this) {
      case KgFlavor.production:
        return 'https://api.kampusgratis.id';
      case KgFlavor.development:
        return 'https://www.mknows.my.id/lms';
    }
  }
}
