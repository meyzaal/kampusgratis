// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enroll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Enroll {
  Status get pending => throw _privateConstructorUsedError;
  Status get ongoing => throw _privateConstructorUsedError;
  Status get draft => throw _privateConstructorUsedError;
  Status get rejected => throw _privateConstructorUsedError;
  int? get totalPlanCredit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnrollCopyWith<Enroll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollCopyWith<$Res> {
  factory $EnrollCopyWith(Enroll value, $Res Function(Enroll) then) =
      _$EnrollCopyWithImpl<$Res, Enroll>;
  @useResult
  $Res call(
      {Status pending,
      Status ongoing,
      Status draft,
      Status rejected,
      int? totalPlanCredit});

  $StatusCopyWith<$Res> get pending;
  $StatusCopyWith<$Res> get ongoing;
  $StatusCopyWith<$Res> get draft;
  $StatusCopyWith<$Res> get rejected;
}

/// @nodoc
class _$EnrollCopyWithImpl<$Res, $Val extends Enroll>
    implements $EnrollCopyWith<$Res> {
  _$EnrollCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = null,
    Object? ongoing = null,
    Object? draft = null,
    Object? rejected = null,
    Object? totalPlanCredit = freezed,
  }) {
    return _then(_value.copyWith(
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Status,
      ongoing: null == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as Status,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as Status,
      rejected: null == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as Status,
      totalPlanCredit: freezed == totalPlanCredit
          ? _value.totalPlanCredit
          : totalPlanCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get pending {
    return $StatusCopyWith<$Res>(_value.pending, (value) {
      return _then(_value.copyWith(pending: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get ongoing {
    return $StatusCopyWith<$Res>(_value.ongoing, (value) {
      return _then(_value.copyWith(ongoing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get draft {
    return $StatusCopyWith<$Res>(_value.draft, (value) {
      return _then(_value.copyWith(draft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get rejected {
    return $StatusCopyWith<$Res>(_value.rejected, (value) {
      return _then(_value.copyWith(rejected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnrollImplCopyWith<$Res> implements $EnrollCopyWith<$Res> {
  factory _$$EnrollImplCopyWith(
          _$EnrollImpl value, $Res Function(_$EnrollImpl) then) =
      __$$EnrollImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status pending,
      Status ongoing,
      Status draft,
      Status rejected,
      int? totalPlanCredit});

  @override
  $StatusCopyWith<$Res> get pending;
  @override
  $StatusCopyWith<$Res> get ongoing;
  @override
  $StatusCopyWith<$Res> get draft;
  @override
  $StatusCopyWith<$Res> get rejected;
}

/// @nodoc
class __$$EnrollImplCopyWithImpl<$Res>
    extends _$EnrollCopyWithImpl<$Res, _$EnrollImpl>
    implements _$$EnrollImplCopyWith<$Res> {
  __$$EnrollImplCopyWithImpl(
      _$EnrollImpl _value, $Res Function(_$EnrollImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = null,
    Object? ongoing = null,
    Object? draft = null,
    Object? rejected = null,
    Object? totalPlanCredit = freezed,
  }) {
    return _then(_$EnrollImpl(
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Status,
      ongoing: null == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as Status,
      draft: null == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as Status,
      rejected: null == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as Status,
      totalPlanCredit: freezed == totalPlanCredit
          ? _value.totalPlanCredit
          : totalPlanCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$EnrollImpl implements _Enroll {
  const _$EnrollImpl(
      {required this.pending,
      required this.ongoing,
      required this.draft,
      required this.rejected,
      required this.totalPlanCredit});

  @override
  final Status pending;
  @override
  final Status ongoing;
  @override
  final Status draft;
  @override
  final Status rejected;
  @override
  final int? totalPlanCredit;

  @override
  String toString() {
    return 'Enroll(pending: $pending, ongoing: $ongoing, draft: $draft, rejected: $rejected, totalPlanCredit: $totalPlanCredit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollImpl &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.ongoing, ongoing) || other.ongoing == ongoing) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected) &&
            (identical(other.totalPlanCredit, totalPlanCredit) ||
                other.totalPlanCredit == totalPlanCredit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pending, ongoing, draft, rejected, totalPlanCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollImplCopyWith<_$EnrollImpl> get copyWith =>
      __$$EnrollImplCopyWithImpl<_$EnrollImpl>(this, _$identity);
}

abstract class _Enroll implements Enroll {
  const factory _Enroll(
      {required final Status pending,
      required final Status ongoing,
      required final Status draft,
      required final Status rejected,
      required final int? totalPlanCredit}) = _$EnrollImpl;

  @override
  Status get pending;
  @override
  Status get ongoing;
  @override
  Status get draft;
  @override
  Status get rejected;
  @override
  int? get totalPlanCredit;
  @override
  @JsonKey(ignore: true)
  _$$EnrollImplCopyWith<_$EnrollImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
