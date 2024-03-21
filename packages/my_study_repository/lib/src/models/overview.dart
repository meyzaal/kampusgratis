import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview.freezed.dart';

@freezed
class Overview with _$Overview {
  const factory Overview({
    required String subjectId,
    required int durationSeconds,
    required int durationMinutes,
    String? sessionId,
    String? moduleId,
    String? link,
  }) = _Overview;
}

extension OverviewX on Overview {
  bool get isEmpty {
    return link == null ||
        sessionId == null ||
        moduleId == null ||
        durationSeconds == 0 ||
        durationMinutes == 0;
  }

  bool get isNotEmpty => !isEmpty;
}
