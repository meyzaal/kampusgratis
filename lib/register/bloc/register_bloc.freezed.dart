// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterNameChangedImplCopyWith<$Res> {
  factory _$$RegisterNameChangedImplCopyWith(_$RegisterNameChangedImpl value,
          $Res Function(_$RegisterNameChangedImpl) then) =
      __$$RegisterNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RegisterNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterNameChangedImpl>
    implements _$$RegisterNameChangedImplCopyWith<$Res> {
  __$$RegisterNameChangedImplCopyWithImpl(_$RegisterNameChangedImpl _value,
      $Res Function(_$RegisterNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RegisterNameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterNameChangedImpl implements RegisterNameChanged {
  const _$RegisterNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterNameChangedImplCopyWith<_$RegisterNameChangedImpl> get copyWith =>
      __$$RegisterNameChangedImplCopyWithImpl<_$RegisterNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterNameChanged implements RegisterEvent {
  const factory RegisterNameChanged(final String name) =
      _$RegisterNameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$RegisterNameChangedImplCopyWith<_$RegisterNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterEmailChangedImplCopyWith<$Res> {
  factory _$$RegisterEmailChangedImplCopyWith(_$RegisterEmailChangedImpl value,
          $Res Function(_$RegisterEmailChangedImpl) then) =
      __$$RegisterEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RegisterEmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterEmailChangedImpl>
    implements _$$RegisterEmailChangedImplCopyWith<$Res> {
  __$$RegisterEmailChangedImplCopyWithImpl(_$RegisterEmailChangedImpl _value,
      $Res Function(_$RegisterEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegisterEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEmailChangedImpl implements RegisterEmailChanged {
  const _$RegisterEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEmailChangedImplCopyWith<_$RegisterEmailChangedImpl>
      get copyWith =>
          __$$RegisterEmailChangedImplCopyWithImpl<_$RegisterEmailChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
    TResult Function()? formSubmitted,
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
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterEmailChanged implements RegisterEvent {
  const factory RegisterEmailChanged(final String email) =
      _$RegisterEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$RegisterEmailChangedImplCopyWith<_$RegisterEmailChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterPasswordChangedImplCopyWith<$Res> {
  factory _$$RegisterPasswordChangedImplCopyWith(
          _$RegisterPasswordChangedImpl value,
          $Res Function(_$RegisterPasswordChangedImpl) then) =
      __$$RegisterPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$RegisterPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterPasswordChangedImpl>
    implements _$$RegisterPasswordChangedImplCopyWith<$Res> {
  __$$RegisterPasswordChangedImplCopyWithImpl(
      _$RegisterPasswordChangedImpl _value,
      $Res Function(_$RegisterPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$RegisterPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterPasswordChangedImpl implements RegisterPasswordChanged {
  const _$RegisterPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPasswordChangedImplCopyWith<_$RegisterPasswordChangedImpl>
      get copyWith => __$$RegisterPasswordChangedImplCopyWithImpl<
          _$RegisterPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterPasswordChanged implements RegisterEvent {
  const factory RegisterPasswordChanged(final String password) =
      _$RegisterPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$RegisterPasswordChangedImplCopyWith<_$RegisterPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterConfirmedPasswordChangedImplCopyWith<$Res> {
  factory _$$RegisterConfirmedPasswordChangedImplCopyWith(
          _$RegisterConfirmedPasswordChangedImpl value,
          $Res Function(_$RegisterConfirmedPasswordChangedImpl) then) =
      __$$RegisterConfirmedPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class __$$RegisterConfirmedPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$RegisterConfirmedPasswordChangedImpl>
    implements _$$RegisterConfirmedPasswordChangedImplCopyWith<$Res> {
  __$$RegisterConfirmedPasswordChangedImplCopyWithImpl(
      _$RegisterConfirmedPasswordChangedImpl _value,
      $Res Function(_$RegisterConfirmedPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(_$RegisterConfirmedPasswordChangedImpl(
      null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterConfirmedPasswordChangedImpl
    implements RegisterConfirmedPasswordChanged {
  const _$RegisterConfirmedPasswordChangedImpl(this.confirmedPassword);

  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'RegisterEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterConfirmedPasswordChangedImpl &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterConfirmedPasswordChangedImplCopyWith<
          _$RegisterConfirmedPasswordChangedImpl>
      get copyWith => __$$RegisterConfirmedPasswordChangedImplCopyWithImpl<
          _$RegisterConfirmedPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return confirmedPasswordChanged(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return confirmedPasswordChanged?.call(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
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
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return confirmedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return confirmedPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterConfirmedPasswordChanged implements RegisterEvent {
  const factory RegisterConfirmedPasswordChanged(
      final String confirmedPassword) = _$RegisterConfirmedPasswordChangedImpl;

  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$$RegisterConfirmedPasswordChangedImplCopyWith<
          _$RegisterConfirmedPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterTermsAndConditionsChangedImplCopyWith<$Res> {
  factory _$$RegisterTermsAndConditionsChangedImplCopyWith(
          _$RegisterTermsAndConditionsChangedImpl value,
          $Res Function(_$RegisterTermsAndConditionsChangedImpl) then) =
      __$$RegisterTermsAndConditionsChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterTermsAndConditionsChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res,
        _$RegisterTermsAndConditionsChangedImpl>
    implements _$$RegisterTermsAndConditionsChangedImplCopyWith<$Res> {
  __$$RegisterTermsAndConditionsChangedImplCopyWithImpl(
      _$RegisterTermsAndConditionsChangedImpl _value,
      $Res Function(_$RegisterTermsAndConditionsChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterTermsAndConditionsChangedImpl
    implements RegisterTermsAndConditionsChanged {
  const _$RegisterTermsAndConditionsChangedImpl();

  @override
  String toString() {
    return 'RegisterEvent.termsAndConditionsChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterTermsAndConditionsChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return termsAndConditionsChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return termsAndConditionsChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (termsAndConditionsChanged != null) {
      return termsAndConditionsChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return termsAndConditionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return termsAndConditionsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (termsAndConditionsChanged != null) {
      return termsAndConditionsChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterTermsAndConditionsChanged implements RegisterEvent {
  const factory RegisterTermsAndConditionsChanged() =
      _$RegisterTermsAndConditionsChangedImpl;
}

/// @nodoc
abstract class _$$RegisterFormSubmittedImplCopyWith<$Res> {
  factory _$$RegisterFormSubmittedImplCopyWith(
          _$RegisterFormSubmittedImpl value,
          $Res Function(_$RegisterFormSubmittedImpl) then) =
      __$$RegisterFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterFormSubmittedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterFormSubmittedImpl>
    implements _$$RegisterFormSubmittedImplCopyWith<$Res> {
  __$$RegisterFormSubmittedImplCopyWithImpl(_$RegisterFormSubmittedImpl _value,
      $Res Function(_$RegisterFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterFormSubmittedImpl implements RegisterFormSubmitted {
  const _$RegisterFormSubmittedImpl();

  @override
  String toString() {
    return 'RegisterEvent.formSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() termsAndConditionsChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? termsAndConditionsChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? termsAndConditionsChanged,
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
    required TResult Function(RegisterNameChanged value) nameChanged,
    required TResult Function(RegisterEmailChanged value) emailChanged,
    required TResult Function(RegisterPasswordChanged value) passwordChanged,
    required TResult Function(RegisterConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(RegisterTermsAndConditionsChanged value)
        termsAndConditionsChanged,
    required TResult Function(RegisterFormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterNameChanged value)? nameChanged,
    TResult? Function(RegisterEmailChanged value)? emailChanged,
    TResult? Function(RegisterPasswordChanged value)? passwordChanged,
    TResult? Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult? Function(RegisterFormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterNameChanged value)? nameChanged,
    TResult Function(RegisterEmailChanged value)? emailChanged,
    TResult Function(RegisterPasswordChanged value)? passwordChanged,
    TResult Function(RegisterConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult Function(RegisterTermsAndConditionsChanged value)?
        termsAndConditionsChanged,
    TResult Function(RegisterFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegisterFormSubmitted implements RegisterEvent {
  const factory RegisterFormSubmitted() = _$RegisterFormSubmittedImpl;
}

/// @nodoc
mixin _$RegisterState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Email get email =>
      throw _privateConstructorUsedError; // required Phone phone,
  Password get password => throw _privateConstructorUsedError;
  ConfirmedPassword get confirmedPassword => throw _privateConstructorUsedError;
  TermsAndConditions get termsAndConditions =>
      throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      TermsAndConditions termsAndConditions,
      bool isValid,
      String? message});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? termsAndConditions = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      termsAndConditions: null == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as TermsAndConditions,
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
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      TermsAndConditions termsAndConditions,
      bool isValid,
      String? message});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? termsAndConditions = null,
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      termsAndConditions: null == termsAndConditions
          ? _value.termsAndConditions
          : termsAndConditions // ignore: cast_nullable_to_non_nullable
              as TermsAndConditions,
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

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {required this.status,
      required this.name,
      required this.email,
      required this.password,
      required this.confirmedPassword,
      required this.termsAndConditions,
      required this.isValid,
      this.message});

  @override
  final FormzSubmissionStatus status;
  @override
  final Name name;
  @override
  final Email email;
// required Phone phone,
  @override
  final Password password;
  @override
  final ConfirmedPassword confirmedPassword;
  @override
  final TermsAndConditions termsAndConditions;
  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'RegisterState(status: $status, name: $name, email: $email, password: $password, confirmedPassword: $confirmedPassword, termsAndConditions: $termsAndConditions, isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.termsAndConditions, termsAndConditions) ||
                other.termsAndConditions == termsAndConditions) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, email, password,
      confirmedPassword, termsAndConditions, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required final FormzSubmissionStatus status,
      required final Name name,
      required final Email email,
      required final Password password,
      required final ConfirmedPassword confirmedPassword,
      required final TermsAndConditions termsAndConditions,
      required final bool isValid,
      final String? message}) = _$RegisterStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  Name get name;
  @override
  Email get email;
  @override // required Phone phone,
  Password get password;
  @override
  ConfirmedPassword get confirmedPassword;
  @override
  TermsAndConditions get termsAndConditions;
  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
