// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  @JsonKey(name: 'access_token')
  @HiveField(0)
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  @HiveField(1)
  String? get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  @HiveField(2)
  int? get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  @HiveField(3)
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  @HiveField(4)
  String? get scope => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'access_token') @HiveField(0) String accessToken,
      @JsonKey(name: 'token_type') @HiveField(1) String? tokenType,
      @JsonKey(name: 'expires_in') @HiveField(2) int? expiresIn,
      @JsonKey(name: 'refresh_token') @HiveField(3) String? refreshToken,
      @JsonKey(name: 'scope') @HiveField(4) String? scope});
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
    Object? accessToken = null,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'access_token') @HiveField(0) String accessToken,
      @JsonKey(name: 'token_type') @HiveField(1) String? tokenType,
      @JsonKey(name: 'expires_in') @HiveField(2) int? expiresIn,
      @JsonKey(name: 'refresh_token') @HiveField(3) String? refreshToken,
      @JsonKey(name: 'scope') @HiveField(4) String? scope});
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
    Object? accessToken = null,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$TokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  const _$TokenImpl(
      {@JsonKey(name: 'access_token') @HiveField(0) required this.accessToken,
      @JsonKey(name: 'token_type') @HiveField(1) this.tokenType = 'bearer',
      @JsonKey(name: 'expires_in') @HiveField(2) this.expiresIn,
      @JsonKey(name: 'refresh_token') @HiveField(3) this.refreshToken,
      @JsonKey(name: 'scope') @HiveField(4) this.scope});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  @HiveField(0)
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  @HiveField(1)
  final String? tokenType;
  @override
  @JsonKey(name: 'expires_in')
  @HiveField(2)
  final int? expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  @HiveField(3)
  final String? refreshToken;
  @override
  @JsonKey(name: 'scope')
  @HiveField(4)
  final String? scope;

  @override
  String toString() {
    return 'Token(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, tokenType, expiresIn, refreshToken, scope);

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
      {@JsonKey(name: 'access_token')
      @HiveField(0)
      required final String accessToken,
      @JsonKey(name: 'token_type') @HiveField(1) final String? tokenType,
      @JsonKey(name: 'expires_in') @HiveField(2) final int? expiresIn,
      @JsonKey(name: 'refresh_token') @HiveField(3) final String? refreshToken,
      @JsonKey(name: 'scope') @HiveField(4) final String? scope}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  @HiveField(0)
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  @HiveField(1)
  String? get tokenType;
  @override
  @JsonKey(name: 'expires_in')
  @HiveField(2)
  int? get expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  @HiveField(3)
  String? get refreshToken;
  @override
  @JsonKey(name: 'scope')
  @HiveField(4)
  String? get scope;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
