// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationResponse<T> _$AuthenticationResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _AuthenticationResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$AuthenticationResponse<T> {
  @JsonKey(name: 'data')
  T get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResponseCopyWith<T, AuthenticationResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseCopyWith<T, $Res> {
  factory $AuthenticationResponseCopyWith(AuthenticationResponse<T> value,
          $Res Function(AuthenticationResponse<T>) then) =
      _$AuthenticationResponseCopyWithImpl<T, $Res, AuthenticationResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T data,
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$AuthenticationResponseCopyWithImpl<T, $Res,
        $Val extends AuthenticationResponse<T>>
    implements $AuthenticationResponseCopyWith<T, $Res> {
  _$AuthenticationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationResponseImplCopyWith<T, $Res>
    implements $AuthenticationResponseCopyWith<T, $Res> {
  factory _$$AuthenticationResponseImplCopyWith(
          _$AuthenticationResponseImpl<T> value,
          $Res Function(_$AuthenticationResponseImpl<T>) then) =
      __$$AuthenticationResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T data,
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$AuthenticationResponseImplCopyWithImpl<T, $Res>
    extends _$AuthenticationResponseCopyWithImpl<T, $Res,
        _$AuthenticationResponseImpl<T>>
    implements _$$AuthenticationResponseImplCopyWith<T, $Res> {
  __$$AuthenticationResponseImplCopyWithImpl(
      _$AuthenticationResponseImpl<T> _value,
      $Res Function(_$AuthenticationResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$AuthenticationResponseImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$AuthenticationResponseImpl<T> implements _AuthenticationResponse<T> {
  const _$AuthenticationResponseImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'code') this.code = 0,
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = ''});

  factory _$AuthenticationResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$AuthenticationResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'data')
  final T data;
  @override
  @JsonKey(name: 'code')
  final int code;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'message')
  final String message;

  @override
  String toString() {
    return 'AuthenticationResponse<$T>(data: $data, code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), code, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResponseImplCopyWith<T, _$AuthenticationResponseImpl<T>>
      get copyWith => __$$AuthenticationResponseImplCopyWithImpl<T,
          _$AuthenticationResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$AuthenticationResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _AuthenticationResponse<T> implements AuthenticationResponse<T> {
  const factory _AuthenticationResponse(
          {@JsonKey(name: 'data') required final T data,
          @JsonKey(name: 'code') final int code,
          @JsonKey(name: 'status') final String status,
          @JsonKey(name: 'message') final String message}) =
      _$AuthenticationResponseImpl<T>;

  factory _AuthenticationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$AuthenticationResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: 'data')
  T get data;
  @override
  @JsonKey(name: 'code')
  int get code;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationResponseImplCopyWith<T, _$AuthenticationResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'access_token') String accessToken});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? accessToken = null,
  }) {
    return _then(_$TokenImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  const _$TokenImpl(
      {@JsonKey(name: 'refresh_token') this.refreshToken = '',
      @JsonKey(name: 'access_token') this.accessToken = ''});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;

  @override
  String toString() {
    return 'Token(refreshToken: $refreshToken, accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {@JsonKey(name: 'refresh_token') final String refreshToken,
      @JsonKey(name: 'access_token') final String accessToken}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResetPassword _$ResetPasswordFromJson(Map<String, dynamic> json) {
  return _ResetPassword.fromJson(json);
}

/// @nodoc
mixin _$ResetPassword {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res, ResetPassword>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res, $Val extends ResetPassword>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_$ResetPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl(
      {@JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'token') this.token = ''});

  factory _$ResetPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'ResetPassword(email: $email, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordImplToJson(
      this,
    );
  }
}

abstract class _ResetPassword implements ResetPassword {
  const factory _ResetPassword(
      {@JsonKey(name: 'email') final String email,
      @JsonKey(name: 'token') final String token}) = _$ResetPasswordImpl;

  factory _ResetPassword.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
