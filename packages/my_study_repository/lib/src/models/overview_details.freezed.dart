// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OverviewDetails {
  Detail get detail => throw _privateConstructorUsedError;
  DetailOverview get overview => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewDetailsCopyWith<OverviewDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewDetailsCopyWith<$Res> {
  factory $OverviewDetailsCopyWith(
          OverviewDetails value, $Res Function(OverviewDetails) then) =
      _$OverviewDetailsCopyWithImpl<$Res, OverviewDetails>;
  @useResult
  $Res call({Detail detail, DetailOverview overview});

  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$OverviewDetailsCopyWithImpl<$Res, $Val extends OverviewDetails>
    implements $OverviewDetailsCopyWith<$Res> {
  _$OverviewDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as DetailOverview,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OverviewDetailsImplCopyWith<$Res>
    implements $OverviewDetailsCopyWith<$Res> {
  factory _$$OverviewDetailsImplCopyWith(_$OverviewDetailsImpl value,
          $Res Function(_$OverviewDetailsImpl) then) =
      __$$OverviewDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Detail detail, DetailOverview overview});

  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$OverviewDetailsImplCopyWithImpl<$Res>
    extends _$OverviewDetailsCopyWithImpl<$Res, _$OverviewDetailsImpl>
    implements _$$OverviewDetailsImplCopyWith<$Res> {
  __$$OverviewDetailsImplCopyWithImpl(
      _$OverviewDetailsImpl _value, $Res Function(_$OverviewDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? overview = freezed,
  }) {
    return _then(_$OverviewDetailsImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as DetailOverview,
    ));
  }
}

/// @nodoc

class _$OverviewDetailsImpl implements _OverviewDetails {
  const _$OverviewDetailsImpl({required this.detail, required this.overview});

  @override
  final Detail detail;
  @override
  final DetailOverview overview;

  @override
  String toString() {
    return 'OverviewDetails(detail: $detail, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewDetailsImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detail, const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewDetailsImplCopyWith<_$OverviewDetailsImpl> get copyWith =>
      __$$OverviewDetailsImplCopyWithImpl<_$OverviewDetailsImpl>(
          this, _$identity);
}

abstract class _OverviewDetails implements OverviewDetails {
  const factory _OverviewDetails(
      {required final Detail detail,
      required final DetailOverview overview}) = _$OverviewDetailsImpl;

  @override
  Detail get detail;
  @override
  DetailOverview get overview;
  @override
  @JsonKey(ignore: true)
  _$$OverviewDetailsImplCopyWith<_$OverviewDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
