import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

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
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'total_questions') @Default(0) int totalQuestions,
    @JsonKey(name: 'question_point') @Default('') String questionPoint,
    @JsonKey(name: 'kkm') @Default(0) int kkm,
    @JsonKey(name: 'duration') @Default(0) int duration,
    @JsonKey(name: 'remaining_attempt') @Default(0) int remainingAttempt,
  }) = _Quiz;

  /// Factory method to create a [Quiz] instance from a JSON map.
  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
