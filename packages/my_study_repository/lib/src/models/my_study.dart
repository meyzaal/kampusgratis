import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_study.freezed.dart';

@freezed
class MyStudy with _$MyStudy {
  const factory MyStudy({
    required String id,
    required String subjectCode,
    required String name,
    required String slug,
    required int credit,
    required int subjectSemester,
    required int currentSession,
    required int studentCount,
    required int sessionCount,
    required double progressPercentage,
    String? thumbnail,
    String? teacherName,
  }) = _MyStudy;
}
