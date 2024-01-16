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
      case "This email hasn't verified. Please verify your email address":
        throw UnverifiedEmailFailure();
      default:
        return const SignInWithEmailAndPasswordFailure();
    }
  }

  /// The message describing the sign-in failure.
  final String message;
}

/// Exception representing an unverified email during the sign-in process.
class UnverifiedEmailFailure implements Exception {}

/// Exception representing a failure in the Google Sign-In service.
class GoogleSignInServiceFailure implements Exception {}

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
        return const SignInWithGoogleFailure();
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
      default:
        return const SignUpFailure();
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
        return const ChangePasswordFailure();
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
      default:
        return const RequestEmailVerificationFailure();
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
        return const VerifyOtpEmailVerificationFailure();
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
      default:
        return const RequestResetPasswordFailure();
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
        return const VerifyOtpResetPasswordFailure();
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
      default:
        return const ResetPasswordFailure();
    }
  }

  /// The message describing the reset password failure.
  final String message;
}
