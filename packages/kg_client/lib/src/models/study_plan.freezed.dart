// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpSubject _$SpSubjectFromJson(Map<String, dynamic> json) {
  return _SpSubject.fromJson(json);
}

/// @nodoc
mixin _$SpSubject {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit')
  int? get credit => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'brochure')
  String? get brochure => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester')
  int? get semester => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_session')
  int? get totalSession => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_taken')
  bool? get isTaken => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool? get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  String? get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'major_id')
  String? get majorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'major_name')
  String? get majorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpSubjectCopyWith<SpSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpSubjectCopyWith<$Res> {
  factory $SpSubjectCopyWith(SpSubject value, $Res Function(SpSubject) then) =
      _$SpSubjectCopyWithImpl<$Res, SpSubject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'credit') int? credit,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'level') int? level,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'brochure') String? brochure,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'total_session') int? totalSession,
      @JsonKey(name: 'is_taken') bool? isTaken,
      @JsonKey(name: 'is_available') bool? isAvailable,
      @JsonKey(name: 'start_at') String? startAt,
      @JsonKey(name: 'major_id') String? majorId,
      @JsonKey(name: 'major_name') String? majorName});
}

/// @nodoc
class _$SpSubjectCopyWithImpl<$Res, $Val extends SpSubject>
    implements $SpSubjectCopyWith<$Res> {
  _$SpSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? code = freezed,
    Object? credit = freezed,
    Object? type = freezed,
    Object? level = freezed,
    Object? thumbnail = freezed,
    Object? brochure = freezed,
    Object? semester = freezed,
    Object? totalSession = freezed,
    Object? isTaken = freezed,
    Object? isAvailable = freezed,
    Object? startAt = freezed,
    Object? majorId = freezed,
    Object? majorName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      brochure: freezed == brochure
          ? _value.brochure
          : brochure // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSession: freezed == totalSession
          ? _value.totalSession
          : totalSession // ignore: cast_nullable_to_non_nullable
              as int?,
      isTaken: freezed == isTaken
          ? _value.isTaken
          : isTaken // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      majorId: freezed == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
              as String?,
      majorName: freezed == majorName
          ? _value.majorName
          : majorName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpSubjectImplCopyWith<$Res>
    implements $SpSubjectCopyWith<$Res> {
  factory _$$SpSubjectImplCopyWith(
          _$SpSubjectImpl value, $Res Function(_$SpSubjectImpl) then) =
      __$$SpSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'credit') int? credit,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'level') int? level,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'brochure') String? brochure,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'total_session') int? totalSession,
      @JsonKey(name: 'is_taken') bool? isTaken,
      @JsonKey(name: 'is_available') bool? isAvailable,
      @JsonKey(name: 'start_at') String? startAt,
      @JsonKey(name: 'major_id') String? majorId,
      @JsonKey(name: 'major_name') String? majorName});
}

/// @nodoc
class __$$SpSubjectImplCopyWithImpl<$Res>
    extends _$SpSubjectCopyWithImpl<$Res, _$SpSubjectImpl>
    implements _$$SpSubjectImplCopyWith<$Res> {
  __$$SpSubjectImplCopyWithImpl(
      _$SpSubjectImpl _value, $Res Function(_$SpSubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? code = freezed,
    Object? credit = freezed,
    Object? type = freezed,
    Object? level = freezed,
    Object? thumbnail = freezed,
    Object? brochure = freezed,
    Object? semester = freezed,
    Object? totalSession = freezed,
    Object? isTaken = freezed,
    Object? isAvailable = freezed,
    Object? startAt = freezed,
    Object? majorId = freezed,
    Object? majorName = freezed,
  }) {
    return _then(_$SpSubjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      brochure: freezed == brochure
          ? _value.brochure
          : brochure // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSession: freezed == totalSession
          ? _value.totalSession
          : totalSession // ignore: cast_nullable_to_non_nullable
              as int?,
      isTaken: freezed == isTaken
          ? _value.isTaken
          : isTaken // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String?,
      majorId: freezed == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
              as String?,
      majorName: freezed == majorName
          ? _value.majorName
          : majorName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpSubjectImpl implements _SpSubject {
  const _$SpSubjectImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'credit') this.credit,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'brochure') this.brochure,
      @JsonKey(name: 'semester') this.semester,
      @JsonKey(name: 'total_session') this.totalSession,
      @JsonKey(name: 'is_taken') this.isTaken,
      @JsonKey(name: 'is_available') this.isAvailable,
      @JsonKey(name: 'start_at') this.startAt,
      @JsonKey(name: 'major_id') this.majorId,
      @JsonKey(name: 'major_name') this.majorName});

  factory _$SpSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpSubjectImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'credit')
  final int? credit;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'level')
  final int? level;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;
  @override
  @JsonKey(name: 'brochure')
  final String? brochure;
  @override
  @JsonKey(name: 'semester')
  final int? semester;
  @override
  @JsonKey(name: 'total_session')
  final int? totalSession;
  @override
  @JsonKey(name: 'is_taken')
  final bool? isTaken;
  @override
  @JsonKey(name: 'is_available')
  final bool? isAvailable;
  @override
  @JsonKey(name: 'start_at')
  final String? startAt;
  @override
  @JsonKey(name: 'major_id')
  final String? majorId;
  @override
  @JsonKey(name: 'major_name')
  final String? majorName;

  @override
  String toString() {
    return 'SpSubject(id: $id, name: $name, description: $description, slug: $slug, code: $code, credit: $credit, type: $type, level: $level, thumbnail: $thumbnail, brochure: $brochure, semester: $semester, totalSession: $totalSession, isTaken: $isTaken, isAvailable: $isAvailable, startAt: $startAt, majorId: $majorId, majorName: $majorName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpSubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.brochure, brochure) ||
                other.brochure == brochure) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.totalSession, totalSession) ||
                other.totalSession == totalSession) &&
            (identical(other.isTaken, isTaken) || other.isTaken == isTaken) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.majorId, majorId) || other.majorId == majorId) &&
            (identical(other.majorName, majorName) ||
                other.majorName == majorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      slug,
      code,
      credit,
      type,
      level,
      thumbnail,
      brochure,
      semester,
      totalSession,
      isTaken,
      isAvailable,
      startAt,
      majorId,
      majorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpSubjectImplCopyWith<_$SpSubjectImpl> get copyWith =>
      __$$SpSubjectImplCopyWithImpl<_$SpSubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpSubjectImplToJson(
      this,
    );
  }
}

abstract class _SpSubject implements SpSubject {
  const factory _SpSubject(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'credit') final int? credit,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'level') final int? level,
      @JsonKey(name: 'thumbnail') final String? thumbnail,
      @JsonKey(name: 'brochure') final String? brochure,
      @JsonKey(name: 'semester') final int? semester,
      @JsonKey(name: 'total_session') final int? totalSession,
      @JsonKey(name: 'is_taken') final bool? isTaken,
      @JsonKey(name: 'is_available') final bool? isAvailable,
      @JsonKey(name: 'start_at') final String? startAt,
      @JsonKey(name: 'major_id') final String? majorId,
      @JsonKey(name: 'major_name') final String? majorName}) = _$SpSubjectImpl;

  factory _SpSubject.fromJson(Map<String, dynamic> json) =
      _$SpSubjectImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'credit')
  int? get credit;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'level')
  int? get level;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(name: 'brochure')
  String? get brochure;
  @override
  @JsonKey(name: 'semester')
  int? get semester;
  @override
  @JsonKey(name: 'total_session')
  int? get totalSession;
  @override
  @JsonKey(name: 'is_taken')
  bool? get isTaken;
  @override
  @JsonKey(name: 'is_available')
  bool? get isAvailable;
  @override
  @JsonKey(name: 'start_at')
  String? get startAt;
  @override
  @JsonKey(name: 'major_id')
  String? get majorId;
  @override
  @JsonKey(name: 'major_name')
  String? get majorName;
  @override
  @JsonKey(ignore: true)
  _$$SpSubjectImplCopyWith<_$SpSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnrollSubject _$EnrollSubjectFromJson(Map<String, dynamic> json) {
  return _EnrollSubject.fromJson(json);
}

/// @nodoc
mixin _$EnrollSubject {
  @JsonKey(name: 'pending')
  EnrollStatus? get pending => throw _privateConstructorUsedError;
  @JsonKey(name: 'ongoing')
  EnrollStatus? get ongoing => throw _privateConstructorUsedError;
  @JsonKey(name: 'draft')
  EnrollStatus? get draft => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected')
  EnrollStatus? get rejected => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_plan_credit')
  int? get totalPlanCredit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrollSubjectCopyWith<EnrollSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollSubjectCopyWith<$Res> {
  factory $EnrollSubjectCopyWith(
          EnrollSubject value, $Res Function(EnrollSubject) then) =
      _$EnrollSubjectCopyWithImpl<$Res, EnrollSubject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pending') EnrollStatus? pending,
      @JsonKey(name: 'ongoing') EnrollStatus? ongoing,
      @JsonKey(name: 'draft') EnrollStatus? draft,
      @JsonKey(name: 'rejected') EnrollStatus? rejected,
      @JsonKey(name: 'total_plan_credit') int? totalPlanCredit});

  $EnrollStatusCopyWith<$Res>? get pending;
  $EnrollStatusCopyWith<$Res>? get ongoing;
  $EnrollStatusCopyWith<$Res>? get draft;
  $EnrollStatusCopyWith<$Res>? get rejected;
}

/// @nodoc
class _$EnrollSubjectCopyWithImpl<$Res, $Val extends EnrollSubject>
    implements $EnrollSubjectCopyWith<$Res> {
  _$EnrollSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = freezed,
    Object? ongoing = freezed,
    Object? draft = freezed,
    Object? rejected = freezed,
    Object? totalPlanCredit = freezed,
  }) {
    return _then(_value.copyWith(
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      ongoing: freezed == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      totalPlanCredit: freezed == totalPlanCredit
          ? _value.totalPlanCredit
          : totalPlanCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EnrollStatusCopyWith<$Res>? get pending {
    if (_value.pending == null) {
      return null;
    }

    return $EnrollStatusCopyWith<$Res>(_value.pending!, (value) {
      return _then(_value.copyWith(pending: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnrollStatusCopyWith<$Res>? get ongoing {
    if (_value.ongoing == null) {
      return null;
    }

    return $EnrollStatusCopyWith<$Res>(_value.ongoing!, (value) {
      return _then(_value.copyWith(ongoing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnrollStatusCopyWith<$Res>? get draft {
    if (_value.draft == null) {
      return null;
    }

    return $EnrollStatusCopyWith<$Res>(_value.draft!, (value) {
      return _then(_value.copyWith(draft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnrollStatusCopyWith<$Res>? get rejected {
    if (_value.rejected == null) {
      return null;
    }

    return $EnrollStatusCopyWith<$Res>(_value.rejected!, (value) {
      return _then(_value.copyWith(rejected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnrollSubjectImplCopyWith<$Res>
    implements $EnrollSubjectCopyWith<$Res> {
  factory _$$EnrollSubjectImplCopyWith(
          _$EnrollSubjectImpl value, $Res Function(_$EnrollSubjectImpl) then) =
      __$$EnrollSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pending') EnrollStatus? pending,
      @JsonKey(name: 'ongoing') EnrollStatus? ongoing,
      @JsonKey(name: 'draft') EnrollStatus? draft,
      @JsonKey(name: 'rejected') EnrollStatus? rejected,
      @JsonKey(name: 'total_plan_credit') int? totalPlanCredit});

  @override
  $EnrollStatusCopyWith<$Res>? get pending;
  @override
  $EnrollStatusCopyWith<$Res>? get ongoing;
  @override
  $EnrollStatusCopyWith<$Res>? get draft;
  @override
  $EnrollStatusCopyWith<$Res>? get rejected;
}

/// @nodoc
class __$$EnrollSubjectImplCopyWithImpl<$Res>
    extends _$EnrollSubjectCopyWithImpl<$Res, _$EnrollSubjectImpl>
    implements _$$EnrollSubjectImplCopyWith<$Res> {
  __$$EnrollSubjectImplCopyWithImpl(
      _$EnrollSubjectImpl _value, $Res Function(_$EnrollSubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pending = freezed,
    Object? ongoing = freezed,
    Object? draft = freezed,
    Object? rejected = freezed,
    Object? totalPlanCredit = freezed,
  }) {
    return _then(_$EnrollSubjectImpl(
      pending: freezed == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      ongoing: freezed == ongoing
          ? _value.ongoing
          : ongoing // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      rejected: freezed == rejected
          ? _value.rejected
          : rejected // ignore: cast_nullable_to_non_nullable
              as EnrollStatus?,
      totalPlanCredit: freezed == totalPlanCredit
          ? _value.totalPlanCredit
          : totalPlanCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollSubjectImpl implements _EnrollSubject {
  const _$EnrollSubjectImpl(
      {@JsonKey(name: 'pending') this.pending,
      @JsonKey(name: 'ongoing') this.ongoing,
      @JsonKey(name: 'draft') this.draft,
      @JsonKey(name: 'rejected') this.rejected,
      @JsonKey(name: 'total_plan_credit') this.totalPlanCredit});

  factory _$EnrollSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollSubjectImplFromJson(json);

  @override
  @JsonKey(name: 'pending')
  final EnrollStatus? pending;
  @override
  @JsonKey(name: 'ongoing')
  final EnrollStatus? ongoing;
  @override
  @JsonKey(name: 'draft')
  final EnrollStatus? draft;
  @override
  @JsonKey(name: 'rejected')
  final EnrollStatus? rejected;
  @override
  @JsonKey(name: 'total_plan_credit')
  final int? totalPlanCredit;

  @override
  String toString() {
    return 'EnrollSubject(pending: $pending, ongoing: $ongoing, draft: $draft, rejected: $rejected, totalPlanCredit: $totalPlanCredit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollSubjectImpl &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.ongoing, ongoing) || other.ongoing == ongoing) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.rejected, rejected) ||
                other.rejected == rejected) &&
            (identical(other.totalPlanCredit, totalPlanCredit) ||
                other.totalPlanCredit == totalPlanCredit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, pending, ongoing, draft, rejected, totalPlanCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollSubjectImplCopyWith<_$EnrollSubjectImpl> get copyWith =>
      __$$EnrollSubjectImplCopyWithImpl<_$EnrollSubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollSubjectImplToJson(
      this,
    );
  }
}

abstract class _EnrollSubject implements EnrollSubject {
  const factory _EnrollSubject(
          {@JsonKey(name: 'pending') final EnrollStatus? pending,
          @JsonKey(name: 'ongoing') final EnrollStatus? ongoing,
          @JsonKey(name: 'draft') final EnrollStatus? draft,
          @JsonKey(name: 'rejected') final EnrollStatus? rejected,
          @JsonKey(name: 'total_plan_credit') final int? totalPlanCredit}) =
      _$EnrollSubjectImpl;

  factory _EnrollSubject.fromJson(Map<String, dynamic> json) =
      _$EnrollSubjectImpl.fromJson;

  @override
  @JsonKey(name: 'pending')
  EnrollStatus? get pending;
  @override
  @JsonKey(name: 'ongoing')
  EnrollStatus? get ongoing;
  @override
  @JsonKey(name: 'draft')
  EnrollStatus? get draft;
  @override
  @JsonKey(name: 'rejected')
  EnrollStatus? get rejected;
  @override
  @JsonKey(name: 'total_plan_credit')
  int? get totalPlanCredit;
  @override
  @JsonKey(ignore: true)
  _$$EnrollSubjectImplCopyWith<_$EnrollSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnrollStatus _$EnrollStatusFromJson(Map<String, dynamic> json) {
  return _EnrollStatus.fromJson(json);
}

/// @nodoc
mixin _$EnrollStatus {
  @JsonKey(name: 'subjects')
  List<EnrolledSubject>? get subjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_credit')
  int? get totalCredit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrollStatusCopyWith<EnrollStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollStatusCopyWith<$Res> {
  factory $EnrollStatusCopyWith(
          EnrollStatus value, $Res Function(EnrollStatus) then) =
      _$EnrollStatusCopyWithImpl<$Res, EnrollStatus>;
  @useResult
  $Res call(
      {@JsonKey(name: 'subjects') List<EnrolledSubject>? subjects,
      @JsonKey(name: 'total_credit') int? totalCredit});
}

/// @nodoc
class _$EnrollStatusCopyWithImpl<$Res, $Val extends EnrollStatus>
    implements $EnrollStatusCopyWith<$Res> {
  _$EnrollStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
    Object? totalCredit = freezed,
  }) {
    return _then(_value.copyWith(
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<EnrolledSubject>?,
      totalCredit: freezed == totalCredit
          ? _value.totalCredit
          : totalCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrollStatusImplCopyWith<$Res>
    implements $EnrollStatusCopyWith<$Res> {
  factory _$$EnrollStatusImplCopyWith(
          _$EnrollStatusImpl value, $Res Function(_$EnrollStatusImpl) then) =
      __$$EnrollStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'subjects') List<EnrolledSubject>? subjects,
      @JsonKey(name: 'total_credit') int? totalCredit});
}

/// @nodoc
class __$$EnrollStatusImplCopyWithImpl<$Res>
    extends _$EnrollStatusCopyWithImpl<$Res, _$EnrollStatusImpl>
    implements _$$EnrollStatusImplCopyWith<$Res> {
  __$$EnrollStatusImplCopyWithImpl(
      _$EnrollStatusImpl _value, $Res Function(_$EnrollStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
    Object? totalCredit = freezed,
  }) {
    return _then(_$EnrollStatusImpl(
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<EnrolledSubject>?,
      totalCredit: freezed == totalCredit
          ? _value.totalCredit
          : totalCredit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollStatusImpl implements _EnrollStatus {
  const _$EnrollStatusImpl(
      {@JsonKey(name: 'subjects') final List<EnrolledSubject>? subjects,
      @JsonKey(name: 'total_credit') this.totalCredit})
      : _subjects = subjects;

  factory _$EnrollStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollStatusImplFromJson(json);

  final List<EnrolledSubject>? _subjects;
  @override
  @JsonKey(name: 'subjects')
  List<EnrolledSubject>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_credit')
  final int? totalCredit;

  @override
  String toString() {
    return 'EnrollStatus(subjects: $subjects, totalCredit: $totalCredit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollStatusImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            (identical(other.totalCredit, totalCredit) ||
                other.totalCredit == totalCredit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subjects), totalCredit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollStatusImplCopyWith<_$EnrollStatusImpl> get copyWith =>
      __$$EnrollStatusImplCopyWithImpl<_$EnrollStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollStatusImplToJson(
      this,
    );
  }
}

abstract class _EnrollStatus implements EnrollStatus {
  const factory _EnrollStatus(
          {@JsonKey(name: 'subjects') final List<EnrolledSubject>? subjects,
          @JsonKey(name: 'total_credit') final int? totalCredit}) =
      _$EnrollStatusImpl;

  factory _EnrollStatus.fromJson(Map<String, dynamic> json) =
      _$EnrollStatusImpl.fromJson;

  @override
  @JsonKey(name: 'subjects')
  List<EnrolledSubject>? get subjects;
  @override
  @JsonKey(name: 'total_credit')
  int? get totalCredit;
  @override
  @JsonKey(ignore: true)
  _$$EnrollStatusImplCopyWith<_$EnrollStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnrolledSubject _$EnrolledSubjectFromJson(Map<String, dynamic> json) {
  return _EnrolledSubject.fromJson(json);
}

/// @nodoc
mixin _$EnrolledSubject {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_code')
  String? get subjectCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit')
  int? get credit => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_semester')
  int? get currentSemester => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_taken')
  String? get dateTaken => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_finished')
  String? get dateFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'proof')
  String? get proof => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnrolledSubjectCopyWith<EnrolledSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrolledSubjectCopyWith<$Res> {
  factory $EnrolledSubjectCopyWith(
          EnrolledSubject value, $Res Function(EnrolledSubject) then) =
      _$EnrolledSubjectCopyWithImpl<$Res, EnrolledSubject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'subject_code') String? subjectCode,
      @JsonKey(name: 'credit') int? credit,
      @JsonKey(name: 'current_semester') int? currentSemester,
      @JsonKey(name: 'date_taken') String? dateTaken,
      @JsonKey(name: 'date_finished') String? dateFinished,
      @JsonKey(name: 'proof') String? proof});
}

/// @nodoc
class _$EnrolledSubjectCopyWithImpl<$Res, $Val extends EnrolledSubject>
    implements $EnrolledSubjectCopyWith<$Res> {
  _$EnrolledSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? subjectCode = freezed,
    Object? credit = freezed,
    Object? currentSemester = freezed,
    Object? dateTaken = freezed,
    Object? dateFinished = freezed,
    Object? proof = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectCode: freezed == subjectCode
          ? _value.subjectCode
          : subjectCode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTaken: freezed == dateTaken
          ? _value.dateTaken
          : dateTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFinished: freezed == dateFinished
          ? _value.dateFinished
          : dateFinished // ignore: cast_nullable_to_non_nullable
              as String?,
      proof: freezed == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrolledSubjectImplCopyWith<$Res>
    implements $EnrolledSubjectCopyWith<$Res> {
  factory _$$EnrolledSubjectImplCopyWith(_$EnrolledSubjectImpl value,
          $Res Function(_$EnrolledSubjectImpl) then) =
      __$$EnrolledSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'subject_code') String? subjectCode,
      @JsonKey(name: 'credit') int? credit,
      @JsonKey(name: 'current_semester') int? currentSemester,
      @JsonKey(name: 'date_taken') String? dateTaken,
      @JsonKey(name: 'date_finished') String? dateFinished,
      @JsonKey(name: 'proof') String? proof});
}

/// @nodoc
class __$$EnrolledSubjectImplCopyWithImpl<$Res>
    extends _$EnrolledSubjectCopyWithImpl<$Res, _$EnrolledSubjectImpl>
    implements _$$EnrolledSubjectImplCopyWith<$Res> {
  __$$EnrolledSubjectImplCopyWithImpl(
      _$EnrolledSubjectImpl _value, $Res Function(_$EnrolledSubjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? subjectCode = freezed,
    Object? credit = freezed,
    Object? currentSemester = freezed,
    Object? dateTaken = freezed,
    Object? dateFinished = freezed,
    Object? proof = freezed,
  }) {
    return _then(_$EnrolledSubjectImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectCode: freezed == subjectCode
          ? _value.subjectCode
          : subjectCode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTaken: freezed == dateTaken
          ? _value.dateTaken
          : dateTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFinished: freezed == dateFinished
          ? _value.dateFinished
          : dateFinished // ignore: cast_nullable_to_non_nullable
              as String?,
      proof: freezed == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrolledSubjectImpl implements _EnrolledSubject {
  const _$EnrolledSubjectImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'subject_code') this.subjectCode,
      @JsonKey(name: 'credit') this.credit,
      @JsonKey(name: 'current_semester') this.currentSemester,
      @JsonKey(name: 'date_taken') this.dateTaken,
      @JsonKey(name: 'date_finished') this.dateFinished,
      @JsonKey(name: 'proof') this.proof});

  factory _$EnrolledSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrolledSubjectImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;
  @override
  @JsonKey(name: 'subject_code')
  final String? subjectCode;
  @override
  @JsonKey(name: 'credit')
  final int? credit;
  @override
  @JsonKey(name: 'current_semester')
  final int? currentSemester;
  @override
  @JsonKey(name: 'date_taken')
  final String? dateTaken;
  @override
  @JsonKey(name: 'date_finished')
  final String? dateFinished;
  @override
  @JsonKey(name: 'proof')
  final String? proof;

  @override
  String toString() {
    return 'EnrolledSubject(id: $id, name: $name, thumbnail: $thumbnail, subjectCode: $subjectCode, credit: $credit, currentSemester: $currentSemester, dateTaken: $dateTaken, dateFinished: $dateFinished, proof: $proof)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrolledSubjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.subjectCode, subjectCode) ||
                other.subjectCode == subjectCode) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.currentSemester, currentSemester) ||
                other.currentSemester == currentSemester) &&
            (identical(other.dateTaken, dateTaken) ||
                other.dateTaken == dateTaken) &&
            (identical(other.dateFinished, dateFinished) ||
                other.dateFinished == dateFinished) &&
            (identical(other.proof, proof) || other.proof == proof));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnail, subjectCode,
      credit, currentSemester, dateTaken, dateFinished, proof);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrolledSubjectImplCopyWith<_$EnrolledSubjectImpl> get copyWith =>
      __$$EnrolledSubjectImplCopyWithImpl<_$EnrolledSubjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrolledSubjectImplToJson(
      this,
    );
  }
}

abstract class _EnrolledSubject implements EnrolledSubject {
  const factory _EnrolledSubject(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'thumbnail') final String? thumbnail,
      @JsonKey(name: 'subject_code') final String? subjectCode,
      @JsonKey(name: 'credit') final int? credit,
      @JsonKey(name: 'current_semester') final int? currentSemester,
      @JsonKey(name: 'date_taken') final String? dateTaken,
      @JsonKey(name: 'date_finished') final String? dateFinished,
      @JsonKey(name: 'proof') final String? proof}) = _$EnrolledSubjectImpl;

  factory _EnrolledSubject.fromJson(Map<String, dynamic> json) =
      _$EnrolledSubjectImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(name: 'subject_code')
  String? get subjectCode;
  @override
  @JsonKey(name: 'credit')
  int? get credit;
  @override
  @JsonKey(name: 'current_semester')
  int? get currentSemester;
  @override
  @JsonKey(name: 'date_taken')
  String? get dateTaken;
  @override
  @JsonKey(name: 'date_finished')
  String? get dateFinished;
  @override
  @JsonKey(name: 'proof')
  String? get proof;
  @override
  @JsonKey(ignore: true)
  _$$EnrolledSubjectImplCopyWith<_$EnrolledSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
