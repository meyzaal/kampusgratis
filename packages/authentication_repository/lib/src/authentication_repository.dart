import 'dart:async';

import 'package:authentication_repository/src/google_sign_in_service.dart';
import 'package:authentication_repository/src/models/models.dart';
import 'package:authentication_repository/src/utils/utils.dart';
import 'package:kg_client/kg_client.dart';

/// Repository handling authentication-related operations.
class AuthenticationRepository {
  /// Constructs an [AuthenticationRepository] with an optional [KgClient].
  AuthenticationRepository({KgClient? kgClient})
      : _kgClient = kgClient ?? KgClient(),
        _googleSignInService = GoogleSignInService();

  /// A stream providing the authentication status based on [_kgClient]'s
  /// status.
  Stream<Status> get status => _kgClient.status.map((status) {
        if (status.isAuthenticated) return Status.authenticated;
        if (status.isUnauthenticated) return Status.unauthenticated;
        return Status.initial;
      });

  final KgClient _kgClient;
  final GoogleSignInService _googleSignInService;

  /// Signs up a new user with the provided [name], [email], [password], and
  /// [confirmPassword].
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final data = {
        'full_name': name,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      };

      await _kgClient.client.post<void>('/v1/auth/register', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) throw SignUpFailure.fromMessage(message);
      }
      rethrow;
    }
  }

  /// Signs in a user with email and password, and an optional [role].
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
    Role? role,
  }) async {
    try {
      final data = {
        'email': email,
        'password': password,
        if (role != null) 'role': role.upperCaseName,
      };
      final response = await _kgClient.client.post<dynamic>(
        '/v1/auth/login',
        data: data,
      );

      final result = Response<Token>.fromJson(
        response.data as JSON,
        (json) => Token.fromJson(json as JSON? ?? {}),
      );

      await _kgClient.authenticate(
        accessToken: result.data.accessToken,
        refreshToken: result.data.refreshToken,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw SignInWithEmailAndPasswordFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Signs in a user using Google authentication.
  Future<void> signInWithGoogle() async {
    try {
      final idToken = await _googleSignInService.signIn();
      final data = {'credential': idToken};
      final response = await _kgClient.client.post<dynamic>(
        '/v1/auth/login/google/callback/android',
        data: data,
      );

      final result = Response<Token>.fromJson(
        response.data as JSON,
        (json) => Token.fromJson(json as JSON? ?? {}),
      );

      return await _kgClient.authenticate(
        accessToken: result.data.accessToken,
        refreshToken: result.data.refreshToken,
      );
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw SignInWithGoogleFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Signs out the current user.
  Future<bool> signOut() async {
    final token = await _kgClient.getToken();

    if (token?.refreshToken != null) {
      final data = {'refresh_token': token?.refreshToken};

      unawaited(
        _kgClient.authorizedClient.post<void>('/v1/auth/logout', data: data),
      );
    }
    await _googleSignInService.signOut();

    return _kgClient
        .unauthenticate()
        .then((_) => true)
        .onError((_, __) => false);
  }

  /// Requests email verification using OTP for the given [email].
  Future<void> requestOtpEmailVerification(String email) async {
    try {
      final data = {'email': email};

      await _kgClient.client
          .post<void>('/email-verification/request', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw RequestEmailVerificationFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Verifies email verification using OTP with [otpCode] for the given
  /// [email].
  Future<void> verifyOtpEmailVerification({
    required String otpCode,
    required String email,
  }) async {
    try {
      final data = {'otp': otpCode, 'email': email};

      await _kgClient.client
          .post<void>('/email-verification/verify', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw VerifyOtpEmailVerificationFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Requests OTP for resetting the password for the given [email].
  Future<void> requestOtpResetPassword(String email) async {
    try {
      final data = {'email': email};

      await _kgClient.client.post<void>('/reset-password/request', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw VerifyOtpEmailVerificationFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Verifies the OTP for resetting the password with [otpCode] and [email].
  Future<ResetPassword> verifyOtpResetPassword({
    required String otpCode,
    required String email,
  }) async {
    try {
      final data = {'otp': otpCode, 'email': email};
      final response = await _kgClient.client.post<Response<ResetPassword>>(
        '/reset-password/verify',
        data: data,
      );

      final result = response.data?.data;
      if (result == null) throw const VerifyOtpEmailVerificationFailure();

      return result;
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) {
          throw VerifyOtpEmailVerificationFailure.fromMessage(message);
        }
      }
      rethrow;
    }
  }

  /// Resets the password with the given [token] and [password].
  Future<void> resetPassword({
    required String token,
    required String password,
  }) async {
    try {
      final data = {'token': token, 'password': password};

      await _kgClient.client.post<void>('/v1/auth/reset-password', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) throw ResetPasswordFailure.fromMessage(message);
      }
      rethrow;
    }
  }

  /// Changes the password with the provided [oldPassword], [newPassword], and
  /// [confirmPassword].
  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      final data = {
        'old_password': oldPassword,
        'new_password': newPassword,
        'new_password_confirmation': confirmPassword,
      };

      await _kgClient.authorizedClient
          .put<void>('/v1/auth/change-password', data: data);
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) throw ChangePasswordFailure.fromMessage(message);
      }
      rethrow;
    }
  }
}

extension on Role {
  String get upperCaseName => name.toUpperCase();
}
