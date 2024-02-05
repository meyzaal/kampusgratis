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

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get fullName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get userName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get email => throw _privateConstructorUsedError;
  @HiveField(4)
  Role get role => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get avatar => throw _privateConstructorUsedError;
  @HiveField(6)
  Gender? get gender => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String fullName,
      @HiveField(2) String userName,
      @HiveField(3) String email,
      @HiveField(4) Role role,
      @HiveField(5) String? avatar,
      @HiveField(6) Gender? gender,
      @HiveField(7) String? phoneNumber});
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
    Object? id = null,
    Object? fullName = null,
    Object? userName = null,
    Object? email = null,
    Object? role = null,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
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
      {@HiveField(0) String id,
      @HiveField(1) String fullName,
      @HiveField(2) String userName,
      @HiveField(3) String email,
      @HiveField(4) Role role,
      @HiveField(5) String? avatar,
      @HiveField(6) Gender? gender,
      @HiveField(7) String? phoneNumber});
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
    Object? id = null,
    Object? fullName = null,
    Object? userName = null,
    Object? email = null,
    Object? role = null,
    Object? avatar = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
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
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.fullName,
      @HiveField(2) required this.userName,
      @HiveField(3) required this.email,
      @HiveField(4) required this.role,
      @HiveField(5) this.avatar,
      @HiveField(6) this.gender,
      @HiveField(7) this.phoneNumber});

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String fullName;
  @override
  @HiveField(2)
  final String userName;
  @override
  @HiveField(3)
  final String email;
  @override
  @HiveField(4)
  final Role role;
  @override
  @HiveField(5)
  final String? avatar;
  @override
  @HiveField(6)
  final Gender? gender;
  @override
  @HiveField(7)
  final String? phoneNumber;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, userName: $userName, email: $email, role: $role, avatar: $avatar, gender: $gender, phoneNumber: $phoneNumber)';
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
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, userName, email,
      role, avatar, gender, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String fullName,
      @HiveField(2) required final String userName,
      @HiveField(3) required final String email,
      @HiveField(4) required final Role role,
      @HiveField(5) final String? avatar,
      @HiveField(6) final Gender? gender,
      @HiveField(7) final String? phoneNumber}) = _$UserImpl;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get fullName;
  @override
  @HiveField(2)
  String get userName;
  @override
  @HiveField(3)
  String get email;
  @override
  @HiveField(4)
  Role get role;
  @override
  @HiveField(5)
  String? get avatar;
  @override
  @HiveField(6)
  Gender? get gender;
  @override
  @HiveField(7)
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
