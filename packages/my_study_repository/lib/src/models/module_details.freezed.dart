// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleDetails {
  Detail get detail => throw _privateConstructorUsedError;
  DetailModule get module => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModuleDetailsCopyWith<ModuleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleDetailsCopyWith<$Res> {
  factory $ModuleDetailsCopyWith(
          ModuleDetails value, $Res Function(ModuleDetails) then) =
      _$ModuleDetailsCopyWithImpl<$Res, ModuleDetails>;
  @useResult
  $Res call({Detail detail, DetailModule module});

  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$ModuleDetailsCopyWithImpl<$Res, $Val extends ModuleDetails>
    implements $ModuleDetailsCopyWith<$Res> {
  _$ModuleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? module = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as DetailModule,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModuleDetailsImplCopyWith<$Res>
    implements $ModuleDetailsCopyWith<$Res> {
  factory _$$ModuleDetailsImplCopyWith(
          _$ModuleDetailsImpl value, $Res Function(_$ModuleDetailsImpl) then) =
      __$$ModuleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Detail detail, DetailModule module});

  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$ModuleDetailsImplCopyWithImpl<$Res>
    extends _$ModuleDetailsCopyWithImpl<$Res, _$ModuleDetailsImpl>
    implements _$$ModuleDetailsImplCopyWith<$Res> {
  __$$ModuleDetailsImplCopyWithImpl(
      _$ModuleDetailsImpl _value, $Res Function(_$ModuleDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? module = freezed,
  }) {
    return _then(_$ModuleDetailsImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      module: freezed == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as DetailModule,
    ));
  }
}

/// @nodoc

class _$ModuleDetailsImpl implements _ModuleDetails {
  _$ModuleDetailsImpl({required this.detail, required this.module});

  @override
  final Detail detail;
  @override
  final DetailModule module;

  @override
  String toString() {
    return 'ModuleDetails(detail: $detail, module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleDetailsImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other.module, module));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detail, const DeepCollectionEquality().hash(module));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleDetailsImplCopyWith<_$ModuleDetailsImpl> get copyWith =>
      __$$ModuleDetailsImplCopyWithImpl<_$ModuleDetailsImpl>(this, _$identity);
}

abstract class _ModuleDetails implements ModuleDetails {
  factory _ModuleDetails(
      {required final Detail detail,
      required final DetailModule module}) = _$ModuleDetailsImpl;

  @override
  Detail get detail;
  @override
  DetailModule get module;
  @override
  @JsonKey(ignore: true)
  _$$ModuleDetailsImplCopyWith<_$ModuleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
