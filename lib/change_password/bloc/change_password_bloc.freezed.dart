// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordOldPasswordChanged value)
        oldPasswordChanged,
    required TResult Function(ChangePasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ChangePasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ChangePasswordFormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult? Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ChangePasswordFormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ChangePasswordFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePasswordOldPasswordChangedImplCopyWith<$Res> {
  factory _$$ChangePasswordOldPasswordChangedImplCopyWith(
          _$ChangePasswordOldPasswordChangedImpl value,
          $Res Function(_$ChangePasswordOldPasswordChangedImpl) then) =
      __$$ChangePasswordOldPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldPassword});
}

/// @nodoc
class __$$ChangePasswordOldPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$ChangePasswordOldPasswordChangedImpl>
    implements _$$ChangePasswordOldPasswordChangedImplCopyWith<$Res> {
  __$$ChangePasswordOldPasswordChangedImplCopyWithImpl(
      _$ChangePasswordOldPasswordChangedImpl _value,
      $Res Function(_$ChangePasswordOldPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
  }) {
    return _then(_$ChangePasswordOldPasswordChangedImpl(
      null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordOldPasswordChangedImpl
    implements ChangePasswordOldPasswordChanged {
  const _$ChangePasswordOldPasswordChangedImpl(this.oldPassword);

  @override
  final String oldPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordChanged(oldPassword: $oldPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordOldPasswordChangedImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordOldPasswordChangedImplCopyWith<
          _$ChangePasswordOldPasswordChangedImpl>
      get copyWith => __$$ChangePasswordOldPasswordChangedImplCopyWithImpl<
          _$ChangePasswordOldPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return oldPasswordChanged(oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return oldPasswordChanged?.call(oldPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(oldPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordOldPasswordChanged value)
        oldPasswordChanged,
    required TResult Function(ChangePasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ChangePasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ChangePasswordFormSubmitted value) formSubmitted,
  }) {
    return oldPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult? Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ChangePasswordFormSubmitted value)? formSubmitted,
  }) {
    return oldPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ChangePasswordFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordOldPasswordChanged implements ChangePasswordEvent {
  const factory ChangePasswordOldPasswordChanged(final String oldPassword) =
      _$ChangePasswordOldPasswordChangedImpl;

  String get oldPassword;
  @JsonKey(ignore: true)
  _$$ChangePasswordOldPasswordChangedImplCopyWith<
          _$ChangePasswordOldPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordNewPasswordChangedImplCopyWith<$Res> {
  factory _$$ChangePasswordNewPasswordChangedImplCopyWith(
          _$ChangePasswordNewPasswordChangedImpl value,
          $Res Function(_$ChangePasswordNewPasswordChangedImpl) then) =
      __$$ChangePasswordNewPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$ChangePasswordNewPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$ChangePasswordNewPasswordChangedImpl>
    implements _$$ChangePasswordNewPasswordChangedImplCopyWith<$Res> {
  __$$ChangePasswordNewPasswordChangedImplCopyWithImpl(
      _$ChangePasswordNewPasswordChangedImpl _value,
      $Res Function(_$ChangePasswordNewPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$ChangePasswordNewPasswordChangedImpl(
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordNewPasswordChangedImpl
    implements ChangePasswordNewPasswordChanged {
  const _$ChangePasswordNewPasswordChangedImpl(this.newPassword);

  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordNewPasswordChangedImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordNewPasswordChangedImplCopyWith<
          _$ChangePasswordNewPasswordChangedImpl>
      get copyWith => __$$ChangePasswordNewPasswordChangedImplCopyWithImpl<
          _$ChangePasswordNewPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return newPasswordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return newPasswordChanged?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordOldPasswordChanged value)
        oldPasswordChanged,
    required TResult Function(ChangePasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ChangePasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ChangePasswordFormSubmitted value) formSubmitted,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult? Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ChangePasswordFormSubmitted value)? formSubmitted,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ChangePasswordFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordNewPasswordChanged implements ChangePasswordEvent {
  const factory ChangePasswordNewPasswordChanged(final String newPassword) =
      _$ChangePasswordNewPasswordChangedImpl;

  String get newPassword;
  @JsonKey(ignore: true)
  _$$ChangePasswordNewPasswordChangedImplCopyWith<
          _$ChangePasswordNewPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordConfirmedPasswordChangedImplCopyWith<$Res> {
  factory _$$ChangePasswordConfirmedPasswordChangedImplCopyWith(
          _$ChangePasswordConfirmedPasswordChangedImpl value,
          $Res Function(_$ChangePasswordConfirmedPasswordChangedImpl) then) =
      __$$ChangePasswordConfirmedPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class __$$ChangePasswordConfirmedPasswordChangedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$ChangePasswordConfirmedPasswordChangedImpl>
    implements _$$ChangePasswordConfirmedPasswordChangedImplCopyWith<$Res> {
  __$$ChangePasswordConfirmedPasswordChangedImplCopyWithImpl(
      _$ChangePasswordConfirmedPasswordChangedImpl _value,
      $Res Function(_$ChangePasswordConfirmedPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(_$ChangePasswordConfirmedPasswordChangedImpl(
      null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordConfirmedPasswordChangedImpl
    implements ChangePasswordConfirmedPasswordChanged {
  const _$ChangePasswordConfirmedPasswordChangedImpl(this.confirmedPassword);

  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordConfirmedPasswordChangedImpl &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordConfirmedPasswordChangedImplCopyWith<
          _$ChangePasswordConfirmedPasswordChangedImpl>
      get copyWith =>
          __$$ChangePasswordConfirmedPasswordChangedImplCopyWithImpl<
              _$ChangePasswordConfirmedPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return confirmedPasswordChanged(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return confirmedPasswordChanged?.call(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordOldPasswordChanged value)
        oldPasswordChanged,
    required TResult Function(ChangePasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ChangePasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ChangePasswordFormSubmitted value) formSubmitted,
  }) {
    return confirmedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult? Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ChangePasswordFormSubmitted value)? formSubmitted,
  }) {
    return confirmedPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ChangePasswordFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordConfirmedPasswordChanged
    implements ChangePasswordEvent {
  const factory ChangePasswordConfirmedPasswordChanged(
          final String confirmedPassword) =
      _$ChangePasswordConfirmedPasswordChangedImpl;

  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$$ChangePasswordConfirmedPasswordChangedImplCopyWith<
          _$ChangePasswordConfirmedPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordFormSubmittedImplCopyWith<$Res> {
  factory _$$ChangePasswordFormSubmittedImplCopyWith(
          _$ChangePasswordFormSubmittedImpl value,
          $Res Function(_$ChangePasswordFormSubmittedImpl) then) =
      __$$ChangePasswordFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePasswordFormSubmittedImplCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$ChangePasswordFormSubmittedImpl>
    implements _$$ChangePasswordFormSubmittedImplCopyWith<$Res> {
  __$$ChangePasswordFormSubmittedImplCopyWithImpl(
      _$ChangePasswordFormSubmittedImpl _value,
      $Res Function(_$ChangePasswordFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePasswordFormSubmittedImpl implements ChangePasswordFormSubmitted {
  const _$ChangePasswordFormSubmittedImpl();

  @override
  String toString() {
    return 'ChangePasswordEvent.formSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword) oldPasswordChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword)? oldPasswordChanged,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword)? oldPasswordChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePasswordOldPasswordChanged value)
        oldPasswordChanged,
    required TResult Function(ChangePasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ChangePasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ChangePasswordFormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult? Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ChangePasswordFormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePasswordOldPasswordChanged value)?
        oldPasswordChanged,
    TResult Function(ChangePasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ChangePasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ChangePasswordFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordFormSubmitted implements ChangePasswordEvent {
  const factory ChangePasswordFormSubmitted() =
      _$ChangePasswordFormSubmittedImpl;
}

/// @nodoc
mixin _$ChangePasswordState {
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  PasswordInput get oldPassword => throw _privateConstructorUsedError;
  PasswordInput get newPassword => throw _privateConstructorUsedError;
  ConfirmedPasswordInput get confirmedPassword =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {bool isValid,
      FormzSubmissionStatus status,
      PasswordInput oldPassword,
      PasswordInput newPassword,
      ConfirmedPasswordInput confirmedPassword,
      String? message});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? status = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmedPassword = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordInput,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordStateImplCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(_$ChangePasswordStateImpl value,
          $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isValid,
      FormzSubmissionStatus status,
      PasswordInput oldPassword,
      PasswordInput newPassword,
      ConfirmedPasswordInput confirmedPassword,
      String? message});
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(_$ChangePasswordStateImpl _value,
      $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? status = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmedPassword = null,
    Object? message = freezed,
  }) {
    return _then(_$ChangePasswordStateImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPasswordInput,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangePasswordStateImpl implements _ChangePasswordState {
  const _$ChangePasswordStateImpl(
      {required this.isValid,
      required this.status,
      required this.oldPassword,
      required this.newPassword,
      required this.confirmedPassword,
      this.message});

  @override
  final bool isValid;
  @override
  final FormzSubmissionStatus status;
  @override
  final PasswordInput oldPassword;
  @override
  final PasswordInput newPassword;
  @override
  final ConfirmedPasswordInput confirmedPassword;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChangePasswordState(isValid: $isValid, status: $status, oldPassword: $oldPassword, newPassword: $newPassword, confirmedPassword: $confirmedPassword, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, status, oldPassword,
      newPassword, confirmedPassword, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required final bool isValid,
      required final FormzSubmissionStatus status,
      required final PasswordInput oldPassword,
      required final PasswordInput newPassword,
      required final ConfirmedPasswordInput confirmedPassword,
      final String? message}) = _$ChangePasswordStateImpl;

  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get status;
  @override
  PasswordInput get oldPassword;
  @override
  PasswordInput get newPassword;
  @override
  ConfirmedPasswordInput get confirmedPassword;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
