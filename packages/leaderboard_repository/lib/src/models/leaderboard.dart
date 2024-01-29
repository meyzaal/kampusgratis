import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard_repository/src/models/models.dart';

part 'leaderboard.freezed.dart';

@freezed
class Leaderboard with _$Leaderboard {
  const factory Leaderboard({
    required MyRank myRank,
    required List<Ranking> rankings,
  }) = _Leaderboard;
}
