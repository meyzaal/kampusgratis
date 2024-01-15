// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

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
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  _$UnknownFailureImpl(
      {this.message = 'Terjadi kesalahan yang tidak diketahui.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
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
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  factory UnknownFailure({final String message}) = _$UnknownFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ParsingFailedFailureImplCopyWith(_$ParsingFailedFailureImpl value,
          $Res Function(_$ParsingFailedFailureImpl) then) =
      __$$ParsingFailedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParsingFailedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ParsingFailedFailureImpl>
    implements _$$ParsingFailedFailureImplCopyWith<$Res> {
  __$$ParsingFailedFailureImplCopyWithImpl(_$ParsingFailedFailureImpl _value,
      $Res Function(_$ParsingFailedFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParsingFailedFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsingFailedFailureImpl implements ParsingFailedFailure {
  _$ParsingFailedFailureImpl({this.message = 'Gagal memparsing response.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.parsingFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsingFailedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsingFailedFailureImplCopyWith<_$ParsingFailedFailureImpl>
      get copyWith =>
          __$$ParsingFailedFailureImplCopyWithImpl<_$ParsingFailedFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) {
    return parsingFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) {
    return parsingFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
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
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) {
    return parsingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) {
    return parsingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) {
    if (parsingFailed != null) {
      return parsingFailed(this);
    }
    return orElse();
  }
}

abstract class ParsingFailedFailure implements Failure {
  factory ParsingFailedFailure({final String message}) =
      _$ParsingFailedFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ParsingFailedFailureImplCopyWith<_$ParsingFailedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionErrorFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionErrorFailureImplCopyWith(
          _$ConnectionErrorFailureImpl value,
          $Res Function(_$ConnectionErrorFailureImpl) then) =
      __$$ConnectionErrorFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionErrorFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionErrorFailureImpl>
    implements _$$ConnectionErrorFailureImplCopyWith<$Res> {
  __$$ConnectionErrorFailureImplCopyWithImpl(
      _$ConnectionErrorFailureImpl _value,
      $Res Function(_$ConnectionErrorFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionErrorFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionErrorFailureImpl implements ConnectionErrorFailure {
  _$ConnectionErrorFailureImpl({this.message = 'Terjadi masalah koneksi.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.connectionError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionErrorFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionErrorFailureImplCopyWith<_$ConnectionErrorFailureImpl>
      get copyWith => __$$ConnectionErrorFailureImplCopyWithImpl<
          _$ConnectionErrorFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) {
    return connectionError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) {
    return connectionError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
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
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class ConnectionErrorFailure implements Failure {
  factory ConnectionErrorFailure({final String message}) =
      _$ConnectionErrorFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionErrorFailureImplCopyWith<_$ConnectionErrorFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeoutFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionTimeoutFailureImplCopyWith(
          _$ConnectionTimeoutFailureImpl value,
          $Res Function(_$ConnectionTimeoutFailureImpl) then) =
      __$$ConnectionTimeoutFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionTimeoutFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionTimeoutFailureImpl>
    implements _$$ConnectionTimeoutFailureImplCopyWith<$Res> {
  __$$ConnectionTimeoutFailureImplCopyWithImpl(
      _$ConnectionTimeoutFailureImpl _value,
      $Res Function(_$ConnectionTimeoutFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionTimeoutFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeoutFailureImpl implements ConnectionTimeoutFailure {
  _$ConnectionTimeoutFailureImpl({this.message = 'Waktu koneksi habis.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.connectionTimeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeoutFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeoutFailureImplCopyWith<_$ConnectionTimeoutFailureImpl>
      get copyWith => __$$ConnectionTimeoutFailureImplCopyWithImpl<
          _$ConnectionTimeoutFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) {
    return connectionTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) {
    return connectionTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class ConnectionTimeoutFailure implements Failure {
  factory ConnectionTimeoutFailure({final String message}) =
      _$ConnectionTimeoutFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionTimeoutFailureImplCopyWith<_$ConnectionTimeoutFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadResponseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$BadResponseFailureImplCopyWith(_$BadResponseFailureImpl value,
          $Res Function(_$BadResponseFailureImpl) then) =
      __$$BadResponseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, int? statusCode});
}

/// @nodoc
class __$$BadResponseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadResponseFailureImpl>
    implements _$$BadResponseFailureImplCopyWith<$Res> {
  __$$BadResponseFailureImplCopyWithImpl(_$BadResponseFailureImpl _value,
      $Res Function(_$BadResponseFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$BadResponseFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BadResponseFailureImpl implements BadResponseFailure {
  _$BadResponseFailureImpl(
      {this.message = 'Terjadi kesalahan.', this.statusCode});

  @override
  @JsonKey()
  final String? message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'Failure.badResponse(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadResponseFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadResponseFailureImplCopyWith<_$BadResponseFailureImpl> get copyWith =>
      __$$BadResponseFailureImplCopyWithImpl<_$BadResponseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String message) parsingFailed,
    required TResult Function(String message) connectionError,
    required TResult Function(String message) connectionTimeout,
    required TResult Function(String? message, int? statusCode) badResponse,
  }) {
    return badResponse(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? unknown,
    TResult? Function(String message)? parsingFailed,
    TResult? Function(String message)? connectionError,
    TResult? Function(String message)? connectionTimeout,
    TResult? Function(String? message, int? statusCode)? badResponse,
  }) {
    return badResponse?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String message)? parsingFailed,
    TResult Function(String message)? connectionError,
    TResult Function(String message)? connectionTimeout,
    TResult Function(String? message, int? statusCode)? badResponse,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(ParsingFailedFailure value) parsingFailed,
    required TResult Function(ConnectionErrorFailure value) connectionError,
    required TResult Function(ConnectionTimeoutFailure value) connectionTimeout,
    required TResult Function(BadResponseFailure value) badResponse,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(ParsingFailedFailure value)? parsingFailed,
    TResult? Function(ConnectionErrorFailure value)? connectionError,
    TResult? Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult? Function(BadResponseFailure value)? badResponse,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(ParsingFailedFailure value)? parsingFailed,
    TResult Function(ConnectionErrorFailure value)? connectionError,
    TResult Function(ConnectionTimeoutFailure value)? connectionTimeout,
    TResult Function(BadResponseFailure value)? badResponse,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class BadResponseFailure implements Failure {
  factory BadResponseFailure({final String? message, final int? statusCode}) =
      _$BadResponseFailureImpl;

  @override
  String? get message;
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$BadResponseFailureImplCopyWith<_$BadResponseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
