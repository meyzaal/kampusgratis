import 'package:bootcamp_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enroll.freezed.dart';

@freezed
class Enroll with _$Enroll {
  const factory Enroll({
    required Status pending,
    required Status ongoing,
    required Status draft,
    required Status rejected,
    required int? totalPlanCredit,
  }) = _Enroll;
}
