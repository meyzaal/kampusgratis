import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/models/models.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

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
    @JsonKey(name: 'user') @Default(User()) User user,
    @JsonKey(name: 'activities') @Default(Activities()) Activities activities,
  }) = _UserData;

  /// Factory method to create a [UserData] instance from a JSON map.
  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
