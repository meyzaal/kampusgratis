import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'overview_details.freezed.dart';

@freezed
class OverviewDetails with _$OverviewDetails {
  const factory OverviewDetails({
    required String subjectId,
    required String subjectName,
    required String sessionId,
    required int sessionNo,
    required SessionType sessionType,
    required String id,
    required String title,
    required String description,
    required bool isAllVideoSeen,
    required Content video,
    required List<Document> documents,
    required ProgressStatus status,
  }) = _OverviewDetails;
}
