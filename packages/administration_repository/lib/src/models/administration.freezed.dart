// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'administration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Administration {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  Status get status =>
      throw _privateConstructorUsedError; // required String type,
  String? get reason => throw _privateConstructorUsedError;
  String? get actionBy => throw _privateConstructorUsedError;
  Biodata? get biodata => throw _privateConstructorUsedError;
  Familial? get familial => throw _privateConstructorUsedError;
  Documents? get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdministrationCopyWith<Administration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrationCopyWith<$Res> {
  factory $AdministrationCopyWith(
          Administration value, $Res Function(Administration) then) =
      _$AdministrationCopyWithImpl<$Res, Administration>;
  @useResult
  $Res call(
      {String id,
      String userId,
      Status status,
      String? reason,
      String? actionBy,
      Biodata? biodata,
      Familial? familial,
      Documents? file});

  $BiodataCopyWith<$Res>? get biodata;
  $FamilialCopyWith<$Res>? get familial;
  $DocumentsCopyWith<$Res>? get file;
}

/// @nodoc
class _$AdministrationCopyWithImpl<$Res, $Val extends Administration>
    implements $AdministrationCopyWith<$Res> {
  _$AdministrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? reason = freezed,
    Object? actionBy = freezed,
    Object? biodata = freezed,
    Object? familial = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      biodata: freezed == biodata
          ? _value.biodata
          : biodata // ignore: cast_nullable_to_non_nullable
              as Biodata?,
      familial: freezed == familial
          ? _value.familial
          : familial // ignore: cast_nullable_to_non_nullable
              as Familial?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Documents?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BiodataCopyWith<$Res>? get biodata {
    if (_value.biodata == null) {
      return null;
    }

    return $BiodataCopyWith<$Res>(_value.biodata!, (value) {
      return _then(_value.copyWith(biodata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilialCopyWith<$Res>? get familial {
    if (_value.familial == null) {
      return null;
    }

    return $FamilialCopyWith<$Res>(_value.familial!, (value) {
      return _then(_value.copyWith(familial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentsCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $DocumentsCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdministrationImplCopyWith<$Res>
    implements $AdministrationCopyWith<$Res> {
  factory _$$AdministrationImplCopyWith(_$AdministrationImpl value,
          $Res Function(_$AdministrationImpl) then) =
      __$$AdministrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      Status status,
      String? reason,
      String? actionBy,
      Biodata? biodata,
      Familial? familial,
      Documents? file});

  @override
  $BiodataCopyWith<$Res>? get biodata;
  @override
  $FamilialCopyWith<$Res>? get familial;
  @override
  $DocumentsCopyWith<$Res>? get file;
}

/// @nodoc
class __$$AdministrationImplCopyWithImpl<$Res>
    extends _$AdministrationCopyWithImpl<$Res, _$AdministrationImpl>
    implements _$$AdministrationImplCopyWith<$Res> {
  __$$AdministrationImplCopyWithImpl(
      _$AdministrationImpl _value, $Res Function(_$AdministrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? status = null,
    Object? reason = freezed,
    Object? actionBy = freezed,
    Object? biodata = freezed,
    Object? familial = freezed,
    Object? file = freezed,
  }) {
    return _then(_$AdministrationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      actionBy: freezed == actionBy
          ? _value.actionBy
          : actionBy // ignore: cast_nullable_to_non_nullable
              as String?,
      biodata: freezed == biodata
          ? _value.biodata
          : biodata // ignore: cast_nullable_to_non_nullable
              as Biodata?,
      familial: freezed == familial
          ? _value.familial
          : familial // ignore: cast_nullable_to_non_nullable
              as Familial?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Documents?,
    ));
  }
}

/// @nodoc

class _$AdministrationImpl implements _Administration {
  const _$AdministrationImpl(
      {required this.id,
      required this.userId,
      required this.status,
      this.reason,
      this.actionBy,
      this.biodata,
      this.familial,
      this.file});

  @override
  final String id;
  @override
  final String userId;
  @override
  final Status status;
// required String type,
  @override
  final String? reason;
  @override
  final String? actionBy;
  @override
  final Biodata? biodata;
  @override
  final Familial? familial;
  @override
  final Documents? file;

  @override
  String toString() {
    return 'Administration(id: $id, userId: $userId, status: $status, reason: $reason, actionBy: $actionBy, biodata: $biodata, familial: $familial, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.actionBy, actionBy) ||
                other.actionBy == actionBy) &&
            (identical(other.biodata, biodata) || other.biodata == biodata) &&
            (identical(other.familial, familial) ||
                other.familial == familial) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status, reason,
      actionBy, biodata, familial, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      __$$AdministrationImplCopyWithImpl<_$AdministrationImpl>(
          this, _$identity);
}

abstract class _Administration implements Administration {
  const factory _Administration(
      {required final String id,
      required final String userId,
      required final Status status,
      final String? reason,
      final String? actionBy,
      final Biodata? biodata,
      final Familial? familial,
      final Documents? file}) = _$AdministrationImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  Status get status;
  @override // required String type,
  String? get reason;
  @override
  String? get actionBy;
  @override
  Biodata? get biodata;
  @override
  Familial? get familial;
  @override
  Documents? get file;
  @override
  @JsonKey(ignore: true)
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
