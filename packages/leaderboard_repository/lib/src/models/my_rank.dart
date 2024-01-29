import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_rank.freezed.dart';

enum RankStatus { up, down, unchanged }

@freezed
class MyRank with _$MyRank {
  const factory MyRank({
    required String id,
    // required String code,
    required String studentId,
    // required LeaderboardType type,
    required int currentScore,
    required int currentRank,
    required int previousScore,
    required int previousRank,

    // local
    required RankStatus status,
  }) = _MyRank;
}
