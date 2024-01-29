import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';

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
    required String id,
    required String title,
    required int totalQuestions,
    required String questionPoint,
    required Duration duration,
    required int remainingAttempt,
    // int? kkm,
  }) = _Quiz;
}
