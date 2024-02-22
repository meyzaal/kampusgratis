// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function() reloadUserRequested,
    required TResult Function() logOutRequested,
    required TResult Function(ImageSource source) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function()? reloadUserRequested,
    TResult? Function()? logOutRequested,
    TResult? Function(ImageSource source)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function()? reloadUserRequested,
    TResult Function()? logOutRequested,
    TResult Function(ImageSource source)? avatarChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetchRequested value) fetchRequested,
    required TResult Function(ProfileReloadUserRequested value)
        reloadUserRequested,
    required TResult Function(ProfileLogOutRequested value) logOutRequested,
    required TResult Function(ProfileAvatarChanged value) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetchRequested value)? fetchRequested,
    TResult? Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult? Function(ProfileLogOutRequested value)? logOutRequested,
    TResult? Function(ProfileAvatarChanged value)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetchRequested value)? fetchRequested,
    TResult Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult Function(ProfileLogOutRequested value)? logOutRequested,
    TResult Function(ProfileAvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileFetchRequestedImplCopyWith<$Res> {
  factory _$$ProfileFetchRequestedImplCopyWith(
          _$ProfileFetchRequestedImpl value,
          $Res Function(_$ProfileFetchRequestedImpl) then) =
      __$$ProfileFetchRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileFetchRequestedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileFetchRequestedImpl>
    implements _$$ProfileFetchRequestedImplCopyWith<$Res> {
  __$$ProfileFetchRequestedImplCopyWithImpl(_$ProfileFetchRequestedImpl _value,
      $Res Function(_$ProfileFetchRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileFetchRequestedImpl implements ProfileFetchRequested {
  const _$ProfileFetchRequestedImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFetchRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function() reloadUserRequested,
    required TResult Function() logOutRequested,
    required TResult Function(ImageSource source) avatarChanged,
  }) {
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function()? reloadUserRequested,
    TResult? Function()? logOutRequested,
    TResult? Function(ImageSource source)? avatarChanged,
  }) {
    return fetchRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function()? reloadUserRequested,
    TResult Function()? logOutRequested,
    TResult Function(ImageSource source)? avatarChanged,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetchRequested value) fetchRequested,
    required TResult Function(ProfileReloadUserRequested value)
        reloadUserRequested,
    required TResult Function(ProfileLogOutRequested value) logOutRequested,
    required TResult Function(ProfileAvatarChanged value) avatarChanged,
  }) {
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetchRequested value)? fetchRequested,
    TResult? Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult? Function(ProfileLogOutRequested value)? logOutRequested,
    TResult? Function(ProfileAvatarChanged value)? avatarChanged,
  }) {
    return fetchRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetchRequested value)? fetchRequested,
    TResult Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult Function(ProfileLogOutRequested value)? logOutRequested,
    TResult Function(ProfileAvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class ProfileFetchRequested implements ProfileEvent {
  const factory ProfileFetchRequested() = _$ProfileFetchRequestedImpl;
}

/// @nodoc
abstract class _$$ProfileReloadUserRequestedImplCopyWith<$Res> {
  factory _$$ProfileReloadUserRequestedImplCopyWith(
          _$ProfileReloadUserRequestedImpl value,
          $Res Function(_$ProfileReloadUserRequestedImpl) then) =
      __$$ProfileReloadUserRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileReloadUserRequestedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileReloadUserRequestedImpl>
    implements _$$ProfileReloadUserRequestedImplCopyWith<$Res> {
  __$$ProfileReloadUserRequestedImplCopyWithImpl(
      _$ProfileReloadUserRequestedImpl _value,
      $Res Function(_$ProfileReloadUserRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileReloadUserRequestedImpl implements ProfileReloadUserRequested {
  const _$ProfileReloadUserRequestedImpl();

  @override
  String toString() {
    return 'ProfileEvent.reloadUserRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileReloadUserRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function() reloadUserRequested,
    required TResult Function() logOutRequested,
    required TResult Function(ImageSource source) avatarChanged,
  }) {
    return reloadUserRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function()? reloadUserRequested,
    TResult? Function()? logOutRequested,
    TResult? Function(ImageSource source)? avatarChanged,
  }) {
    return reloadUserRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function()? reloadUserRequested,
    TResult Function()? logOutRequested,
    TResult Function(ImageSource source)? avatarChanged,
    required TResult orElse(),
  }) {
    if (reloadUserRequested != null) {
      return reloadUserRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetchRequested value) fetchRequested,
    required TResult Function(ProfileReloadUserRequested value)
        reloadUserRequested,
    required TResult Function(ProfileLogOutRequested value) logOutRequested,
    required TResult Function(ProfileAvatarChanged value) avatarChanged,
  }) {
    return reloadUserRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetchRequested value)? fetchRequested,
    TResult? Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult? Function(ProfileLogOutRequested value)? logOutRequested,
    TResult? Function(ProfileAvatarChanged value)? avatarChanged,
  }) {
    return reloadUserRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetchRequested value)? fetchRequested,
    TResult Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult Function(ProfileLogOutRequested value)? logOutRequested,
    TResult Function(ProfileAvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (reloadUserRequested != null) {
      return reloadUserRequested(this);
    }
    return orElse();
  }
}

abstract class ProfileReloadUserRequested implements ProfileEvent {
  const factory ProfileReloadUserRequested() = _$ProfileReloadUserRequestedImpl;
}

/// @nodoc
abstract class _$$ProfileLogOutRequestedImplCopyWith<$Res> {
  factory _$$ProfileLogOutRequestedImplCopyWith(
          _$ProfileLogOutRequestedImpl value,
          $Res Function(_$ProfileLogOutRequestedImpl) then) =
      __$$ProfileLogOutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLogOutRequestedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileLogOutRequestedImpl>
    implements _$$ProfileLogOutRequestedImplCopyWith<$Res> {
  __$$ProfileLogOutRequestedImplCopyWithImpl(
      _$ProfileLogOutRequestedImpl _value,
      $Res Function(_$ProfileLogOutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLogOutRequestedImpl implements ProfileLogOutRequested {
  const _$ProfileLogOutRequestedImpl();

  @override
  String toString() {
    return 'ProfileEvent.logOutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLogOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function() reloadUserRequested,
    required TResult Function() logOutRequested,
    required TResult Function(ImageSource source) avatarChanged,
  }) {
    return logOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function()? reloadUserRequested,
    TResult? Function()? logOutRequested,
    TResult? Function(ImageSource source)? avatarChanged,
  }) {
    return logOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function()? reloadUserRequested,
    TResult Function()? logOutRequested,
    TResult Function(ImageSource source)? avatarChanged,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetchRequested value) fetchRequested,
    required TResult Function(ProfileReloadUserRequested value)
        reloadUserRequested,
    required TResult Function(ProfileLogOutRequested value) logOutRequested,
    required TResult Function(ProfileAvatarChanged value) avatarChanged,
  }) {
    return logOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetchRequested value)? fetchRequested,
    TResult? Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult? Function(ProfileLogOutRequested value)? logOutRequested,
    TResult? Function(ProfileAvatarChanged value)? avatarChanged,
  }) {
    return logOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetchRequested value)? fetchRequested,
    TResult Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult Function(ProfileLogOutRequested value)? logOutRequested,
    TResult Function(ProfileAvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested(this);
    }
    return orElse();
  }
}

abstract class ProfileLogOutRequested implements ProfileEvent {
  const factory ProfileLogOutRequested() = _$ProfileLogOutRequestedImpl;
}

/// @nodoc
abstract class _$$ProfileAvatarChangedImplCopyWith<$Res> {
  factory _$$ProfileAvatarChangedImplCopyWith(_$ProfileAvatarChangedImpl value,
          $Res Function(_$ProfileAvatarChangedImpl) then) =
      __$$ProfileAvatarChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$ProfileAvatarChangedImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileAvatarChangedImpl>
    implements _$$ProfileAvatarChangedImplCopyWith<$Res> {
  __$$ProfileAvatarChangedImplCopyWithImpl(_$ProfileAvatarChangedImpl _value,
      $Res Function(_$ProfileAvatarChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$ProfileAvatarChangedImpl(
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$ProfileAvatarChangedImpl implements ProfileAvatarChanged {
  const _$ProfileAvatarChangedImpl(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ProfileEvent.avatarChanged(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAvatarChangedImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAvatarChangedImplCopyWith<_$ProfileAvatarChangedImpl>
      get copyWith =>
          __$$ProfileAvatarChangedImplCopyWithImpl<_$ProfileAvatarChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRequested,
    required TResult Function() reloadUserRequested,
    required TResult Function() logOutRequested,
    required TResult Function(ImageSource source) avatarChanged,
  }) {
    return avatarChanged(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRequested,
    TResult? Function()? reloadUserRequested,
    TResult? Function()? logOutRequested,
    TResult? Function(ImageSource source)? avatarChanged,
  }) {
    return avatarChanged?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRequested,
    TResult Function()? reloadUserRequested,
    TResult Function()? logOutRequested,
    TResult Function(ImageSource source)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileFetchRequested value) fetchRequested,
    required TResult Function(ProfileReloadUserRequested value)
        reloadUserRequested,
    required TResult Function(ProfileLogOutRequested value) logOutRequested,
    required TResult Function(ProfileAvatarChanged value) avatarChanged,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileFetchRequested value)? fetchRequested,
    TResult? Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult? Function(ProfileLogOutRequested value)? logOutRequested,
    TResult? Function(ProfileAvatarChanged value)? avatarChanged,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileFetchRequested value)? fetchRequested,
    TResult Function(ProfileReloadUserRequested value)? reloadUserRequested,
    TResult Function(ProfileLogOutRequested value)? logOutRequested,
    TResult Function(ProfileAvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class ProfileAvatarChanged implements ProfileEvent {
  const factory ProfileAvatarChanged(final ImageSource source) =
      _$ProfileAvatarChangedImpl;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$ProfileAvatarChangedImplCopyWith<_$ProfileAvatarChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  ProfileStatus get fetchStatus => throw _privateConstructorUsedError;
  ProfileStatus get logOutStatus => throw _privateConstructorUsedError;
  ProfileStatus get updateAvatarStatus => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ProfileStatus fetchStatus,
      ProfileStatus logOutStatus,
      ProfileStatus updateAvatarStatus,
      User? user,
      String? message});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? logOutStatus = null,
    Object? updateAvatarStatus = null,
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      logOutStatus: null == logOutStatus
          ? _value.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      updateAvatarStatus: null == updateAvatarStatus
          ? _value.updateAvatarStatus
          : updateAvatarStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileStatus fetchStatus,
      ProfileStatus logOutStatus,
      ProfileStatus updateAvatarStatus,
      User? user,
      String? message});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchStatus = null,
    Object? logOutStatus = null,
    Object? updateAvatarStatus = null,
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      fetchStatus: null == fetchStatus
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      logOutStatus: null == logOutStatus
          ? _value.logOutStatus
          : logOutStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      updateAvatarStatus: null == updateAvatarStatus
          ? _value.updateAvatarStatus
          : updateAvatarStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.fetchStatus = ProfileStatus.initial,
      this.logOutStatus = ProfileStatus.initial,
      this.updateAvatarStatus = ProfileStatus.initial,
      this.user,
      this.message});

  @override
  @JsonKey()
  final ProfileStatus fetchStatus;
  @override
  @JsonKey()
  final ProfileStatus logOutStatus;
  @override
  @JsonKey()
  final ProfileStatus updateAvatarStatus;
  @override
  final User? user;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProfileState(fetchStatus: $fetchStatus, logOutStatus: $logOutStatus, updateAvatarStatus: $updateAvatarStatus, user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.fetchStatus, fetchStatus) ||
                other.fetchStatus == fetchStatus) &&
            (identical(other.logOutStatus, logOutStatus) ||
                other.logOutStatus == logOutStatus) &&
            (identical(other.updateAvatarStatus, updateAvatarStatus) ||
                other.updateAvatarStatus == updateAvatarStatus) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchStatus, logOutStatus,
      updateAvatarStatus, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ProfileStatus fetchStatus,
      final ProfileStatus logOutStatus,
      final ProfileStatus updateAvatarStatus,
      final User? user,
      final String? message}) = _$ProfileStateImpl;

  @override
  ProfileStatus get fetchStatus;
  @override
  ProfileStatus get logOutStatus;
  @override
  ProfileStatus get updateAvatarStatus;
  @override
  User? get user;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
