import 'dart:async';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:kg_client/kg_client.dart';
import 'package:user_repository/src/models/models.dart';

const _userBoxName = 'user';
const _storageKey = 'user_storage_key';

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
  UserRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient() {
    // Register Adapter
    Hive.registerAdapter<User>(UserAdapter());

    // Listening authentication status
    _kgClient.status.listen((status) async {
      if (status.isAuthenticated) {
        if (_currentUser == null) {
          final user = await _getUserFromLocalStorage();
          if (user != null) {
            _currentUser = user;
          } else {
            await getUser();
          }
        }
      }
      if (status.isUnauthenticated) {
        _currentUser = null;
        await _deleteUserFromLocalStorage();
      }
    });
  }

  final KgClient _kgClient;

  /// The currently signed in account, or null if the user is signed out.
  User? get currentUser => _currentUser;
  User? _currentUser;

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

    unawaited(_saveUserToLocalStorage(data));
    _currentUser = data;
    return data;
  }

  /// Fetches complete user profile data from the server.
  Future<Profile> getProfile() async {
    final result = await _kgClient.getProfile();

    var faculty = result.faculty;
    var major = result.major;
    if (faculty == 'none') faculty = 'Tidak terdaftar';
    if (major == 'UNENROLLED') major = 'Tidak terdaftar';

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
      faculty: faculty,
      ipk: result.ipk,
      major: major,
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

    unawaited(_saveUserToLocalStorage(data));
    _currentUser = data;
    return data;
  }

  /// Updates the user's avatar on the server using the provided image file.
  Future<User> updateUserAvatar(File image) async {
    final avatar = await _kgClient.updateUserAvatar(image);
    var data = _currentUser?.copyWith(avatar: avatar);

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

    unawaited(_saveUserToLocalStorage(data));
    _currentUser = data;
    return data;
  }

  Future<User?> _getUserFromLocalStorage() async {
    print('GET USER FROM LOCAL STORAGE');
    final box = await Hive.openBox<User>(_userBoxName);
    return box.get(_storageKey);
  }

  Future<void> _saveUserToLocalStorage(User user) async {
    print('SAVE USER TO LOCAL STORAGE');
    final box = await Hive.openBox<User>(_userBoxName);
    return box.put(_storageKey, user);
  }

  Future<void> _deleteUserFromLocalStorage() async {
    print('DELETE USER FROM LOCAL STORAGE');
    final box = await Hive.openBox<User>(_userBoxName);
    return box.delete(_storageKey);
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
