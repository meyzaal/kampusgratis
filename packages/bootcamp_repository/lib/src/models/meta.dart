import 'package:freezed_annotation/freezed_annotation.dart';
part 'meta.freezed.dart';

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int pageSize,
    required int totalData,
    required int currentPage,
    required int maxPage,
  }) = _Meta;
}
