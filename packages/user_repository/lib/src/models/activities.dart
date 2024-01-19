import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:user_repository/src/models/models.dart';

part 'activities.freezed.dart';
part 'activities.g.dart';

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
    @JsonKey(name: 'quizzes') @Default(<Quiz>[]) List<Quiz> quizzes,
  }) = _Activities;

  /// Factory method to create an [Activities] instance from a JSON map.
  factory Activities.fromJson(Map<String, Object?> json) =>
      _$ActivitiesFromJson(json);
}
