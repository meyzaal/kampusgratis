import 'dart:async';
import 'dart:io';

import 'package:kg_client/kg_client.dart';
import 'package:user_repository/src/models/models.dart';

/// An exception class representing a failure during the process of updating a
/// user's avatar.
class UpdateUserAvatarFailure implements Exception {
  /// Constructs an [UpdateUserAvatarFailure] instance with an optional
  /// [message].
  const UpdateUserAvatarFailure([this.message = 'Terjadi kesalahan.']);

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
      default:
        return UpdateUserAvatarFailure(message);
    }
  }

  /// The error message associated with the failure. Defaults to a generic
  /// message if not provided.
  final String message;
}

/// The [UserRepository] class handles interactions with the user data on the
/// server.
class UserRepository {
  /// Constructs a [UserRepository] instance with an optional [KgClient].
  UserRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  User? _user;

  final StreamController<User?> _controller = StreamController<User?>.broadcast(
    onListen: () => print('Listening stream user...'),
    onCancel: () => print('Cancelling stream user...'),
  )..add(null);

  /// A stream getter providing asynchronous access to user-related events.
  ///
  /// This getter returns a [Stream] of [User] objects. It first yields the
  /// current user value, followed by any updates from the associated
  /// [_controller] stream.
  Stream<User?> get user async* {
    // Yield the current user value
    yield _user;

    // Yield updates from the controller stream
    yield* _controller.stream;
  }

  /// Clears the current user by adding a `null` value to the [_controller]
  /// stream.
  void clearUser() => _controller.add(null);

  /// Closes the associated [_controller] stream.
  ///
  /// This method should be called when the stream is no longer needed to free
  /// up resources and prevent memory leaks.
  Future<void> closeStream() => _controller.close();

  /// Fetches user data from the server.
  Future<User> getUser() async {
    final result = await _kgClient.getUser();

    final data = User(
      email: result.email ?? '',
      fullName: result.fullName ?? '',
      id: result.id ?? '',
      role: result.role ?? Role.guest,
      userName: result.userName ?? '',
      avatar: result.avatar,
      gender: result.gender,
      phoneNumber: result.phoneNumber,
    );

    _user = data;
    _controller.add(data);
    return data;
  }

  /// Fetches complete user profile data from the server.
  Future<Profile> getProfile() async {
    final result = await _kgClient.getProfile();

    return Profile(
      currentSubjects: result.currentSubjects ?? 0,
      discussionLikes: result.discussionLikes ?? 0,
      discussionPosted: result.discussionPosted ?? 0,
      finishedSubjects: result.finishedSubjects ?? 0,
      fullName: result.fullName ?? '',
      poin: result.poin ?? 0,
      role: result.role ?? Role.guest,
      totalCertificates: result.totalCertificates ?? 0,
      userName: result.userName ?? '',
      avatar: result.avatar,
      faculty: result.faculty,
      ipk: result.ipk,
      major: result.major,
      semester: result.semester,
    );
  }

  /// Updates user information on the server.
  ///
  /// Throws an exception if all fields (fullName, username, phone) are empty.
  Future<User> updateUserInfo({
    String? fullName,
    String? username,
    String? phone,
  }) async {
    final result = await _kgClient.updateUserInfo(
      fullName: fullName,
      username: username,
      phone: phone,
    );

    final data = User(
      email: result.email ?? '',
      fullName: result.fullName ?? '',
      id: result.id ?? '',
      role: result.role ?? Role.guest,
      userName: result.userName ?? '',
      avatar: result.avatar,
      gender: result.gender,
      phoneNumber: result.phoneNumber,
    );

    _user = data;
    _controller.add(data);
    return data;
  }

  /// Updates the user's avatar on the server using the provided image file.
  Future<User> updateUserAvatar(File image) async {
    final avatar = await _kgClient.updateUserAvatar(image);
    var data = _user?.copyWith(avatar: avatar);

    if (data == null) {
      final result = await _kgClient.getUser();
      data = User(
        email: result.email ?? '',
        fullName: result.fullName ?? '',
        id: result.id ?? '',
        role: result.role ?? Role.guest,
        userName: result.userName ?? '',
        avatar: result.avatar,
        gender: result.gender,
        phoneNumber: result.phoneNumber,
      );
    }

    _user = data;
    _controller.add(data);
    return data;
  }
}

/// A Dart extension on the [Gender] enum providing additional functionality for
/// converting gender values to Indonesian names.
extension GenderX on Gender {
  /// Returns the Indonesian name associated with the gender.
  ///
  /// - 'Laki-laki' for [Gender.male].
  /// - 'Perempuan' for [Gender.female].
  String get nameInIdn {
    switch (this) {
      case Gender.male:
        return 'Laki-laki';
      case Gender.female:
        return 'Perempuan';
    }
  }
}
