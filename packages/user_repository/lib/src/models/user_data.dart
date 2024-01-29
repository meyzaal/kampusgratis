import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/models/models.dart';

part 'user_data.freezed.dart';

/// A class representing user data, including user information and activities.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_UserData` for implementation of equality and immutability.
@freezed
class UserData with _$UserData {
  /// Constructs a [UserData] instance with the specified user and activities.
  const factory UserData({
    required User user,
    // Activities? activities,
  }) = _UserData;
}
