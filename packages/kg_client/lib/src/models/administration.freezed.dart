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
  @JsonKey(name: 'details')
  Details? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'biodatas')
  Biodatas? get biodatas => throw _privateConstructorUsedError;
  @JsonKey(name: 'familials')
  Familials? get familials => throw _privateConstructorUsedError;
  @JsonKey(name: 'files')
  Files? get files => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'details') Details? details,
      @JsonKey(name: 'biodatas') Biodatas? biodatas,
      @JsonKey(name: 'familials') Familials? familials,
      @JsonKey(name: 'files') Files? files});

  $DetailsCopyWith<$Res>? get details;
  $BiodatasCopyWith<$Res>? get biodatas;
  $FamilialsCopyWith<$Res>? get familials;
  $FilesCopyWith<$Res>? get files;
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
    Object? details = freezed,
    Object? biodatas = freezed,
    Object? familials = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      biodatas: freezed == biodatas
          ? _value.biodatas
          : biodatas // ignore: cast_nullable_to_non_nullable
              as Biodatas?,
      familials: freezed == familials
          ? _value.familials
          : familials // ignore: cast_nullable_to_non_nullable
              as Familials?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Files?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiodatasCopyWith<$Res>? get biodatas {
    if (_value.biodatas == null) {
      return null;
    }

    return $BiodatasCopyWith<$Res>(_value.biodatas!, (value) {
      return _then(_value.copyWith(biodatas: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilialsCopyWith<$Res>? get familials {
    if (_value.familials == null) {
      return null;
    }

    return $FamilialsCopyWith<$Res>(_value.familials!, (value) {
      return _then(_value.copyWith(familials: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilesCopyWith<$Res>? get files {
    if (_value.files == null) {
      return null;
    }

    return $FilesCopyWith<$Res>(_value.files!, (value) {
      return _then(_value.copyWith(files: value) as $Val);
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
      {@JsonKey(name: 'details') Details? details,
      @JsonKey(name: 'biodatas') Biodatas? biodatas,
      @JsonKey(name: 'familials') Familials? familials,
      @JsonKey(name: 'files') Files? files});

  @override
  $DetailsCopyWith<$Res>? get details;
  @override
  $BiodatasCopyWith<$Res>? get biodatas;
  @override
  $FamilialsCopyWith<$Res>? get familials;
  @override
  $FilesCopyWith<$Res>? get files;
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
    Object? details = freezed,
    Object? biodatas = freezed,
    Object? familials = freezed,
    Object? files = freezed,
  }) {
    return _then(_$AdministrationImpl(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      biodatas: freezed == biodatas
          ? _value.biodatas
          : biodatas // ignore: cast_nullable_to_non_nullable
              as Biodatas?,
      familials: freezed == familials
          ? _value.familials
          : familials // ignore: cast_nullable_to_non_nullable
              as Familials?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Files?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdministrationImpl implements _Administration {
  const _$AdministrationImpl(
      {@JsonKey(name: 'details') this.details,
      @JsonKey(name: 'biodatas') this.biodatas,
      @JsonKey(name: 'familials') this.familials,
      @JsonKey(name: 'files') this.files});

  factory _$AdministrationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdministrationImplFromJson(json);

  @override
  @JsonKey(name: 'details')
  final Details? details;
  @override
  @JsonKey(name: 'biodatas')
  final Biodatas? biodatas;
  @override
  @JsonKey(name: 'familials')
  final Familials? familials;
  @override
  @JsonKey(name: 'files')
  final Files? files;

  @override
  String toString() {
    return 'Administration(details: $details, biodatas: $biodatas, familials: $familials, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrationImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.biodatas, biodatas) ||
                other.biodatas == biodatas) &&
            (identical(other.familials, familials) ||
                other.familials == familials) &&
            (identical(other.files, files) || other.files == files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, details, biodatas, familials, files);

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
      {@JsonKey(name: 'details') final Details? details,
      @JsonKey(name: 'biodatas') final Biodatas? biodatas,
      @JsonKey(name: 'familials') final Familials? familials,
      @JsonKey(name: 'files') final Files? files}) = _$AdministrationImpl;

  factory _Administration.fromJson(Map<String, dynamic> json) =
      _$AdministrationImpl.fromJson;

  @override
  @JsonKey(name: 'details')
  Details? get details;
  @override
  @JsonKey(name: 'biodatas')
  Biodatas? get biodatas;
  @override
  @JsonKey(name: 'familials')
  Familials? get familials;
  @override
  @JsonKey(name: 'files')
  Files? get files;
  @override
  @JsonKey(ignore: true)
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  AdministrationStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_by')
  String? get actionBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'status') AdministrationStatus? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
              as AdministrationStatus?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsImplCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$DetailsImplCopyWith(
          _$DetailsImpl value, $Res Function(_$DetailsImpl) then) =
      __$$DetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'status') AdministrationStatus? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'action_by') String? actionBy,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$DetailsImplCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$DetailsImpl>
    implements _$$DetailsImplCopyWith<$Res> {
  __$$DetailsImplCopyWithImpl(
      _$DetailsImpl _value, $Res Function(_$DetailsImpl) _then)
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DetailsImpl(
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
              as AdministrationStatus?,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsImpl implements _Details {
  const _$DetailsImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'action_by') this.actionBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'status')
  final AdministrationStatus? status;
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
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Details(id: $id, userId: $userId, status: $status, type: $type, reason: $reason, actionBy: $actionBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.actionBy, actionBy) ||
                other.actionBy == actionBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, status, type, reason,
      actionBy, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      __$$DetailsImplCopyWithImpl<_$DetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsImplToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'status') final AdministrationStatus? status,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'reason') final String? reason,
      @JsonKey(name: 'action_by') final String? actionBy,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$DetailsImpl;

  factory _Details.fromJson(Map<String, dynamic> json) = _$DetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'status')
  AdministrationStatus? get status;
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
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DetailsImplCopyWith<_$DetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Biodatas _$BiodatasFromJson(Map<String, dynamic> json) {
  return _Biodatas.fromJson(json);
}

/// @nodoc
mixin _$Biodatas {
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
  $BiodatasCopyWith<Biodatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiodatasCopyWith<$Res> {
  factory $BiodatasCopyWith(Biodatas value, $Res Function(Biodatas) then) =
      _$BiodatasCopyWithImpl<$Res, Biodatas>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
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
class _$BiodatasCopyWithImpl<$Res, $Val extends Biodatas>
    implements $BiodatasCopyWith<$Res> {
  _$BiodatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
abstract class _$$BiodatasImplCopyWith<$Res>
    implements $BiodatasCopyWith<$Res> {
  factory _$$BiodatasImplCopyWith(
          _$BiodatasImpl value, $Res Function(_$BiodatasImpl) then) =
      __$$BiodatasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String? fullName,
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
class __$$BiodatasImplCopyWithImpl<$Res>
    extends _$BiodatasCopyWithImpl<$Res, _$BiodatasImpl>
    implements _$$BiodatasImplCopyWith<$Res> {
  __$$BiodatasImplCopyWithImpl(
      _$BiodatasImpl _value, $Res Function(_$BiodatasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$BiodatasImpl(
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
class _$BiodatasImpl implements _Biodatas {
  const _$BiodatasImpl(
      {@JsonKey(name: 'full_name') this.fullName,
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

  factory _$BiodatasImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiodatasImplFromJson(json);

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
    return 'Biodatas(fullName: $fullName, gender: $gender, phoneNumber: $phoneNumber, birthdate: $birthdate, birthplace: $birthplace, address: $address, lastEducation: $lastEducation, nim: $nim, university: $university, major: $major, semester: $semester, identityNumber: $identityNumber, province: $province, provinceId: $provinceId, regency: $regency, regencyId: $regencyId, district: $district, districtId: $districtId, village: $village, villageId: $villageId, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiodatasImpl &&
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
  _$$BiodatasImplCopyWith<_$BiodatasImpl> get copyWith =>
      __$$BiodatasImplCopyWithImpl<_$BiodatasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiodatasImplToJson(
      this,
    );
  }
}

abstract class _Biodatas implements Biodatas {
  const factory _Biodatas(
      {@JsonKey(name: 'full_name') final String? fullName,
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
      @JsonKey(name: 'postal_code') final String? postalCode}) = _$BiodatasImpl;

  factory _Biodatas.fromJson(Map<String, dynamic> json) =
      _$BiodatasImpl.fromJson;

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
  _$$BiodatasImplCopyWith<_$BiodatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Familials _$FamilialsFromJson(Map<String, dynamic> json) {
  return _Familials.fromJson(json);
}

/// @nodoc
mixin _$Familials {
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
  $FamilialsCopyWith<Familials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilialsCopyWith<$Res> {
  factory $FamilialsCopyWith(Familials value, $Res Function(Familials) then) =
      _$FamilialsCopyWithImpl<$Res, Familials>;
  @useResult
  $Res call(
      {@JsonKey(name: 'father_name') String? fatherName,
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
class _$FamilialsCopyWithImpl<$Res, $Val extends Familials>
    implements $FamilialsCopyWith<$Res> {
  _$FamilialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
abstract class _$$FamilialsImplCopyWith<$Res>
    implements $FamilialsCopyWith<$Res> {
  factory _$$FamilialsImplCopyWith(
          _$FamilialsImpl value, $Res Function(_$FamilialsImpl) then) =
      __$$FamilialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'father_name') String? fatherName,
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
class __$$FamilialsImplCopyWithImpl<$Res>
    extends _$FamilialsCopyWithImpl<$Res, _$FamilialsImpl>
    implements _$$FamilialsImplCopyWith<$Res> {
  __$$FamilialsImplCopyWithImpl(
      _$FamilialsImpl _value, $Res Function(_$FamilialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$FamilialsImpl(
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
class _$FamilialsImpl implements _Familials {
  const _$FamilialsImpl(
      {@JsonKey(name: 'father_name') this.fatherName,
      @JsonKey(name: 'father_occupation') this.fatherOccupation,
      @JsonKey(name: 'father_salary') this.fatherSalary,
      @JsonKey(name: 'mother_name') this.motherName,
      @JsonKey(name: 'mother_occupation') this.motherOccupation,
      @JsonKey(name: 'mother_salary') this.motherSalary,
      @JsonKey(name: 'self_salary') this.selfSalary,
      @JsonKey(name: 'self_occupation') this.selfOccupation,
      @JsonKey(name: 'live_with') this.liveWith,
      @JsonKey(name: 'tuition_payer') this.tuitionPayer});

  factory _$FamilialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FamilialsImplFromJson(json);

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
    return 'Familials(fatherName: $fatherName, fatherOccupation: $fatherOccupation, fatherSalary: $fatherSalary, motherName: $motherName, motherOccupation: $motherOccupation, motherSalary: $motherSalary, selfSalary: $selfSalary, selfOccupation: $selfOccupation, liveWith: $liveWith, tuitionPayer: $tuitionPayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FamilialsImpl &&
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
  _$$FamilialsImplCopyWith<_$FamilialsImpl> get copyWith =>
      __$$FamilialsImplCopyWithImpl<_$FamilialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FamilialsImplToJson(
      this,
    );
  }
}

abstract class _Familials implements Familials {
  const factory _Familials(
          {@JsonKey(name: 'father_name') final String? fatherName,
          @JsonKey(name: 'father_occupation') final String? fatherOccupation,
          @JsonKey(name: 'father_salary') final String? fatherSalary,
          @JsonKey(name: 'mother_name') final String? motherName,
          @JsonKey(name: 'mother_occupation') final String? motherOccupation,
          @JsonKey(name: 'mother_salary') final String? motherSalary,
          @JsonKey(name: 'self_salary') final String? selfSalary,
          @JsonKey(name: 'self_occupation') final String? selfOccupation,
          @JsonKey(name: 'live_with') final String? liveWith,
          @JsonKey(name: 'tuition_payer') final String? tuitionPayer}) =
      _$FamilialsImpl;

  factory _Familials.fromJson(Map<String, dynamic> json) =
      _$FamilialsImpl.fromJson;

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
  _$$FamilialsImplCopyWith<_$FamilialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Files _$FilesFromJson(Map<String, dynamic> json) {
  return _Files.fromJson(json);
}

/// @nodoc
mixin _$Files {
  @JsonKey(name: 'diploma_certificate')
  String? get diplomaCertificate => throw _privateConstructorUsedError;
  @JsonKey(name: 'diploma_certificate_name')
  String? get diplomaCertificateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_card')
  String? get familyCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'family_card_name')
  String? get familyCardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_card')
  String? get idCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_card_name')
  String? get idCardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'letter_of_recommendation')
  String? get letterOfRecommendation => throw _privateConstructorUsedError;
  @JsonKey(name: 'letter_of_recommendation_name')
  String? get letterOfRecommendationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_name')
  String? get photoName => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_card')
  String? get studentCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_card_name')
  String? get studentCardName => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcript')
  String? get transcript => throw _privateConstructorUsedError;
  @JsonKey(name: 'transcript_name')
  String? get transcriptName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesCopyWith<Files> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesCopyWith<$Res> {
  factory $FilesCopyWith(Files value, $Res Function(Files) then) =
      _$FilesCopyWithImpl<$Res, Files>;
  @useResult
  $Res call(
      {@JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
      @JsonKey(name: 'diploma_certificate_name') String? diplomaCertificateName,
      @JsonKey(name: 'family_card') String? familyCard,
      @JsonKey(name: 'family_card_name') String? familyCardName,
      @JsonKey(name: 'id_card') String? idCard,
      @JsonKey(name: 'id_card_name') String? idCardName,
      @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
      @JsonKey(name: 'letter_of_recommendation_name')
      String? letterOfRecommendationName,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'photo_name') String? photoName,
      @JsonKey(name: 'student_card') String? studentCard,
      @JsonKey(name: 'student_card_name') String? studentCardName,
      @JsonKey(name: 'transcript') String? transcript,
      @JsonKey(name: 'transcript_name') String? transcriptName});
}

/// @nodoc
class _$FilesCopyWithImpl<$Res, $Val extends Files>
    implements $FilesCopyWith<$Res> {
  _$FilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diplomaCertificate = freezed,
    Object? diplomaCertificateName = freezed,
    Object? familyCard = freezed,
    Object? familyCardName = freezed,
    Object? idCard = freezed,
    Object? idCardName = freezed,
    Object? letterOfRecommendation = freezed,
    Object? letterOfRecommendationName = freezed,
    Object? photo = freezed,
    Object? photoName = freezed,
    Object? studentCard = freezed,
    Object? studentCardName = freezed,
    Object? transcript = freezed,
    Object? transcriptName = freezed,
  }) {
    return _then(_value.copyWith(
      diplomaCertificate: freezed == diplomaCertificate
          ? _value.diplomaCertificate
          : diplomaCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificateName: freezed == diplomaCertificateName
          ? _value.diplomaCertificateName
          : diplomaCertificateName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCard: freezed == familyCard
          ? _value.familyCard
          : familyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCardName: freezed == familyCardName
          ? _value.familyCardName
          : familyCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardName: freezed == idCardName
          ? _value.idCardName
          : idCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendation: freezed == letterOfRecommendation
          ? _value.letterOfRecommendation
          : letterOfRecommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendationName: freezed == letterOfRecommendationName
          ? _value.letterOfRecommendationName
          : letterOfRecommendationName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCard: freezed == studentCard
          ? _value.studentCard
          : studentCard // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCardName: freezed == studentCardName
          ? _value.studentCardName
          : studentCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      transcriptName: freezed == transcriptName
          ? _value.transcriptName
          : transcriptName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilesImplCopyWith<$Res> implements $FilesCopyWith<$Res> {
  factory _$$FilesImplCopyWith(
          _$FilesImpl value, $Res Function(_$FilesImpl) then) =
      __$$FilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'diploma_certificate') String? diplomaCertificate,
      @JsonKey(name: 'diploma_certificate_name') String? diplomaCertificateName,
      @JsonKey(name: 'family_card') String? familyCard,
      @JsonKey(name: 'family_card_name') String? familyCardName,
      @JsonKey(name: 'id_card') String? idCard,
      @JsonKey(name: 'id_card_name') String? idCardName,
      @JsonKey(name: 'letter_of_recommendation') String? letterOfRecommendation,
      @JsonKey(name: 'letter_of_recommendation_name')
      String? letterOfRecommendationName,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'photo_name') String? photoName,
      @JsonKey(name: 'student_card') String? studentCard,
      @JsonKey(name: 'student_card_name') String? studentCardName,
      @JsonKey(name: 'transcript') String? transcript,
      @JsonKey(name: 'transcript_name') String? transcriptName});
}

/// @nodoc
class __$$FilesImplCopyWithImpl<$Res>
    extends _$FilesCopyWithImpl<$Res, _$FilesImpl>
    implements _$$FilesImplCopyWith<$Res> {
  __$$FilesImplCopyWithImpl(
      _$FilesImpl _value, $Res Function(_$FilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diplomaCertificate = freezed,
    Object? diplomaCertificateName = freezed,
    Object? familyCard = freezed,
    Object? familyCardName = freezed,
    Object? idCard = freezed,
    Object? idCardName = freezed,
    Object? letterOfRecommendation = freezed,
    Object? letterOfRecommendationName = freezed,
    Object? photo = freezed,
    Object? photoName = freezed,
    Object? studentCard = freezed,
    Object? studentCardName = freezed,
    Object? transcript = freezed,
    Object? transcriptName = freezed,
  }) {
    return _then(_$FilesImpl(
      diplomaCertificate: freezed == diplomaCertificate
          ? _value.diplomaCertificate
          : diplomaCertificate // ignore: cast_nullable_to_non_nullable
              as String?,
      diplomaCertificateName: freezed == diplomaCertificateName
          ? _value.diplomaCertificateName
          : diplomaCertificateName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCard: freezed == familyCard
          ? _value.familyCard
          : familyCard // ignore: cast_nullable_to_non_nullable
              as String?,
      familyCardName: freezed == familyCardName
          ? _value.familyCardName
          : familyCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as String?,
      idCardName: freezed == idCardName
          ? _value.idCardName
          : idCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendation: freezed == letterOfRecommendation
          ? _value.letterOfRecommendation
          : letterOfRecommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      letterOfRecommendationName: freezed == letterOfRecommendationName
          ? _value.letterOfRecommendationName
          : letterOfRecommendationName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      photoName: freezed == photoName
          ? _value.photoName
          : photoName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCard: freezed == studentCard
          ? _value.studentCard
          : studentCard // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCardName: freezed == studentCardName
          ? _value.studentCardName
          : studentCardName // ignore: cast_nullable_to_non_nullable
              as String?,
      transcript: freezed == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String?,
      transcriptName: freezed == transcriptName
          ? _value.transcriptName
          : transcriptName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilesImpl implements _Files {
  const _$FilesImpl(
      {@JsonKey(name: 'diploma_certificate') this.diplomaCertificate,
      @JsonKey(name: 'diploma_certificate_name') this.diplomaCertificateName,
      @JsonKey(name: 'family_card') this.familyCard,
      @JsonKey(name: 'family_card_name') this.familyCardName,
      @JsonKey(name: 'id_card') this.idCard,
      @JsonKey(name: 'id_card_name') this.idCardName,
      @JsonKey(name: 'letter_of_recommendation') this.letterOfRecommendation,
      @JsonKey(name: 'letter_of_recommendation_name')
      this.letterOfRecommendationName,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'photo_name') this.photoName,
      @JsonKey(name: 'student_card') this.studentCard,
      @JsonKey(name: 'student_card_name') this.studentCardName,
      @JsonKey(name: 'transcript') this.transcript,
      @JsonKey(name: 'transcript_name') this.transcriptName});

  factory _$FilesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilesImplFromJson(json);

  @override
  @JsonKey(name: 'diploma_certificate')
  final String? diplomaCertificate;
  @override
  @JsonKey(name: 'diploma_certificate_name')
  final String? diplomaCertificateName;
  @override
  @JsonKey(name: 'family_card')
  final String? familyCard;
  @override
  @JsonKey(name: 'family_card_name')
  final String? familyCardName;
  @override
  @JsonKey(name: 'id_card')
  final String? idCard;
  @override
  @JsonKey(name: 'id_card_name')
  final String? idCardName;
  @override
  @JsonKey(name: 'letter_of_recommendation')
  final String? letterOfRecommendation;
  @override
  @JsonKey(name: 'letter_of_recommendation_name')
  final String? letterOfRecommendationName;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'photo_name')
  final String? photoName;
  @override
  @JsonKey(name: 'student_card')
  final String? studentCard;
  @override
  @JsonKey(name: 'student_card_name')
  final String? studentCardName;
  @override
  @JsonKey(name: 'transcript')
  final String? transcript;
  @override
  @JsonKey(name: 'transcript_name')
  final String? transcriptName;

  @override
  String toString() {
    return 'Files(diplomaCertificate: $diplomaCertificate, diplomaCertificateName: $diplomaCertificateName, familyCard: $familyCard, familyCardName: $familyCardName, idCard: $idCard, idCardName: $idCardName, letterOfRecommendation: $letterOfRecommendation, letterOfRecommendationName: $letterOfRecommendationName, photo: $photo, photoName: $photoName, studentCard: $studentCard, studentCardName: $studentCardName, transcript: $transcript, transcriptName: $transcriptName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesImpl &&
            (identical(other.diplomaCertificate, diplomaCertificate) ||
                other.diplomaCertificate == diplomaCertificate) &&
            (identical(other.diplomaCertificateName, diplomaCertificateName) ||
                other.diplomaCertificateName == diplomaCertificateName) &&
            (identical(other.familyCard, familyCard) ||
                other.familyCard == familyCard) &&
            (identical(other.familyCardName, familyCardName) ||
                other.familyCardName == familyCardName) &&
            (identical(other.idCard, idCard) || other.idCard == idCard) &&
            (identical(other.idCardName, idCardName) ||
                other.idCardName == idCardName) &&
            (identical(other.letterOfRecommendation, letterOfRecommendation) ||
                other.letterOfRecommendation == letterOfRecommendation) &&
            (identical(other.letterOfRecommendationName,
                    letterOfRecommendationName) ||
                other.letterOfRecommendationName ==
                    letterOfRecommendationName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.photoName, photoName) ||
                other.photoName == photoName) &&
            (identical(other.studentCard, studentCard) ||
                other.studentCard == studentCard) &&
            (identical(other.studentCardName, studentCardName) ||
                other.studentCardName == studentCardName) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript) &&
            (identical(other.transcriptName, transcriptName) ||
                other.transcriptName == transcriptName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      diplomaCertificate,
      diplomaCertificateName,
      familyCard,
      familyCardName,
      idCard,
      idCardName,
      letterOfRecommendation,
      letterOfRecommendationName,
      photo,
      photoName,
      studentCard,
      studentCardName,
      transcript,
      transcriptName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesImplCopyWith<_$FilesImpl> get copyWith =>
      __$$FilesImplCopyWithImpl<_$FilesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilesImplToJson(
      this,
    );
  }
}

abstract class _Files implements Files {
  const factory _Files(
      {@JsonKey(name: 'diploma_certificate') final String? diplomaCertificate,
      @JsonKey(name: 'diploma_certificate_name')
      final String? diplomaCertificateName,
      @JsonKey(name: 'family_card') final String? familyCard,
      @JsonKey(name: 'family_card_name') final String? familyCardName,
      @JsonKey(name: 'id_card') final String? idCard,
      @JsonKey(name: 'id_card_name') final String? idCardName,
      @JsonKey(name: 'letter_of_recommendation')
      final String? letterOfRecommendation,
      @JsonKey(name: 'letter_of_recommendation_name')
      final String? letterOfRecommendationName,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'photo_name') final String? photoName,
      @JsonKey(name: 'student_card') final String? studentCard,
      @JsonKey(name: 'student_card_name') final String? studentCardName,
      @JsonKey(name: 'transcript') final String? transcript,
      @JsonKey(name: 'transcript_name')
      final String? transcriptName}) = _$FilesImpl;

  factory _Files.fromJson(Map<String, dynamic> json) = _$FilesImpl.fromJson;

  @override
  @JsonKey(name: 'diploma_certificate')
  String? get diplomaCertificate;
  @override
  @JsonKey(name: 'diploma_certificate_name')
  String? get diplomaCertificateName;
  @override
  @JsonKey(name: 'family_card')
  String? get familyCard;
  @override
  @JsonKey(name: 'family_card_name')
  String? get familyCardName;
  @override
  @JsonKey(name: 'id_card')
  String? get idCard;
  @override
  @JsonKey(name: 'id_card_name')
  String? get idCardName;
  @override
  @JsonKey(name: 'letter_of_recommendation')
  String? get letterOfRecommendation;
  @override
  @JsonKey(name: 'letter_of_recommendation_name')
  String? get letterOfRecommendationName;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'photo_name')
  String? get photoName;
  @override
  @JsonKey(name: 'student_card')
  String? get studentCard;
  @override
  @JsonKey(name: 'student_card_name')
  String? get studentCardName;
  @override
  @JsonKey(name: 'transcript')
  String? get transcript;
  @override
  @JsonKey(name: 'transcript_name')
  String? get transcriptName;
  @override
  @JsonKey(ignore: true)
  _$$FilesImplCopyWith<_$FilesImpl> get copyWith =>
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

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceImplCopyWith<$Res>
    implements $ProvinceCopyWith<$Res> {
  factory _$$ProvinceImplCopyWith(
          _$ProvinceImpl value, $Res Function(_$ProvinceImpl) then) =
      __$$ProvinceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$ProvinceImplCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$ProvinceImpl>
    implements _$$ProvinceImplCopyWith<$Res> {
  __$$ProvinceImplCopyWithImpl(
      _$ProvinceImpl _value, $Res Function(_$ProvinceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProvinceImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceImpl implements _Province {
  const _$ProvinceImpl(
      {@JsonKey(name: 'code') this.code, @JsonKey(name: 'name') this.name});

  factory _$ProvinceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Province(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      __$$ProvinceImplCopyWithImpl<_$ProvinceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceImplToJson(
      this,
    );
  }
}

abstract class _Province implements Province {
  const factory _Province(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'name') final String? name}) = _$ProvinceImpl;

  factory _Province.fromJson(Map<String, dynamic> json) =
      _$ProvinceImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceImplCopyWith<_$ProvinceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Regency _$RegencyFromJson(Map<String, dynamic> json) {
  return _Regency.fromJson(json);
}

/// @nodoc
mixin _$Regency {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'province_code')
  String? get provinceCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegencyCopyWith<Regency> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegencyCopyWith<$Res> {
  factory $RegencyCopyWith(Regency value, $Res Function(Regency) then) =
      _$RegencyCopyWithImpl<$Res, Regency>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'province_code') String? provinceCode,
      @JsonKey(name: 'name') String? name});
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
    Object? code = freezed,
    Object? provinceCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: freezed == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'province_code') String? provinceCode,
      @JsonKey(name: 'name') String? name});
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
    Object? code = freezed,
    Object? provinceCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_$RegencyImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceCode: freezed == provinceCode
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegencyImpl implements _Regency {
  const _$RegencyImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'province_code') this.provinceCode,
      @JsonKey(name: 'name') this.name});

  factory _$RegencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegencyImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'province_code')
  final String? provinceCode;
  @override
  @JsonKey(name: 'name')
  final String? name;

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, provinceCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegencyImplCopyWith<_$RegencyImpl> get copyWith =>
      __$$RegencyImplCopyWithImpl<_$RegencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegencyImplToJson(
      this,
    );
  }
}

abstract class _Regency implements Regency {
  const factory _Regency(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'province_code') final String? provinceCode,
      @JsonKey(name: 'name') final String? name}) = _$RegencyImpl;

  factory _Regency.fromJson(Map<String, dynamic> json) = _$RegencyImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'province_code')
  String? get provinceCode;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$RegencyImplCopyWith<_$RegencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
mixin _$District {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'regency_code')
  String? get regencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'regency_code') String? regencyCode,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? regencyCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      regencyCode: freezed == regencyCode
          ? _value.regencyCode
          : regencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$DistrictImplCopyWith(
          _$DistrictImpl value, $Res Function(_$DistrictImpl) then) =
      __$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'regency_code') String? regencyCode,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$DistrictImpl>
    implements _$$DistrictImplCopyWith<$Res> {
  __$$DistrictImplCopyWithImpl(
      _$DistrictImpl _value, $Res Function(_$DistrictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? regencyCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DistrictImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      regencyCode: freezed == regencyCode
          ? _value.regencyCode
          : regencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictImpl implements _District {
  const _$DistrictImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'regency_code') this.regencyCode,
      @JsonKey(name: 'name') this.name});

  factory _$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'regency_code')
  final String? regencyCode;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'District(code: $code, regencyCode: $regencyCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.regencyCode, regencyCode) ||
                other.regencyCode == regencyCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, regencyCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      __$$DistrictImplCopyWithImpl<_$DistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictImplToJson(
      this,
    );
  }
}

abstract class _District implements District {
  const factory _District(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'regency_code') final String? regencyCode,
      @JsonKey(name: 'name') final String? name}) = _$DistrictImpl;

  factory _District.fromJson(Map<String, dynamic> json) =
      _$DistrictImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'regency_code')
  String? get regencyCode;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Village _$VillageFromJson(Map<String, dynamic> json) {
  return _Village.fromJson(json);
}

/// @nodoc
mixin _$Village {
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_code')
  String? get districtCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageCopyWith<Village> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageCopyWith<$Res> {
  factory $VillageCopyWith(Village value, $Res Function(Village) then) =
      _$VillageCopyWithImpl<$Res, Village>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'district_code') String? districtCode,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$VillageCopyWithImpl<$Res, $Val extends Village>
    implements $VillageCopyWith<$Res> {
  _$VillageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? districtCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      districtCode: freezed == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VillageImplCopyWith<$Res> implements $VillageCopyWith<$Res> {
  factory _$$VillageImplCopyWith(
          _$VillageImpl value, $Res Function(_$VillageImpl) then) =
      __$$VillageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String? code,
      @JsonKey(name: 'district_code') String? districtCode,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$VillageImplCopyWithImpl<$Res>
    extends _$VillageCopyWithImpl<$Res, _$VillageImpl>
    implements _$$VillageImplCopyWith<$Res> {
  __$$VillageImplCopyWithImpl(
      _$VillageImpl _value, $Res Function(_$VillageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? districtCode = freezed,
    Object? name = freezed,
  }) {
    return _then(_$VillageImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      districtCode: freezed == districtCode
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VillageImpl implements _Village {
  const _$VillageImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'district_code') this.districtCode,
      @JsonKey(name: 'name') this.name});

  factory _$VillageImpl.fromJson(Map<String, dynamic> json) =>
      _$$VillageImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'district_code')
  final String? districtCode;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Village(code: $code, districtCode: $districtCode, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VillageImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.districtCode, districtCode) ||
                other.districtCode == districtCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, districtCode, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VillageImplCopyWith<_$VillageImpl> get copyWith =>
      __$$VillageImplCopyWithImpl<_$VillageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VillageImplToJson(
      this,
    );
  }
}

abstract class _Village implements Village {
  const factory _Village(
      {@JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'district_code') final String? districtCode,
      @JsonKey(name: 'name') final String? name}) = _$VillageImpl;

  factory _Village.fromJson(Map<String, dynamic> json) = _$VillageImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'district_code')
  String? get districtCode;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$VillageImplCopyWith<_$VillageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
