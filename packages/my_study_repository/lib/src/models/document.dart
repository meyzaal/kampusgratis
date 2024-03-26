import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required String id,
    required String documentFile,
    required String moduleId,
    required String title,
    required int durationInSeconds,
  }) = _Document;

}
