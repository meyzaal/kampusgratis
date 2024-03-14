import 'package:freezed_annotation/freezed_annotation.dart';

part 'bootcamp.freezed.dart';

@freezed
class Bootcamp with _$Bootcamp {
  const factory Bootcamp({
    required String id,
    required String name,
    required String description,
    required String slug,
    required String code,
    required int credit,
    required String type,
    required int level,
    required int semester,
    required int totalSession,
    required bool isTaken,
    required bool isAvailable,
    required String majorId,
    required String majorName,
    String? thumbnail,
    String? brochure,
    String? startAt,
  }) = _Bootcamp;
}


