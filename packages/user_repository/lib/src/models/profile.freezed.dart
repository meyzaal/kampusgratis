// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: 'avatar')
  String get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'poin')
  int get poin => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'discussion_likes')
  int get discussionLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'discussion_posted')
  int get discussionPosted => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester')
  int get semester => throw _privateConstructorUsedError;
  @JsonKey(name: 'ipk')
  String get ipk => throw _privateConstructorUsedError;
  @JsonKey(name: 'major')
  String get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  Role get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_certificates')
  int get totalCertificates => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_subjects')
  int get currentSubjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_subjects')
  int get finishedSubjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'faculty')
  String get faculty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'poin') int poin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'discussion_likes') int discussionLikes,
      @JsonKey(name: 'discussion_posted') int discussionPosted,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'semester') int semester,
      @JsonKey(name: 'ipk') String ipk,
      @JsonKey(name: 'major') String major,
      @JsonKey(name: 'role') Role role,
      @JsonKey(name: 'total_certificates') int totalCertificates,
      @JsonKey(name: 'current_subjects') int currentSubjects,
      @JsonKey(name: 'finished_subjects') int finishedSubjects,
      @JsonKey(name: 'faculty') String faculty});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? poin = null,
    Object? userName = null,
    Object? discussionLikes = null,
    Object? discussionPosted = null,
    Object? fullName = null,
    Object? semester = null,
    Object? ipk = null,
    Object? major = null,
    Object? role = null,
    Object? totalCertificates = null,
    Object? currentSubjects = null,
    Object? finishedSubjects = null,
    Object? faculty = null,
  }) {
    return _then(_value.copyWith(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      poin: null == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      discussionLikes: null == discussionLikes
          ? _value.discussionLikes
          : discussionLikes // ignore: cast_nullable_to_non_nullable
              as int,
      discussionPosted: null == discussionPosted
          ? _value.discussionPosted
          : discussionPosted // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      ipk: null == ipk
          ? _value.ipk
          : ipk // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      totalCertificates: null == totalCertificates
          ? _value.totalCertificates
          : totalCertificates // ignore: cast_nullable_to_non_nullable
              as int,
      currentSubjects: null == currentSubjects
          ? _value.currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as int,
      finishedSubjects: null == finishedSubjects
          ? _value.finishedSubjects
          : finishedSubjects // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avatar') String avatar,
      @JsonKey(name: 'poin') int poin,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'discussion_likes') int discussionLikes,
      @JsonKey(name: 'discussion_posted') int discussionPosted,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'semester') int semester,
      @JsonKey(name: 'ipk') String ipk,
      @JsonKey(name: 'major') String major,
      @JsonKey(name: 'role') Role role,
      @JsonKey(name: 'total_certificates') int totalCertificates,
      @JsonKey(name: 'current_subjects') int currentSubjects,
      @JsonKey(name: 'finished_subjects') int finishedSubjects,
      @JsonKey(name: 'faculty') String faculty});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
    Object? poin = null,
    Object? userName = null,
    Object? discussionLikes = null,
    Object? discussionPosted = null,
    Object? fullName = null,
    Object? semester = null,
    Object? ipk = null,
    Object? major = null,
    Object? role = null,
    Object? totalCertificates = null,
    Object? currentSubjects = null,
    Object? finishedSubjects = null,
    Object? faculty = null,
  }) {
    return _then(_$ProfileImpl(
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      poin: null == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      discussionLikes: null == discussionLikes
          ? _value.discussionLikes
          : discussionLikes // ignore: cast_nullable_to_non_nullable
              as int,
      discussionPosted: null == discussionPosted
          ? _value.discussionPosted
          : discussionPosted // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      ipk: null == ipk
          ? _value.ipk
          : ipk // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      totalCertificates: null == totalCertificates
          ? _value.totalCertificates
          : totalCertificates // ignore: cast_nullable_to_non_nullable
              as int,
      currentSubjects: null == currentSubjects
          ? _value.currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as int,
      finishedSubjects: null == finishedSubjects
          ? _value.finishedSubjects
          : finishedSubjects // ignore: cast_nullable_to_non_nullable
              as int,
      faculty: null == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {@JsonKey(name: 'avatar') this.avatar = '',
      @JsonKey(name: 'poin') this.poin = 0,
      @JsonKey(name: 'user_name') this.userName = '',
      @JsonKey(name: 'discussion_likes') this.discussionLikes = 0,
      @JsonKey(name: 'discussion_posted') this.discussionPosted = 0,
      @JsonKey(name: 'full_name') this.fullName = '',
      @JsonKey(name: 'semester') this.semester = 0,
      @JsonKey(name: 'ipk') this.ipk = '',
      @JsonKey(name: 'major') this.major = '',
      @JsonKey(name: 'role') this.role = Role.guest,
      @JsonKey(name: 'total_certificates') this.totalCertificates = 0,
      @JsonKey(name: 'current_subjects') this.currentSubjects = 0,
      @JsonKey(name: 'finished_subjects') this.finishedSubjects = 0,
      @JsonKey(name: 'faculty') this.faculty = ''});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: 'avatar')
  final String avatar;
  @override
  @JsonKey(name: 'poin')
  final int poin;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'discussion_likes')
  final int discussionLikes;
  @override
  @JsonKey(name: 'discussion_posted')
  final int discussionPosted;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'semester')
  final int semester;
  @override
  @JsonKey(name: 'ipk')
  final String ipk;
  @override
  @JsonKey(name: 'major')
  final String major;
  @override
  @JsonKey(name: 'role')
  final Role role;
  @override
  @JsonKey(name: 'total_certificates')
  final int totalCertificates;
  @override
  @JsonKey(name: 'current_subjects')
  final int currentSubjects;
  @override
  @JsonKey(name: 'finished_subjects')
  final int finishedSubjects;
  @override
  @JsonKey(name: 'faculty')
  final String faculty;

  @override
  String toString() {
    return 'Profile(avatar: $avatar, poin: $poin, userName: $userName, discussionLikes: $discussionLikes, discussionPosted: $discussionPosted, fullName: $fullName, semester: $semester, ipk: $ipk, major: $major, role: $role, totalCertificates: $totalCertificates, currentSubjects: $currentSubjects, finishedSubjects: $finishedSubjects, faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.poin, poin) || other.poin == poin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.discussionLikes, discussionLikes) ||
                other.discussionLikes == discussionLikes) &&
            (identical(other.discussionPosted, discussionPosted) ||
                other.discussionPosted == discussionPosted) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.ipk, ipk) || other.ipk == ipk) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.totalCertificates, totalCertificates) ||
                other.totalCertificates == totalCertificates) &&
            (identical(other.currentSubjects, currentSubjects) ||
                other.currentSubjects == currentSubjects) &&
            (identical(other.finishedSubjects, finishedSubjects) ||
                other.finishedSubjects == finishedSubjects) &&
            (identical(other.faculty, faculty) || other.faculty == faculty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      poin,
      userName,
      discussionLikes,
      discussionPosted,
      fullName,
      semester,
      ipk,
      major,
      role,
      totalCertificates,
      currentSubjects,
      finishedSubjects,
      faculty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {@JsonKey(name: 'avatar') final String avatar,
      @JsonKey(name: 'poin') final int poin,
      @JsonKey(name: 'user_name') final String userName,
      @JsonKey(name: 'discussion_likes') final int discussionLikes,
      @JsonKey(name: 'discussion_posted') final int discussionPosted,
      @JsonKey(name: 'full_name') final String fullName,
      @JsonKey(name: 'semester') final int semester,
      @JsonKey(name: 'ipk') final String ipk,
      @JsonKey(name: 'major') final String major,
      @JsonKey(name: 'role') final Role role,
      @JsonKey(name: 'total_certificates') final int totalCertificates,
      @JsonKey(name: 'current_subjects') final int currentSubjects,
      @JsonKey(name: 'finished_subjects') final int finishedSubjects,
      @JsonKey(name: 'faculty') final String faculty}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: 'avatar')
  String get avatar;
  @override
  @JsonKey(name: 'poin')
  int get poin;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'discussion_likes')
  int get discussionLikes;
  @override
  @JsonKey(name: 'discussion_posted')
  int get discussionPosted;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'semester')
  int get semester;
  @override
  @JsonKey(name: 'ipk')
  String get ipk;
  @override
  @JsonKey(name: 'major')
  String get major;
  @override
  @JsonKey(name: 'role')
  Role get role;
  @override
  @JsonKey(name: 'total_certificates')
  int get totalCertificates;
  @override
  @JsonKey(name: 'current_subjects')
  int get currentSubjects;
  @override
  @JsonKey(name: 'finished_subjects')
  int get finishedSubjects;
  @override
  @JsonKey(name: 'faculty')
  String get faculty;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
