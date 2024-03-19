import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'progress.freezed.dart';

@freezed
class Progress with _$Progress {
  const factory Progress({
    required ProgressStatus status,
    required ProgressType type,
    required String updatedAt,
  }) = _Progress;
}
