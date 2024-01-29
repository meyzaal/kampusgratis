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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Leaderboard {
  MyRank get myRank => throw _privateConstructorUsedError;
  List<Ranking> get rankings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeaderboardCopyWith<Leaderboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardCopyWith<$Res> {
  factory $LeaderboardCopyWith(
          Leaderboard value, $Res Function(Leaderboard) then) =
      _$LeaderboardCopyWithImpl<$Res, Leaderboard>;
  @useResult
  $Res call({MyRank myRank, List<Ranking> rankings});

  $MyRankCopyWith<$Res> get myRank;
}

/// @nodoc
class _$LeaderboardCopyWithImpl<$Res, $Val extends Leaderboard>
    implements $LeaderboardCopyWith<$Res> {
  _$LeaderboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRank = null,
    Object? rankings = null,
  }) {
    return _then(_value.copyWith(
      myRank: null == myRank
          ? _value.myRank
          : myRank // ignore: cast_nullable_to_non_nullable
              as MyRank,
      rankings: null == rankings
          ? _value.rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<Ranking>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyRankCopyWith<$Res> get myRank {
    return $MyRankCopyWith<$Res>(_value.myRank, (value) {
      return _then(_value.copyWith(myRank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaderboardImplCopyWith<$Res>
    implements $LeaderboardCopyWith<$Res> {
  factory _$$LeaderboardImplCopyWith(
          _$LeaderboardImpl value, $Res Function(_$LeaderboardImpl) then) =
      __$$LeaderboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyRank myRank, List<Ranking> rankings});

  @override
  $MyRankCopyWith<$Res> get myRank;
}

/// @nodoc
class __$$LeaderboardImplCopyWithImpl<$Res>
    extends _$LeaderboardCopyWithImpl<$Res, _$LeaderboardImpl>
    implements _$$LeaderboardImplCopyWith<$Res> {
  __$$LeaderboardImplCopyWithImpl(
      _$LeaderboardImpl _value, $Res Function(_$LeaderboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myRank = null,
    Object? rankings = null,
  }) {
    return _then(_$LeaderboardImpl(
      myRank: null == myRank
          ? _value.myRank
          : myRank // ignore: cast_nullable_to_non_nullable
              as MyRank,
      rankings: null == rankings
          ? _value._rankings
          : rankings // ignore: cast_nullable_to_non_nullable
              as List<Ranking>,
    ));
  }
}

/// @nodoc

class _$LeaderboardImpl implements _Leaderboard {
  const _$LeaderboardImpl(
      {required this.myRank, required final List<Ranking> rankings})
      : _rankings = rankings;

  @override
  final MyRank myRank;
  final List<Ranking> _rankings;
  @override
  List<Ranking> get rankings {
    if (_rankings is EqualUnmodifiableListView) return _rankings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rankings);
  }

  @override
  String toString() {
    return 'Leaderboard(myRank: $myRank, rankings: $rankings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardImpl &&
            (identical(other.myRank, myRank) || other.myRank == myRank) &&
            const DeepCollectionEquality().equals(other._rankings, _rankings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, myRank, const DeepCollectionEquality().hash(_rankings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      __$$LeaderboardImplCopyWithImpl<_$LeaderboardImpl>(this, _$identity);
}

abstract class _Leaderboard implements Leaderboard {
  const factory _Leaderboard(
      {required final MyRank myRank,
      required final List<Ranking> rankings}) = _$LeaderboardImpl;

  @override
  MyRank get myRank;
  @override
  List<Ranking> get rankings;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
