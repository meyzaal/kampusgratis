import 'package:kg_client/kg_client.dart';
import 'package:leaderboard_repository/src/models/models.dart';

class LeaderboardRepository {
  LeaderboardRepository({KgClient? kgClient})
      : _kgClient = kgClient ?? KgClient();

  final KgClient _kgClient;

  Future<Data> getLeaderboardHighestScore({
    int? page,
    int? limit,
    String? search,
  }) async {
    final result = await _kgClient.getLeaderboardHighestScore(
      page: page,
      limit: limit,
    );

    final leaderboardResult = result.data;
    final metaResult = result.meta;

    final myRankResult = leaderboardResult?.myRankDetails;
    final rankingsResult = leaderboardResult?.rankings;

    final rankings = (rankingsResult ?? []).map(
      (ranking) {
        var rankStatus = RankStatus.unchanged;

        final previousRank = ranking.previousRank ?? 0;
        final currentRank = ranking.currentRank ?? 0;

        if (previousRank < currentRank) rankStatus = RankStatus.up;
        if (previousRank > currentRank) rankStatus = RankStatus.down;

        final studentResult = ranking.student;
        final student = Student(
          id: studentResult?.id ?? '',
          fullName: studentResult?.fullName ?? '',
        );

        return Ranking(
          currentRank: currentRank,
          currentScore: ranking.currentScore ?? 0,
          id: ranking.id ?? '',
          previousRank: previousRank,
          previousScore: ranking.previousScore ?? 0,
          status: rankStatus,
          student: student,
          studentId: ranking.studentId ?? '',
        );
      },
    ).toList();
    var rankStatus = RankStatus.unchanged;

    final previousRank = myRankResult?.previousRank ?? 0;
    final currentRank = myRankResult?.currentRank ?? 0;

    if (previousRank < currentRank) rankStatus = RankStatus.up;
    if (previousRank > currentRank) rankStatus = RankStatus.down;

    final myRank = MyRank(
      currentRank: currentRank,
      currentScore: myRankResult?.currentScore ?? 0,
      id: myRankResult?.id ?? '',
      previousRank: previousRank,
      previousScore: myRankResult?.previousScore ?? 0,
      status: rankStatus,
      studentId: myRankResult?.studentId ?? '',
    );
    final leaderboard = Leaderboard(myRank: myRank, rankings: rankings);
    final meta = Meta(
      limit: metaResult?.limit ?? 0,
      page: metaResult?.page ?? 0,
      pageSize: metaResult?.pageSize ?? 0,
      totalData: metaResult?.totalData ?? 0,
    );

    return Data(leaderboard: leaderboard, meta: meta);
  }

  Future<Data> getLeaderboardMostActive({
    int? page,
    int? limit,
    String? search,
  }) async {
    final result = await _kgClient.getLeaderboardMostActive(
      page: page,
      limit: limit,
    );

    final leaderboardResult = result.data;
    final metaResult = result.meta;

    final myRankResult = leaderboardResult?.myRankDetails;
    final rankingsResult = leaderboardResult?.rankings;

    final rankings = (rankingsResult ?? []).map(
      (ranking) {
        var rankStatus = RankStatus.unchanged;

        final previousRank = ranking.previousRank ?? 0;
        final currentRank = ranking.currentRank ?? 0;

        if (previousRank < currentRank) rankStatus = RankStatus.up;
        if (previousRank > currentRank) rankStatus = RankStatus.down;

        final studentResult = ranking.student;
        final student = Student(
          id: studentResult?.id ?? '',
          fullName: studentResult?.fullName ?? '',
        );

        return Ranking(
          currentRank: currentRank,
          currentScore: ranking.currentScore ?? 0,
          id: ranking.id ?? '',
          previousRank: previousRank,
          previousScore: ranking.previousScore ?? 0,
          status: rankStatus,
          student: student,
          studentId: ranking.studentId ?? '',
        );
      },
    ).toList();
    var rankStatus = RankStatus.unchanged;

    final previousRank = myRankResult?.previousRank ?? 0;
    final currentRank = myRankResult?.currentRank ?? 0;

    if (previousRank < currentRank) rankStatus = RankStatus.up;
    if (previousRank > currentRank) rankStatus = RankStatus.down;

    final myRank = MyRank(
      currentRank: currentRank,
      currentScore: myRankResult?.currentScore ?? 0,
      id: myRankResult?.id ?? '',
      previousRank: previousRank,
      previousScore: myRankResult?.previousScore ?? 0,
      status: rankStatus,
      studentId: myRankResult?.studentId ?? '',
    );
    final leaderboard = Leaderboard(myRank: myRank, rankings: rankings);
    final meta = Meta(
      limit: metaResult?.limit ?? 0,
      page: metaResult?.page ?? 0,
      pageSize: metaResult?.pageSize ?? 0,
      totalData: metaResult?.totalData ?? 0,
    );

    return Data(leaderboard: leaderboard, meta: meta);
  }

  Future<Data> getLeaderboardFastest({
    int? page,
    int? limit,
    String? search,
  }) async {
    final result = await _kgClient.getLeaderboardFastest(
      page: page,
      limit: limit,
    );

    final leaderboardResult = result.data;
    final metaResult = result.meta;

    final myRankResult = leaderboardResult?.myRankDetails;
    final rankingsResult = leaderboardResult?.rankings;

    final rankings = (rankingsResult ?? []).map(
      (ranking) {
        var rankStatus = RankStatus.unchanged;

        final previousRank = ranking.previousRank ?? 0;
        final currentRank = ranking.currentRank ?? 0;

        if (previousRank < currentRank) rankStatus = RankStatus.up;
        if (previousRank > currentRank) rankStatus = RankStatus.down;

        final studentResult = ranking.student;
        final student = Student(
          id: studentResult?.id ?? '',
          fullName: studentResult?.fullName ?? '',
        );

        return Ranking(
          currentRank: currentRank,
          currentScore: ranking.currentScore ?? 0,
          id: ranking.id ?? '',
          previousRank: previousRank,
          previousScore: ranking.previousScore ?? 0,
          status: rankStatus,
          student: student,
          studentId: ranking.studentId ?? '',
        );
      },
    ).toList();
    var rankStatus = RankStatus.unchanged;

    final previousRank = myRankResult?.previousRank ?? 0;
    final currentRank = myRankResult?.currentRank ?? 0;

    if (previousRank < currentRank) rankStatus = RankStatus.up;
    if (previousRank > currentRank) rankStatus = RankStatus.down;

    final myRank = MyRank(
      currentRank: currentRank,
      currentScore: myRankResult?.currentScore ?? 0,
      id: myRankResult?.id ?? '',
      previousRank: previousRank,
      previousScore: myRankResult?.previousScore ?? 0,
      status: rankStatus,
      studentId: myRankResult?.studentId ?? '',
    );
    final leaderboard = Leaderboard(myRank: myRank, rankings: rankings);
    final meta = Meta(
      limit: metaResult?.limit ?? 0,
      page: metaResult?.page ?? 0,
      pageSize: metaResult?.pageSize ?? 0,
      totalData: metaResult?.totalData ?? 0,
    );

    return Data(leaderboard: leaderboard, meta: meta);
  }
}

extension RankStatusX on RankStatus {
  bool get isUp => this == RankStatus.up;
  bool get isDown => this == RankStatus.down;
  bool get isUnchanged => this == RankStatus.unchanged;
}
