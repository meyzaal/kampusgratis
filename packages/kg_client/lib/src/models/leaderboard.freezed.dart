// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardResult _$LeaderboardResultFromJson(Map<String, dynamic> json) {
  return _LeaderboardResult.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardResult {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  LeaderboardData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  LeaderboardMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardResultCopyWith<LeaderboardResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardResultCopyWith<$Res> {
  factory $LeaderboardResultCopyWith(
          LeaderboardResult value, $Res Function(LeaderboardResult) then) =
      _$LeaderboardResultCopyWithImpl<$Res, LeaderboardResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LeaderboardData? data,
      @JsonKey(name: 'meta') LeaderboardMeta? meta});

  $LeaderboardDataCopyWith<$Res>? get data;
  $LeaderboardMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$LeaderboardResultCopyWithImpl<$Res, $Val extends LeaderboardResult>
    implements $LeaderboardResultCopyWith<$Res> {
  _$LeaderboardResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardData?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LeaderboardMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderboardDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LeaderboardDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderboardMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $LeaderboardMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardResultImplCopyWith<$Res>
    implements $LeaderboardResultCopyWith<$Res> {
  factory _$$LeaderboardResultImplCopyWith(_$LeaderboardResultImpl value,
          $Res Function(_$LeaderboardResultImpl) then) =
      __$$LeaderboardResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') LeaderboardData? data,
      @JsonKey(name: 'meta') LeaderboardMeta? meta});

  @override
  $LeaderboardDataCopyWith<$Res>? get data;
  @override
  $LeaderboardMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$LeaderboardResultImplCopyWithImpl<$Res>
    extends _$LeaderboardResultCopyWithImpl<$Res, _$LeaderboardResultImpl>
    implements _$$LeaderboardResultImplCopyWith<$Res> {
  __$$LeaderboardResultImplCopyWithImpl(_$LeaderboardResultImpl _value,
      $Res Function(_$LeaderboardResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$LeaderboardResultImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LeaderboardData?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LeaderboardMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardResultImpl implements _LeaderboardResult {
  const _$LeaderboardResultImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'meta') this.meta});

  factory _$LeaderboardResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardResultImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final LeaderboardData? data;
  @override
  @JsonKey(name: 'meta')
  final LeaderboardMeta? meta;

  @override
  String toString() {
    return 'LeaderboardResult(code: $code, status: $status, message: $message, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardResultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, status, message, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardResultImplCopyWith<_$LeaderboardResultImpl> get copyWith =>
      __$$LeaderboardResultImplCopyWithImpl<_$LeaderboardResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardResultImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardResult implements LeaderboardResult {
  const factory _LeaderboardResult(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final LeaderboardData? data,
          @JsonKey(name: 'meta') final LeaderboardMeta? meta}) =
      _$LeaderboardResultImpl;

  factory _LeaderboardResult.fromJson(Map<String, dynamic> json) =
      _$LeaderboardResultImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  LeaderboardData? get data;
  @override
  @JsonKey(name: 'meta')
  LeaderboardMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardResultImplCopyWith<_$LeaderboardResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardData _$LeaderboardDataFromJson(Map<String, dynamic> json) {
  return _LeaderboardData.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardData {
  @JsonKey(name: 'my_rank_details')
  MyRank? get myRankDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'rankings')
  List<Ranking>? get rankings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardDataCopyWith<LeaderboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardDataCopyWith<$Res> {
  factory $LeaderboardDataCopyWith(
          LeaderboardData value, $Res Function(LeaderboardData) then) =
      _$LeaderboardDataCopyWithImpl<$Res, LeaderboardData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'my_rank_details') MyRank? myRankDetails,
      @JsonKey(name: 'rankings') List<Ranking>? rankings});

  $MyRankCopyWith<$Res>? get myRankDetails;
}

/// @nodoc
class _$LeaderboardDataCopyWithImpl<$Res, $Val extends LeaderboardData>
    implements $LeaderboardDataCopyWith<$Res> {
  _$LeaderboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRankDetails = freezed,
    Object? rankings = freezed,
  }) {
    return _then(_value.copyWith(
      myRankDetails: freezed == myRankDetails
          ? _value.myRankDetails
          : myRankDetails // ignore: cast_nullable_to_non_nullable
              as MyRank?,
      rankings: freezed == rankings
          ? _value.rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<Ranking>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyRankCopyWith<$Res>? get myRankDetails {
    if (_value.myRankDetails == null) {
      return null;
    }

    return $MyRankCopyWith<$Res>(_value.myRankDetails!, (value) {
      return _then(_value.copyWith(myRankDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardDataImplCopyWith<$Res>
    implements $LeaderboardDataCopyWith<$Res> {
  factory _$$LeaderboardDataImplCopyWith(_$LeaderboardDataImpl value,
          $Res Function(_$LeaderboardDataImpl) then) =
      __$$LeaderboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'my_rank_details') MyRank? myRankDetails,
      @JsonKey(name: 'rankings') List<Ranking>? rankings});

  @override
  $MyRankCopyWith<$Res>? get myRankDetails;
}

/// @nodoc
class __$$LeaderboardDataImplCopyWithImpl<$Res>
    extends _$LeaderboardDataCopyWithImpl<$Res, _$LeaderboardDataImpl>
    implements _$$LeaderboardDataImplCopyWith<$Res> {
  __$$LeaderboardDataImplCopyWithImpl(
      _$LeaderboardDataImpl _value, $Res Function(_$LeaderboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRankDetails = freezed,
    Object? rankings = freezed,
  }) {
    return _then(_$LeaderboardDataImpl(
      myRankDetails: freezed == myRankDetails
          ? _value.myRankDetails
          : myRankDetails // ignore: cast_nullable_to_non_nullable
              as MyRank?,
      rankings: freezed == rankings
          ? _value._rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<Ranking>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardDataImpl implements _LeaderboardData {
  const _$LeaderboardDataImpl(
      {@JsonKey(name: 'my_rank_details') this.myRankDetails,
      @JsonKey(name: 'rankings') final List<Ranking>? rankings})
      : _rankings = rankings;

  factory _$LeaderboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardDataImplFromJson(json);

  @override
  @JsonKey(name: 'my_rank_details')
  final MyRank? myRankDetails;
  final List<Ranking>? _rankings;
  @override
  @JsonKey(name: 'rankings')
  List<Ranking>? get rankings {
    final value = _rankings;
    if (value == null) return null;
    if (_rankings is EqualUnmodifiableListView) return _rankings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeaderboardData(myRankDetails: $myRankDetails, rankings: $rankings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardDataImpl &&
            (identical(other.myRankDetails, myRankDetails) ||
                other.myRankDetails == myRankDetails) &&
            const DeepCollectionEquality().equals(other._rankings, _rankings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myRankDetails,
      const DeepCollectionEquality().hash(_rankings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      __$$LeaderboardDataImplCopyWithImpl<_$LeaderboardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardDataImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardData implements LeaderboardData {
  const factory _LeaderboardData(
          {@JsonKey(name: 'my_rank_details') final MyRank? myRankDetails,
          @JsonKey(name: 'rankings') final List<Ranking>? rankings}) =
      _$LeaderboardDataImpl;

  factory _LeaderboardData.fromJson(Map<String, dynamic> json) =
      _$LeaderboardDataImpl.fromJson;

  @override
  @JsonKey(name: 'my_rank_details')
  MyRank? get myRankDetails;
  @override
  @JsonKey(name: 'rankings')
  List<Ranking>? get rankings;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardDataImplCopyWith<_$LeaderboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyRank _$MyRankFromJson(Map<String, dynamic> json) {
  return _MyRank.fromJson(json);
}

/// @nodoc
mixin _$MyRank {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  LeaderboardType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_score')
  int? get currentScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_rank')
  int? get currentRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_score')
  int? get previousScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_rank')
  int? get previousRank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyRankCopyWith<MyRank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyRankCopyWith<$Res> {
  factory $MyRankCopyWith(MyRank value, $Res Function(MyRank) then) =
      _$MyRankCopyWithImpl<$Res, MyRank>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'type') LeaderboardType? type,
      @JsonKey(name: 'current_score') int? currentScore,
      @JsonKey(name: 'current_rank') int? currentRank,
      @JsonKey(name: 'previous_score') int? previousScore,
      @JsonKey(name: 'previous_rank') int? previousRank});
}

/// @nodoc
class _$MyRankCopyWithImpl<$Res, $Val extends MyRank>
    implements $MyRankCopyWith<$Res> {
  _$MyRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? studentId = freezed,
    Object? type = freezed,
    Object? currentScore = freezed,
    Object? currentRank = freezed,
    Object? previousScore = freezed,
    Object? previousRank = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LeaderboardType?,
      currentScore: freezed == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int?,
      currentRank: freezed == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int?,
      previousScore: freezed == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int?,
      previousRank: freezed == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyRankImplCopyWith<$Res> implements $MyRankCopyWith<$Res> {
  factory _$$MyRankImplCopyWith(
          _$MyRankImpl value, $Res Function(_$MyRankImpl) then) =
      __$$MyRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'type') LeaderboardType? type,
      @JsonKey(name: 'current_score') int? currentScore,
      @JsonKey(name: 'current_rank') int? currentRank,
      @JsonKey(name: 'previous_score') int? previousScore,
      @JsonKey(name: 'previous_rank') int? previousRank});
}

/// @nodoc
class __$$MyRankImplCopyWithImpl<$Res>
    extends _$MyRankCopyWithImpl<$Res, _$MyRankImpl>
    implements _$$MyRankImplCopyWith<$Res> {
  __$$MyRankImplCopyWithImpl(
      _$MyRankImpl _value, $Res Function(_$MyRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? studentId = freezed,
    Object? type = freezed,
    Object? currentScore = freezed,
    Object? currentRank = freezed,
    Object? previousScore = freezed,
    Object? previousRank = freezed,
  }) {
    return _then(_$MyRankImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LeaderboardType?,
      currentScore: freezed == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int?,
      currentRank: freezed == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int?,
      previousScore: freezed == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int?,
      previousRank: freezed == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyRankImpl implements _MyRank {
  const _$MyRankImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'current_score') this.currentScore,
      @JsonKey(name: 'current_rank') this.currentRank,
      @JsonKey(name: 'previous_score') this.previousScore,
      @JsonKey(name: 'previous_rank') this.previousRank});

  factory _$MyRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyRankImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'student_id')
  final String? studentId;
  @override
  @JsonKey(name: 'type')
  final LeaderboardType? type;
  @override
  @JsonKey(name: 'current_score')
  final int? currentScore;
  @override
  @JsonKey(name: 'current_rank')
  final int? currentRank;
  @override
  @JsonKey(name: 'previous_score')
  final int? previousScore;
  @override
  @JsonKey(name: 'previous_rank')
  final int? previousRank;

  @override
  String toString() {
    return 'MyRank(id: $id, code: $code, studentId: $studentId, type: $type, currentScore: $currentScore, currentRank: $currentRank, previousScore: $previousScore, previousRank: $previousRank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyRankImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currentScore, currentScore) ||
                other.currentScore == currentScore) &&
            (identical(other.currentRank, currentRank) ||
                other.currentRank == currentRank) &&
            (identical(other.previousScore, previousScore) ||
                other.previousScore == previousScore) &&
            (identical(other.previousRank, previousRank) ||
                other.previousRank == previousRank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, studentId, type,
      currentScore, currentRank, previousScore, previousRank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyRankImplCopyWith<_$MyRankImpl> get copyWith =>
      __$$MyRankImplCopyWithImpl<_$MyRankImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyRankImplToJson(
      this,
    );
  }
}

abstract class _MyRank implements MyRank {
  const factory _MyRank(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'student_id') final String? studentId,
      @JsonKey(name: 'type') final LeaderboardType? type,
      @JsonKey(name: 'current_score') final int? currentScore,
      @JsonKey(name: 'current_rank') final int? currentRank,
      @JsonKey(name: 'previous_score') final int? previousScore,
      @JsonKey(name: 'previous_rank') final int? previousRank}) = _$MyRankImpl;

  factory _MyRank.fromJson(Map<String, dynamic> json) = _$MyRankImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'student_id')
  String? get studentId;
  @override
  @JsonKey(name: 'type')
  LeaderboardType? get type;
  @override
  @JsonKey(name: 'current_score')
  int? get currentScore;
  @override
  @JsonKey(name: 'current_rank')
  int? get currentRank;
  @override
  @JsonKey(name: 'previous_score')
  int? get previousScore;
  @override
  @JsonKey(name: 'previous_rank')
  int? get previousRank;
  @override
  @JsonKey(ignore: true)
  _$$MyRankImplCopyWith<_$MyRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ranking _$RankingFromJson(Map<String, dynamic> json) {
  return _Ranking.fromJson(json);
}

/// @nodoc
mixin _$Ranking {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  LeaderboardType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_score')
  int? get currentScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_rank')
  int? get currentRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_score')
  int? get previousScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_rank')
  int? get previousRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  Student? get student => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingCopyWith<Ranking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingCopyWith<$Res> {
  factory $RankingCopyWith(Ranking value, $Res Function(Ranking) then) =
      _$RankingCopyWithImpl<$Res, Ranking>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'type') LeaderboardType? type,
      @JsonKey(name: 'current_score') int? currentScore,
      @JsonKey(name: 'current_rank') int? currentRank,
      @JsonKey(name: 'previous_score') int? previousScore,
      @JsonKey(name: 'previous_rank') int? previousRank,
      @JsonKey(name: 'student') Student? student});

  $StudentCopyWith<$Res>? get student;
}

/// @nodoc
class _$RankingCopyWithImpl<$Res, $Val extends Ranking>
    implements $RankingCopyWith<$Res> {
  _$RankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? studentId = freezed,
    Object? type = freezed,
    Object? currentScore = freezed,
    Object? currentRank = freezed,
    Object? previousScore = freezed,
    Object? previousRank = freezed,
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LeaderboardType?,
      currentScore: freezed == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int?,
      currentRank: freezed == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int?,
      previousScore: freezed == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int?,
      previousRank: freezed == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RankingImplCopyWith<$Res> implements $RankingCopyWith<$Res> {
  factory _$$RankingImplCopyWith(
          _$RankingImpl value, $Res Function(_$RankingImpl) then) =
      __$$RankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'student_id') String? studentId,
      @JsonKey(name: 'type') LeaderboardType? type,
      @JsonKey(name: 'current_score') int? currentScore,
      @JsonKey(name: 'current_rank') int? currentRank,
      @JsonKey(name: 'previous_score') int? previousScore,
      @JsonKey(name: 'previous_rank') int? previousRank,
      @JsonKey(name: 'student') Student? student});

  @override
  $StudentCopyWith<$Res>? get student;
}

/// @nodoc
class __$$RankingImplCopyWithImpl<$Res>
    extends _$RankingCopyWithImpl<$Res, _$RankingImpl>
    implements _$$RankingImplCopyWith<$Res> {
  __$$RankingImplCopyWithImpl(
      _$RankingImpl _value, $Res Function(_$RankingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? studentId = freezed,
    Object? type = freezed,
    Object? currentScore = freezed,
    Object? currentRank = freezed,
    Object? previousScore = freezed,
    Object? previousRank = freezed,
    Object? student = freezed,
  }) {
    return _then(_$RankingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LeaderboardType?,
      currentScore: freezed == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int?,
      currentRank: freezed == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int?,
      previousScore: freezed == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int?,
      previousRank: freezed == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingImpl implements _Ranking {
  const _$RankingImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'student_id') this.studentId,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'current_score') this.currentScore,
      @JsonKey(name: 'current_rank') this.currentRank,
      @JsonKey(name: 'previous_score') this.previousScore,
      @JsonKey(name: 'previous_rank') this.previousRank,
      @JsonKey(name: 'student') this.student});

  factory _$RankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'student_id')
  final String? studentId;
  @override
  @JsonKey(name: 'type')
  final LeaderboardType? type;
  @override
  @JsonKey(name: 'current_score')
  final int? currentScore;
  @override
  @JsonKey(name: 'current_rank')
  final int? currentRank;
  @override
  @JsonKey(name: 'previous_score')
  final int? previousScore;
  @override
  @JsonKey(name: 'previous_rank')
  final int? previousRank;
  @override
  @JsonKey(name: 'student')
  final Student? student;

  @override
  String toString() {
    return 'Ranking(id: $id, code: $code, studentId: $studentId, type: $type, currentScore: $currentScore, currentRank: $currentRank, previousScore: $previousScore, previousRank: $previousRank, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currentScore, currentScore) ||
                other.currentScore == currentScore) &&
            (identical(other.currentRank, currentRank) ||
                other.currentRank == currentRank) &&
            (identical(other.previousScore, previousScore) ||
                other.previousScore == previousScore) &&
            (identical(other.previousRank, previousRank) ||
                other.previousRank == previousRank) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, studentId, type,
      currentScore, currentRank, previousScore, previousRank, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      __$$RankingImplCopyWithImpl<_$RankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingImplToJson(
      this,
    );
  }
}

abstract class _Ranking implements Ranking {
  const factory _Ranking(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'student_id') final String? studentId,
      @JsonKey(name: 'type') final LeaderboardType? type,
      @JsonKey(name: 'current_score') final int? currentScore,
      @JsonKey(name: 'current_rank') final int? currentRank,
      @JsonKey(name: 'previous_score') final int? previousScore,
      @JsonKey(name: 'previous_rank') final int? previousRank,
      @JsonKey(name: 'student') final Student? student}) = _$RankingImpl;

  factory _Ranking.fromJson(Map<String, dynamic> json) = _$RankingImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'student_id')
  String? get studentId;
  @override
  @JsonKey(name: 'type')
  LeaderboardType? get type;
  @override
  @JsonKey(name: 'current_score')
  int? get currentScore;
  @override
  @JsonKey(name: 'current_rank')
  int? get currentRank;
  @override
  @JsonKey(name: 'previous_score')
  int? get previousScore;
  @override
  @JsonKey(name: 'previous_rank')
  int? get previousRank;
  @override
  @JsonKey(name: 'student')
  Student? get student;
  @override
  @JsonKey(ignore: true)
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_$StudentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  const _$StudentImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'avatar') this.avatar});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'Student(id: $id, fullName: $fullName, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  const factory _Student(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'avatar') final String? avatar}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardMeta _$LeaderboardMetaFromJson(Map<String, dynamic> json) {
  return _LeaderboardMeta.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardMeta {
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_data')
  int? get totalData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardMetaCopyWith<LeaderboardMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardMetaCopyWith<$Res> {
  factory $LeaderboardMetaCopyWith(
          LeaderboardMeta value, $Res Function(LeaderboardMeta) then) =
      _$LeaderboardMetaCopyWithImpl<$Res, LeaderboardMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'limit') int? limit,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData});
}

/// @nodoc
class _$LeaderboardMetaCopyWithImpl<$Res, $Val extends LeaderboardMeta>
    implements $LeaderboardMetaCopyWith<$Res> {
  _$LeaderboardMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardMetaImplCopyWith<$Res>
    implements $LeaderboardMetaCopyWith<$Res> {
  factory _$$LeaderboardMetaImplCopyWith(_$LeaderboardMetaImpl value,
          $Res Function(_$LeaderboardMetaImpl) then) =
      __$$LeaderboardMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'limit') int? limit,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData});
}

/// @nodoc
class __$$LeaderboardMetaImplCopyWithImpl<$Res>
    extends _$LeaderboardMetaCopyWithImpl<$Res, _$LeaderboardMetaImpl>
    implements _$$LeaderboardMetaImplCopyWith<$Res> {
  __$$LeaderboardMetaImplCopyWithImpl(
      _$LeaderboardMetaImpl _value, $Res Function(_$LeaderboardMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
  }) {
    return _then(_$LeaderboardMetaImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardMetaImpl implements _LeaderboardMeta {
  const _$LeaderboardMetaImpl(
      {@JsonKey(name: 'page') this.page,
      @JsonKey(name: 'limit') this.limit,
      @JsonKey(name: 'page_size') this.pageSize,
      @JsonKey(name: 'total_data') this.totalData});

  factory _$LeaderboardMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardMetaImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'limit')
  final int? limit;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  @JsonKey(name: 'total_data')
  final int? totalData;

  @override
  String toString() {
    return 'LeaderboardMeta(page: $page, limit: $limit, pageSize: $pageSize, totalData: $totalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardMetaImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, limit, pageSize, totalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardMetaImplCopyWith<_$LeaderboardMetaImpl> get copyWith =>
      __$$LeaderboardMetaImplCopyWithImpl<_$LeaderboardMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardMetaImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardMeta implements LeaderboardMeta {
  const factory _LeaderboardMeta(
          {@JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'limit') final int? limit,
          @JsonKey(name: 'page_size') final int? pageSize,
          @JsonKey(name: 'total_data') final int? totalData}) =
      _$LeaderboardMetaImpl;

  factory _LeaderboardMeta.fromJson(Map<String, dynamic> json) =
      _$LeaderboardMetaImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'limit')
  int? get limit;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  @JsonKey(name: 'total_data')
  int? get totalData;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardMetaImplCopyWith<_$LeaderboardMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
