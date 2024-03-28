// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Detail {
  String get subjectId => throw _privateConstructorUsedError;
  String get subjectName => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  int get sessionNo => throw _privateConstructorUsedError;
  SessionType get sessionType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {String subjectId,
      String subjectName,
      String sessionId,
      int sessionNo,
      SessionType sessionType});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? sessionId = null,
    Object? sessionNo = null,
    Object? sessionType = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionNo: null == sessionNo
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int,
      sessionType: null == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as SessionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subjectId,
      String subjectName,
      String sessionId,
      int sessionNo,
      SessionType sessionType});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? subjectName = null,
    Object? sessionId = null,
    Object? sessionNo = null,
    Object? sessionType = null,
  }) {
    return _then(_$DetailImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionNo: null == sessionNo
          ? _value.sessionNo
          : sessionNo // ignore: cast_nullable_to_non_nullable
              as int,
      sessionType: null == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as SessionType,
    ));
  }
}

/// @nodoc

class _$DetailImpl implements _Detail {
  _$DetailImpl(
      {required this.subjectId,
      required this.subjectName,
      required this.sessionId,
      required this.sessionNo,
      required this.sessionType});

  @override
  final String subjectId;
  @override
  final String subjectName;
  @override
  final String sessionId;
  @override
  final int sessionNo;
  @override
  final SessionType sessionType;

  @override
  String toString() {
    return 'Detail(subjectId: $subjectId, subjectName: $subjectName, sessionId: $sessionId, sessionNo: $sessionNo, sessionType: $sessionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.sessionNo, sessionNo) ||
                other.sessionNo == sessionNo) &&
            (identical(other.sessionType, sessionType) ||
                other.sessionType == sessionType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, subjectId, subjectName, sessionId, sessionNo, sessionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);
}

abstract class _Detail implements Detail {
  factory _Detail(
      {required final String subjectId,
      required final String subjectName,
      required final String sessionId,
      required final int sessionNo,
      required final SessionType sessionType}) = _$DetailImpl;

  @override
  String get subjectId;
  @override
  String get subjectName;
  @override
  String get sessionId;
  @override
  int get sessionNo;
  @override
  SessionType get sessionType;
  @override
  @JsonKey(ignore: true)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
