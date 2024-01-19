import 'package:freezed_annotation/freezed_annotation.dart';

/// Enumeration representing different roles a user can have.
enum Role {
  /// Represents the guest role.
  @JsonValue('GUEST')
  guest,

  /// Represents the student role.
  @JsonValue('STUDENT')
  student,

  /// Represents the admin role.
  @JsonValue('ADMIN')
  admin,

  /// Represents the teacher role.
  @JsonValue('TEACHER')
  teacher,
}

/// Enumeration representing different genders.
enum Gender {
  /// Represents the male gender.
  @JsonValue('MALE')
  male,

  /// Represents the female gender.
  @JsonValue('FEMALE')
  female,

  /// Represents an unknown or unspecified gender.
  unknown,
}
