// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Regency {
  String get code => throw _privateConstructorUsedError;
  String get provinceCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegencyCopyWith<Regency> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegencyCopyWith<$Res> {
  factory $RegencyCopyWith(Regency value, $Res Function(Regency) then) =
      _$RegencyCopyWithImpl<$Res, Regency>;
  @useResult
  $Res call({String code, String provinceCode, String name});
}

/// @nodoc
class _$RegencyCopyWithImpl<$Res, $Val extends Regency>
    implements $RegencyCopyWith<$Res> {
  _$RegencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? provinceCode = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegencyImplCopyWith<$Res> implements $RegencyCopyWith<$Res> {
  factory _$$RegencyImplCopyWith(
          _$RegencyImpl value, $Res Function(_$RegencyImpl) then) =
      __$$RegencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String provinceCode, String name});
}

/// @nodoc
class __$$RegencyImplCopyWithImpl<$Res>
    extends _$RegencyCopyWithImpl<$Res, _$RegencyImpl>
    implements _$$RegencyImplCopyWith<$Res> {
  __$$RegencyImplCopyWithImpl(
      _$RegencyImpl _value, $Res Function(_$RegencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? provinceCode = null,
    Object? name = null,
  }) {
    return _then(_$RegencyImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      provinceCode: null == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegencyImpl implements _Regency {
  const _$RegencyImpl(
      {required this.code, required this.provinceCode, required this.name});

  @override
  final String code;
  @override
  final String provinceCode;
  @override
  final String name;

  @override
  String toString() {
    return 'Regency(code: $code, provinceCode: $provinceCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegencyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.provinceCode, provinceCode) ||
                other.provinceCode == provinceCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, provinceCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegencyImplCopyWith<_$RegencyImpl> get copyWith =>
      __$$RegencyImplCopyWithImpl<_$RegencyImpl>(this, _$identity);
}

abstract class _Regency implements Regency {
  const factory _Regency(
      {required final String code,
      required final String provinceCode,
      required final String name}) = _$RegencyImpl;

  @override
  String get code;
  @override
  String get provinceCode;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RegencyImplCopyWith<_$RegencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
