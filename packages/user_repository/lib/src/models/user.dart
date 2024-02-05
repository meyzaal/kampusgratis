import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:kg_client/kg_client.dart';

part 'user.freezed.dart';
part 'user.g.dart';


/// A class representing a user with various attributes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_User` for implementation of equality and immutability.
@freezed
@HiveType(typeId: 3)
class User with _$User {
  /// Constructs a [User] instance with the specified attributes.
  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String fullName,
    @HiveField(2) required String userName,
    @HiveField(3) required String email,
    @HiveField(4) required Role role,
    @HiveField(5) String? avatar,
    @HiveField(6) Gender? gender,
    @HiveField(7) String? phoneNumber,
    // DateTime? createdAt,
    // DateTime? updatedAt,
    // DateTime? emailVerifiedAt,
  }) = _User;
}
