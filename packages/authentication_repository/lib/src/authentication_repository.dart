import 'dart:async';

import 'package:authentication_repository/src/google_sign_in_service.dart';
import 'package:kg_client/kg_client.dart';

/// Enumeration representing different roles in the authentication system.
///
/// Roles include 'guest', 'student', 'admin', and 'teacher'.
enum Role {
  /// Represents a guest user with limited privileges.
  guest,

  /// Represents a student user with specific privileges.
  student,

  /// Represents an administrator user with elevated privileges.
  admin,

  /// Represents a teacher user with specific privileges.
  teacher
}

/// Enumeration representing authentication status.
///
/// Status values include 'initial', 'authenticated', and 'unauthenticated'.
enum AuthenticationStatus {
  /// Represents the initial state before authentication.
  initial,

  /// Represents a successfully authenticated state.
  authenticated,

  /// Represents an unauthenticated state.
  unauthenticated
}

/// Exception representing a failure during the sign-in process with email and
/// password.
///
/// Provides details about the failure through the [message] attribute.
class SignInWithEmailAndPasswordFailure implements Exception {
  /// Default constructor for [SignInWithEmailAndPasswordFailure].
  const SignInWithEmailAndPasswordFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory SignInWithEmailAndPasswordFailure.fromMessage(String message) {
    switch (message) {
      case 'Invalid email and password combination':
        return const SignInWithEmailAndPasswordFailure(
          'Email atau kata sandi salah.',
        );
      case "This email hasn't set password. Please login by google":
        return const SignInWithEmailAndPasswordFailure(
          '''Email tidak menggunakan kata sandi, silakan masuk dengan menggunakan Google.''',
        );
      case 'email must be an email':
        return const SignInWithEmailAndPasswordFailure(
          'Format email tidak sesuai',
        );
      case 'Too many requests from this IP, please try again after 3 minutes':
        return const SignInWithEmailAndPasswordFailure(
          'Terlalu banyak permintaan, coba lagi nanti.',
        );
      case "This email hasn't verified. Please verify your email address":
        throw UnverifiedEmailFailure();
      default:
        return SignInWithEmailAndPasswordFailure(message);
    }
  }

  /// The message describing the sign-in failure.
  final String message;
}

/// Exception representing an unverified email during the sign-in process.
class UnverifiedEmailFailure implements Exception {}

/// Exception representing a failure in the Google Sign-In service.
class GoogleSignInServiceFailure implements Exception {
  /// Default constructor for [GoogleSignInServiceFailure].
  const GoogleSignInServiceFailure([
    this.message = 'Gagal masuk dengan akun Google',
  ]);

  /// The message describing the Google sign-in service failure.
  final String message;
}

/// Exception representing a failure during the sign-in process with Google.
///
/// Provides details about the failure through the [message] attribute.
class SignInWithGoogleFailure implements Exception {
  /// Default constructor for [SignInWithGoogleFailure].
  const SignInWithGoogleFailure([
    this.message = 'Terjadi kesalahan',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory SignInWithGoogleFailure.fromMessage(String message) {
    switch (message) {
      case 'Invalid Credential':
        return const SignInWithGoogleFailure('Kredensial tidak valid.');
      default:
        return SignInWithGoogleFailure(message);
    }
  }

  /// The message describing the Google sign-in failure.
  final String message;
}

/// Exception representing a failure during the sign-up process.
///
/// Provides details about the failure through the [message] attribute.
class SignUpFailure implements Exception {
  /// Default constructor for [SignUpFailure].
  const SignUpFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory SignUpFailure.fromMessage(String message) {
    switch (message) {
      case 'Email already registered':
        throw EmailAlreadyRegisteredFailure();
      case 'email must be an email':
        return const SignUpFailure(
          'Format email tidak sesuai.',
        );
      case 'Password is required':
        return const SignUpFailure(
          'Kata sandi harus diisi.',
        );
      case "password and password_confirmation doesn't match":
        return const SignUpFailure(
          'Kata sandi dan konfirmasi kata sandi tidak sama.',
        );
      case 'Too many requests from this IP, please try again after 3 minutes':
        return const SignUpFailure(
          'Terlalu banyak permintaan, coba lagi nanti.',
        );
      default:
        return SignUpFailure(message);
    }
  }

  /// The message describing the sign-up failure.
  final String message;
}

/// Exception representing a failure when the email is already registered during
/// sign-up.
class EmailAlreadyRegisteredFailure implements Exception {}

/// Exception representing a failure during the change password process.
///
/// Provides details about the failure through the [message] attribute.
class ChangePasswordFailure implements Exception {
  /// Default constructor for [ChangePasswordFailure].
  const ChangePasswordFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory ChangePasswordFailure.fromMessage(String message) {
    switch (message) {
      case "new_password and new_password_confirmation doesn't match":
        return const ChangePasswordFailure(
          'Kata sandi baru dan konfirmasi kata sandi tidak sama.',
        );
      case 'new_password is not strong enough':
        return const ChangePasswordFailure(
          '''Kata sandi lemah, harap buat kata sandi dengan kombinasi huruf dan angka.''',
        );
      case 'Wrong Old Password':
        return const ChangePasswordFailure('Kata sandi lama salah.');
      default:
        return ChangePasswordFailure(message);
    }
  }

  /// The message describing the change password failure.
  final String message;
}

/// Exception representing a failure during the request for email verification.
///
/// Provides details about the failure through the [message] attribute.
class RequestEmailVerificationFailure implements Exception {
  /// Default constructor for [RequestEmailVerificationFailure].
  const RequestEmailVerificationFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory RequestEmailVerificationFailure.fromMessage(String message) {
    switch (message) {
      case 'Email does not exist or not registered':
        return const RequestEmailVerificationFailure(
          'Email salah atau email tidak terdaftar.',
        );
      case 'Your email has already been verified':
        throw EmailAlreadyVerifiedFailure();
      case 'Too many requests from this IP, please try again after 3 minutes':
        return const RequestEmailVerificationFailure(
          'Terlalu banyak permintaan, coba lagi nanti.',
        );
      default:
        return RequestEmailVerificationFailure(message);
    }
  }

  /// The message describing the request email verification failure.
  final String message;
}

/// Exception representing a failure when the email is already verified during
/// email verification.
class EmailAlreadyVerifiedFailure implements Exception {}

/// Exception representing a failure during the verification of OTP for email
/// verification.
///
/// Provides details about the failure through the [message] attribute.
class VerifyOtpEmailVerificationFailure implements Exception {
  /// Default constructor for [VerifyOtpEmailVerificationFailure].
  const VerifyOtpEmailVerificationFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory VerifyOtpEmailVerificationFailure.fromMessage(String message) {
    switch (message) {
      case 'Expired OTP':
        return const VerifyOtpEmailVerificationFailure(
          'Kode OTP sudah kadaluarsa.',
        );
      case 'Invalid or expired OTP':
        return const VerifyOtpEmailVerificationFailure(
          'Kode OTP salah atau kode OTP kadaluarsa.',
        );
      case 'Email does not exist or not registered':
        return const VerifyOtpEmailVerificationFailure(
          'Email salah atau email tidak terdaftar.',
        );
      default:
        return VerifyOtpEmailVerificationFailure(message);
    }
  }

  /// The message describing the verification OTP email verification failure.
  final String message;
}

/// Exception representing a failure during the request for resetting the
/// password.
///
/// Provides details about the failure through the [message] attribute.
class RequestResetPasswordFailure implements Exception {
  /// Default constructor for [RequestResetPasswordFailure].
  const RequestResetPasswordFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory RequestResetPasswordFailure.fromMessage(String message) {
    switch (message) {
      case 'Email does not exist or not registered':
        return const RequestResetPasswordFailure(
          'Email salah atau email tidak terdaftar.',
        );
      case 'Too many requests from this IP, please try again after 3 minutes':
        return const RequestResetPasswordFailure(
          'Terlalu banyak permintaan, coba lagi nanti.',
        );
      default:
        return RequestResetPasswordFailure(message);
    }
  }

  /// The message describing the request reset password failure.
  final String message;
}

/// Exception representing a failure during the verification of OTP for
/// resetting the password.
///
/// Provides details about the failure through the [message] attribute.
class VerifyOtpResetPasswordFailure implements Exception {
  /// Default constructor for [VerifyOtpResetPasswordFailure].
  const VerifyOtpResetPasswordFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory VerifyOtpResetPasswordFailure.fromMessage(String message) {
    switch (message) {
      case 'Expired OTP':
        return const VerifyOtpResetPasswordFailure(
          'Kode OTP sudah kadaluarsa.',
        );
      case 'Invalid or expired OTP':
        return const VerifyOtpResetPasswordFailure(
          'Kode OTP salah atau kode OTP kadaluarsa.',
        );
      case 'Email does not exist or not registered':
        return const VerifyOtpResetPasswordFailure(
          'Email salah atau email tidak terdaftar.',
        );
      default:
        return VerifyOtpResetPasswordFailure(message);
    }
  }

  /// The message describing the verification OTP reset password failure.
  final String message;
}

/// Exception representing a failure during the reset password process.
///
/// Provides details about the failure through the [message] attribute.
class ResetPasswordFailure implements Exception {
  /// Default constructor for [ResetPasswordFailure].
  const ResetPasswordFailure([
    this.message = 'Terjadi kesalahan.',
  ]);

  /// Factory method to create an instance from a specific error [message].
  factory ResetPasswordFailure.fromMessage(String message) {
    switch (message) {
      case 'Token is not valid':
        return const ResetPasswordFailure(
          'Token tidak valid.',
        );
      case 'Expired OTP':
        return const ResetPasswordFailure(
          'Kode OTP kadaluarsa.',
        );
      default:
        return ResetPasswordFailure(message);
    }
  }

  /// The message describing the reset password failure.
  final String message;
}

/// Repository handling authentication-related operations.
class AuthenticationRepository {
  /// Constructs an [AuthenticationRepository] with an optional [KgClient].
  AuthenticationRepository({KgClient? kgClient})
      : _kgClient = kgClient ?? KgClient(),
        _googleSignInService = GoogleSignInService();

  /// A stream providing the authentication status based on [_kgClient]'s
  /// status.
  Stream<AuthenticationStatus> get status => _kgClient.status.map((status) {
        if (status.isAuthenticated) return AuthenticationStatus.authenticated;
        if (status.isUnauthenticated) {
          return AuthenticationStatus.unauthenticated;
        }
        return AuthenticationStatus.initial;
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
      await _kgClient.signUp(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
    } on BadResponseException catch (e) {
      throw SignUpFailure.fromMessage(e.message);
    }
  }

  /// Signs in a user with email and password, and an optional [role].
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
    Role? role,
  }) async {
    try {
      await _kgClient.signInWithEmailAndPassword(
        email: email,
        password: password,
        role: role?.upperCaseName,
      );
    } on BadResponseException catch (e) {
      throw SignInWithEmailAndPasswordFailure.fromMessage(e.message);
    }
  }

  /// Signs in a user using Google authentication.
  Future<void> signInWithGoogle() async {
    try {
      final idToken = await _googleSignInService.signIn();
      await _kgClient.signInWithGoogle(idToken);
    } on BadResponseException catch (e) {
      throw SignInWithGoogleFailure.fromMessage(e.message);
    }
  }

  /// Signs out the current user.
  Future<void> signOut() async {
    await _kgClient.signOut();
    await _googleSignInService.signOut();
  }

  /// Requests email verification using OTP for the given [email].
  Future<void> requestOtpEmailVerification(String email) async {
    try {
      await _kgClient.requestOtpEmailVerification(email);
    } on BadResponseException catch (e) {
      throw RequestEmailVerificationFailure.fromMessage(e.message);
    }
  }

  /// Verifies email verification using OTP with [otpCode] for the given
  /// [email].
  Future<void> verifyOtpEmailVerification({
    required String otpCode,
    required String email,
  }) async {
    try {
      await _kgClient.verifyOtpEmailVerification(
        otpCode: otpCode,
        email: email,
      );
    } on BadResponseException catch (e) {
      throw VerifyOtpEmailVerificationFailure.fromMessage(e.message);
    }
  }

  /// Requests OTP for resetting the password for the given [email].
  Future<void> requestOtpResetPassword(String email) async {
    try {
      await _kgClient.requestOtpResetPassword(email);
    } on BadResponseException catch (e) {
      throw RequestResetPasswordFailure.fromMessage(e.message);
    }
  }

  /// Verifies the OTP for resetting the password with [otpCode] and [email]
  /// that return `token`.
  Future<String> verifyOtpResetPassword({
    required String otpCode,
    required String email,
  }) async {
    try {
      final result = await _kgClient.verifyOtpResetPassword(
        otpCode: otpCode,
        email: email,
      );

      return result.token ?? '';
    } on BadResponseException catch (e) {
      throw VerifyOtpResetPasswordFailure.fromMessage(e.message);
    }
  }

  /// Resets the password with the given [token] and [password].
  Future<void> resetPassword({
    required String token,
    required String password,
  }) async {
    try {
      await _kgClient.resetPassword(token: token, password: password);
    } on BadResponseException catch (e) {
      throw ResetPasswordFailure.fromMessage(e.message);
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
      await _kgClient.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );
    } on BadResponseException catch (e) {
      throw ChangePasswordFailure.fromMessage(e.message);
    }
  }
}

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
extension AuthenticationStatusX on AuthenticationStatus {
  /// Returns `true` if the status is [AuthenticationStatus.initial].
  bool get isInitial => this == AuthenticationStatus.initial;

  /// Returns `true` if the status is [AuthenticationStatus.authenticated].
  bool get isAuthenticated => this == AuthenticationStatus.authenticated;

  /// Returns `true` if the status is [AuthenticationStatus.unauthenticated].
  bool get isUnauthenticated => this == AuthenticationStatus.unauthenticated;
}

extension on Role {
  String get upperCaseName => name.toUpperCase();
}
