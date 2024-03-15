// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkExceptionCopyWith<NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res, NetworkException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res, $Val extends NetworkException>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadResponseExceptionImplCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$BadResponseExceptionImplCopyWith(_$BadResponseExceptionImpl value,
          $Res Function(_$BadResponseExceptionImpl) then) =
      __$$BadResponseExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BadResponseExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$BadResponseExceptionImpl>
    implements _$$BadResponseExceptionImplCopyWith<$Res> {
  __$$BadResponseExceptionImplCopyWithImpl(_$BadResponseExceptionImpl _value,
      $Res Function(_$BadResponseExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BadResponseExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadResponseExceptionImpl implements BadResponseException {
  _$BadResponseExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkException.badResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadResponseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadResponseExceptionImplCopyWith<_$BadResponseExceptionImpl>
      get copyWith =>
          __$$BadResponseExceptionImplCopyWithImpl<_$BadResponseExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) {
    return badResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) {
    return badResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class BadResponseException implements NetworkException {
  factory BadResponseException(final String message) =
      _$BadResponseExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$BadResponseExceptionImplCopyWith<_$BadResponseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorExceptionImplCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$ConnectionErrorExceptionImplCopyWith(
          _$ConnectionErrorExceptionImpl value,
          $Res Function(_$ConnectionErrorExceptionImpl) then) =
      __$$ConnectionErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionErrorExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$ConnectionErrorExceptionImpl>
    implements _$$ConnectionErrorExceptionImplCopyWith<$Res> {
  __$$ConnectionErrorExceptionImplCopyWithImpl(
      _$ConnectionErrorExceptionImpl _value,
      $Res Function(_$ConnectionErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorExceptionImpl implements ConnectionErrorException {
  _$ConnectionErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkException.connectionError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorExceptionImplCopyWith<_$ConnectionErrorExceptionImpl>
      get copyWith => __$$ConnectionErrorExceptionImplCopyWithImpl<
          _$ConnectionErrorExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) {
    return connectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) {
    return connectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorException implements NetworkException {
  factory ConnectionErrorException(final String message) =
      _$ConnectionErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionErrorExceptionImplCopyWith<_$ConnectionErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailedExceptionImplCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$ParsingFailedExceptionImplCopyWith(
          _$ParsingFailedExceptionImpl value,
          $Res Function(_$ParsingFailedExceptionImpl) then) =
      __$$ParsingFailedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParsingFailedExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$ParsingFailedExceptionImpl>
    implements _$$ParsingFailedExceptionImplCopyWith<$Res> {
  __$$ParsingFailedExceptionImplCopyWithImpl(
      _$ParsingFailedExceptionImpl _value,
      $Res Function(_$ParsingFailedExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParsingFailedExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsingFailedExceptionImpl implements ParsingFailedException {
  _$ParsingFailedExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkException.parsingFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsingFailedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsingFailedExceptionImplCopyWith<_$ParsingFailedExceptionImpl>
      get copyWith => __$$ParsingFailedExceptionImplCopyWithImpl<
          _$ParsingFailedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) {
    return parsingFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) {
    return parsingFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailed != null) {
      return parsingFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) {
    return parsingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return parsingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (parsingFailed != null) {
      return parsingFailed(this);
    }
    return orElse();
  }
}

abstract class ParsingFailedException implements NetworkException {
  factory ParsingFailedException(final String message) =
      _$ParsingFailedExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ParsingFailedExceptionImplCopyWith<_$ParsingFailedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestPayloadExceptionImplCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$RequestPayloadExceptionImplCopyWith(
          _$RequestPayloadExceptionImpl value,
          $Res Function(_$RequestPayloadExceptionImpl) then) =
      __$$RequestPayloadExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RequestPayloadExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$RequestPayloadExceptionImpl>
    implements _$$RequestPayloadExceptionImplCopyWith<$Res> {
  __$$RequestPayloadExceptionImplCopyWithImpl(
      _$RequestPayloadExceptionImpl _value,
      $Res Function(_$RequestPayloadExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RequestPayloadExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestPayloadExceptionImpl implements RequestPayloadException {
  _$RequestPayloadExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkException.requestPayload(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPayloadExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPayloadExceptionImplCopyWith<_$RequestPayloadExceptionImpl>
      get copyWith => __$$RequestPayloadExceptionImplCopyWithImpl<
          _$RequestPayloadExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) {
    return requestPayload(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) {
    return requestPayload?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (requestPayload != null) {
      return requestPayload(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) {
    return requestPayload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return requestPayload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (requestPayload != null) {
      return requestPayload(this);
    }
    return orElse();
  }
}

abstract class RequestPayloadException implements NetworkException {
  factory RequestPayloadException(final String message) =
      _$RequestPayloadExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RequestPayloadExceptionImplCopyWith<_$RequestPayloadExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownExceptionImplCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$UnknownExceptionImplCopyWith(_$UnknownExceptionImpl value,
          $Res Function(_$UnknownExceptionImpl) then) =
      __$$UnknownExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownExceptionImplCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res, _$UnknownExceptionImpl>
    implements _$$UnknownExceptionImplCopyWith<$Res> {
  __$$UnknownExceptionImplCopyWithImpl(_$UnknownExceptionImpl _value,
      $Res Function(_$UnknownExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownExceptionImpl implements UnknownException {
  _$UnknownExceptionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkException.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      __$$UnknownExceptionImplCopyWithImpl<_$UnknownExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) badResponse,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) requestPayload,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? badResponse,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? requestPayload,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? badResponse,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? requestPayload,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadResponseException value) badResponse,
    required TResult Function(ConnectionErrorException value) connectionError,
    required TResult Function(ParsingFailedException value) parsingFailed,
    required TResult Function(RequestPayloadException value) requestPayload,
    required TResult Function(UnknownException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadResponseException value)? badResponse,
    TResult? Function(ConnectionErrorException value)? connectionError,
    TResult? Function(ParsingFailedException value)? parsingFailed,
    TResult? Function(RequestPayloadException value)? requestPayload,
    TResult? Function(UnknownException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadResponseException value)? badResponse,
    TResult Function(ConnectionErrorException value)? connectionError,
    TResult Function(ParsingFailedException value)? parsingFailed,
    TResult Function(RequestPayloadException value)? requestPayload,
    TResult Function(UnknownException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownException implements NetworkException {
  factory UnknownException(final String message) = _$UnknownExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownExceptionImplCopyWith<_$UnknownExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
