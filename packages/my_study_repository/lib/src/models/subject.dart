import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    required String id,
    required String name,
    required String description,
    String? thumbnail,
  }) = _Subject;

}
