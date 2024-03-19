// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Overview {
  String get subjectId => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  String? get moduleId => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewCopyWith<Overview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewCopyWith<$Res> {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) then) =
      _$OverviewCopyWithImpl<$Res, Overview>;
  @useResult
  $Res call(
      {String subjectId,
      int durationSeconds,
      int durationMinutes,
      String? sessionId,
      String? moduleId,
      String? link});
}

/// @nodoc
class _$OverviewCopyWithImpl<$Res, $Val extends Overview>
    implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? durationSeconds = null,
    Object? durationMinutes = null,
    Object? sessionId = freezed,
    Object? moduleId = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      moduleId: freezed == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res>
    implements $OverviewCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
          _$OverviewImpl value, $Res Function(_$OverviewImpl) then) =
      __$$OverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subjectId,
      int durationSeconds,
      int durationMinutes,
      String? sessionId,
      String? moduleId,
      String? link});
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$OverviewCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
      _$OverviewImpl _value, $Res Function(_$OverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? durationSeconds = null,
    Object? durationMinutes = null,
    Object? sessionId = freezed,
    Object? moduleId = freezed,
    Object? link = freezed,
  }) {
    return _then(_$OverviewImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      moduleId: freezed == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OverviewImpl implements _Overview {
  const _$OverviewImpl(
      {required this.subjectId,
      required this.durationSeconds,
      required this.durationMinutes,
      this.sessionId,
      this.moduleId,
      this.link});

  @override
  final String subjectId;
  @override
  final int durationSeconds;
  @override
  final int durationMinutes;
  @override
  final String? sessionId;
  @override
  final String? moduleId;
  @override
  final String? link;

  @override
  String toString() {
    return 'Overview(subjectId: $subjectId, durationSeconds: $durationSeconds, durationMinutes: $durationMinutes, sessionId: $sessionId, moduleId: $moduleId, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, durationSeconds,
      durationMinutes, sessionId, moduleId, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      __$$OverviewImplCopyWithImpl<_$OverviewImpl>(this, _$identity);
}

abstract class _Overview implements Overview {
  const factory _Overview(
      {required final String subjectId,
      required final int durationSeconds,
      required final int durationMinutes,
      final String? sessionId,
      final String? moduleId,
      final String? link}) = _$OverviewImpl;

  @override
  String get subjectId;
  @override
  int get durationSeconds;
  @override
  int get durationMinutes;
  @override
  String? get sessionId;
  @override
  String? get moduleId;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
