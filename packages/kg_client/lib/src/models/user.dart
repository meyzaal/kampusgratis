import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Enumeration representing different genders.
@HiveType(typeId: 2)
enum Gender {
  /// Represents the male gender.
  @HiveField(0)
  @JsonValue('MALE')
  male,

  /// Represents the female gender.
  @HiveField(1)
  @JsonValue('FEMALE')
  female,
}

/// Enumeration representing different roles a user can have.
@HiveType(typeId: 1)
enum Role {
  /// Represents the guest role.
  @HiveField(1)
  @JsonValue('GUEST')
  guest,

  /// Represents the student role.
  @HiveField(2)
  @JsonValue('STUDENT')
  student,

  /// Represents the admin role.
  @HiveField(3)
  @JsonValue('ADMIN')
  admin,

  /// Represents the teacher role.
  @HiveField(4)
  @JsonValue('TEACHER')
  teacher,
}

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
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'activities') Activities? activities,
  }) = _UserData;

  /// Factory method to create a [UserData] instance from a JSON map.
  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

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
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'gender') Gender? gender,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'role') Role? role,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _User;

  /// Factory method to create a [User] instance from a JSON map.
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

/// A class representing activities, including a list of quizzes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Activities` for implementation of equality and immutability.
@freezed
class Activities with _$Activities {
  /// Constructs an [Activities] instance with the specified list of quizzes.
  const factory Activities({
    @JsonKey(name: 'quizzes') List<Quiz>? quizzes,
  }) = _Activities;

  /// Factory method to create an [Activities] instance from a JSON map.
  factory Activities.fromJson(Map<String, Object?> json) =>
      _$ActivitiesFromJson(json);
}

/// A class representing a quiz with various attributes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Quiz` for implementation of equality and immutability.
@freezed
class Quiz with _$Quiz {
  /// Constructs a [Quiz] instance with the specified attributes.
  const factory Quiz({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'total_questions') int? totalQuestions,
    @JsonKey(name: 'question_point') String? questionPoint,
    @JsonKey(name: 'kkm') int? kkm,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'remaining_attempt') int? remainingAttempt,
  }) = _Quiz;

  /// Factory method to create a [Quiz] instance from a JSON map.
  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}

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
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'poin') int? poin,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'discussion_likes') int? discussionLikes,
    @JsonKey(name: 'discussion_posted') int? discussionPosted,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'semester') int? semester,
    @JsonKey(name: 'ipk') String? ipk,
    @JsonKey(name: 'major') String? major,
    @JsonKey(name: 'role') Role? role,
    @JsonKey(name: 'total_certificates') int? totalCertificates,
    @JsonKey(name: 'current_subjects') int? currentSubjects,
    @JsonKey(name: 'finished_subjects') int? finishedSubjects,
    @JsonKey(name: 'faculty') String? faculty,
  }) = _Profile;

  /// Factory method to create a [Profile] instance from a JSON map.
  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}
