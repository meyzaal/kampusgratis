import 'package:freezed_annotation/freezed_annotation.dart';

part 'familials.freezed.dart';

@freezed
class Familials with _$Familials {
  const factory Familials({
    String? fatherName,
    String? fatherOccupation,
    String? fatherSalary,
    String? motherName,
    String? motherOccupation,
    String? motherSalary,
    String? selfSalary,
    String? selfOccupation,
    String? liveWith,
    String? tuitionPayer,
  }) = _Familials;
}
