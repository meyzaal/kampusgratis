import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'profile.freezed.dart';

/// A class representing a user profile with various attributes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Profile` for implementation of equality and immutability.
@freezed
class Profile with _$Profile {
  /// Constructs a [Profile] instance with the specified attributes.
  const factory Profile({
    required int poin,
    required String userName,
    required int discussionLikes,
    required int discussionPosted,
    required String fullName,
    required Role role,
    required int totalCertificates,
    required int currentSubjects,
    required int finishedSubjects,
    String? avatar,
    int? semester,
    String? ipk,
    String? major,
    String? faculty,
  }) = _Profile;
}
