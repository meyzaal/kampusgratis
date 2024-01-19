// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      totalQuestions: json['total_questions'] as int? ?? 0,
      questionPoint: json['question_point'] as String? ?? '',
      kkm: json['kkm'] as int? ?? 0,
      duration: json['duration'] as int? ?? 0,
      remainingAttempt: json['remaining_attempt'] as int? ?? 0,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'total_questions': instance.totalQuestions,
      'question_point': instance.questionPoint,
      'kkm': instance.kkm,
      'duration': instance.duration,
      'remaining_attempt': instance.remainingAttempt,
    };
