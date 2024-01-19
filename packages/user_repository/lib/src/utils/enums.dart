import 'package:freezed_annotation/freezed_annotation.dart';

enum Role {
  @JsonValue('GUEST')
  guest,
  @JsonValue('STUDENT')
  student,
  @JsonValue('ADMIN')
  admin,
  @JsonValue('TEACHER')
  teacher,
}

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
  unknown,
}