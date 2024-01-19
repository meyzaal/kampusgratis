/// An exception class representing a failure during the process of updating a
/// user's avatar.
class UpdateUserAvatarFailure implements Exception {
  /// Constructs an [UpdateUserAvatarFailure] instance with an optional
  /// [message].
  const UpdateUserAvatarFailure([this.message = 'Terjadi kesalahan,']);

  /// Constructs an [UpdateUserAvatarFailure] instance with a specific [message]
  /// based on the provided [message].
  ///
  /// This factory method helps create more specific instances of
  /// [UpdateUserAvatarFailure] based on common error messages.
  factory UpdateUserAvatarFailure.fromMessage(String message) {
    switch (message) {
      case 'Only JPEG, JPG, and PNG files are allowed':
        return const UpdateUserAvatarFailure(
          'Format file hanya .jpeg, .jpg, dan .png yang diperbolehkan.',
        );
      // TODO(meyzaal): Add handling for too large file
      default:
        return const UpdateUserAvatarFailure();
    }
  }

  /// The error message associated with the failure. Defaults to a generic
  /// message if not provided.
  final String message;
}
