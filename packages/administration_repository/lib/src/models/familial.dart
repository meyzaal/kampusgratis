import 'package:freezed_annotation/freezed_annotation.dart';

part 'familial.freezed.dart';

@freezed
class Familial with _$Familial {
  const factory Familial({
    required String id,
    required String administrationId,
    required String fatherName,
    required String fatherOccupation,
    required String fatherSalary,
    required String motherName,
    required String motherOccupation,
    required String motherSalary,
    required String selfSalary,
    required String selfOccupation,
    required String liveWith,
    required String tuitionPayer,
  }) = _Familial;
}
