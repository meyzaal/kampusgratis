// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivitiesImpl _$$ActivitiesImplFromJson(Map<String, dynamic> json) =>
    _$ActivitiesImpl(
      quizzes: (json['quizzes'] as List<dynamic>?)
              ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Quiz>[],
    );

Map<String, dynamic> _$$ActivitiesImplToJson(_$ActivitiesImpl instance) =>
    <String, dynamic>{
      'quizzes': instance.quizzes,
    };
