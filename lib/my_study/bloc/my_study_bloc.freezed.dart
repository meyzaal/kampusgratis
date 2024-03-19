// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_study_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyStudyEvent {
  bool get forceRefresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceRefresh) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceRefresh)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceRefresh)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyStudyFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyStudyEventCopyWith<MyStudyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStudyEventCopyWith<$Res> {
  factory $MyStudyEventCopyWith(
          MyStudyEvent value, $Res Function(MyStudyEvent) then) =
      _$MyStudyEventCopyWithImpl<$Res, MyStudyEvent>;
  @useResult
  $Res call({bool forceRefresh});
}

/// @nodoc
class _$MyStudyEventCopyWithImpl<$Res, $Val extends MyStudyEvent>
    implements $MyStudyEventCopyWith<$Res> {
  _$MyStudyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceRefresh = null,
  }) {
    return _then(_value.copyWith(
      forceRefresh: null == forceRefresh
          ? _value.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyStudyFetchedImplCopyWith<$Res>
    implements $MyStudyEventCopyWith<$Res> {
  factory _$$MyStudyFetchedImplCopyWith(_$MyStudyFetchedImpl value,
          $Res Function(_$MyStudyFetchedImpl) then) =
      __$$MyStudyFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool forceRefresh});
}

/// @nodoc
class __$$MyStudyFetchedImplCopyWithImpl<$Res>
    extends _$MyStudyEventCopyWithImpl<$Res, _$MyStudyFetchedImpl>
    implements _$$MyStudyFetchedImplCopyWith<$Res> {
  __$$MyStudyFetchedImplCopyWithImpl(
      _$MyStudyFetchedImpl _value, $Res Function(_$MyStudyFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forceRefresh = null,
  }) {
    return _then(_$MyStudyFetchedImpl(
      forceRefresh: null == forceRefresh
          ? _value.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyStudyFetchedImpl implements MyStudyFetched {
  const _$MyStudyFetchedImpl({required this.forceRefresh});

  @override
  final bool forceRefresh;

  @override
  String toString() {
    return 'MyStudyEvent.fetched(forceRefresh: $forceRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStudyFetchedImpl &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forceRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStudyFetchedImplCopyWith<_$MyStudyFetchedImpl> get copyWith =>
      __$$MyStudyFetchedImplCopyWithImpl<_$MyStudyFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool forceRefresh) fetched,
  }) {
    return fetched(forceRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool forceRefresh)? fetched,
  }) {
    return fetched?.call(forceRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool forceRefresh)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(forceRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyStudyFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class MyStudyFetched implements MyStudyEvent {
  const factory MyStudyFetched({required final bool forceRefresh}) =
      _$MyStudyFetchedImpl;

  @override
  bool get forceRefresh;
  @override
  @JsonKey(ignore: true)
  _$$MyStudyFetchedImplCopyWith<_$MyStudyFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MyStudyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyStudyInitialState value) initial,
    required TResult Function(MyStudyLoadingState value) loading,
    required TResult Function(MyStudyFailureState value) failure,
    required TResult Function(MyStudySuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyInitialState value)? initial,
    TResult? Function(MyStudyLoadingState value)? loading,
    TResult? Function(MyStudyFailureState value)? failure,
    TResult? Function(MyStudySuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyInitialState value)? initial,
    TResult Function(MyStudyLoadingState value)? loading,
    TResult Function(MyStudyFailureState value)? failure,
    TResult Function(MyStudySuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStudyStateCopyWith<$Res> {
  factory $MyStudyStateCopyWith(
          MyStudyState value, $Res Function(MyStudyState) then) =
      _$MyStudyStateCopyWithImpl<$Res, MyStudyState>;
}

/// @nodoc
class _$MyStudyStateCopyWithImpl<$Res, $Val extends MyStudyState>
    implements $MyStudyStateCopyWith<$Res> {
  _$MyStudyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MyStudyInitialStateImplCopyWith<$Res> {
  factory _$$MyStudyInitialStateImplCopyWith(_$MyStudyInitialStateImpl value,
          $Res Function(_$MyStudyInitialStateImpl) then) =
      __$$MyStudyInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyStudyInitialStateImplCopyWithImpl<$Res>
    extends _$MyStudyStateCopyWithImpl<$Res, _$MyStudyInitialStateImpl>
    implements _$$MyStudyInitialStateImplCopyWith<$Res> {
  __$$MyStudyInitialStateImplCopyWithImpl(_$MyStudyInitialStateImpl _value,
      $Res Function(_$MyStudyInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyStudyInitialStateImpl implements MyStudyInitialState {
  const _$MyStudyInitialStateImpl();

  @override
  String toString() {
    return 'MyStudyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStudyInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
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
    required TResult Function(MyStudyInitialState value) initial,
    required TResult Function(MyStudyLoadingState value) loading,
    required TResult Function(MyStudyFailureState value) failure,
    required TResult Function(MyStudySuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyInitialState value)? initial,
    TResult? Function(MyStudyLoadingState value)? loading,
    TResult? Function(MyStudyFailureState value)? failure,
    TResult? Function(MyStudySuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyInitialState value)? initial,
    TResult Function(MyStudyLoadingState value)? loading,
    TResult Function(MyStudyFailureState value)? failure,
    TResult Function(MyStudySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MyStudyInitialState implements MyStudyState {
  const factory MyStudyInitialState() = _$MyStudyInitialStateImpl;
}

/// @nodoc
abstract class _$$MyStudyLoadingStateImplCopyWith<$Res> {
  factory _$$MyStudyLoadingStateImplCopyWith(_$MyStudyLoadingStateImpl value,
          $Res Function(_$MyStudyLoadingStateImpl) then) =
      __$$MyStudyLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyStudyLoadingStateImplCopyWithImpl<$Res>
    extends _$MyStudyStateCopyWithImpl<$Res, _$MyStudyLoadingStateImpl>
    implements _$$MyStudyLoadingStateImplCopyWith<$Res> {
  __$$MyStudyLoadingStateImplCopyWithImpl(_$MyStudyLoadingStateImpl _value,
      $Res Function(_$MyStudyLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyStudyLoadingStateImpl implements MyStudyLoadingState {
  const _$MyStudyLoadingStateImpl();

  @override
  String toString() {
    return 'MyStudyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStudyLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
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
    required TResult Function(MyStudyInitialState value) initial,
    required TResult Function(MyStudyLoadingState value) loading,
    required TResult Function(MyStudyFailureState value) failure,
    required TResult Function(MyStudySuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyInitialState value)? initial,
    TResult? Function(MyStudyLoadingState value)? loading,
    TResult? Function(MyStudyFailureState value)? failure,
    TResult? Function(MyStudySuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyInitialState value)? initial,
    TResult Function(MyStudyLoadingState value)? loading,
    TResult Function(MyStudyFailureState value)? failure,
    TResult Function(MyStudySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MyStudyLoadingState implements MyStudyState {
  const factory MyStudyLoadingState() = _$MyStudyLoadingStateImpl;
}

/// @nodoc
abstract class _$$MyStudyFailureStateImplCopyWith<$Res> {
  factory _$$MyStudyFailureStateImplCopyWith(_$MyStudyFailureStateImpl value,
          $Res Function(_$MyStudyFailureStateImpl) then) =
      __$$MyStudyFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MyStudyFailureStateImplCopyWithImpl<$Res>
    extends _$MyStudyStateCopyWithImpl<$Res, _$MyStudyFailureStateImpl>
    implements _$$MyStudyFailureStateImplCopyWith<$Res> {
  __$$MyStudyFailureStateImplCopyWithImpl(_$MyStudyFailureStateImpl _value,
      $Res Function(_$MyStudyFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MyStudyFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyStudyFailureStateImpl implements MyStudyFailureState {
  const _$MyStudyFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MyStudyState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStudyFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStudyFailureStateImplCopyWith<_$MyStudyFailureStateImpl> get copyWith =>
      __$$MyStudyFailureStateImplCopyWithImpl<_$MyStudyFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)
        success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
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
    required TResult Function(MyStudyInitialState value) initial,
    required TResult Function(MyStudyLoadingState value) loading,
    required TResult Function(MyStudyFailureState value) failure,
    required TResult Function(MyStudySuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyInitialState value)? initial,
    TResult? Function(MyStudyLoadingState value)? loading,
    TResult? Function(MyStudyFailureState value)? failure,
    TResult? Function(MyStudySuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyInitialState value)? initial,
    TResult Function(MyStudyLoadingState value)? loading,
    TResult Function(MyStudyFailureState value)? failure,
    TResult Function(MyStudySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MyStudyFailureState implements MyStudyState {
  const factory MyStudyFailureState(final String message) =
      _$MyStudyFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MyStudyFailureStateImplCopyWith<_$MyStudyFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyStudySuccessStateImplCopyWith<$Res> {
  factory _$$MyStudySuccessStateImplCopyWith(_$MyStudySuccessStateImpl value,
          $Res Function(_$MyStudySuccessStateImpl) then) =
      __$$MyStudySuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MyStudy> ongoing, List<MyStudy> completed});
}

/// @nodoc
class __$$MyStudySuccessStateImplCopyWithImpl<$Res>
    extends _$MyStudyStateCopyWithImpl<$Res, _$MyStudySuccessStateImpl>
    implements _$$MyStudySuccessStateImplCopyWith<$Res> {
  __$$MyStudySuccessStateImplCopyWithImpl(_$MyStudySuccessStateImpl _value,
      $Res Function(_$MyStudySuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ongoing = null,
    Object? completed = null,
  }) {
    return _then(_$MyStudySuccessStateImpl(
      ongoing: null == ongoing
          ? _value._ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as List<MyStudy>,
      completed: null == completed
          ? _value._completed
          : completed // ignore: cast_nullable_to_non_nullable
              as List<MyStudy>,
    ));
  }
}

/// @nodoc

class _$MyStudySuccessStateImpl implements MyStudySuccessState {
  const _$MyStudySuccessStateImpl(
      {required final List<MyStudy> ongoing,
      required final List<MyStudy> completed})
      : _ongoing = ongoing,
        _completed = completed;

  final List<MyStudy> _ongoing;
  @override
  List<MyStudy> get ongoing {
    if (_ongoing is EqualUnmodifiableListView) return _ongoing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ongoing);
  }

  final List<MyStudy> _completed;
  @override
  List<MyStudy> get completed {
    if (_completed is EqualUnmodifiableListView) return _completed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completed);
  }

  @override
  String toString() {
    return 'MyStudyState.success(ongoing: $ongoing, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyStudySuccessStateImpl &&
            const DeepCollectionEquality().equals(other._ongoing, _ongoing) &&
            const DeepCollectionEquality()
                .equals(other._completed, _completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ongoing),
      const DeepCollectionEquality().hash(_completed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyStudySuccessStateImplCopyWith<_$MyStudySuccessStateImpl> get copyWith =>
      __$$MyStudySuccessStateImplCopyWithImpl<_$MyStudySuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)
        success,
  }) {
    return success(ongoing, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
  }) {
    return success?.call(ongoing, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<MyStudy> ongoing, List<MyStudy> completed)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ongoing, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MyStudyInitialState value) initial,
    required TResult Function(MyStudyLoadingState value) loading,
    required TResult Function(MyStudyFailureState value) failure,
    required TResult Function(MyStudySuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MyStudyInitialState value)? initial,
    TResult? Function(MyStudyLoadingState value)? loading,
    TResult? Function(MyStudyFailureState value)? failure,
    TResult? Function(MyStudySuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MyStudyInitialState value)? initial,
    TResult Function(MyStudyLoadingState value)? loading,
    TResult Function(MyStudyFailureState value)? failure,
    TResult Function(MyStudySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MyStudySuccessState implements MyStudyState {
  const factory MyStudySuccessState(
      {required final List<MyStudy> ongoing,
      required final List<MyStudy> completed}) = _$MyStudySuccessStateImpl;

  List<MyStudy> get ongoing;
  List<MyStudy> get completed;
  @JsonKey(ignore: true)
  _$$MyStudySuccessStateImplCopyWith<_$MyStudySuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
