import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard_repository/src/models/models.dart';

part 'ranking.freezed.dart';

@freezed
class Ranking with _$Ranking {
  const factory Ranking({
    required String id,
    // required String code,
    required String studentId,
    // required LeaderboardType type,
    required int currentScore,
    required int currentRank,
    required int previousScore,
    required int previousRank,
    required Student student,

    // local
    required RankStatus status,
  }) = _Ranking;
}
