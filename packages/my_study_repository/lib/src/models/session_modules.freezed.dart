// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_modules.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionModules {
  Detail get detail => throw _privateConstructorUsedError;
  List<ModuleSession> get modules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionModulesCopyWith<SessionModules> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModulesCopyWith<$Res> {
  factory $SessionModulesCopyWith(
          SessionModules value, $Res Function(SessionModules) then) =
      _$SessionModulesCopyWithImpl<$Res, SessionModules>;
  @useResult
  $Res call({Detail detail, List<ModuleSession> modules});

  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$SessionModulesCopyWithImpl<$Res, $Val extends SessionModules>
    implements $SessionModulesCopyWith<$Res> {
  _$SessionModulesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<ModuleSession>,
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
abstract class _$$SessionModulesImplCopyWith<$Res>
    implements $SessionModulesCopyWith<$Res> {
  factory _$$SessionModulesImplCopyWith(_$SessionModulesImpl value,
          $Res Function(_$SessionModulesImpl) then) =
      __$$SessionModulesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Detail detail, List<ModuleSession> modules});

  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$$SessionModulesImplCopyWithImpl<$Res>
    extends _$SessionModulesCopyWithImpl<$Res, _$SessionModulesImpl>
    implements _$$SessionModulesImplCopyWith<$Res> {
  __$$SessionModulesImplCopyWithImpl(
      _$SessionModulesImpl _value, $Res Function(_$SessionModulesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? modules = null,
  }) {
    return _then(_$SessionModulesImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<ModuleSession>,
    ));
  }
}

/// @nodoc

class _$SessionModulesImpl implements _SessionModules {
  _$SessionModulesImpl(
      {required this.detail, required final List<ModuleSession> modules})
      : _modules = modules;

  @override
  final Detail detail;
  final List<ModuleSession> _modules;
  @override
  List<ModuleSession> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'SessionModules(detail: $detail, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionModulesImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, detail, const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionModulesImplCopyWith<_$SessionModulesImpl> get copyWith =>
      __$$SessionModulesImplCopyWithImpl<_$SessionModulesImpl>(
          this, _$identity);
}

abstract class _SessionModules implements SessionModules {
  factory _SessionModules(
      {required final Detail detail,
      required final List<ModuleSession> modules}) = _$SessionModulesImpl;

  @override
  Detail get detail;
  @override
  List<ModuleSession> get modules;
  @override
  @JsonKey(ignore: true)
  _$$SessionModulesImplCopyWith<_$SessionModulesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
