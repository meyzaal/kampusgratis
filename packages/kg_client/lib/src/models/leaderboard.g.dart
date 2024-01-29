// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardResultImpl _$$LeaderboardResultImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardResultImpl(
      code: json['code'] as int?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : LeaderboardData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : LeaderboardMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeaderboardResultImplToJson(
        _$LeaderboardResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'meta': instance.meta,
    };

_$LeaderboardDataImpl _$$LeaderboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardDataImpl(
      myRankDetails: json['my_rank_details'] == null
          ? null
          : MyRank.fromJson(json['my_rank_details'] as Map<String, dynamic>),
      rankings: (json['rankings'] as List<dynamic>?)
          ?.map((e) => Ranking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LeaderboardDataImplToJson(
        _$LeaderboardDataImpl instance) =>
    <String, dynamic>{
      'my_rank_details': instance.myRankDetails,
      'rankings': instance.rankings,
    };

_$MyRankImpl _$$MyRankImplFromJson(Map<String, dynamic> json) => _$MyRankImpl(
      id: json['id'] as String?,
      code: json['code'] as String?,
      studentId: json['student_id'] as String?,
      type: $enumDecodeNullable(_$LeaderboardTypeEnumMap, json['type']),
      currentScore: json['current_score'] as int?,
      currentRank: json['current_rank'] as int?,
      previousScore: json['previous_score'] as int?,
      previousRank: json['previous_rank'] as int?,
    );

Map<String, dynamic> _$$MyRankImplToJson(_$MyRankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'student_id': instance.studentId,
      'type': _$LeaderboardTypeEnumMap[instance.type],
      'current_score': instance.currentScore,
      'current_rank': instance.currentRank,
      'previous_score': instance.previousScore,
      'previous_rank': instance.previousRank,
    };

const _$LeaderboardTypeEnumMap = {
  LeaderboardType.highestScore: 'HIGHEST_SCORE',
  LeaderboardType.mostActive: 'MOST-ACTIVE',
  LeaderboardType.fastest: 'FASTEST',
};

_$RankingImpl _$$RankingImplFromJson(Map<String, dynamic> json) =>
    _$RankingImpl(
      id: json['id'] as String?,
      code: json['code'] as String?,
      studentId: json['student_id'] as String?,
      type: $enumDecodeNullable(_$LeaderboardTypeEnumMap, json['type']),
      currentScore: json['current_score'] as int?,
      currentRank: json['current_rank'] as int?,
      previousScore: json['previous_score'] as int?,
      previousRank: json['previous_rank'] as int?,
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RankingImplToJson(_$RankingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'student_id': instance.studentId,
      'type': _$LeaderboardTypeEnumMap[instance.type],
      'current_score': instance.currentScore,
      'current_rank': instance.currentRank,
      'previous_score': instance.previousScore,
      'previous_rank': instance.previousRank,
      'student': instance.student,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'avatar': instance.avatar,
    };

_$LeaderboardMetaImpl _$$LeaderboardMetaImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardMetaImpl(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      pageSize: json['page_size'] as int?,
      totalData: json['total_data'] as int?,
    );

Map<String, dynamic> _$$LeaderboardMetaImplToJson(
        _$LeaderboardMetaImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'page_size': instance.pageSize,
      'total_data': instance.totalData,
    };
