// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'activities')
  Activities? get activities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User? user,
      @JsonKey(name: 'activities') Activities? activities});

  $UserCopyWith<$Res>? get user;
  $ActivitiesCopyWith<$Res>? get activities;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? activities = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Activities?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivitiesCopyWith<$Res>? get activities {
    if (_value.activities == null) {
      return null;
    }

    return $ActivitiesCopyWith<$Res>(_value.activities!, (value) {
      return _then(_value.copyWith(activities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User? user,
      @JsonKey(name: 'activities') Activities? activities});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ActivitiesCopyWith<$Res>? get activities;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? activities = freezed,
  }) {
    return _then(_$UserDataImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Activities?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {@JsonKey(name: 'user') this.user,
      @JsonKey(name: 'activities') this.activities});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User? user;
  @override
  @JsonKey(name: 'activities')
  final Activities? activities;

  @override
  String toString() {
    return 'UserData(user: $user, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.activities, activities) ||
                other.activities == activities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, activities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
          {@JsonKey(name: 'user') final User? user,
          @JsonKey(name: 'activities') final Activities? activities}) =
      _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'activities')
  Activities? get activities;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  Gender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  Role? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'role') Role? role,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'gender') Gender? gender,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'role') Role? role,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
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
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'gender')
  final Gender? gender;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'role')
  final Role? role;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, userName: $userName, email: $email, emailVerifiedAt: $emailVerifiedAt, avatar: $avatar, gender: $gender, phoneNumber: $phoneNumber, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, userName, email,
      emailVerifiedAt, avatar, gender, phoneNumber, role, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'avatar') final String? avatar,
      @JsonKey(name: 'gender') final Gender? gender,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      @JsonKey(name: 'role') final Role? role,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'gender')
  Gender? get gender;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'role')
  Role? get role;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Activities _$ActivitiesFromJson(Map<String, dynamic> json) {
  return _Activities.fromJson(json);
}

/// @nodoc
mixin _$Activities {
  @JsonKey(name: 'quizzes')
  List<Quiz>? get quizzes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivitiesCopyWith<Activities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesCopyWith<$Res> {
  factory $ActivitiesCopyWith(
          Activities value, $Res Function(Activities) then) =
      _$ActivitiesCopyWithImpl<$Res, Activities>;
  @useResult
  $Res call({@JsonKey(name: 'quizzes') List<Quiz>? quizzes});
}

/// @nodoc
class _$ActivitiesCopyWithImpl<$Res, $Val extends Activities>
    implements $ActivitiesCopyWith<$Res> {
  _$ActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = freezed,
  }) {
    return _then(_value.copyWith(
      quizzes: freezed == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitiesImplCopyWith<$Res>
    implements $ActivitiesCopyWith<$Res> {
  factory _$$ActivitiesImplCopyWith(
          _$ActivitiesImpl value, $Res Function(_$ActivitiesImpl) then) =
      __$$ActivitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'quizzes') List<Quiz>? quizzes});
}

/// @nodoc
class __$$ActivitiesImplCopyWithImpl<$Res>
    extends _$ActivitiesCopyWithImpl<$Res, _$ActivitiesImpl>
    implements _$$ActivitiesImplCopyWith<$Res> {
  __$$ActivitiesImplCopyWithImpl(
      _$ActivitiesImpl _value, $Res Function(_$ActivitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = freezed,
  }) {
    return _then(_$ActivitiesImpl(
      quizzes: freezed == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivitiesImpl implements _Activities {
  const _$ActivitiesImpl({@JsonKey(name: 'quizzes') final List<Quiz>? quizzes})
      : _quizzes = quizzes;

  factory _$ActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivitiesImplFromJson(json);

  final List<Quiz>? _quizzes;
  @override
  @JsonKey(name: 'quizzes')
  List<Quiz>? get quizzes {
    final value = _quizzes;
    if (value == null) return null;
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Activities(quizzes: $quizzes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesImplCopyWith<_$ActivitiesImpl> get copyWith =>
      __$$ActivitiesImplCopyWithImpl<_$ActivitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivitiesImplToJson(
      this,
    );
  }
}

abstract class _Activities implements Activities {
  const factory _Activities(
      {@JsonKey(name: 'quizzes') final List<Quiz>? quizzes}) = _$ActivitiesImpl;

  factory _Activities.fromJson(Map<String, dynamic> json) =
      _$ActivitiesImpl.fromJson;

  @override
  @JsonKey(name: 'quizzes')
  List<Quiz>? get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$ActivitiesImplCopyWith<_$ActivitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_point')
  String? get questionPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'kkm')
  int? get kkm => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_attempt')
  int? get remainingAttempt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'question_point') String? questionPoint,
      @JsonKey(name: 'kkm') int? kkm,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'remaining_attempt') int? remainingAttempt});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? totalQuestions = freezed,
    Object? questionPoint = freezed,
    Object? kkm = freezed,
    Object? duration = freezed,
    Object? remainingAttempt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      questionPoint: freezed == questionPoint
          ? _value.questionPoint
          : questionPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      kkm: freezed == kkm
          ? _value.kkm
          : kkm // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAttempt: freezed == remainingAttempt
          ? _value.remainingAttempt
          : remainingAttempt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'question_point') String? questionPoint,
      @JsonKey(name: 'kkm') int? kkm,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'remaining_attempt') int? remainingAttempt});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? totalQuestions = freezed,
    Object? questionPoint = freezed,
    Object? kkm = freezed,
    Object? duration = freezed,
    Object? remainingAttempt = freezed,
  }) {
    return _then(_$QuizImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      questionPoint: freezed == questionPoint
          ? _value.questionPoint
          : questionPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      kkm: freezed == kkm
          ? _value.kkm
          : kkm // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingAttempt: freezed == remainingAttempt
          ? _value.remainingAttempt
          : remainingAttempt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl implements _Quiz {
  const _$QuizImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'question_point') this.questionPoint,
      @JsonKey(name: 'kkm') this.kkm,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'remaining_attempt') this.remainingAttempt});

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'question_point')
  final String? questionPoint;
  @override
  @JsonKey(name: 'kkm')
  final int? kkm;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'remaining_attempt')
  final int? remainingAttempt;

  @override
  String toString() {
    return 'Quiz(id: $id, title: $title, totalQuestions: $totalQuestions, questionPoint: $questionPoint, kkm: $kkm, duration: $duration, remainingAttempt: $remainingAttempt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.questionPoint, questionPoint) ||
                other.questionPoint == questionPoint) &&
            (identical(other.kkm, kkm) || other.kkm == kkm) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.remainingAttempt, remainingAttempt) ||
                other.remainingAttempt == remainingAttempt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, totalQuestions,
      questionPoint, kkm, duration, remainingAttempt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'total_questions') final int? totalQuestions,
          @JsonKey(name: 'question_point') final String? questionPoint,
          @JsonKey(name: 'kkm') final int? kkm,
          @JsonKey(name: 'duration') final int? duration,
          @JsonKey(name: 'remaining_attempt') final int? remainingAttempt}) =
      _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'question_point')
  String? get questionPoint;
  @override
  @JsonKey(name: 'kkm')
  int? get kkm;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'remaining_attempt')
  int? get remainingAttempt;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'poin')
  int? get poin => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'discussion_likes')
  int? get discussionLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'discussion_posted')
  int? get discussionPosted => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'semester')
  int? get semester => throw _privateConstructorUsedError;
  @JsonKey(name: 'ipk')
  String? get ipk => throw _privateConstructorUsedError;
  @JsonKey(name: 'major')
  String? get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  Role? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_certificates')
  int? get totalCertificates => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_subjects')
  int? get currentSubjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_subjects')
  int? get finishedSubjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'faculty')
  String? get faculty => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'poin') int? poin,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'discussion_likes') int? discussionLikes,
      @JsonKey(name: 'discussion_posted') int? discussionPosted,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'ipk') String? ipk,
      @JsonKey(name: 'major') String? major,
      @JsonKey(name: 'role') Role? role,
      @JsonKey(name: 'total_certificates') int? totalCertificates,
      @JsonKey(name: 'current_subjects') int? currentSubjects,
      @JsonKey(name: 'finished_subjects') int? finishedSubjects,
      @JsonKey(name: 'faculty') String? faculty});
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
    Object? avatar = freezed,
    Object? poin = freezed,
    Object? userName = freezed,
    Object? discussionLikes = freezed,
    Object? discussionPosted = freezed,
    Object? fullName = freezed,
    Object? semester = freezed,
    Object? ipk = freezed,
    Object? major = freezed,
    Object? role = freezed,
    Object? totalCertificates = freezed,
    Object? currentSubjects = freezed,
    Object? finishedSubjects = freezed,
    Object? faculty = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      poin: freezed == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      discussionLikes: freezed == discussionLikes
          ? _value.discussionLikes
          : discussionLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      discussionPosted: freezed == discussionPosted
          ? _value.discussionPosted
          : discussionPosted // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      ipk: freezed == ipk
          ? _value.ipk
          : ipk // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      totalCertificates: freezed == totalCertificates
          ? _value.totalCertificates
          : totalCertificates // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSubjects: freezed == currentSubjects
          ? _value.currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      finishedSubjects: freezed == finishedSubjects
          ? _value.finishedSubjects
          : finishedSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'poin') int? poin,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'discussion_likes') int? discussionLikes,
      @JsonKey(name: 'discussion_posted') int? discussionPosted,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'semester') int? semester,
      @JsonKey(name: 'ipk') String? ipk,
      @JsonKey(name: 'major') String? major,
      @JsonKey(name: 'role') Role? role,
      @JsonKey(name: 'total_certificates') int? totalCertificates,
      @JsonKey(name: 'current_subjects') int? currentSubjects,
      @JsonKey(name: 'finished_subjects') int? finishedSubjects,
      @JsonKey(name: 'faculty') String? faculty});
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
    Object? avatar = freezed,
    Object? poin = freezed,
    Object? userName = freezed,
    Object? discussionLikes = freezed,
    Object? discussionPosted = freezed,
    Object? fullName = freezed,
    Object? semester = freezed,
    Object? ipk = freezed,
    Object? major = freezed,
    Object? role = freezed,
    Object? totalCertificates = freezed,
    Object? currentSubjects = freezed,
    Object? finishedSubjects = freezed,
    Object? faculty = freezed,
  }) {
    return _then(_$ProfileImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      poin: freezed == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      discussionLikes: freezed == discussionLikes
          ? _value.discussionLikes
          : discussionLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      discussionPosted: freezed == discussionPosted
          ? _value.discussionPosted
          : discussionPosted // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      ipk: freezed == ipk
          ? _value.ipk
          : ipk // ignore: cast_nullable_to_non_nullable
              as String?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      totalCertificates: freezed == totalCertificates
          ? _value.totalCertificates
          : totalCertificates // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSubjects: freezed == currentSubjects
          ? _value.currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      finishedSubjects: freezed == finishedSubjects
          ? _value.finishedSubjects
          : finishedSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      faculty: freezed == faculty
          ? _value.faculty
          : faculty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {@JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'poin') this.poin,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'discussion_likes') this.discussionLikes,
      @JsonKey(name: 'discussion_posted') this.discussionPosted,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'semester') this.semester,
      @JsonKey(name: 'ipk') this.ipk,
      @JsonKey(name: 'major') this.major,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'total_certificates') this.totalCertificates,
      @JsonKey(name: 'current_subjects') this.currentSubjects,
      @JsonKey(name: 'finished_subjects') this.finishedSubjects,
      @JsonKey(name: 'faculty') this.faculty});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'poin')
  final int? poin;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'discussion_likes')
  final int? discussionLikes;
  @override
  @JsonKey(name: 'discussion_posted')
  final int? discussionPosted;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'semester')
  final int? semester;
  @override
  @JsonKey(name: 'ipk')
  final String? ipk;
  @override
  @JsonKey(name: 'major')
  final String? major;
  @override
  @JsonKey(name: 'role')
  final Role? role;
  @override
  @JsonKey(name: 'total_certificates')
  final int? totalCertificates;
  @override
  @JsonKey(name: 'current_subjects')
  final int? currentSubjects;
  @override
  @JsonKey(name: 'finished_subjects')
  final int? finishedSubjects;
  @override
  @JsonKey(name: 'faculty')
  final String? faculty;

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
      {@JsonKey(name: 'avatar') final String? avatar,
      @JsonKey(name: 'poin') final int? poin,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'discussion_likes') final int? discussionLikes,
      @JsonKey(name: 'discussion_posted') final int? discussionPosted,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'semester') final int? semester,
      @JsonKey(name: 'ipk') final String? ipk,
      @JsonKey(name: 'major') final String? major,
      @JsonKey(name: 'role') final Role? role,
      @JsonKey(name: 'total_certificates') final int? totalCertificates,
      @JsonKey(name: 'current_subjects') final int? currentSubjects,
      @JsonKey(name: 'finished_subjects') final int? finishedSubjects,
      @JsonKey(name: 'faculty') final String? faculty}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'poin')
  int? get poin;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'discussion_likes')
  int? get discussionLikes;
  @override
  @JsonKey(name: 'discussion_posted')
  int? get discussionPosted;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'semester')
  int? get semester;
  @override
  @JsonKey(name: 'ipk')
  String? get ipk;
  @override
  @JsonKey(name: 'major')
  String? get major;
  @override
  @JsonKey(name: 'role')
  Role? get role;
  @override
  @JsonKey(name: 'total_certificates')
  int? get totalCertificates;
  @override
  @JsonKey(name: 'current_subjects')
  int? get currentSubjects;
  @override
  @JsonKey(name: 'finished_subjects')
  int? get finishedSubjects;
  @override
  @JsonKey(name: 'faculty')
  String? get faculty;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
