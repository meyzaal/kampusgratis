import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'user.freezed.dart';

/// A class representing a user with various attributes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_User` for implementation of equality and immutability.
@freezed
class User with _$User {
  /// Constructs a [User] instance with the specified attributes.
  const factory User({
    required String id,
    required String fullName,
    required String userName,
    required String email,
    required Role role,
    String? avatar,
    Gender? gender,
    String? phoneNumber,
    // DateTime? createdAt,
    // DateTime? updatedAt,
    // DateTime? emailVerifiedAt,
  }) = _User;
}
