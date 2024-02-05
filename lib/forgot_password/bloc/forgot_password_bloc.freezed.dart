// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ForgotPasswordEmailChangedImplCopyWith<$Res> {
  factory _$$ForgotPasswordEmailChangedImplCopyWith(
          _$ForgotPasswordEmailChangedImpl value,
          $Res Function(_$ForgotPasswordEmailChangedImpl) then) =
      __$$ForgotPasswordEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordEmailChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordEmailChangedImpl>
    implements _$$ForgotPasswordEmailChangedImplCopyWith<$Res> {
  __$$ForgotPasswordEmailChangedImplCopyWithImpl(
      _$ForgotPasswordEmailChangedImpl _value,
      $Res Function(_$ForgotPasswordEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordEmailChangedImpl implements ForgotPasswordEmailChanged {
  const _$ForgotPasswordEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordEmailChangedImplCopyWith<_$ForgotPasswordEmailChangedImpl>
      get copyWith => __$$ForgotPasswordEmailChangedImplCopyWithImpl<
          _$ForgotPasswordEmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordEmailChanged implements ForgotPasswordEvent {
  const factory ForgotPasswordEmailChanged(final String email) =
      _$ForgotPasswordEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordEmailChangedImplCopyWith<_$ForgotPasswordEmailChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordTokenReceivedImplCopyWith<$Res> {
  factory _$$ForgotPasswordTokenReceivedImplCopyWith(
          _$ForgotPasswordTokenReceivedImpl value,
          $Res Function(_$ForgotPasswordTokenReceivedImpl) then) =
      __$$ForgotPasswordTokenReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$ForgotPasswordTokenReceivedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordTokenReceivedImpl>
    implements _$$ForgotPasswordTokenReceivedImplCopyWith<$Res> {
  __$$ForgotPasswordTokenReceivedImplCopyWithImpl(
      _$ForgotPasswordTokenReceivedImpl _value,
      $Res Function(_$ForgotPasswordTokenReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ForgotPasswordTokenReceivedImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordTokenReceivedImpl implements ForgotPasswordTokenReceived {
  const _$ForgotPasswordTokenReceivedImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'ForgotPasswordEvent.tokenReceived(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordTokenReceivedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordTokenReceivedImplCopyWith<_$ForgotPasswordTokenReceivedImpl>
      get copyWith => __$$ForgotPasswordTokenReceivedImplCopyWithImpl<
          _$ForgotPasswordTokenReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return tokenReceived(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return tokenReceived?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return tokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return tokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordTokenReceived implements ForgotPasswordEvent {
  const factory ForgotPasswordTokenReceived(final String token) =
      _$ForgotPasswordTokenReceivedImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$ForgotPasswordTokenReceivedImplCopyWith<_$ForgotPasswordTokenReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordNewPasswordChangedImplCopyWith<$Res> {
  factory _$$ForgotPasswordNewPasswordChangedImplCopyWith(
          _$ForgotPasswordNewPasswordChangedImpl value,
          $Res Function(_$ForgotPasswordNewPasswordChangedImpl) then) =
      __$$ForgotPasswordNewPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$ForgotPasswordNewPasswordChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordNewPasswordChangedImpl>
    implements _$$ForgotPasswordNewPasswordChangedImplCopyWith<$Res> {
  __$$ForgotPasswordNewPasswordChangedImplCopyWithImpl(
      _$ForgotPasswordNewPasswordChangedImpl _value,
      $Res Function(_$ForgotPasswordNewPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$ForgotPasswordNewPasswordChangedImpl(
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordNewPasswordChangedImpl
    implements ForgotPasswordNewPasswordChanged {
  const _$ForgotPasswordNewPasswordChangedImpl(this.newPassword);

  @override
  final String newPassword;

  @override
  String toString() {
    return 'ForgotPasswordEvent.newPasswordChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordNewPasswordChangedImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordNewPasswordChangedImplCopyWith<
          _$ForgotPasswordNewPasswordChangedImpl>
      get copyWith => __$$ForgotPasswordNewPasswordChangedImplCopyWithImpl<
          _$ForgotPasswordNewPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return newPasswordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return newPasswordChanged?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
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
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordNewPasswordChanged implements ForgotPasswordEvent {
  const factory ForgotPasswordNewPasswordChanged(final String newPassword) =
      _$ForgotPasswordNewPasswordChangedImpl;

  String get newPassword;
  @JsonKey(ignore: true)
  _$$ForgotPasswordNewPasswordChangedImplCopyWith<
          _$ForgotPasswordNewPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordConfirmedPasswordChangedImplCopyWith<$Res> {
  factory _$$ForgotPasswordConfirmedPasswordChangedImplCopyWith(
          _$ForgotPasswordConfirmedPasswordChangedImpl value,
          $Res Function(_$ForgotPasswordConfirmedPasswordChangedImpl) then) =
      __$$ForgotPasswordConfirmedPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class __$$ForgotPasswordConfirmedPasswordChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordConfirmedPasswordChangedImpl>
    implements _$$ForgotPasswordConfirmedPasswordChangedImplCopyWith<$Res> {
  __$$ForgotPasswordConfirmedPasswordChangedImplCopyWithImpl(
      _$ForgotPasswordConfirmedPasswordChangedImpl _value,
      $Res Function(_$ForgotPasswordConfirmedPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(_$ForgotPasswordConfirmedPasswordChangedImpl(
      null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordConfirmedPasswordChangedImpl
    implements ForgotPasswordConfirmedPasswordChanged {
  const _$ForgotPasswordConfirmedPasswordChangedImpl(this.confirmedPassword);

  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'ForgotPasswordEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordConfirmedPasswordChangedImpl &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordConfirmedPasswordChangedImplCopyWith<
          _$ForgotPasswordConfirmedPasswordChangedImpl>
      get copyWith =>
          __$$ForgotPasswordConfirmedPasswordChangedImplCopyWithImpl<
              _$ForgotPasswordConfirmedPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return confirmedPasswordChanged(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return confirmedPasswordChanged?.call(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
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
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return confirmedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return confirmedPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordConfirmedPasswordChanged
    implements ForgotPasswordEvent {
  const factory ForgotPasswordConfirmedPasswordChanged(
          final String confirmedPassword) =
      _$ForgotPasswordConfirmedPasswordChangedImpl;

  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$$ForgotPasswordConfirmedPasswordChangedImplCopyWith<
          _$ForgotPasswordConfirmedPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordInputEmailFormSubmittedImplCopyWith<$Res> {
  factory _$$ForgotPasswordInputEmailFormSubmittedImplCopyWith(
          _$ForgotPasswordInputEmailFormSubmittedImpl value,
          $Res Function(_$ForgotPasswordInputEmailFormSubmittedImpl) then) =
      __$$ForgotPasswordInputEmailFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordInputEmailFormSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordInputEmailFormSubmittedImpl>
    implements _$$ForgotPasswordInputEmailFormSubmittedImplCopyWith<$Res> {
  __$$ForgotPasswordInputEmailFormSubmittedImplCopyWithImpl(
      _$ForgotPasswordInputEmailFormSubmittedImpl _value,
      $Res Function(_$ForgotPasswordInputEmailFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordInputEmailFormSubmittedImpl
    implements ForgotPasswordInputEmailFormSubmitted {
  const _$ForgotPasswordInputEmailFormSubmittedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.inputEmailFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInputEmailFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return inputEmailFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return inputEmailFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (inputEmailFormSubmitted != null) {
      return inputEmailFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return inputEmailFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return inputEmailFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (inputEmailFormSubmitted != null) {
      return inputEmailFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInputEmailFormSubmitted
    implements ForgotPasswordEvent {
  const factory ForgotPasswordInputEmailFormSubmitted() =
      _$ForgotPasswordInputEmailFormSubmittedImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordInputPasswordFormSubmittedImplCopyWith<$Res> {
  factory _$$ForgotPasswordInputPasswordFormSubmittedImplCopyWith(
          _$ForgotPasswordInputPasswordFormSubmittedImpl value,
          $Res Function(_$ForgotPasswordInputPasswordFormSubmittedImpl) then) =
      __$$ForgotPasswordInputPasswordFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordInputPasswordFormSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ForgotPasswordInputPasswordFormSubmittedImpl>
    implements _$$ForgotPasswordInputPasswordFormSubmittedImplCopyWith<$Res> {
  __$$ForgotPasswordInputPasswordFormSubmittedImplCopyWithImpl(
      _$ForgotPasswordInputPasswordFormSubmittedImpl _value,
      $Res Function(_$ForgotPasswordInputPasswordFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordInputPasswordFormSubmittedImpl
    implements ForgotPasswordInputPasswordFormSubmitted {
  const _$ForgotPasswordInputPasswordFormSubmittedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.inputPasswordFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInputPasswordFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String token) tokenReceived,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() inputEmailFormSubmitted,
    required TResult Function() inputPasswordFormSubmitted,
  }) {
    return inputPasswordFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String token)? tokenReceived,
    TResult? Function(String newPassword)? newPasswordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? inputEmailFormSubmitted,
    TResult? Function()? inputPasswordFormSubmitted,
  }) {
    return inputPasswordFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String token)? tokenReceived,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? inputEmailFormSubmitted,
    TResult Function()? inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (inputPasswordFormSubmitted != null) {
      return inputPasswordFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordEmailChanged value) emailChanged,
    required TResult Function(ForgotPasswordTokenReceived value) tokenReceived,
    required TResult Function(ForgotPasswordNewPasswordChanged value)
        newPasswordChanged,
    required TResult Function(ForgotPasswordConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(ForgotPasswordInputEmailFormSubmitted value)
        inputEmailFormSubmitted,
    required TResult Function(ForgotPasswordInputPasswordFormSubmitted value)
        inputPasswordFormSubmitted,
  }) {
    return inputPasswordFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult? Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult? Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult? Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult? Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
  }) {
    return inputPasswordFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordEmailChanged value)? emailChanged,
    TResult Function(ForgotPasswordTokenReceived value)? tokenReceived,
    TResult Function(ForgotPasswordNewPasswordChanged value)?
        newPasswordChanged,
    TResult Function(ForgotPasswordConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(ForgotPasswordInputEmailFormSubmitted value)?
        inputEmailFormSubmitted,
    TResult Function(ForgotPasswordInputPasswordFormSubmitted value)?
        inputPasswordFormSubmitted,
    required TResult orElse(),
  }) {
    if (inputPasswordFormSubmitted != null) {
      return inputPasswordFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInputPasswordFormSubmitted
    implements ForgotPasswordEvent {
  const factory ForgotPasswordInputPasswordFormSubmitted() =
      _$ForgotPasswordInputPasswordFormSubmittedImpl;
}

/// @nodoc
mixin _$ForgotPasswordState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzSubmissionStatus status, Email email,
            bool isValid, String? message)
        inputEmail,
    required TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)
        inputPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult? Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInputEmailState value) inputEmail,
    required TResult Function(ForgotPasswordInputPasswordState value)
        inputPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult? Function(ForgotPasswordInputPasswordState value)? inputPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult Function(ForgotPasswordInputPasswordState value)? inputPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call({FormzSubmissionStatus status, bool isValid, String? message});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordInputEmailStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordInputEmailStateImplCopyWith(
          _$ForgotPasswordInputEmailStateImpl value,
          $Res Function(_$ForgotPasswordInputEmailStateImpl) then) =
      __$$ForgotPasswordInputEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      bool isValid,
      String? message});
}

/// @nodoc
class __$$ForgotPasswordInputEmailStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordInputEmailStateImpl>
    implements _$$ForgotPasswordInputEmailStateImplCopyWith<$Res> {
  __$$ForgotPasswordInputEmailStateImplCopyWithImpl(
      _$ForgotPasswordInputEmailStateImpl _value,
      $Res Function(_$ForgotPasswordInputEmailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$ForgotPasswordInputEmailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordInputEmailStateImpl
    implements ForgotPasswordInputEmailState {
  const _$ForgotPasswordInputEmailStateImpl(
      {required this.status,
      required this.email,
      required this.isValid,
      this.message});

  @override
  final FormzSubmissionStatus status;
  @override
  final Email email;
  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'ForgotPasswordState.inputEmail(status: $status, email: $email, isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInputEmailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordInputEmailStateImplCopyWith<
          _$ForgotPasswordInputEmailStateImpl>
      get copyWith => __$$ForgotPasswordInputEmailStateImplCopyWithImpl<
          _$ForgotPasswordInputEmailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzSubmissionStatus status, Email email,
            bool isValid, String? message)
        inputEmail,
    required TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)
        inputPassword,
  }) {
    return inputEmail(status, email, isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult? Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
  }) {
    return inputEmail?.call(status, email, isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
    required TResult orElse(),
  }) {
    if (inputEmail != null) {
      return inputEmail(status, email, isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInputEmailState value) inputEmail,
    required TResult Function(ForgotPasswordInputPasswordState value)
        inputPassword,
  }) {
    return inputEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult? Function(ForgotPasswordInputPasswordState value)? inputPassword,
  }) {
    return inputEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult Function(ForgotPasswordInputPasswordState value)? inputPassword,
    required TResult orElse(),
  }) {
    if (inputEmail != null) {
      return inputEmail(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInputEmailState implements ForgotPasswordState {
  const factory ForgotPasswordInputEmailState(
      {required final FormzSubmissionStatus status,
      required final Email email,
      required final bool isValid,
      final String? message}) = _$ForgotPasswordInputEmailStateImpl;

  @override
  FormzSubmissionStatus get status;
  Email get email;
  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordInputEmailStateImplCopyWith<
          _$ForgotPasswordInputEmailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordInputPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordInputPasswordStateImplCopyWith(
          _$ForgotPasswordInputPasswordStateImpl value,
          $Res Function(_$ForgotPasswordInputPasswordStateImpl) then) =
      __$$ForgotPasswordInputPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Password newPassword,
      ConfirmedPassword confirmedPassword,
      bool isValid,
      String token,
      String? message});
}

/// @nodoc
class __$$ForgotPasswordInputPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res,
        _$ForgotPasswordInputPasswordStateImpl>
    implements _$$ForgotPasswordInputPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordInputPasswordStateImplCopyWithImpl(
      _$ForgotPasswordInputPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordInputPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? newPassword = null,
    Object? confirmedPassword = null,
    Object? isValid = null,
    Object? token = null,
    Object? message = freezed,
  }) {
    return _then(_$ForgotPasswordInputPasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordInputPasswordStateImpl
    implements ForgotPasswordInputPasswordState {
  const _$ForgotPasswordInputPasswordStateImpl(
      {required this.status,
      required this.newPassword,
      required this.confirmedPassword,
      required this.isValid,
      required this.token,
      this.message});

  @override
  final FormzSubmissionStatus status;
  @override
  final Password newPassword;
  @override
  final ConfirmedPassword confirmedPassword;
  @override
  final bool isValid;
  @override
  final String token;
  @override
  final String? message;

  @override
  String toString() {
    return 'ForgotPasswordState.inputPassword(status: $status, newPassword: $newPassword, confirmedPassword: $confirmedPassword, isValid: $isValid, token: $token, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordInputPasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, newPassword,
      confirmedPassword, isValid, token, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordInputPasswordStateImplCopyWith<
          _$ForgotPasswordInputPasswordStateImpl>
      get copyWith => __$$ForgotPasswordInputPasswordStateImplCopyWithImpl<
          _$ForgotPasswordInputPasswordStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormzSubmissionStatus status, Email email,
            bool isValid, String? message)
        inputEmail,
    required TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)
        inputPassword,
  }) {
    return inputPassword(
        status, newPassword, confirmedPassword, isValid, token, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult? Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
  }) {
    return inputPassword?.call(
        status, newPassword, confirmedPassword, isValid, token, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormzSubmissionStatus status, Email email, bool isValid,
            String? message)?
        inputEmail,
    TResult Function(
            FormzSubmissionStatus status,
            Password newPassword,
            ConfirmedPassword confirmedPassword,
            bool isValid,
            String token,
            String? message)?
        inputPassword,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(
          status, newPassword, confirmedPassword, isValid, token, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ForgotPasswordInputEmailState value) inputEmail,
    required TResult Function(ForgotPasswordInputPasswordState value)
        inputPassword,
  }) {
    return inputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult? Function(ForgotPasswordInputPasswordState value)? inputPassword,
  }) {
    return inputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ForgotPasswordInputEmailState value)? inputEmail,
    TResult Function(ForgotPasswordInputPasswordState value)? inputPassword,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordInputPasswordState implements ForgotPasswordState {
  const factory ForgotPasswordInputPasswordState(
      {required final FormzSubmissionStatus status,
      required final Password newPassword,
      required final ConfirmedPassword confirmedPassword,
      required final bool isValid,
      required final String token,
      final String? message}) = _$ForgotPasswordInputPasswordStateImpl;

  @override
  FormzSubmissionStatus get status;
  Password get newPassword;
  ConfirmedPassword get confirmedPassword;
  @override
  bool get isValid;
  String get token;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordInputPasswordStateImplCopyWith<
          _$ForgotPasswordInputPasswordStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
