import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'detail.freezed.dart';

@freezed
class Detail with _$Detail {
  factory Detail({
    required String subjectId,
    required String subjectName,
    required String sessionId,
    required int sessionNo,
    required SessionType sessionType,
  }) = _Detail;
}
