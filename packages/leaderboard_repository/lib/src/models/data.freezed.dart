// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Data {
  Leaderboard get leaderboard => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({Leaderboard leaderboard, Meta meta});

  $LeaderboardCopyWith<$Res> get leaderboard;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboard = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      leaderboard: null == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as Leaderboard,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderboardCopyWith<$Res> get leaderboard {
    return $LeaderboardCopyWith<$Res>(_value.leaderboard, (value) {
      return _then(_value.copyWith(leaderboard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Leaderboard leaderboard, Meta meta});

  @override
  $LeaderboardCopyWith<$Res> get leaderboard;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboard = null,
    Object? meta = null,
  }) {
    return _then(_$DataImpl(
      leaderboard: null == leaderboard
          ? _value.leaderboard
          : leaderboard // ignore: cast_nullable_to_non_nullable
              as Leaderboard,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl({required this.leaderboard, required this.meta});

  @override
  final Leaderboard leaderboard;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'Data(leaderboard: $leaderboard, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.leaderboard, leaderboard) ||
                other.leaderboard == leaderboard) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaderboard, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);
}

abstract class _Data implements Data {
  const factory _Data(
      {required final Leaderboard leaderboard,
      required final Meta meta}) = _$DataImpl;

  @override
  Leaderboard get leaderboard;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
