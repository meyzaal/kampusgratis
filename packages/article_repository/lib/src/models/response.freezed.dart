// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Response<T> _$ResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Response<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Response<T> {
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
  $ResponseCopyWith<T, Response<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<T, $Res> {
  factory $ResponseCopyWith(
          Response<T> value, $Res Function(Response<T>) then) =
      _$ResponseCopyWithImpl<T, $Res, Response<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T data,
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class _$ResponseCopyWithImpl<T, $Res, $Val extends Response<T>>
    implements $ResponseCopyWith<T, $Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ResponseImplCopyWith<T, $Res>
    implements $ResponseCopyWith<T, $Res> {
  factory _$$ResponseImplCopyWith(
          _$ResponseImpl<T> value, $Res Function(_$ResponseImpl<T>) then) =
      __$$ResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T data,
      @JsonKey(name: 'code') int code,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'message') String message});
}

/// @nodoc
class __$$ResponseImplCopyWithImpl<T, $Res>
    extends _$ResponseCopyWithImpl<T, $Res, _$ResponseImpl<T>>
    implements _$$ResponseImplCopyWith<T, $Res> {
  __$$ResponseImplCopyWithImpl(
      _$ResponseImpl<T> _value, $Res Function(_$ResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$ResponseImpl<T>(
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
class _$ResponseImpl<T> implements _Response<T> {
  const _$ResponseImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'code') this.code = 0,
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = ''});

  factory _$ResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseImplFromJson(json, fromJsonT);

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
    return 'Response<$T>(data: $data, code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseImpl<T> &&
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
  _$$ResponseImplCopyWith<T, _$ResponseImpl<T>> get copyWith =>
      __$$ResponseImplCopyWithImpl<T, _$ResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _Response<T> implements Response<T> {
  const factory _Response(
      {@JsonKey(name: 'data') required final T data,
      @JsonKey(name: 'code') final int code,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'message') final String message}) = _$ResponseImpl<T>;

  factory _Response.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseImpl<T>.fromJson;

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
  _$$ResponseImplCopyWith<T, _$ResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
