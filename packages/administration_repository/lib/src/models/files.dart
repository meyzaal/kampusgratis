import 'package:freezed_annotation/freezed_annotation.dart';

part 'files.freezed.dart';

@freezed
class Files with _$Files {
  const factory Files({
    String? diplomaCertificate,
    String? diplomaCertificateName,
    String? familyCard,
    String? familyCardName,
    String? idCard,
    String? idCardName,
    String? letterOfRecommendation,
    String? letterOfRecommendationName,
    String? photo,
    String? photoName,
    String? studentCard,
    String? studentCardName,
    String? transcript,
    String? transcriptName,
  }) = _Files;
}
