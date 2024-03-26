import 'package:freezed_annotation/freezed_annotation.dart';
part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required String id,
    required String title,
    required String content,
    required String url,
    required String moduleId,
    required int durationInSeconds,
  }) = _Content;

  const factory Content.empty() = _EmptyContent;
}
