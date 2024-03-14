import 'package:bootcamp_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status({
    required List<Enrolled> subjects,
    required int totalCredit,
  }) = _Status;
}
