import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard_repository/src/models/models.dart';

part 'data.freezed.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required Leaderboard leaderboard,
    required Meta meta,
  }) = _Data;
}
