import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kg_client/src/failure/failure.dart';
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
              onError: (error, handler) {
                final response = error.response as Response<JSON>?;

                if (error.type == DioExceptionType.badResponse) {
                  throw BadResponseFailure(
                    message: response?.data?['message'] as String?,
                    statusCode: response?.statusCode,
                  );
                }

                if (error.type == DioExceptionType.connectionTimeout) {
                  throw ConnectionTimeoutFailure();
                }

                if (error.type == DioExceptionType.connectionError ||
                    error.type == DioExceptionType.receiveTimeout ||
                    error.type == DioExceptionType.sendTimeout) {
                  throw ConnectionErrorFailure();
                }

                if (error.type == DioExceptionType.unknown) {
                  throw UnknownFailure();
                }

                return handler.next(error);
              },
            ),
          );

  /// Initializes Hive for Flutter.
  ///
  /// This method must be called before using [KgClient] for http request.
  Future<void> initializeHive() => Hive.initFlutter();

  /// Dio instance for making HTTP requests.
  final Dio _httpClient;

  /// Instance of [Fresh] for managing token freshness in the application.
  ///
  /// The [fresh] instance is configured with a [LocalStorage] for token
  /// storage, a refresh token function, a token header function, and a should
  /// refresh function. It allows for automatic token refreshing when needed.
  static final Fresh<Token> fresh = Fresh<Token>(
    tokenStorage: LocalStorage<Token>(_tokenBoxName),
    refreshToken: (token, httpClient) async {
      debugPrint('refreshing token...');

      final refreshToken = token?.refreshToken;
      if (refreshToken == null) throw RevokeTokenException();

      try {
        final requestBody = {'refresh_token': refreshToken};
        final response = await httpClient.post<JSON>('/api/v1/auth/refresh',
            data: requestBody);

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
  /// obtained from the [fresh] object. If a valid token is present, the
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
            final token = await fresh.token;

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
        return 'https://api.kampusgratis.id';
      case KgFlavor.development:
        return 'https://www.mknows.my.id/lms';
    }
  }
}
