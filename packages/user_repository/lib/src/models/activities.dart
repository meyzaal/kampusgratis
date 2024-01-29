import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:user_repository/src/models/models.dart';

part 'activities.freezed.dart';

/// A class representing activities, including a list of quizzes.
///
/// This class is annotated with the `@freezed` annotation, which is used for
/// code generation to provide immutability and equality for classes. The
/// generated code includes a constructor with named parameters, and the mixin
/// `_Activities` for implementation of equality and immutability.
@freezed
class Activities with _$Activities {
  /// Constructs an [Activities] instance with the specified list of quizzes.
  const factory Activities({required List<Quiz> quizzes}) = _Activities;
}
