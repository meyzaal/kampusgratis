import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard.freezed.dart';
part 'leaderboard.g.dart';

enum LeaderboardType {
  @JsonValue('HIGHEST_SCORE')
  highestScore,

  @JsonValue('MOST-ACTIVE')
  mostActive,

  @JsonValue('FASTEST')
  fastest,
}

@freezed
class LeaderboardResult with _$LeaderboardResult {
  const factory LeaderboardResult({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') LeaderboardData? data,
    @JsonKey(name: 'meta') LeaderboardMeta? meta,
  }) = _LeaderboardResult;

  factory LeaderboardResult.fromJson(Map<String, Object?> json) =>
      _$LeaderboardResultFromJson(json);
}

@freezed
class LeaderboardData with _$LeaderboardData {
  const factory LeaderboardData({
    @JsonKey(name: 'my_rank_details') MyRank? myRankDetails,
    @JsonKey(name: 'rankings') List<Ranking>? rankings,
  }) = _LeaderboardData;

  factory LeaderboardData.fromJson(Map<String, Object?> json) =>
      _$LeaderboardDataFromJson(json);
}

@freezed
class MyRank with _$MyRank {
  const factory MyRank({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'type') LeaderboardType? type,
    @JsonKey(name: 'current_score') int? currentScore,
    @JsonKey(name: 'current_rank') int? currentRank,
    @JsonKey(name: 'previous_score') int? previousScore,
    @JsonKey(name: 'previous_rank') int? previousRank,
  }) = _MyRank;

  factory MyRank.fromJson(Map<String, Object?> json) => _$MyRankFromJson(json);
}

@freezed
class Ranking with _$Ranking {
  const factory Ranking({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'type') LeaderboardType? type,
    @JsonKey(name: 'current_score') int? currentScore,
    @JsonKey(name: 'current_rank') int? currentRank,
    @JsonKey(name: 'previous_score') int? previousScore,
    @JsonKey(name: 'previous_rank') int? previousRank,
    @JsonKey(name: 'student') Student? student,
  }) = _Ranking;

  factory Ranking.fromJson(Map<String, Object?> json) =>
      _$RankingFromJson(json);
}

@freezed
class Student with _$Student {
  const factory Student({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}

@freezed
class LeaderboardMeta with _$LeaderboardMeta {
  const factory LeaderboardMeta({
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_data') int? totalData,
  }) = _LeaderboardMeta;

  factory LeaderboardMeta.fromJson(Map<String, Object?> json) =>
      _$LeaderboardMetaFromJson(json);
}
