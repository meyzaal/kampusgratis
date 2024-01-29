import 'package:article_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_histories.freezed.dart';

@freezed
class SearchHistories with _$SearchHistories {
  const factory SearchHistories({
    required List<History> histories,
    required HistoryMeta meta,
  }) = _SearchHistories;
}
