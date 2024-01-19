import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:user_repository/src/models/models.dart';

part 'activities.freezed.dart';
part 'activities.g.dart';

@freezed
class Activities with _$Activities {
  const factory Activities({
    @JsonKey(name: 'quizzes') @Default(<Quiz>[]) List<Quiz> quizzes,
  }) = _Activities;

  factory Activities.fromJson(Map<String, Object?> json) =>
      _$ActivitiesFromJson(json);
}
