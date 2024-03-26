// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionOverviewEvent {
  String get subjectId => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  String get moduleId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String subjectId, String sessionId, String moduleId)
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId, String sessionId, String moduleId)?
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, String sessionId, String moduleId)?
        fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionOverviewEventCopyWith<SessionOverviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOverviewEventCopyWith<$Res> {
  factory $SessionOverviewEventCopyWith(SessionOverviewEvent value,
          $Res Function(SessionOverviewEvent) then) =
      _$SessionOverviewEventCopyWithImpl<$Res, SessionOverviewEvent>;
  @useResult
  $Res call({String subjectId, String sessionId, String moduleId});
}

/// @nodoc
class _$SessionOverviewEventCopyWithImpl<$Res,
        $Val extends SessionOverviewEvent>
    implements $SessionOverviewEventCopyWith<$Res> {
  _$SessionOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? sessionId = null,
    Object? moduleId = null,
  }) {
    return _then(_value.copyWith(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionOverviewFetchedImplCopyWith<$Res>
    implements $SessionOverviewEventCopyWith<$Res> {
  factory _$$SessionOverviewFetchedImplCopyWith(
          _$SessionOverviewFetchedImpl value,
          $Res Function(_$SessionOverviewFetchedImpl) then) =
      __$$SessionOverviewFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subjectId, String sessionId, String moduleId});
}

/// @nodoc
class __$$SessionOverviewFetchedImplCopyWithImpl<$Res>
    extends _$SessionOverviewEventCopyWithImpl<$Res,
        _$SessionOverviewFetchedImpl>
    implements _$$SessionOverviewFetchedImplCopyWith<$Res> {
  __$$SessionOverviewFetchedImplCopyWithImpl(
      _$SessionOverviewFetchedImpl _value,
      $Res Function(_$SessionOverviewFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? sessionId = null,
    Object? moduleId = null,
  }) {
    return _then(_$SessionOverviewFetchedImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionOverviewFetchedImpl implements SessionOverviewFetched {
  const _$SessionOverviewFetchedImpl(
      {required this.subjectId,
      required this.sessionId,
      required this.moduleId});

  @override
  final String subjectId;
  @override
  final String sessionId;
  @override
  final String moduleId;

  @override
  String toString() {
    return 'SessionOverviewEvent.fetched(subjectId: $subjectId, sessionId: $sessionId, moduleId: $moduleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewFetchedImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, sessionId, moduleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionOverviewFetchedImplCopyWith<_$SessionOverviewFetchedImpl>
      get copyWith => __$$SessionOverviewFetchedImplCopyWithImpl<
          _$SessionOverviewFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String subjectId, String sessionId, String moduleId)
        fetched,
  }) {
    return fetched(subjectId, sessionId, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId, String sessionId, String moduleId)?
        fetched,
  }) {
    return fetched?.call(subjectId, sessionId, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, String sessionId, String moduleId)?
        fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(subjectId, sessionId, moduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class SessionOverviewFetched implements SessionOverviewEvent {
  const factory SessionOverviewFetched(
      {required final String subjectId,
      required final String sessionId,
      required final String moduleId}) = _$SessionOverviewFetchedImpl;

  @override
  String get subjectId;
  @override
  String get sessionId;
  @override
  String get moduleId;
  @override
  @JsonKey(ignore: true)
  _$$SessionOverviewFetchedImplCopyWith<_$SessionOverviewFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionOverviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(OverviewDetails data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(OverviewDetails data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(OverviewDetails data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewInitialState value) initial,
    required TResult Function(SessionOverviewLoadingState value) loading,
    required TResult Function(SessionOverviewFailureState value) failure,
    required TResult Function(SessionOverviewSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewInitialState value)? initial,
    TResult? Function(SessionOverviewLoadingState value)? loading,
    TResult? Function(SessionOverviewFailureState value)? failure,
    TResult? Function(SessionOverviewSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewInitialState value)? initial,
    TResult Function(SessionOverviewLoadingState value)? loading,
    TResult Function(SessionOverviewFailureState value)? failure,
    TResult Function(SessionOverviewSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionOverviewStateCopyWith<$Res> {
  factory $SessionOverviewStateCopyWith(SessionOverviewState value,
          $Res Function(SessionOverviewState) then) =
      _$SessionOverviewStateCopyWithImpl<$Res, SessionOverviewState>;
}

/// @nodoc
class _$SessionOverviewStateCopyWithImpl<$Res,
        $Val extends SessionOverviewState>
    implements $SessionOverviewStateCopyWith<$Res> {
  _$SessionOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionOverviewInitialStateImplCopyWith<$Res> {
  factory _$$SessionOverviewInitialStateImplCopyWith(
          _$SessionOverviewInitialStateImpl value,
          $Res Function(_$SessionOverviewInitialStateImpl) then) =
      __$$SessionOverviewInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionOverviewInitialStateImplCopyWithImpl<$Res>
    extends _$SessionOverviewStateCopyWithImpl<$Res,
        _$SessionOverviewInitialStateImpl>
    implements _$$SessionOverviewInitialStateImplCopyWith<$Res> {
  __$$SessionOverviewInitialStateImplCopyWithImpl(
      _$SessionOverviewInitialStateImpl _value,
      $Res Function(_$SessionOverviewInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionOverviewInitialStateImpl implements SessionOverviewInitialState {
  const _$SessionOverviewInitialStateImpl();

  @override
  String toString() {
    return 'SessionOverviewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(OverviewDetails data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(OverviewDetails data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(OverviewDetails data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewInitialState value) initial,
    required TResult Function(SessionOverviewLoadingState value) loading,
    required TResult Function(SessionOverviewFailureState value) failure,
    required TResult Function(SessionOverviewSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewInitialState value)? initial,
    TResult? Function(SessionOverviewLoadingState value)? loading,
    TResult? Function(SessionOverviewFailureState value)? failure,
    TResult? Function(SessionOverviewSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewInitialState value)? initial,
    TResult Function(SessionOverviewLoadingState value)? loading,
    TResult Function(SessionOverviewFailureState value)? failure,
    TResult Function(SessionOverviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SessionOverviewInitialState implements SessionOverviewState {
  const factory SessionOverviewInitialState() =
      _$SessionOverviewInitialStateImpl;
}

/// @nodoc
abstract class _$$SessionOverviewLoadingStateImplCopyWith<$Res> {
  factory _$$SessionOverviewLoadingStateImplCopyWith(
          _$SessionOverviewLoadingStateImpl value,
          $Res Function(_$SessionOverviewLoadingStateImpl) then) =
      __$$SessionOverviewLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionOverviewLoadingStateImplCopyWithImpl<$Res>
    extends _$SessionOverviewStateCopyWithImpl<$Res,
        _$SessionOverviewLoadingStateImpl>
    implements _$$SessionOverviewLoadingStateImplCopyWith<$Res> {
  __$$SessionOverviewLoadingStateImplCopyWithImpl(
      _$SessionOverviewLoadingStateImpl _value,
      $Res Function(_$SessionOverviewLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionOverviewLoadingStateImpl implements SessionOverviewLoadingState {
  const _$SessionOverviewLoadingStateImpl();

  @override
  String toString() {
    return 'SessionOverviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(OverviewDetails data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(OverviewDetails data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(OverviewDetails data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewInitialState value) initial,
    required TResult Function(SessionOverviewLoadingState value) loading,
    required TResult Function(SessionOverviewFailureState value) failure,
    required TResult Function(SessionOverviewSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewInitialState value)? initial,
    TResult? Function(SessionOverviewLoadingState value)? loading,
    TResult? Function(SessionOverviewFailureState value)? failure,
    TResult? Function(SessionOverviewSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewInitialState value)? initial,
    TResult Function(SessionOverviewLoadingState value)? loading,
    TResult Function(SessionOverviewFailureState value)? failure,
    TResult Function(SessionOverviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SessionOverviewLoadingState implements SessionOverviewState {
  const factory SessionOverviewLoadingState() =
      _$SessionOverviewLoadingStateImpl;
}

/// @nodoc
abstract class _$$SessionOverviewFailureStateImplCopyWith<$Res> {
  factory _$$SessionOverviewFailureStateImplCopyWith(
          _$SessionOverviewFailureStateImpl value,
          $Res Function(_$SessionOverviewFailureStateImpl) then) =
      __$$SessionOverviewFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SessionOverviewFailureStateImplCopyWithImpl<$Res>
    extends _$SessionOverviewStateCopyWithImpl<$Res,
        _$SessionOverviewFailureStateImpl>
    implements _$$SessionOverviewFailureStateImplCopyWith<$Res> {
  __$$SessionOverviewFailureStateImplCopyWithImpl(
      _$SessionOverviewFailureStateImpl _value,
      $Res Function(_$SessionOverviewFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SessionOverviewFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionOverviewFailureStateImpl implements SessionOverviewFailureState {
  const _$SessionOverviewFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SessionOverviewState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionOverviewFailureStateImplCopyWith<_$SessionOverviewFailureStateImpl>
      get copyWith => __$$SessionOverviewFailureStateImplCopyWithImpl<
          _$SessionOverviewFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(OverviewDetails data) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(OverviewDetails data)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(OverviewDetails data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewInitialState value) initial,
    required TResult Function(SessionOverviewLoadingState value) loading,
    required TResult Function(SessionOverviewFailureState value) failure,
    required TResult Function(SessionOverviewSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewInitialState value)? initial,
    TResult? Function(SessionOverviewLoadingState value)? loading,
    TResult? Function(SessionOverviewFailureState value)? failure,
    TResult? Function(SessionOverviewSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewInitialState value)? initial,
    TResult Function(SessionOverviewLoadingState value)? loading,
    TResult Function(SessionOverviewFailureState value)? failure,
    TResult Function(SessionOverviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SessionOverviewFailureState implements SessionOverviewState {
  const factory SessionOverviewFailureState(final String message) =
      _$SessionOverviewFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SessionOverviewFailureStateImplCopyWith<_$SessionOverviewFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionOverviewSuccessStateImplCopyWith<$Res> {
  factory _$$SessionOverviewSuccessStateImplCopyWith(
          _$SessionOverviewSuccessStateImpl value,
          $Res Function(_$SessionOverviewSuccessStateImpl) then) =
      __$$SessionOverviewSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OverviewDetails data});

  $OverviewDetailsCopyWith<$Res> get data;
}

/// @nodoc
class __$$SessionOverviewSuccessStateImplCopyWithImpl<$Res>
    extends _$SessionOverviewStateCopyWithImpl<$Res,
        _$SessionOverviewSuccessStateImpl>
    implements _$$SessionOverviewSuccessStateImplCopyWith<$Res> {
  __$$SessionOverviewSuccessStateImplCopyWithImpl(
      _$SessionOverviewSuccessStateImpl _value,
      $Res Function(_$SessionOverviewSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SessionOverviewSuccessStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OverviewDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewDetailsCopyWith<$Res> get data {
    return $OverviewDetailsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SessionOverviewSuccessStateImpl implements SessionOverviewSuccessState {
  const _$SessionOverviewSuccessStateImpl(this.data);

  @override
  final OverviewDetails data;

  @override
  String toString() {
    return 'SessionOverviewState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewSuccessStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionOverviewSuccessStateImplCopyWith<_$SessionOverviewSuccessStateImpl>
      get copyWith => __$$SessionOverviewSuccessStateImplCopyWithImpl<
          _$SessionOverviewSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(OverviewDetails data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(OverviewDetails data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(OverviewDetails data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverviewInitialState value) initial,
    required TResult Function(SessionOverviewLoadingState value) loading,
    required TResult Function(SessionOverviewFailureState value) failure,
    required TResult Function(SessionOverviewSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverviewInitialState value)? initial,
    TResult? Function(SessionOverviewLoadingState value)? loading,
    TResult? Function(SessionOverviewFailureState value)? failure,
    TResult? Function(SessionOverviewSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverviewInitialState value)? initial,
    TResult Function(SessionOverviewLoadingState value)? loading,
    TResult Function(SessionOverviewFailureState value)? failure,
    TResult Function(SessionOverviewSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SessionOverviewSuccessState implements SessionOverviewState {
  const factory SessionOverviewSuccessState(final OverviewDetails data) =
      _$SessionOverviewSuccessStateImpl;

  OverviewDetails get data;
  @JsonKey(ignore: true)
  _$$SessionOverviewSuccessStateImplCopyWith<_$SessionOverviewSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
