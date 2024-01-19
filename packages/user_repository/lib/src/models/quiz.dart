import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'total_questions') @Default(0) int totalQuestions,
    @JsonKey(name: 'question_point') @Default('') String questionPoint,
    @JsonKey(name: 'kkm') @Default(0) int kkm,
    @JsonKey(name: 'duration') @Default(0) int duration,
    @JsonKey(name: 'remaining_attempt') @Default(0) int remainingAttempt,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}


