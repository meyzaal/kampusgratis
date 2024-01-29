// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Ranking {
  String get id => throw _privateConstructorUsedError; // required String code,
  String get studentId =>
      throw _privateConstructorUsedError; // required LeaderboardType type,
  int get currentScore => throw _privateConstructorUsedError;
  int get currentRank => throw _privateConstructorUsedError;
  int get previousScore => throw _privateConstructorUsedError;
  int get previousRank => throw _privateConstructorUsedError;
  Student get student => throw _privateConstructorUsedError; // local
  RankStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RankingCopyWith<Ranking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingCopyWith<$Res> {
  factory $RankingCopyWith(Ranking value, $Res Function(Ranking) then) =
      _$RankingCopyWithImpl<$Res, Ranking>;
  @useResult
  $Res call(
      {String id,
      String studentId,
      int currentScore,
      int currentRank,
      int previousScore,
      int previousRank,
      Student student,
      RankStatus status});

  $StudentCopyWith<$Res> get student;
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
    Object? id = null,
    Object? studentId = null,
    Object? currentScore = null,
    Object? currentRank = null,
    Object? previousScore = null,
    Object? previousRank = null,
    Object? student = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      currentScore: null == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int,
      currentRank: null == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int,
      previousScore: null == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int,
      previousRank: null == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RankStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
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
      {String id,
      String studentId,
      int currentScore,
      int currentRank,
      int previousScore,
      int previousRank,
      Student student,
      RankStatus status});

  @override
  $StudentCopyWith<$Res> get student;
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
    Object? id = null,
    Object? studentId = null,
    Object? currentScore = null,
    Object? currentRank = null,
    Object? previousScore = null,
    Object? previousRank = null,
    Object? student = null,
    Object? status = null,
  }) {
    return _then(_$RankingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      currentScore: null == currentScore
          ? _value.currentScore
          : currentScore // ignore: cast_nullable_to_non_nullable
              as int,
      currentRank: null == currentRank
          ? _value.currentRank
          : currentRank // ignore: cast_nullable_to_non_nullable
              as int,
      previousScore: null == previousScore
          ? _value.previousScore
          : previousScore // ignore: cast_nullable_to_non_nullable
              as int,
      previousRank: null == previousRank
          ? _value.previousRank
          : previousRank // ignore: cast_nullable_to_non_nullable
              as int,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RankStatus,
    ));
  }
}

/// @nodoc

class _$RankingImpl implements _Ranking {
  const _$RankingImpl(
      {required this.id,
      required this.studentId,
      required this.currentScore,
      required this.currentRank,
      required this.previousScore,
      required this.previousRank,
      required this.student,
      required this.status});

  @override
  final String id;
// required String code,
  @override
  final String studentId;
// required LeaderboardType type,
  @override
  final int currentScore;
  @override
  final int currentRank;
  @override
  final int previousScore;
  @override
  final int previousRank;
  @override
  final Student student;
// local
  @override
  final RankStatus status;

  @override
  String toString() {
    return 'Ranking(id: $id, studentId: $studentId, currentScore: $currentScore, currentRank: $currentRank, previousScore: $previousScore, previousRank: $previousRank, student: $student, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.currentScore, currentScore) ||
                other.currentScore == currentScore) &&
            (identical(other.currentRank, currentRank) ||
                other.currentRank == currentRank) &&
            (identical(other.previousScore, previousScore) ||
                other.previousScore == previousScore) &&
            (identical(other.previousRank, previousRank) ||
                other.previousRank == previousRank) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, studentId, currentScore,
      currentRank, previousScore, previousRank, student, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      __$$RankingImplCopyWithImpl<_$RankingImpl>(this, _$identity);
}

abstract class _Ranking implements Ranking {
  const factory _Ranking(
      {required final String id,
      required final String studentId,
      required final int currentScore,
      required final int currentRank,
      required final int previousScore,
      required final int previousRank,
      required final Student student,
      required final RankStatus status}) = _$RankingImpl;

  @override
  String get id;
  @override // required String code,
  String get studentId;
  @override // required LeaderboardType type,
  int get currentScore;
  @override
  int get currentRank;
  @override
  int get previousScore;
  @override
  int get previousRank;
  @override
  Student get student;
  @override // local
  RankStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$RankingImplCopyWith<_$RankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
