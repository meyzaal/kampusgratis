// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_modules_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionModulesEvent {
  String get subjectId => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subjectId, String sessionId) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId, String sessionId)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, String sessionId)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionModulesFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionModulesEventCopyWith<SessionModulesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModulesEventCopyWith<$Res> {
  factory $SessionModulesEventCopyWith(
          SessionModulesEvent value, $Res Function(SessionModulesEvent) then) =
      _$SessionModulesEventCopyWithImpl<$Res, SessionModulesEvent>;
  @useResult
  $Res call({String subjectId, String sessionId});
}

/// @nodoc
class _$SessionModulesEventCopyWithImpl<$Res, $Val extends SessionModulesEvent>
    implements $SessionModulesEventCopyWith<$Res> {
  _$SessionModulesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? sessionId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionModulesFetchedImplCopyWith<$Res>
    implements $SessionModulesEventCopyWith<$Res> {
  factory _$$SessionModulesFetchedImplCopyWith(
          _$SessionModulesFetchedImpl value,
          $Res Function(_$SessionModulesFetchedImpl) then) =
      __$$SessionModulesFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subjectId, String sessionId});
}

/// @nodoc
class __$$SessionModulesFetchedImplCopyWithImpl<$Res>
    extends _$SessionModulesEventCopyWithImpl<$Res, _$SessionModulesFetchedImpl>
    implements _$$SessionModulesFetchedImplCopyWith<$Res> {
  __$$SessionModulesFetchedImplCopyWithImpl(_$SessionModulesFetchedImpl _value,
      $Res Function(_$SessionModulesFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? sessionId = null,
  }) {
    return _then(_$SessionModulesFetchedImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionModulesFetchedImpl implements SessionModulesFetched {
  const _$SessionModulesFetchedImpl(
      {required this.subjectId, required this.sessionId});

  @override
  final String subjectId;
  @override
  final String sessionId;

  @override
  String toString() {
    return 'SessionModulesEvent.fetched(subjectId: $subjectId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesFetchedImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionModulesFetchedImplCopyWith<_$SessionModulesFetchedImpl>
      get copyWith => __$$SessionModulesFetchedImplCopyWithImpl<
          _$SessionModulesFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subjectId, String sessionId) fetched,
  }) {
    return fetched(subjectId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subjectId, String sessionId)? fetched,
  }) {
    return fetched?.call(subjectId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, String sessionId)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(subjectId, sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionModulesFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class SessionModulesFetched implements SessionModulesEvent {
  const factory SessionModulesFetched(
      {required final String subjectId,
      required final String sessionId}) = _$SessionModulesFetchedImpl;

  @override
  String get subjectId;
  @override
  String get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$SessionModulesFetchedImplCopyWith<_$SessionModulesFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SessionModulesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(SessionModules data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(SessionModules data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(SessionModules data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionModulesInitialState value) initial,
    required TResult Function(SessionModulesLoadingState value) loading,
    required TResult Function(SessionModulesFailureState value) failure,
    required TResult Function(SessionModulesSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesInitialState value)? initial,
    TResult? Function(SessionModulesLoadingState value)? loading,
    TResult? Function(SessionModulesFailureState value)? failure,
    TResult? Function(SessionModulesSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesInitialState value)? initial,
    TResult Function(SessionModulesLoadingState value)? loading,
    TResult Function(SessionModulesFailureState value)? failure,
    TResult Function(SessionModulesSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModulesStateCopyWith<$Res> {
  factory $SessionModulesStateCopyWith(
          SessionModulesState value, $Res Function(SessionModulesState) then) =
      _$SessionModulesStateCopyWithImpl<$Res, SessionModulesState>;
}

/// @nodoc
class _$SessionModulesStateCopyWithImpl<$Res, $Val extends SessionModulesState>
    implements $SessionModulesStateCopyWith<$Res> {
  _$SessionModulesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionModulesInitialStateImplCopyWith<$Res> {
  factory _$$SessionModulesInitialStateImplCopyWith(
          _$SessionModulesInitialStateImpl value,
          $Res Function(_$SessionModulesInitialStateImpl) then) =
      __$$SessionModulesInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionModulesInitialStateImplCopyWithImpl<$Res>
    extends _$SessionModulesStateCopyWithImpl<$Res,
        _$SessionModulesInitialStateImpl>
    implements _$$SessionModulesInitialStateImplCopyWith<$Res> {
  __$$SessionModulesInitialStateImplCopyWithImpl(
      _$SessionModulesInitialStateImpl _value,
      $Res Function(_$SessionModulesInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionModulesInitialStateImpl implements SessionModulesInitialState {
  const _$SessionModulesInitialStateImpl();

  @override
  String toString() {
    return 'SessionModulesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(SessionModules data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(SessionModules data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(SessionModules data)? success,
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
    required TResult Function(SessionModulesInitialState value) initial,
    required TResult Function(SessionModulesLoadingState value) loading,
    required TResult Function(SessionModulesFailureState value) failure,
    required TResult Function(SessionModulesSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesInitialState value)? initial,
    TResult? Function(SessionModulesLoadingState value)? loading,
    TResult? Function(SessionModulesFailureState value)? failure,
    TResult? Function(SessionModulesSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesInitialState value)? initial,
    TResult Function(SessionModulesLoadingState value)? loading,
    TResult Function(SessionModulesFailureState value)? failure,
    TResult Function(SessionModulesSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SessionModulesInitialState implements SessionModulesState {
  const factory SessionModulesInitialState() = _$SessionModulesInitialStateImpl;
}

/// @nodoc
abstract class _$$SessionModulesLoadingStateImplCopyWith<$Res> {
  factory _$$SessionModulesLoadingStateImplCopyWith(
          _$SessionModulesLoadingStateImpl value,
          $Res Function(_$SessionModulesLoadingStateImpl) then) =
      __$$SessionModulesLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionModulesLoadingStateImplCopyWithImpl<$Res>
    extends _$SessionModulesStateCopyWithImpl<$Res,
        _$SessionModulesLoadingStateImpl>
    implements _$$SessionModulesLoadingStateImplCopyWith<$Res> {
  __$$SessionModulesLoadingStateImplCopyWithImpl(
      _$SessionModulesLoadingStateImpl _value,
      $Res Function(_$SessionModulesLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionModulesLoadingStateImpl implements SessionModulesLoadingState {
  const _$SessionModulesLoadingStateImpl();

  @override
  String toString() {
    return 'SessionModulesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(SessionModules data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(SessionModules data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(SessionModules data)? success,
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
    required TResult Function(SessionModulesInitialState value) initial,
    required TResult Function(SessionModulesLoadingState value) loading,
    required TResult Function(SessionModulesFailureState value) failure,
    required TResult Function(SessionModulesSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesInitialState value)? initial,
    TResult? Function(SessionModulesLoadingState value)? loading,
    TResult? Function(SessionModulesFailureState value)? failure,
    TResult? Function(SessionModulesSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesInitialState value)? initial,
    TResult Function(SessionModulesLoadingState value)? loading,
    TResult Function(SessionModulesFailureState value)? failure,
    TResult Function(SessionModulesSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SessionModulesLoadingState implements SessionModulesState {
  const factory SessionModulesLoadingState() = _$SessionModulesLoadingStateImpl;
}

/// @nodoc
abstract class _$$SessionModulesFailureStateImplCopyWith<$Res> {
  factory _$$SessionModulesFailureStateImplCopyWith(
          _$SessionModulesFailureStateImpl value,
          $Res Function(_$SessionModulesFailureStateImpl) then) =
      __$$SessionModulesFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SessionModulesFailureStateImplCopyWithImpl<$Res>
    extends _$SessionModulesStateCopyWithImpl<$Res,
        _$SessionModulesFailureStateImpl>
    implements _$$SessionModulesFailureStateImplCopyWith<$Res> {
  __$$SessionModulesFailureStateImplCopyWithImpl(
      _$SessionModulesFailureStateImpl _value,
      $Res Function(_$SessionModulesFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SessionModulesFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionModulesFailureStateImpl implements SessionModulesFailureState {
  const _$SessionModulesFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SessionModulesState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionModulesFailureStateImplCopyWith<_$SessionModulesFailureStateImpl>
      get copyWith => __$$SessionModulesFailureStateImplCopyWithImpl<
          _$SessionModulesFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(SessionModules data) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(SessionModules data)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(SessionModules data)? success,
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
    required TResult Function(SessionModulesInitialState value) initial,
    required TResult Function(SessionModulesLoadingState value) loading,
    required TResult Function(SessionModulesFailureState value) failure,
    required TResult Function(SessionModulesSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesInitialState value)? initial,
    TResult? Function(SessionModulesLoadingState value)? loading,
    TResult? Function(SessionModulesFailureState value)? failure,
    TResult? Function(SessionModulesSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesInitialState value)? initial,
    TResult Function(SessionModulesLoadingState value)? loading,
    TResult Function(SessionModulesFailureState value)? failure,
    TResult Function(SessionModulesSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SessionModulesFailureState implements SessionModulesState {
  const factory SessionModulesFailureState(final String message) =
      _$SessionModulesFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SessionModulesFailureStateImplCopyWith<_$SessionModulesFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionModulesSuccessStateImplCopyWith<$Res> {
  factory _$$SessionModulesSuccessStateImplCopyWith(
          _$SessionModulesSuccessStateImpl value,
          $Res Function(_$SessionModulesSuccessStateImpl) then) =
      __$$SessionModulesSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SessionModules data});

  $SessionModulesCopyWith<$Res> get data;
}

/// @nodoc
class __$$SessionModulesSuccessStateImplCopyWithImpl<$Res>
    extends _$SessionModulesStateCopyWithImpl<$Res,
        _$SessionModulesSuccessStateImpl>
    implements _$$SessionModulesSuccessStateImplCopyWith<$Res> {
  __$$SessionModulesSuccessStateImplCopyWithImpl(
      _$SessionModulesSuccessStateImpl _value,
      $Res Function(_$SessionModulesSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SessionModulesSuccessStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SessionModules,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionModulesCopyWith<$Res> get data {
    return $SessionModulesCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$SessionModulesSuccessStateImpl implements SessionModulesSuccessState {
  const _$SessionModulesSuccessStateImpl(this.data);

  @override
  final SessionModules data;

  @override
  String toString() {
    return 'SessionModulesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesSuccessStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionModulesSuccessStateImplCopyWith<_$SessionModulesSuccessStateImpl>
      get copyWith => __$$SessionModulesSuccessStateImplCopyWithImpl<
          _$SessionModulesSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(SessionModules data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(SessionModules data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(SessionModules data)? success,
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
    required TResult Function(SessionModulesInitialState value) initial,
    required TResult Function(SessionModulesLoadingState value) loading,
    required TResult Function(SessionModulesFailureState value) failure,
    required TResult Function(SessionModulesSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionModulesInitialState value)? initial,
    TResult? Function(SessionModulesLoadingState value)? loading,
    TResult? Function(SessionModulesFailureState value)? failure,
    TResult? Function(SessionModulesSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionModulesInitialState value)? initial,
    TResult Function(SessionModulesLoadingState value)? loading,
    TResult Function(SessionModulesFailureState value)? failure,
    TResult Function(SessionModulesSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SessionModulesSuccessState implements SessionModulesState {
  const factory SessionModulesSuccessState(final SessionModules data) =
      _$SessionModulesSuccessStateImpl;

  SessionModules get data;
  @JsonKey(ignore: true)
  _$$SessionModulesSuccessStateImplCopyWith<_$SessionModulesSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
