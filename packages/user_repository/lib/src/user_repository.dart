import 'dart:async';
import 'dart:io';

import 'package:kg_client/kg_client.dart';
import 'package:path/path.dart';
import 'package:user_repository/src/models/models.dart';
import 'package:user_repository/src/utils/failures.dart';

/// The [UserRepository] class handles interactions with the user data on the
/// server.
class UserRepository {
  /// Constructs a [UserRepository] instance with an optional [KgClient].
  UserRepository({KgClient? kgClient}) : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  User? _user;

  final StreamController<User?> _controller =
      StreamController<User?>.broadcast()..add(null);

  /// A stream getter providing asynchronous access to user-related events.
  ///
  /// This getter returns a [Stream] of [User] objects. It first yields the current
  /// user value, followed by any updates from the associated [_controller] stream.
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
    try {
      final response =
          await _kgClient.authorizedClient.get<dynamic>('/v1/user/profile/me');

      final result = Response<UserData>.fromJson(
        response.data as JSON,
        (json) => UserData.fromJson(json as JSON? ?? {}),
      );

      _user = result.data.user;
      _controller.add(_user);
      return result.data.user;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const UserConnectionFailure();
      }

      rethrow;
    }
  }

  /// Fetches complete user profile data from the server.
  Future<Profile> getProfile() async {
    try {
      final response = await _kgClient.authorizedClient
          .get<dynamic>('/v1/user/profile/complete');

      final result = Response<Profile>.fromJson(
        response.data as JSON,
        (json) => Profile.fromJson(json as JSON? ?? {}),
      );

      return result.data;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const UserConnectionFailure();
      }

      rethrow;
    }
  }

  /// Updates user information on the server.
  ///
  /// Throws an exception if all fields (fullName, username, phone) are empty.
  Future<User> updateUserInfo({
    String? fullName,
    String? username,
    String? phone,
  }) async {
    try {
      if (fullName == null && username == null && phone == null) {
        throw Exception('Semua field kosong.');
      }

      final data = {
        if (fullName != null) 'full_name': fullName,
        if (username != null) 'user_name': username,
        if (phone != null) 'phone_number': phone,
      };
      final response = await _kgClient.authorizedClient.put<dynamic>(
        '/v1/user/profile/me',
        data: data,
      );
      final result = Response<UserData>.fromJson(
        response.data as JSON,
        (json) => UserData.fromJson(json as JSON? ?? {}),
      );

      _user = result.data.user;
      _controller.add(_user);
      return result.data.user;
    } on DioException catch (e) {
      if (_isConnectionError(e.type)) {
        throw const UserConnectionFailure();
      }

      rethrow;
    }
  }

  /// Updates the user's avatar on the server using the provided image file.
  Future<User> updateUserAvatar(File image) async {
    try {
      final avatar = await MultipartFile.fromFile(
        image.path,
        filename: basename(image.path),
      );
      final data = FormData.fromMap({'avatar': avatar});
      final response = await _kgClient.authorizedClient.put<dynamic>(
        '/v1/user/profile/avatar',
        data: data,
      );
      final result = response.data as JSON;

      _user = _user?.copyWith(avatar: result['avatar'] as String? ?? '');
      _controller.add(_user);
      if (_user != null) {
        return _user!;
      } else {
        throw Exception('User null.');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final data = e.response?.data as JSON;
        final message = data['message'] as String?;

        if (message != null) throw UpdateUserAvatarFailure.fromMessage(message);
      }

      if (_isConnectionError(e.type)) {
        throw const UserConnectionFailure();
      }

      rethrow;
    }
  }
}

bool _isConnectionError(DioExceptionType type) =>
    type == DioExceptionType.connectionError ||
    type == DioExceptionType.connectionTimeout ||
    type == DioExceptionType.receiveTimeout ||
    type == DioExceptionType.sendTimeout;
