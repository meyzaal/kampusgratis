// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(User user, Profile details) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(User user, Profile details)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(User user, Profile details)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileDetailsInitialState value) initial,
    required TResult Function(ProfileDetailsLoadingState value) loading,
    required TResult Function(ProfileDetailsFailureState value) failure,
    required TResult Function(ProfileDetailsSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileDetailsInitialState value)? initial,
    TResult? Function(ProfileDetailsLoadingState value)? loading,
    TResult? Function(ProfileDetailsFailureState value)? failure,
    TResult? Function(ProfileDetailsSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileDetailsInitialState value)? initial,
    TResult Function(ProfileDetailsLoadingState value)? loading,
    TResult Function(ProfileDetailsFailureState value)? failure,
    TResult Function(ProfileDetailsSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsStateCopyWith<$Res> {
  factory $ProfileDetailsStateCopyWith(
          ProfileDetailsState value, $Res Function(ProfileDetailsState) then) =
      _$ProfileDetailsStateCopyWithImpl<$Res, ProfileDetailsState>;
}

/// @nodoc
class _$ProfileDetailsStateCopyWithImpl<$Res, $Val extends ProfileDetailsState>
    implements $ProfileDetailsStateCopyWith<$Res> {
  _$ProfileDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileDetailsInitialStateImplCopyWith<$Res> {
  factory _$$ProfileDetailsInitialStateImplCopyWith(
          _$ProfileDetailsInitialStateImpl value,
          $Res Function(_$ProfileDetailsInitialStateImpl) then) =
      __$$ProfileDetailsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileDetailsInitialStateImplCopyWithImpl<$Res>
    extends _$ProfileDetailsStateCopyWithImpl<$Res,
        _$ProfileDetailsInitialStateImpl>
    implements _$$ProfileDetailsInitialStateImplCopyWith<$Res> {
  __$$ProfileDetailsInitialStateImplCopyWithImpl(
      _$ProfileDetailsInitialStateImpl _value,
      $Res Function(_$ProfileDetailsInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileDetailsInitialStateImpl implements ProfileDetailsInitialState {
  const _$ProfileDetailsInitialStateImpl();

  @override
  String toString() {
    return 'ProfileDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(User user, Profile details) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(User user, Profile details)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(User user, Profile details)? success,
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
    required TResult Function(ProfileDetailsInitialState value) initial,
    required TResult Function(ProfileDetailsLoadingState value) loading,
    required TResult Function(ProfileDetailsFailureState value) failure,
    required TResult Function(ProfileDetailsSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileDetailsInitialState value)? initial,
    TResult? Function(ProfileDetailsLoadingState value)? loading,
    TResult? Function(ProfileDetailsFailureState value)? failure,
    TResult? Function(ProfileDetailsSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileDetailsInitialState value)? initial,
    TResult Function(ProfileDetailsLoadingState value)? loading,
    TResult Function(ProfileDetailsFailureState value)? failure,
    TResult Function(ProfileDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileDetailsInitialState implements ProfileDetailsState {
  const factory ProfileDetailsInitialState() = _$ProfileDetailsInitialStateImpl;
}

/// @nodoc
abstract class _$$ProfileDetailsLoadingStateImplCopyWith<$Res> {
  factory _$$ProfileDetailsLoadingStateImplCopyWith(
          _$ProfileDetailsLoadingStateImpl value,
          $Res Function(_$ProfileDetailsLoadingStateImpl) then) =
      __$$ProfileDetailsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileDetailsLoadingStateImplCopyWithImpl<$Res>
    extends _$ProfileDetailsStateCopyWithImpl<$Res,
        _$ProfileDetailsLoadingStateImpl>
    implements _$$ProfileDetailsLoadingStateImplCopyWith<$Res> {
  __$$ProfileDetailsLoadingStateImplCopyWithImpl(
      _$ProfileDetailsLoadingStateImpl _value,
      $Res Function(_$ProfileDetailsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileDetailsLoadingStateImpl implements ProfileDetailsLoadingState {
  const _$ProfileDetailsLoadingStateImpl();

  @override
  String toString() {
    return 'ProfileDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(User user, Profile details) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(User user, Profile details)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(User user, Profile details)? success,
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
    required TResult Function(ProfileDetailsInitialState value) initial,
    required TResult Function(ProfileDetailsLoadingState value) loading,
    required TResult Function(ProfileDetailsFailureState value) failure,
    required TResult Function(ProfileDetailsSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileDetailsInitialState value)? initial,
    TResult? Function(ProfileDetailsLoadingState value)? loading,
    TResult? Function(ProfileDetailsFailureState value)? failure,
    TResult? Function(ProfileDetailsSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileDetailsInitialState value)? initial,
    TResult Function(ProfileDetailsLoadingState value)? loading,
    TResult Function(ProfileDetailsFailureState value)? failure,
    TResult Function(ProfileDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileDetailsLoadingState implements ProfileDetailsState {
  const factory ProfileDetailsLoadingState() = _$ProfileDetailsLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProfileDetailsFailureStateImplCopyWith<$Res> {
  factory _$$ProfileDetailsFailureStateImplCopyWith(
          _$ProfileDetailsFailureStateImpl value,
          $Res Function(_$ProfileDetailsFailureStateImpl) then) =
      __$$ProfileDetailsFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileDetailsFailureStateImplCopyWithImpl<$Res>
    extends _$ProfileDetailsStateCopyWithImpl<$Res,
        _$ProfileDetailsFailureStateImpl>
    implements _$$ProfileDetailsFailureStateImplCopyWith<$Res> {
  __$$ProfileDetailsFailureStateImplCopyWithImpl(
      _$ProfileDetailsFailureStateImpl _value,
      $Res Function(_$ProfileDetailsFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileDetailsFailureStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileDetailsFailureStateImpl implements ProfileDetailsFailureState {
  const _$ProfileDetailsFailureStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileDetailsState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailsFailureStateImplCopyWith<_$ProfileDetailsFailureStateImpl>
      get copyWith => __$$ProfileDetailsFailureStateImplCopyWithImpl<
          _$ProfileDetailsFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(User user, Profile details) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(User user, Profile details)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(User user, Profile details)? success,
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
    required TResult Function(ProfileDetailsInitialState value) initial,
    required TResult Function(ProfileDetailsLoadingState value) loading,
    required TResult Function(ProfileDetailsFailureState value) failure,
    required TResult Function(ProfileDetailsSuccessState value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileDetailsInitialState value)? initial,
    TResult? Function(ProfileDetailsLoadingState value)? loading,
    TResult? Function(ProfileDetailsFailureState value)? failure,
    TResult? Function(ProfileDetailsSuccessState value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileDetailsInitialState value)? initial,
    TResult Function(ProfileDetailsLoadingState value)? loading,
    TResult Function(ProfileDetailsFailureState value)? failure,
    TResult Function(ProfileDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileDetailsFailureState implements ProfileDetailsState {
  const factory ProfileDetailsFailureState(final String message) =
      _$ProfileDetailsFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileDetailsFailureStateImplCopyWith<_$ProfileDetailsFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileDetailsSuccessStateImplCopyWith<$Res> {
  factory _$$ProfileDetailsSuccessStateImplCopyWith(
          _$ProfileDetailsSuccessStateImpl value,
          $Res Function(_$ProfileDetailsSuccessStateImpl) then) =
      __$$ProfileDetailsSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, Profile details});

  $UserCopyWith<$Res> get user;
  $ProfileCopyWith<$Res> get details;
}

/// @nodoc
class __$$ProfileDetailsSuccessStateImplCopyWithImpl<$Res>
    extends _$ProfileDetailsStateCopyWithImpl<$Res,
        _$ProfileDetailsSuccessStateImpl>
    implements _$$ProfileDetailsSuccessStateImplCopyWith<$Res> {
  __$$ProfileDetailsSuccessStateImplCopyWithImpl(
      _$ProfileDetailsSuccessStateImpl _value,
      $Res Function(_$ProfileDetailsSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? details = null,
  }) {
    return _then(_$ProfileDetailsSuccessStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get details {
    return $ProfileCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$ProfileDetailsSuccessStateImpl implements ProfileDetailsSuccessState {
  const _$ProfileDetailsSuccessStateImpl(
      {required this.user, required this.details});

  @override
  final User user;
  @override
  final Profile details;

  @override
  String toString() {
    return 'ProfileDetailsState.success(user: $user, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsSuccessStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailsSuccessStateImplCopyWith<_$ProfileDetailsSuccessStateImpl>
      get copyWith => __$$ProfileDetailsSuccessStateImplCopyWithImpl<
          _$ProfileDetailsSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(User user, Profile details) success,
  }) {
    return success(user, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(User user, Profile details)? success,
  }) {
    return success?.call(user, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(User user, Profile details)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileDetailsInitialState value) initial,
    required TResult Function(ProfileDetailsLoadingState value) loading,
    required TResult Function(ProfileDetailsFailureState value) failure,
    required TResult Function(ProfileDetailsSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileDetailsInitialState value)? initial,
    TResult? Function(ProfileDetailsLoadingState value)? loading,
    TResult? Function(ProfileDetailsFailureState value)? failure,
    TResult? Function(ProfileDetailsSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileDetailsInitialState value)? initial,
    TResult Function(ProfileDetailsLoadingState value)? loading,
    TResult Function(ProfileDetailsFailureState value)? failure,
    TResult Function(ProfileDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileDetailsSuccessState implements ProfileDetailsState {
  const factory ProfileDetailsSuccessState(
      {required final User user,
      required final Profile details}) = _$ProfileDetailsSuccessStateImpl;

  User get user;
  Profile get details;
  @JsonKey(ignore: true)
  _$$ProfileDetailsSuccessStateImplCopyWith<_$ProfileDetailsSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
