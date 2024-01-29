import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int page,
    required int limit,
    required int pageSize,
    required int totalData,
  }) = _Meta;
}
