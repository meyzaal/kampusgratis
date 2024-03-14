import 'package:freezed_annotation/freezed_annotation.dart';

part 'enrolled.freezed.dart';

@freezed
class Enrolled with _$Enrolled {
  const factory Enrolled({
    required String id,
    String? name,
    String? thumbnail,
    String? subjectCode,
    int? credit,
    int? currentSemester,
    String? dateTaken,
    String? dateFinished,
    String? proof,
  }) = _Enrolled;
}
