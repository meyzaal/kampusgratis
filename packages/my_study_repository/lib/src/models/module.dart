import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'module.freezed.dart';

@freezed
class Module with _$Module {
  const factory Module({
    required String subjectId,
    required String subjectName,
    required String sessionId,
    required int sessionNo,
    required SessionType sessionType,
    required String id,
    required String title,
    required String description,
    required bool isAllVideoSeen,
    required List<Content> videos,
    required List<Document> documents,
    required List<Content> journals,
    required List<Content> articles,
    required ProgressStatus status,
  }) = _Module;
}
