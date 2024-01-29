import 'package:freezed_annotation/freezed_annotation.dart';

part 'documents.freezed.dart';

@freezed
class Documents with _$Documents {
  const factory Documents({
    required String id,
    required String administrationId,
    required int idCardId,
    required String idCard,
    required int photoId,
    required String photo,
    int? diplomaCertificateId,
    String? diplomaCertificate,
    int? familyCardId,
    String? familyCard,
    int? transcriptId,
    String? transcript,
    int? letterOfRecommendationId,
    String? letterOfRecommendation,
    int? studentCardId,
    String? studentCard,
  }) = _Documents;
}
