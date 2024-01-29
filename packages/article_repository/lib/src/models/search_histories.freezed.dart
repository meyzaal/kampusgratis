// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_histories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchHistories {
  List<History> get histories => throw _privateConstructorUsedError;
  HistoryMeta get meta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHistoriesCopyWith<SearchHistories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoriesCopyWith<$Res> {
  factory $SearchHistoriesCopyWith(
          SearchHistories value, $Res Function(SearchHistories) then) =
      _$SearchHistoriesCopyWithImpl<$Res, SearchHistories>;
  @useResult
  $Res call({List<History> histories, HistoryMeta meta});

  $HistoryMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$SearchHistoriesCopyWithImpl<$Res, $Val extends SearchHistories>
    implements $SearchHistoriesCopyWith<$Res> {
  _$SearchHistoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as HistoryMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryMetaCopyWith<$Res> get meta {
    return $HistoryMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchHistoriesImplCopyWith<$Res>
    implements $SearchHistoriesCopyWith<$Res> {
  factory _$$SearchHistoriesImplCopyWith(_$SearchHistoriesImpl value,
          $Res Function(_$SearchHistoriesImpl) then) =
      __$$SearchHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<History> histories, HistoryMeta meta});

  @override
  $HistoryMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$SearchHistoriesImplCopyWithImpl<$Res>
    extends _$SearchHistoriesCopyWithImpl<$Res, _$SearchHistoriesImpl>
    implements _$$SearchHistoriesImplCopyWith<$Res> {
  __$$SearchHistoriesImplCopyWithImpl(
      _$SearchHistoriesImpl _value, $Res Function(_$SearchHistoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
    Object? meta = null,
  }) {
    return _then(_$SearchHistoriesImpl(
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as HistoryMeta,
    ));
  }
}

/// @nodoc

class _$SearchHistoriesImpl implements _SearchHistories {
  const _$SearchHistoriesImpl(
      {required final List<History> histories, required this.meta})
      : _histories = histories;

  final List<History> _histories;
  @override
  List<History> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  final HistoryMeta meta;

  @override
  String toString() {
    return 'SearchHistories(histories: $histories, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoriesImpl &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_histories), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoriesImplCopyWith<_$SearchHistoriesImpl> get copyWith =>
      __$$SearchHistoriesImplCopyWithImpl<_$SearchHistoriesImpl>(
          this, _$identity);
}

abstract class _SearchHistories implements SearchHistories {
  const factory _SearchHistories(
      {required final List<History> histories,
      required final HistoryMeta meta}) = _$SearchHistoriesImpl;

  @override
  List<History> get histories;
  @override
  HistoryMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoriesImplCopyWith<_$SearchHistoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
