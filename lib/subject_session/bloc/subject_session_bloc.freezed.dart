// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubjectSessionEvent {
  String get subjectId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subjectId) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubjectSessionFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubjectSessionFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubjectSessionFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectSessionEventCopyWith<SubjectSessionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectSessionEventCopyWith<$Res> {
  factory $SubjectSessionEventCopyWith(
          SubjectSessionEvent value, $Res Function(SubjectSessionEvent) then) =
      _$SubjectSessionEventCopyWithImpl<$Res, SubjectSessionEvent>;
  @useResult
  $Res call({String subjectId});
}

/// @nodoc
class _$SubjectSessionEventCopyWithImpl<$Res, $Val extends SubjectSessionEvent>
    implements $SubjectSessionEventCopyWith<$Res> {
  _$SubjectSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectSessionFetchedImplCopyWith<$Res>
    implements $SubjectSessionEventCopyWith<$Res> {
  factory _$$SubjectSessionFetchedImplCopyWith(
          _$SubjectSessionFetchedImpl value,
          $Res Function(_$SubjectSessionFetchedImpl) then) =
      __$$SubjectSessionFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subjectId});
}

/// @nodoc
class __$$SubjectSessionFetchedImplCopyWithImpl<$Res>
    extends _$SubjectSessionEventCopyWithImpl<$Res, _$SubjectSessionFetchedImpl>
    implements _$$SubjectSessionFetchedImplCopyWith<$Res> {
  __$$SubjectSessionFetchedImplCopyWithImpl(_$SubjectSessionFetchedImpl _value,
      $Res Function(_$SubjectSessionFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
  }) {
    return _then(_$SubjectSessionFetchedImpl(
      null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubjectSessionFetchedImpl implements SubjectSessionFetched {
  const _$SubjectSessionFetchedImpl(this.subjectId);

  @override
  final String subjectId;

  @override
  String toString() {
    return 'SubjectSessionEvent.fetched(subjectId: $subjectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectSessionFetchedImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectSessionFetchedImplCopyWith<_$SubjectSessionFetchedImpl>
      get copyWith => __$$SubjectSessionFetchedImplCopyWithImpl<
          _$SubjectSessionFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subjectId) fetched,
  }) {
    return fetched(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId)? fetched,
  }) {
    return fetched?.call(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubjectSessionFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubjectSessionFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubjectSessionFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class SubjectSessionFetched implements SubjectSessionEvent {
  const factory SubjectSessionFetched(final String subjectId) =
      _$SubjectSessionFetchedImpl;

  @override
  String get subjectId;
  @override
  @JsonKey(ignore: true)
  _$$SubjectSessionFetchedImplCopyWith<_$SubjectSessionFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubjectSessionState {
  SubjectSessionStatus get status => throw _privateConstructorUsedError;
  bool get updated => throw _privateConstructorUsedError;
  SubjectSession? get data => throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  String? get subjectName => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectSessionStateCopyWith<SubjectSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectSessionStateCopyWith<$Res> {
  factory $SubjectSessionStateCopyWith(
          SubjectSessionState value, $Res Function(SubjectSessionState) then) =
      _$SubjectSessionStateCopyWithImpl<$Res, SubjectSessionState>;
  @useResult
  $Res call(
      {SubjectSessionStatus status,
      bool updated,
      SubjectSession? data,
      String? subjectId,
      String? subjectName,
      String? message});

  $SubjectSessionCopyWith<$Res>? get data;
}

/// @nodoc
class _$SubjectSessionStateCopyWithImpl<$Res, $Val extends SubjectSessionState>
    implements $SubjectSessionStateCopyWith<$Res> {
  _$SubjectSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updated = null,
    Object? data = freezed,
    Object? subjectId = freezed,
    Object? subjectName = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubjectSessionStatus,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectSession?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectSessionCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SubjectSessionCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectSessionStateImplCopyWith<$Res>
    implements $SubjectSessionStateCopyWith<$Res> {
  factory _$$SubjectSessionStateImplCopyWith(_$SubjectSessionStateImpl value,
          $Res Function(_$SubjectSessionStateImpl) then) =
      __$$SubjectSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubjectSessionStatus status,
      bool updated,
      SubjectSession? data,
      String? subjectId,
      String? subjectName,
      String? message});

  @override
  $SubjectSessionCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SubjectSessionStateImplCopyWithImpl<$Res>
    extends _$SubjectSessionStateCopyWithImpl<$Res, _$SubjectSessionStateImpl>
    implements _$$SubjectSessionStateImplCopyWith<$Res> {
  __$$SubjectSessionStateImplCopyWithImpl(_$SubjectSessionStateImpl _value,
      $Res Function(_$SubjectSessionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updated = null,
    Object? data = freezed,
    Object? subjectId = freezed,
    Object? subjectName = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SubjectSessionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubjectSessionStatus,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectSession?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubjectSessionStateImpl implements _SubjectSessionState {
  const _$SubjectSessionStateImpl(
      {required this.status,
      required this.updated,
      this.data,
      this.subjectId,
      this.subjectName,
      this.message});

  @override
  final SubjectSessionStatus status;
  @override
  final bool updated;
  @override
  final SubjectSession? data;
  @override
  final String? subjectId;
  @override
  final String? subjectName;
  @override
  final String? message;

  @override
  String toString() {
    return 'SubjectSessionState(status: $status, updated: $updated, data: $data, subjectId: $subjectId, subjectName: $subjectName, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectSessionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, updated, data, subjectId, subjectName, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectSessionStateImplCopyWith<_$SubjectSessionStateImpl> get copyWith =>
      __$$SubjectSessionStateImplCopyWithImpl<_$SubjectSessionStateImpl>(
          this, _$identity);
}

abstract class _SubjectSessionState implements SubjectSessionState {
  const factory _SubjectSessionState(
      {required final SubjectSessionStatus status,
      required final bool updated,
      final SubjectSession? data,
      final String? subjectId,
      final String? subjectName,
      final String? message}) = _$SubjectSessionStateImpl;

  @override
  SubjectSessionStatus get status;
  @override
  bool get updated;
  @override
  SubjectSession? get data;
  @override
  String? get subjectId;
  @override
  String? get subjectName;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SubjectSessionStateImplCopyWith<_$SubjectSessionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
