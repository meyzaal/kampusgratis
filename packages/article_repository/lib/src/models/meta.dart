import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';

@freezed
class ArticleMeta with _$ArticleMeta {
  const factory ArticleMeta({
    required int pageSize,
    required int totalData,
    required int currentPage,
    required int maxPage,
  }) = _ArticleMeta;
}

@freezed
class HistoryMeta with _$HistoryMeta {
  const factory HistoryMeta({
    required int page,
    required int perPage,
    required int pageSize,
    required int totalData,
  }) = _HistoryMeta;
}
