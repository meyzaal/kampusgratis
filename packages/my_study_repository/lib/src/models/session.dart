import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/src/models/models.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String title,
    required int sessionNo,
    required SessionType sessionType,
    required bool isLocked,
    required List<Progress> progress,
  }) = _Session;
}
