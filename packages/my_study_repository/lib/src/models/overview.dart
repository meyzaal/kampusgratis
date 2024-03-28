import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/src/models/models.dart';

part 'overview.freezed.dart';

@freezed
class Overview with _$Overview {
  const factory Overview.session({
    required String subjectId,
    required int durationSeconds,
    required int durationMinutes,
    String? sessionId,
    String? moduleId,
    String? link,
  }) = SessionOverview;

  const factory Overview.detail({
    required String id,
    required String title,
    required String description,
    required bool isAllVideoSeen,
    required Content video,
    required List<Document> documents,
    required ProgressStatus status,
  }) = DetailOverview;
}

extension SessionOverviewX on SessionOverview {
  bool get isEmpty {
    return link == null ||
        sessionId == null ||
        moduleId == null ||
        durationSeconds == 0 ||
        durationMinutes == 0;
  }

  bool get isNotEmpty => !isEmpty;
}
