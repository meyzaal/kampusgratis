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

Administration _$AdministrationFromJson(Map<String, dynamic> json) {
  return _Administration.fromJson(json);
}

/// @nodoc
mixin _$Administration {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_by')
  String? get actionBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'biodata')
  Biodata? get biodata => throw _privateConstructorUsedError;
  @JsonKey(name: 'familial')
  Familial? get familial => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  Documents? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'biodata') Biodata? biodata,
      @JsonKey(name: 'familial') Familial? familial,
      @JsonKey(name: 'file') Documents? file});

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
    Object? id = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? actionBy = freezed,
    Object? biodata = freezed,
    Object? familial = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'biodata') Biodata? biodata,
      @JsonKey(name: 'familial') Familial? familial,
      @JsonKey(name: 'file') Documents? file});

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
    Object? id = freezed,
    Object? userId = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? reason = freezed,
    Object? actionBy = freezed,
    Object? biodata = freezed,
    Object? familial = freezed,
    Object? file = freezed,
  }) {
    return _then(_$AdministrationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$AdministrationImpl implements _Administration {
  const _$AdministrationImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'action_by') this.actionBy,
      @JsonKey(name: 'biodata') this.biodata,
      @JsonKey(name: 'familial') this.familial,
      @JsonKey(name: 'file') this.file});

  factory _$AdministrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministrationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'action_by')
  final String? actionBy;
  @override
  @JsonKey(name: 'biodata')
  final Biodata? biodata;
  @override
  @JsonKey(name: 'familial')
  final Familial? familial;
  @override
  @JsonKey(name: 'file')
  final Documents? file;

  @override
  String toString() {
    return 'Administration(id: $id, userId: $userId, status: $status, type: $type, reason: $reason, actionBy: $actionBy, biodata: $biodata, familial: $familial, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.actionBy, actionBy) ||
                other.actionBy == actionBy) &&
            (identical(other.biodata, biodata) || other.biodata == biodata) &&
            (identical(other.familial, familial) ||
                other.familial == familial) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status, type, reason,
      actionBy, biodata, familial, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      __$$AdministrationImplCopyWithImpl<_$AdministrationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdministrationImplToJson(
      this,
    );
  }
}

abstract class _Administration implements Administration {
  const factory _Administration(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'reason') final String? reason,
      @JsonKey(name: 'action_by') final String? actionBy,
      @JsonKey(name: 'biodata') final Biodata? biodata,
      @JsonKey(name: 'familial') final Familial? familial,
      @JsonKey(name: 'file') final Documents? file}) = _$AdministrationImpl;

  factory _Administration.fromJson(Map<String, dynamic> json) =
      _$AdministrationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'action_by')
  String? get actionBy;
  @override
  @JsonKey(name: 'biodata')
  Biodata? get biodata;
  @override
  @JsonKey(name: 'familial')
  Familial? get familial;
  @override
  @JsonKey(name: 'file')
  Documents? get file;
  @override
  @JsonKey(ignore: true)
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Biodata _$BiodataFromJson(Map<String, dynamic> json) {
  return _Biodata.fromJson(json);
}

/// @nodoc
mixin _$Biodata {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'administration_id')
  String? get administrationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthdate')
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthplace')
  String? get birthplace => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_education')
  String? get lastEducation => throw _privateConstructorUsedError;
  @JsonKey(name: 'nim')
  String? get nim => throw _privateConstructorUsedError;
  @JsonKey(name: 'university')
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: 'major')
  String? get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester')
  int? get semester => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_number')
  String? get identityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'province')
  String? get province => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_id')
  String? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'regency')
  String? get regency => throw _privateConstructorUsedError;
  @JsonKey(name: 'regency_id')
  String? get regencyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'district')
  String? get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  String? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'village')
  String? get village => throw _privateConstructorUsedError;
  @JsonKey(name: 'village_id')
  String? get villageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiodataCopyWith<Biodata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiodataCopyWith<$Res> {
  factory $BiodataCopyWith(Biodata value, $Res Function(Biodata) then) =
      _$BiodataCopyWithImpl<$Res, Biodata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'birthdate') String? birthdate,
      @JsonKey(name: 'birthplace') String? birthplace,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'last_education') String? lastEducation,
      @JsonKey(name: 'nim') String? nim,
      @JsonKey(name: 'university') String? university,
      @JsonKey(name: 'major') String? major,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'province') String? province,
      @JsonKey(name: 'province_id') String? provinceId,
      @JsonKey(name: 'regency') String? regency,
      @JsonKey(name: 'regency_id') String? regencyId,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'village') String? village,
      @JsonKey(name: 'village_id') String? villageId,
      @JsonKey(name: 'postal_code') String? postalCode});
}

/// @nodoc
class _$BiodataCopyWithImpl<$Res, $Val extends Biodata>
    implements $BiodataCopyWith<$Res> {
  _$BiodataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? fullName = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = freezed,
    Object? birthplace = freezed,
    Object? address = freezed,
    Object? lastEducation = freezed,
    Object? nim = freezed,
    Object? university = freezed,
    Object? major = freezed,
    Object? semester = freezed,
    Object? identityNumber = freezed,
    Object? province = freezed,
    Object? provinceId = freezed,
    Object? regency = freezed,
    Object? regencyId = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? village = freezed,
    Object? villageId = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthplace: freezed == birthplace
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEducation: freezed == lastEducation
          ? _value.lastEducation
          : lastEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      regency: freezed == regency
          ? _value.regency
          : regency // ignore: cast_nullable_to_non_nullable
              as String?,
      regencyId: freezed == regencyId
          ? _value.regencyId
          : regencyId // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiodataImplCopyWith<$Res> implements $BiodataCopyWith<$Res> {
  factory _$$BiodataImplCopyWith(
          _$BiodataImpl value, $Res Function(_$BiodataImpl) then) =
      __$$BiodataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'gender') String? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'birthdate') String? birthdate,
      @JsonKey(name: 'birthplace') String? birthplace,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'last_education') String? lastEducation,
      @JsonKey(name: 'nim') String? nim,
      @JsonKey(name: 'university') String? university,
      @JsonKey(name: 'major') String? major,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'identity_number') String? identityNumber,
      @JsonKey(name: 'province') String? province,
      @JsonKey(name: 'province_id') String? provinceId,
      @JsonKey(name: 'regency') String? regency,
      @JsonKey(name: 'regency_id') String? regencyId,
      @JsonKey(name: 'district') String? district,
      @JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'village') String? village,
      @JsonKey(name: 'village_id') String? villageId,
      @JsonKey(name: 'postal_code') String? postalCode});
}

/// @nodoc
class __$$BiodataImplCopyWithImpl<$Res>
    extends _$BiodataCopyWithImpl<$Res, _$BiodataImpl>
    implements _$$BiodataImplCopyWith<$Res> {
  __$$BiodataImplCopyWithImpl(
      _$BiodataImpl _value, $Res Function(_$BiodataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? fullName = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? birthdate = freezed,
    Object? birthplace = freezed,
    Object? address = freezed,
    Object? lastEducation = freezed,
    Object? nim = freezed,
    Object? university = freezed,
    Object? major = freezed,
    Object? semester = freezed,
    Object? identityNumber = freezed,
    Object? province = freezed,
    Object? provinceId = freezed,
    Object? regency = freezed,
    Object? regencyId = freezed,
    Object? district = freezed,
    Object? districtId = freezed,
    Object? village = freezed,
    Object? villageId = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_$BiodataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      birthplace: freezed == birthplace
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      lastEducation: freezed == lastEducation
          ? _value.lastEducation
          : lastEducation // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      identityNumber: freezed == identityNumber
          ? _value.identityNumber
          : identityNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      regency: freezed == regency
          ? _value.regency
          : regency // ignore: cast_nullable_to_non_nullable
              as String?,
      regencyId: freezed == regencyId
          ? _value.regencyId
          : regencyId // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      village: freezed == village
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      villageId: freezed == villageId
          ? _value.villageId
          : villageId // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiodataImpl implements _Biodata {
  const _$BiodataImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'administration_id') this.administrationId,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'birthdate') this.birthdate,
      @JsonKey(name: 'birthplace') this.birthplace,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'last_education') this.lastEducation,
      @JsonKey(name: 'nim') this.nim,
      @JsonKey(name: 'university') this.university,
      @JsonKey(name: 'major') this.major,
      @JsonKey(name: 'semester') this.semester,
      @JsonKey(name: 'identity_number') this.identityNumber,
      @JsonKey(name: 'province') this.province,
      @JsonKey(name: 'province_id') this.provinceId,
      @JsonKey(name: 'regency') this.regency,
      @JsonKey(name: 'regency_id') this.regencyId,
      @JsonKey(name: 'district') this.district,
      @JsonKey(name: 'district_id') this.districtId,
      @JsonKey(name: 'village') this.village,
      @JsonKey(name: 'village_id') this.villageId,
      @JsonKey(name: 'postal_code') this.postalCode});

  factory _$BiodataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiodataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'administration_id')
  final String? administrationId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'birthdate')
  final String? birthdate;
  @override
  @JsonKey(name: 'birthplace')
  final String? birthplace;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'last_education')
  final String? lastEducation;
  @override
  @JsonKey(name: 'nim')
  final String? nim;
  @override
  @JsonKey(name: 'university')
  final String? university;
  @override
  @JsonKey(name: 'major')
  final String? major;
  @override
  @JsonKey(name: 'semester')
  final int? semester;
  @override
  @JsonKey(name: 'identity_number')
  final String? identityNumber;
  @override
  @JsonKey(name: 'province')
  final String? province;
  @override
  @JsonKey(name: 'province_id')
  final String? provinceId;
  @override
  @JsonKey(name: 'regency')
  final String? regency;
  @override
  @JsonKey(name: 'regency_id')
  final String? regencyId;
  @override
  @JsonKey(name: 'district')
  final String? district;
  @override
  @JsonKey(name: 'district_id')
  final String? districtId;
  @override
  @JsonKey(name: 'village')
  final String? village;
  @override
  @JsonKey(name: 'village_id')
  final String? villageId;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @override
  String toString() {
    return 'Biodata(id: $id, administrationId: $administrationId, fullName: $fullName, gender: $gender, phoneNumber: $phoneNumber, birthdate: $birthdate, birthplace: $birthplace, address: $address, lastEducation: $lastEducation, nim: $nim, university: $university, major: $major, semester: $semester, identityNumber: $identityNumber, province: $province, provinceId: $provinceId, regency: $regency, regencyId: $regencyId, district: $district, districtId: $districtId, village: $village, villageId: $villageId, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiodataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.administrationId, administrationId) ||
                other.administrationId == administrationId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.birthplace, birthplace) ||
                other.birthplace == birthplace) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lastEducation, lastEducation) ||
                other.lastEducation == lastEducation) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.regency, regency) || other.regency == regency) &&
            (identical(other.regencyId, regencyId) ||
                other.regencyId == regencyId) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.village, village) || other.village == village) &&
            (identical(other.villageId, villageId) ||
                other.villageId == villageId) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        administrationId,
        fullName,
        gender,
        phoneNumber,
        birthdate,
        birthplace,
        address,
        lastEducation,
        nim,
        university,
        major,
        semester,
        identityNumber,
        province,
        provinceId,
        regency,
        regencyId,
        district,
        districtId,
        village,
        villageId,
        postalCode
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiodataImplCopyWith<_$BiodataImpl> get copyWith =>
      __$$BiodataImplCopyWithImpl<_$BiodataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiodataImplToJson(
      this,
    );
  }
}

abstract class _Biodata implements Biodata {
  const factory _Biodata(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'administration_id') final String? administrationId,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'gender') final String? gender,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'birthdate') final String? birthdate,
      @JsonKey(name: 'birthplace') final String? birthplace,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'last_education') final String? lastEducation,
      @JsonKey(name: 'nim') final String? nim,
      @JsonKey(name: 'university') final String? university,
      @JsonKey(name: 'major') final String? major,
      @JsonKey(name: 'semester') final int? semester,
      @JsonKey(name: 'identity_number') final String? identityNumber,
      @JsonKey(name: 'province') final String? province,
      @JsonKey(name: 'province_id') final String? provinceId,
      @JsonKey(name: 'regency') final String? regency,
      @JsonKey(name: 'regency_id') final String? regencyId,
      @JsonKey(name: 'district') final String? district,
      @JsonKey(name: 'district_id') final String? districtId,
      @JsonKey(name: 'village') final String? village,
      @JsonKey(name: 'village_id') final String? villageId,
      @JsonKey(name: 'postal_code') final String? postalCode}) = _$BiodataImpl;

  factory _Biodata.fromJson(Map<String, dynamic> json) = _$BiodataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'administration_id')
  String? get administrationId;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'birthdate')
  String? get birthdate;
  @override
  @JsonKey(name: 'birthplace')
  String? get birthplace;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'last_education')
  String? get lastEducation;
  @override
  @JsonKey(name: 'nim')
  String? get nim;
  @override
  @JsonKey(name: 'university')
  String? get university;
  @override
  @JsonKey(name: 'major')
  String? get major;
  @override
  @JsonKey(name: 'semester')
  int? get semester;
  @override
  @JsonKey(name: 'identity_number')
  String? get identityNumber;
  @override
  @JsonKey(name: 'province')
  String? get province;
  @override
  @JsonKey(name: 'province_id')
  String? get provinceId;
  @override
  @JsonKey(name: 'regency')
  String? get regency;
  @override
  @JsonKey(name: 'regency_id')
  String? get regencyId;
  @override
  @JsonKey(name: 'district')
  String? get district;
  @override
  @JsonKey(name: 'district_id')
  String? get districtId;
  @override
  @JsonKey(name: 'village')
  String? get village;
  @override
  @JsonKey(name: 'village_id')
  String? get villageId;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$BiodataImplCopyWith<_$BiodataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Familial _$FamilialFromJson(Map<String, dynamic> json) {
  return _Familial.fromJson(json);
}

/// @nodoc
mixin _$Familial {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'administration_id')
  String? get administrationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'father_name')
  String? get fatherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'father_occupation')
  String? get fatherOccupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'father_salary')
  String? get fatherSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_name')
  String? get motherName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_occupation')
  String? get motherOccupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother_salary')
  String? get motherSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_salary')
  String? get selfSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'self_occupation')
  String? get selfOccupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'live_with')
  String? get liveWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'tuition_payer')
  String? get tuitionPayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FamilialCopyWith<Familial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilialCopyWith<$Res> {
  factory $FamilialCopyWith(Familial value, $Res Function(Familial) then) =
      _$FamilialCopyWithImpl<$Res, Familial>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'father_name') String? fatherName,
      @JsonKey(name: 'father_occupation') String? fatherOccupation,
      @JsonKey(name: 'father_salary') String? fatherSalary,
      @JsonKey(name: 'mother_name') String? motherName,
      @JsonKey(name: 'mother_occupation') String? motherOccupation,
      @JsonKey(name: 'mother_salary') String? motherSalary,
      @JsonKey(name: 'self_salary') String? selfSalary,
      @JsonKey(name: 'self_occupation') String? selfOccupation,
      @JsonKey(name: 'live_with') String? liveWith,
      @JsonKey(name: 'tuition_payer') String? tuitionPayer});
}

/// @nodoc
class _$FamilialCopyWithImpl<$Res, $Val extends Familial>
    implements $FamilialCopyWith<$Res> {
  _$FamilialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? fatherName = freezed,
    Object? fatherOccupation = freezed,
    Object? fatherSalary = freezed,
    Object? motherName = freezed,
    Object? motherOccupation = freezed,
    Object? motherSalary = freezed,
    Object? selfSalary = freezed,
    Object? selfOccupation = freezed,
    Object? liveWith = freezed,
    Object? tuitionPayer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherOccupation: freezed == fatherOccupation
          ? _value.fatherOccupation
          : fatherOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherSalary: freezed == fatherSalary
          ? _value.fatherSalary
          : fatherSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: freezed == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherOccupation: freezed == motherOccupation
          ? _value.motherOccupation
          : motherOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      motherSalary: freezed == motherSalary
          ? _value.motherSalary
          : motherSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      selfSalary: freezed == selfSalary
          ? _value.selfSalary
          : selfSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      selfOccupation: freezed == selfOccupation
          ? _value.selfOccupation
          : selfOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      liveWith: freezed == liveWith
          ? _value.liveWith
          : liveWith // ignore: cast_nullable_to_non_nullable
              as String?,
      tuitionPayer: freezed == tuitionPayer
          ? _value.tuitionPayer
          : tuitionPayer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FamilialImplCopyWith<$Res>
    implements $FamilialCopyWith<$Res> {
  factory _$$FamilialImplCopyWith(
          _$FamilialImpl value, $Res Function(_$FamilialImpl) then) =
      __$$FamilialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'father_name') String? fatherName,
      @JsonKey(name: 'father_occupation') String? fatherOccupation,
      @JsonKey(name: 'father_salary') String? fatherSalary,
      @JsonKey(name: 'mother_name') String? motherName,
      @JsonKey(name: 'mother_occupation') String? motherOccupation,
      @JsonKey(name: 'mother_salary') String? motherSalary,
      @JsonKey(name: 'self_salary') String? selfSalary,
      @JsonKey(name: 'self_occupation') String? selfOccupation,
      @JsonKey(name: 'live_with') String? liveWith,
      @JsonKey(name: 'tuition_payer') String? tuitionPayer});
}

/// @nodoc
class __$$FamilialImplCopyWithImpl<$Res>
    extends _$FamilialCopyWithImpl<$Res, _$FamilialImpl>
    implements _$$FamilialImplCopyWith<$Res> {
  __$$FamilialImplCopyWithImpl(
      _$FamilialImpl _value, $Res Function(_$FamilialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? fatherName = freezed,
    Object? fatherOccupation = freezed,
    Object? fatherSalary = freezed,
    Object? motherName = freezed,
    Object? motherOccupation = freezed,
    Object? motherSalary = freezed,
    Object? selfSalary = freezed,
    Object? selfOccupation = freezed,
    Object? liveWith = freezed,
    Object? tuitionPayer = freezed,
  }) {
    return _then(_$FamilialImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherOccupation: freezed == fatherOccupation
          ? _value.fatherOccupation
          : fatherOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherSalary: freezed == fatherSalary
          ? _value.fatherSalary
          : fatherSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      motherName: freezed == motherName
          ? _value.motherName
          : motherName // ignore: cast_nullable_to_non_nullable
              as String?,
      motherOccupation: freezed == motherOccupation
          ? _value.motherOccupation
          : motherOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      motherSalary: freezed == motherSalary
          ? _value.motherSalary
          : motherSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      selfSalary: freezed == selfSalary
          ? _value.selfSalary
          : selfSalary // ignore: cast_nullable_to_non_nullable
              as String?,
      selfOccupation: freezed == selfOccupation
          ? _value.selfOccupation
          : selfOccupation // ignore: cast_nullable_to_non_nullable
              as String?,
      liveWith: freezed == liveWith
          ? _value.liveWith
          : liveWith // ignore: cast_nullable_to_non_nullable
              as String?,
      tuitionPayer: freezed == tuitionPayer
          ? _value.tuitionPayer
          : tuitionPayer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FamilialImpl implements _Familial {
  const _$FamilialImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'administration_id') this.administrationId,
      @JsonKey(name: 'father_name') this.fatherName,
      @JsonKey(name: 'father_occupation') this.fatherOccupation,
      @JsonKey(name: 'father_salary') this.fatherSalary,
      @JsonKey(name: 'mother_name') this.motherName,
      @JsonKey(name: 'mother_occupation') this.motherOccupation,
      @JsonKey(name: 'mother_salary') this.motherSalary,
      @JsonKey(name: 'self_salary') this.selfSalary,
      @JsonKey(name: 'self_occupation') this.selfOccupation,
      @JsonKey(name: 'live_with') this.liveWith,
      @JsonKey(name: 'tuition_payer') this.tuitionPayer});

  factory _$FamilialImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilialImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'administration_id')
  final String? administrationId;
  @override
  @JsonKey(name: 'father_name')
  final String? fatherName;
  @override
  @JsonKey(name: 'father_occupation')
  final String? fatherOccupation;
  @override
  @JsonKey(name: 'father_salary')
  final String? fatherSalary;
  @override
  @JsonKey(name: 'mother_name')
  final String? motherName;
  @override
  @JsonKey(name: 'mother_occupation')
  final String? motherOccupation;
  @override
  @JsonKey(name: 'mother_salary')
  final String? motherSalary;
  @override
  @JsonKey(name: 'self_salary')
  final String? selfSalary;
  @override
  @JsonKey(name: 'self_occupation')
  final String? selfOccupation;
  @override
  @JsonKey(name: 'live_with')
  final String? liveWith;
  @override
  @JsonKey(name: 'tuition_payer')
  final String? tuitionPayer;

  @override
  String toString() {
    return 'Familial(id: $id, administrationId: $administrationId, fatherName: $fatherName, fatherOccupation: $fatherOccupation, fatherSalary: $fatherSalary, motherName: $motherName, motherOccupation: $motherOccupation, motherSalary: $motherSalary, selfSalary: $selfSalary, selfOccupation: $selfOccupation, liveWith: $liveWith, tuitionPayer: $tuitionPayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.administrationId, administrationId) ||
                other.administrationId == administrationId) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.fatherOccupation, fatherOccupation) ||
                other.fatherOccupation == fatherOccupation) &&
            (identical(other.fatherSalary, fatherSalary) ||
                other.fatherSalary == fatherSalary) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            (identical(other.motherOccupation, motherOccupation) ||
                other.motherOccupation == motherOccupation) &&
            (identical(other.motherSalary, motherSalary) ||
                other.motherSalary == motherSalary) &&
            (identical(other.selfSalary, selfSalary) ||
                other.selfSalary == selfSalary) &&
            (identical(other.selfOccupation, selfOccupation) ||
                other.selfOccupation == selfOccupation) &&
            (identical(other.liveWith, liveWith) ||
                other.liveWith == liveWith) &&
            (identical(other.tuitionPayer, tuitionPayer) ||
                other.tuitionPayer == tuitionPayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      administrationId,
      fatherName,
      fatherOccupation,
      fatherSalary,
      motherName,
      motherOccupation,
      motherSalary,
      selfSalary,
      selfOccupation,
      liveWith,
      tuitionPayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FamilialImplCopyWith<_$FamilialImpl> get copyWith =>
      __$$FamilialImplCopyWithImpl<_$FamilialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilialImplToJson(
      this,
    );
  }
}

abstract class _Familial implements Familial {
  const factory _Familial(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'administration_id') final String? administrationId,
          @JsonKey(name: 'father_name') final String? fatherName,
          @JsonKey(name: 'father_occupation') final String? fatherOccupation,
          @JsonKey(name: 'father_salary') final String? fatherSalary,
          @JsonKey(name: 'mother_name') final String? motherName,
          @JsonKey(name: 'mother_occupation') final String? motherOccupation,
          @JsonKey(name: 'mother_salary') final String? motherSalary,
          @JsonKey(name: 'self_salary') final String? selfSalary,
          @JsonKey(name: 'self_occupation') final String? selfOccupation,
          @JsonKey(name: 'live_with') final String? liveWith,
          @JsonKey(name: 'tuition_payer') final String? tuitionPayer}) =
      _$FamilialImpl;

  factory _Familial.fromJson(Map<String, dynamic> json) =
      _$FamilialImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'administration_id')
  String? get administrationId;
  @override
  @JsonKey(name: 'father_name')
  String? get fatherName;
  @override
  @JsonKey(name: 'father_occupation')
  String? get fatherOccupation;
  @override
  @JsonKey(name: 'father_salary')
  String? get fatherSalary;
  @override
  @JsonKey(name: 'mother_name')
  String? get motherName;
  @override
  @JsonKey(name: 'mother_occupation')
  String? get motherOccupation;
  @override
  @JsonKey(name: 'mother_salary')
  String? get motherSalary;
  @override
  @JsonKey(name: 'self_salary')
  String? get selfSalary;
  @override
  @JsonKey(name: 'self_occupation')
  String? get selfOccupation;
  @override
  @JsonKey(name: 'live_with')
  String? get liveWith;
  @override
  @JsonKey(name: 'tuition_payer')
  String? get tuitionPayer;
  @override
  @JsonKey(ignore: true)
  _$$FamilialImplCopyWith<_$FamilialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Documents _$DocumentsFromJson(Map<String, dynamic> json) {
  return _Documents.fromJson(json);
}

/// @nodoc
mixin _$Documents {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'administration_id')
  String? get administrationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_card_id')
  String? get idCardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_card')
  String? get idCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'diploma_certificate_id')
  String? get diplomaCertificateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'diploma_certificate')
  String? get diplomaCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_card_id')
  String? get familyCardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_card')
  String? get familyCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_id')
  String? get photoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcript_id')
  String? get transcriptId => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcript')
  String? get transcript => throw _privateConstructorUsedError;
  @JsonKey(name: 'letter_of_recommendation_id')
  String? get letterOfRecommendationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'letter_of_recommendation')
  String? get letterOfRecommendation => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_card_id')
  String? get studentCardId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_card')
  String? get studentCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsCopyWith<Documents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsCopyWith<$Res> {
  factory $DocumentsCopyWith(Documents value, $Res Function(Documents) then) =
      _$DocumentsCopyWithImpl<$Res, Documents>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'id_card_id') String? idCardId,
      @JsonKey(name: 'id_card') String? idCard,
      @JsonKey(name: 'diploma_certificate_id') String? diplomaCertificateId,
      @JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
      @JsonKey(name: 'family_card_id') String? familyCardId,
      @JsonKey(name: 'family_card') String? familyCard,
      @JsonKey(name: 'photo_id') String? photoId,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'transcript_id') String? transcriptId,
      @JsonKey(name: 'transcript') String? transcript,
      @JsonKey(name: 'letter_of_recommendation_id')
      String? letterOfRecommendationId,
      @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
      @JsonKey(name: 'student_card_id') String? studentCardId,
      @JsonKey(name: 'student_card') String? studentCard});
}

/// @nodoc
class _$DocumentsCopyWithImpl<$Res, $Val extends Documents>
    implements $DocumentsCopyWith<$Res> {
  _$DocumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? idCardId = freezed,
    Object? idCard = freezed,
    Object? diplomaCertificateId = freezed,
    Object? diplomaCertificate = freezed,
    Object? familyCardId = freezed,
    Object? familyCard = freezed,
    Object? photoId = freezed,
    Object? photo = freezed,
    Object? transcriptId = freezed,
    Object? transcript = freezed,
    Object? letterOfRecommendationId = freezed,
    Object? letterOfRecommendation = freezed,
    Object? studentCardId = freezed,
    Object? studentCard = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardId: freezed == idCardId
          ? _value.idCardId
          : idCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificateId: freezed == diplomaCertificateId
          ? _value.diplomaCertificateId
          : diplomaCertificateId // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificate: freezed == diplomaCertificate
          ? _value.diplomaCertificate
          : diplomaCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCardId: freezed == familyCardId
          ? _value.familyCardId
          : familyCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCard: freezed == familyCard
          ? _value.familyCard
          : familyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      photoId: freezed == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      transcriptId: freezed == transcriptId
          ? _value.transcriptId
          : transcriptId // ignore: cast_nullable_to_non_nullable
              as String?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendationId: freezed == letterOfRecommendationId
          ? _value.letterOfRecommendationId
          : letterOfRecommendationId // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendation: freezed == letterOfRecommendation
          ? _value.letterOfRecommendation
          : letterOfRecommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCardId: freezed == studentCardId
          ? _value.studentCardId
          : studentCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCard: freezed == studentCard
          ? _value.studentCard
          : studentCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentsImplCopyWith<$Res>
    implements $DocumentsCopyWith<$Res> {
  factory _$$DocumentsImplCopyWith(
          _$DocumentsImpl value, $Res Function(_$DocumentsImpl) then) =
      __$$DocumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'administration_id') String? administrationId,
      @JsonKey(name: 'id_card_id') String? idCardId,
      @JsonKey(name: 'id_card') String? idCard,
      @JsonKey(name: 'diploma_certificate_id') String? diplomaCertificateId,
      @JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
      @JsonKey(name: 'family_card_id') String? familyCardId,
      @JsonKey(name: 'family_card') String? familyCard,
      @JsonKey(name: 'photo_id') String? photoId,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'transcript_id') String? transcriptId,
      @JsonKey(name: 'transcript') String? transcript,
      @JsonKey(name: 'letter_of_recommendation_id')
      String? letterOfRecommendationId,
      @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
      @JsonKey(name: 'student_card_id') String? studentCardId,
      @JsonKey(name: 'student_card') String? studentCard});
}

/// @nodoc
class __$$DocumentsImplCopyWithImpl<$Res>
    extends _$DocumentsCopyWithImpl<$Res, _$DocumentsImpl>
    implements _$$DocumentsImplCopyWith<$Res> {
  __$$DocumentsImplCopyWithImpl(
      _$DocumentsImpl _value, $Res Function(_$DocumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? administrationId = freezed,
    Object? idCardId = freezed,
    Object? idCard = freezed,
    Object? diplomaCertificateId = freezed,
    Object? diplomaCertificate = freezed,
    Object? familyCardId = freezed,
    Object? familyCard = freezed,
    Object? photoId = freezed,
    Object? photo = freezed,
    Object? transcriptId = freezed,
    Object? transcript = freezed,
    Object? letterOfRecommendationId = freezed,
    Object? letterOfRecommendation = freezed,
    Object? studentCardId = freezed,
    Object? studentCard = freezed,
  }) {
    return _then(_$DocumentsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      administrationId: freezed == administrationId
          ? _value.administrationId
          : administrationId // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardId: freezed == idCardId
          ? _value.idCardId
          : idCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificateId: freezed == diplomaCertificateId
          ? _value.diplomaCertificateId
          : diplomaCertificateId // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificate: freezed == diplomaCertificate
          ? _value.diplomaCertificate
          : diplomaCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCardId: freezed == familyCardId
          ? _value.familyCardId
          : familyCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCard: freezed == familyCard
          ? _value.familyCard
          : familyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      photoId: freezed == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      transcriptId: freezed == transcriptId
          ? _value.transcriptId
          : transcriptId // ignore: cast_nullable_to_non_nullable
              as String?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendationId: freezed == letterOfRecommendationId
          ? _value.letterOfRecommendationId
          : letterOfRecommendationId // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendation: freezed == letterOfRecommendation
          ? _value.letterOfRecommendation
          : letterOfRecommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCardId: freezed == studentCardId
          ? _value.studentCardId
          : studentCardId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCard: freezed == studentCard
          ? _value.studentCard
          : studentCard // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentsImpl implements _Documents {
  const _$DocumentsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'administration_id') this.administrationId,
      @JsonKey(name: 'id_card_id') this.idCardId,
      @JsonKey(name: 'id_card') this.idCard,
      @JsonKey(name: 'diploma_certificate_id') this.diplomaCertificateId,
      @JsonKey(name: 'diploma_certificate') this.diplomaCertificate,
      @JsonKey(name: 'family_card_id') this.familyCardId,
      @JsonKey(name: 'family_card') this.familyCard,
      @JsonKey(name: 'photo_id') this.photoId,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'transcript_id') this.transcriptId,
      @JsonKey(name: 'transcript') this.transcript,
      @JsonKey(name: 'letter_of_recommendation_id')
      this.letterOfRecommendationId,
      @JsonKey(name: 'letter_of_recommendation') this.letterOfRecommendation,
      @JsonKey(name: 'student_card_id') this.studentCardId,
      @JsonKey(name: 'student_card') this.studentCard});

  factory _$DocumentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'administration_id')
  final String? administrationId;
  @override
  @JsonKey(name: 'id_card_id')
  final String? idCardId;
  @override
  @JsonKey(name: 'id_card')
  final String? idCard;
  @override
  @JsonKey(name: 'diploma_certificate_id')
  final String? diplomaCertificateId;
  @override
  @JsonKey(name: 'diploma_certificate')
  final String? diplomaCertificate;
  @override
  @JsonKey(name: 'family_card_id')
  final String? familyCardId;
  @override
  @JsonKey(name: 'family_card')
  final String? familyCard;
  @override
  @JsonKey(name: 'photo_id')
  final String? photoId;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'transcript_id')
  final String? transcriptId;
  @override
  @JsonKey(name: 'transcript')
  final String? transcript;
  @override
  @JsonKey(name: 'letter_of_recommendation_id')
  final String? letterOfRecommendationId;
  @override
  @JsonKey(name: 'letter_of_recommendation')
  final String? letterOfRecommendation;
  @override
  @JsonKey(name: 'student_card_id')
  final String? studentCardId;
  @override
  @JsonKey(name: 'student_card')
  final String? studentCard;

  @override
  String toString() {
    return 'Documents(id: $id, administrationId: $administrationId, idCardId: $idCardId, idCard: $idCard, diplomaCertificateId: $diplomaCertificateId, diplomaCertificate: $diplomaCertificate, familyCardId: $familyCardId, familyCard: $familyCard, photoId: $photoId, photo: $photo, transcriptId: $transcriptId, transcript: $transcript, letterOfRecommendationId: $letterOfRecommendationId, letterOfRecommendation: $letterOfRecommendation, studentCardId: $studentCardId, studentCard: $studentCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.administrationId, administrationId) ||
                other.administrationId == administrationId) &&
            (identical(other.idCardId, idCardId) ||
                other.idCardId == idCardId) &&
            (identical(other.idCard, idCard) || other.idCard == idCard) &&
            (identical(other.diplomaCertificateId, diplomaCertificateId) ||
                other.diplomaCertificateId == diplomaCertificateId) &&
            (identical(other.diplomaCertificate, diplomaCertificate) ||
                other.diplomaCertificate == diplomaCertificate) &&
            (identical(other.familyCardId, familyCardId) ||
                other.familyCardId == familyCardId) &&
            (identical(other.familyCard, familyCard) ||
                other.familyCard == familyCard) &&
            (identical(other.photoId, photoId) || other.photoId == photoId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.transcriptId, transcriptId) ||
                other.transcriptId == transcriptId) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(
                    other.letterOfRecommendationId, letterOfRecommendationId) ||
                other.letterOfRecommendationId == letterOfRecommendationId) &&
            (identical(other.letterOfRecommendation, letterOfRecommendation) ||
                other.letterOfRecommendation == letterOfRecommendation) &&
            (identical(other.studentCardId, studentCardId) ||
                other.studentCardId == studentCardId) &&
            (identical(other.studentCard, studentCard) ||
                other.studentCard == studentCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      administrationId,
      idCardId,
      idCard,
      diplomaCertificateId,
      diplomaCertificate,
      familyCardId,
      familyCard,
      photoId,
      photo,
      transcriptId,
      transcript,
      letterOfRecommendationId,
      letterOfRecommendation,
      studentCardId,
      studentCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsImplCopyWith<_$DocumentsImpl> get copyWith =>
      __$$DocumentsImplCopyWithImpl<_$DocumentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentsImplToJson(
      this,
    );
  }
}

abstract class _Documents implements Documents {
  const factory _Documents(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'administration_id') final String? administrationId,
      @JsonKey(name: 'id_card_id') final String? idCardId,
      @JsonKey(name: 'id_card') final String? idCard,
      @JsonKey(name: 'diploma_certificate_id')
      final String? diplomaCertificateId,
      @JsonKey(name: 'diploma_certificate') final String? diplomaCertificate,
      @JsonKey(name: 'family_card_id') final String? familyCardId,
      @JsonKey(name: 'family_card') final String? familyCard,
      @JsonKey(name: 'photo_id') final String? photoId,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'transcript_id') final String? transcriptId,
      @JsonKey(name: 'transcript') final String? transcript,
      @JsonKey(name: 'letter_of_recommendation_id')
      final String? letterOfRecommendationId,
      @JsonKey(name: 'letter_of_recommendation')
      final String? letterOfRecommendation,
      @JsonKey(name: 'student_card_id') final String? studentCardId,
      @JsonKey(name: 'student_card')
      final String? studentCard}) = _$DocumentsImpl;

  factory _Documents.fromJson(Map<String, dynamic> json) =
      _$DocumentsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'administration_id')
  String? get administrationId;
  @override
  @JsonKey(name: 'id_card_id')
  String? get idCardId;
  @override
  @JsonKey(name: 'id_card')
  String? get idCard;
  @override
  @JsonKey(name: 'diploma_certificate_id')
  String? get diplomaCertificateId;
  @override
  @JsonKey(name: 'diploma_certificate')
  String? get diplomaCertificate;
  @override
  @JsonKey(name: 'family_card_id')
  String? get familyCardId;
  @override
  @JsonKey(name: 'family_card')
  String? get familyCard;
  @override
  @JsonKey(name: 'photo_id')
  String? get photoId;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'transcript_id')
  String? get transcriptId;
  @override
  @JsonKey(name: 'transcript')
  String? get transcript;
  @override
  @JsonKey(name: 'letter_of_recommendation_id')
  String? get letterOfRecommendationId;
  @override
  @JsonKey(name: 'letter_of_recommendation')
  String? get letterOfRecommendation;
  @override
  @JsonKey(name: 'student_card_id')
  String? get studentCardId;
  @override
  @JsonKey(name: 'student_card')
  String? get studentCard;
  @override
  @JsonKey(ignore: true)
  _$$DocumentsImplCopyWith<_$DocumentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdministrationConstants _$AdministrationConstantsFromJson(
    Map<String, dynamic> json) {
  return _AdministrationConstants.fromJson(json);
}

/// @nodoc
mixin _$AdministrationConstants {
  @JsonKey(name: 'gender')
  ConstantMap? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_education')
  ConstantMap? get lastEducation => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupation')
  ConstantMap? get occupation => throw _privateConstructorUsedError;
  @JsonKey(name: 'salary')
  ConstantMap? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: 'live_with')
  ConstantMap? get liveWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'tuition_payer')
  ConstantMap? get tuitionPayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdministrationConstantsCopyWith<AdministrationConstants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrationConstantsCopyWith<$Res> {
  factory $AdministrationConstantsCopyWith(AdministrationConstants value,
          $Res Function(AdministrationConstants) then) =
      _$AdministrationConstantsCopyWithImpl<$Res, AdministrationConstants>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gender') ConstantMap? gender,
      @JsonKey(name: 'last_education') ConstantMap? lastEducation,
      @JsonKey(name: 'occupation') ConstantMap? occupation,
      @JsonKey(name: 'salary') ConstantMap? salary,
      @JsonKey(name: 'live_with') ConstantMap? liveWith,
      @JsonKey(name: 'tuition_payer') ConstantMap? tuitionPayer});

  $ConstantMapCopyWith<$Res>? get gender;
  $ConstantMapCopyWith<$Res>? get lastEducation;
  $ConstantMapCopyWith<$Res>? get occupation;
  $ConstantMapCopyWith<$Res>? get salary;
  $ConstantMapCopyWith<$Res>? get liveWith;
  $ConstantMapCopyWith<$Res>? get tuitionPayer;
}

/// @nodoc
class _$AdministrationConstantsCopyWithImpl<$Res,
        $Val extends AdministrationConstants>
    implements $AdministrationConstantsCopyWith<$Res> {
  _$AdministrationConstantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? lastEducation = freezed,
    Object? occupation = freezed,
    Object? salary = freezed,
    Object? liveWith = freezed,
    Object? tuitionPayer = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      lastEducation: freezed == lastEducation
          ? _value.lastEducation
          : lastEducation // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      liveWith: freezed == liveWith
          ? _value.liveWith
          : liveWith // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      tuitionPayer: freezed == tuitionPayer
          ? _value.tuitionPayer
          : tuitionPayer // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get lastEducation {
    if (_value.lastEducation == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.lastEducation!, (value) {
      return _then(_value.copyWith(lastEducation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get occupation {
    if (_value.occupation == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.occupation!, (value) {
      return _then(_value.copyWith(occupation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get salary {
    if (_value.salary == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.salary!, (value) {
      return _then(_value.copyWith(salary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get liveWith {
    if (_value.liveWith == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.liveWith!, (value) {
      return _then(_value.copyWith(liveWith: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstantMapCopyWith<$Res>? get tuitionPayer {
    if (_value.tuitionPayer == null) {
      return null;
    }

    return $ConstantMapCopyWith<$Res>(_value.tuitionPayer!, (value) {
      return _then(_value.copyWith(tuitionPayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdministrationConstantsImplCopyWith<$Res>
    implements $AdministrationConstantsCopyWith<$Res> {
  factory _$$AdministrationConstantsImplCopyWith(
          _$AdministrationConstantsImpl value,
          $Res Function(_$AdministrationConstantsImpl) then) =
      __$$AdministrationConstantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gender') ConstantMap? gender,
      @JsonKey(name: 'last_education') ConstantMap? lastEducation,
      @JsonKey(name: 'occupation') ConstantMap? occupation,
      @JsonKey(name: 'salary') ConstantMap? salary,
      @JsonKey(name: 'live_with') ConstantMap? liveWith,
      @JsonKey(name: 'tuition_payer') ConstantMap? tuitionPayer});

  @override
  $ConstantMapCopyWith<$Res>? get gender;
  @override
  $ConstantMapCopyWith<$Res>? get lastEducation;
  @override
  $ConstantMapCopyWith<$Res>? get occupation;
  @override
  $ConstantMapCopyWith<$Res>? get salary;
  @override
  $ConstantMapCopyWith<$Res>? get liveWith;
  @override
  $ConstantMapCopyWith<$Res>? get tuitionPayer;
}

/// @nodoc
class __$$AdministrationConstantsImplCopyWithImpl<$Res>
    extends _$AdministrationConstantsCopyWithImpl<$Res,
        _$AdministrationConstantsImpl>
    implements _$$AdministrationConstantsImplCopyWith<$Res> {
  __$$AdministrationConstantsImplCopyWithImpl(
      _$AdministrationConstantsImpl _value,
      $Res Function(_$AdministrationConstantsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? lastEducation = freezed,
    Object? occupation = freezed,
    Object? salary = freezed,
    Object? liveWith = freezed,
    Object? tuitionPayer = freezed,
  }) {
    return _then(_$AdministrationConstantsImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      lastEducation: freezed == lastEducation
          ? _value.lastEducation
          : lastEducation // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      liveWith: freezed == liveWith
          ? _value.liveWith
          : liveWith // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
      tuitionPayer: freezed == tuitionPayer
          ? _value.tuitionPayer
          : tuitionPayer // ignore: cast_nullable_to_non_nullable
              as ConstantMap?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdministrationConstantsImpl implements _AdministrationConstants {
  const _$AdministrationConstantsImpl(
      {@JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'last_education') this.lastEducation,
      @JsonKey(name: 'occupation') this.occupation,
      @JsonKey(name: 'salary') this.salary,
      @JsonKey(name: 'live_with') this.liveWith,
      @JsonKey(name: 'tuition_payer') this.tuitionPayer});

  factory _$AdministrationConstantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministrationConstantsImplFromJson(json);

  @override
  @JsonKey(name: 'gender')
  final ConstantMap? gender;
  @override
  @JsonKey(name: 'last_education')
  final ConstantMap? lastEducation;
  @override
  @JsonKey(name: 'occupation')
  final ConstantMap? occupation;
  @override
  @JsonKey(name: 'salary')
  final ConstantMap? salary;
  @override
  @JsonKey(name: 'live_with')
  final ConstantMap? liveWith;
  @override
  @JsonKey(name: 'tuition_payer')
  final ConstantMap? tuitionPayer;

  @override
  String toString() {
    return 'AdministrationConstants(gender: $gender, lastEducation: $lastEducation, occupation: $occupation, salary: $salary, liveWith: $liveWith, tuitionPayer: $tuitionPayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrationConstantsImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.lastEducation, lastEducation) ||
                other.lastEducation == lastEducation) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.liveWith, liveWith) ||
                other.liveWith == liveWith) &&
            (identical(other.tuitionPayer, tuitionPayer) ||
                other.tuitionPayer == tuitionPayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gender, lastEducation,
      occupation, salary, liveWith, tuitionPayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrationConstantsImplCopyWith<_$AdministrationConstantsImpl>
      get copyWith => __$$AdministrationConstantsImplCopyWithImpl<
          _$AdministrationConstantsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdministrationConstantsImplToJson(
      this,
    );
  }
}

abstract class _AdministrationConstants implements AdministrationConstants {
  const factory _AdministrationConstants(
          {@JsonKey(name: 'gender') final ConstantMap? gender,
          @JsonKey(name: 'last_education') final ConstantMap? lastEducation,
          @JsonKey(name: 'occupation') final ConstantMap? occupation,
          @JsonKey(name: 'salary') final ConstantMap? salary,
          @JsonKey(name: 'live_with') final ConstantMap? liveWith,
          @JsonKey(name: 'tuition_payer') final ConstantMap? tuitionPayer}) =
      _$AdministrationConstantsImpl;

  factory _AdministrationConstants.fromJson(Map<String, dynamic> json) =
      _$AdministrationConstantsImpl.fromJson;

  @override
  @JsonKey(name: 'gender')
  ConstantMap? get gender;
  @override
  @JsonKey(name: 'last_education')
  ConstantMap? get lastEducation;
  @override
  @JsonKey(name: 'occupation')
  ConstantMap? get occupation;
  @override
  @JsonKey(name: 'salary')
  ConstantMap? get salary;
  @override
  @JsonKey(name: 'live_with')
  ConstantMap? get liveWith;
  @override
  @JsonKey(name: 'tuition_payer')
  ConstantMap? get tuitionPayer;
  @override
  @JsonKey(ignore: true)
  _$$AdministrationConstantsImplCopyWith<_$AdministrationConstantsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConstantMap _$ConstantMapFromJson(Map<String, dynamic> json) {
  return _ConstantMap.fromJson(json);
}

/// @nodoc
mixin _$ConstantMap {
  @JsonKey(name: 'keys')
  List<String>? get keys => throw _privateConstructorUsedError;
  @JsonKey(name: 'values')
  List<String>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstantMapCopyWith<ConstantMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstantMapCopyWith<$Res> {
  factory $ConstantMapCopyWith(
          ConstantMap value, $Res Function(ConstantMap) then) =
      _$ConstantMapCopyWithImpl<$Res, ConstantMap>;
  @useResult
  $Res call(
      {@JsonKey(name: 'keys') List<String>? keys,
      @JsonKey(name: 'values') List<String>? values});
}

/// @nodoc
class _$ConstantMapCopyWithImpl<$Res, $Val extends ConstantMap>
    implements $ConstantMapCopyWith<$Res> {
  _$ConstantMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      keys: freezed == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstantMapImplCopyWith<$Res>
    implements $ConstantMapCopyWith<$Res> {
  factory _$$ConstantMapImplCopyWith(
          _$ConstantMapImpl value, $Res Function(_$ConstantMapImpl) then) =
      __$$ConstantMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'keys') List<String>? keys,
      @JsonKey(name: 'values') List<String>? values});
}

/// @nodoc
class __$$ConstantMapImplCopyWithImpl<$Res>
    extends _$ConstantMapCopyWithImpl<$Res, _$ConstantMapImpl>
    implements _$$ConstantMapImplCopyWith<$Res> {
  __$$ConstantMapImplCopyWithImpl(
      _$ConstantMapImpl _value, $Res Function(_$ConstantMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = freezed,
    Object? values = freezed,
  }) {
    return _then(_$ConstantMapImpl(
      keys: freezed == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstantMapImpl implements _ConstantMap {
  const _$ConstantMapImpl(
      {@JsonKey(name: 'keys') final List<String>? keys,
      @JsonKey(name: 'values') final List<String>? values})
      : _keys = keys,
        _values = values;

  factory _$ConstantMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstantMapImplFromJson(json);

  final List<String>? _keys;
  @override
  @JsonKey(name: 'keys')
  List<String>? get keys {
    final value = _keys;
    if (value == null) return null;
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _values;
  @override
  @JsonKey(name: 'values')
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConstantMap(keys: $keys, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstantMapImpl &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keys),
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstantMapImplCopyWith<_$ConstantMapImpl> get copyWith =>
      __$$ConstantMapImplCopyWithImpl<_$ConstantMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstantMapImplToJson(
      this,
    );
  }
}

abstract class _ConstantMap implements ConstantMap {
  const factory _ConstantMap(
      {@JsonKey(name: 'keys') final List<String>? keys,
      @JsonKey(name: 'values') final List<String>? values}) = _$ConstantMapImpl;

  factory _ConstantMap.fromJson(Map<String, dynamic> json) =
      _$ConstantMapImpl.fromJson;

  @override
  @JsonKey(name: 'keys')
  List<String>? get keys;
  @override
  @JsonKey(name: 'values')
  List<String>? get values;
  @override
  @JsonKey(ignore: true)
  _$$ConstantMapImplCopyWith<_$ConstantMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
