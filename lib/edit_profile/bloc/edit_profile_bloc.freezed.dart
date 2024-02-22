// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileStartedImplCopyWith<$Res> {
  factory _$$EditProfileStartedImplCopyWith(_$EditProfileStartedImpl value,
          $Res Function(_$EditProfileStartedImpl) then) =
      __$$EditProfileStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileStartedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileStartedImpl>
    implements _$$EditProfileStartedImplCopyWith<$Res> {
  __$$EditProfileStartedImplCopyWithImpl(_$EditProfileStartedImpl _value,
      $Res Function(_$EditProfileStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileStartedImpl implements _EditProfileStarted {
  const _$EditProfileStartedImpl();

  @override
  String toString() {
    return 'EditProfileEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _EditProfileStarted implements EditProfileEvent {
  const factory _EditProfileStarted() = _$EditProfileStartedImpl;
}

/// @nodoc
abstract class _$$EditProfileNameChangedImplCopyWith<$Res> {
  factory _$$EditProfileNameChangedImplCopyWith(
          _$EditProfileNameChangedImpl value,
          $Res Function(_$EditProfileNameChangedImpl) then) =
      __$$EditProfileNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$EditProfileNameChangedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileNameChangedImpl>
    implements _$$EditProfileNameChangedImplCopyWith<$Res> {
  __$$EditProfileNameChangedImplCopyWithImpl(
      _$EditProfileNameChangedImpl _value,
      $Res Function(_$EditProfileNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$EditProfileNameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfileNameChangedImpl implements EditProfileNameChanged {
  const _$EditProfileNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'EditProfileEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileNameChangedImplCopyWith<_$EditProfileNameChangedImpl>
      get copyWith => __$$EditProfileNameChangedImplCopyWithImpl<
          _$EditProfileNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class EditProfileNameChanged implements EditProfileEvent {
  const factory EditProfileNameChanged(final String name) =
      _$EditProfileNameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$EditProfileNameChangedImplCopyWith<_$EditProfileNameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileGenderChangedImplCopyWith<$Res> {
  factory _$$EditProfileGenderChangedImplCopyWith(
          _$EditProfileGenderChangedImpl value,
          $Res Function(_$EditProfileGenderChangedImpl) then) =
      __$$EditProfileGenderChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$EditProfileGenderChangedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileGenderChangedImpl>
    implements _$$EditProfileGenderChangedImplCopyWith<$Res> {
  __$$EditProfileGenderChangedImplCopyWithImpl(
      _$EditProfileGenderChangedImpl _value,
      $Res Function(_$EditProfileGenderChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$EditProfileGenderChangedImpl(
      null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$EditProfileGenderChangedImpl implements EditProfileGenderChanged {
  const _$EditProfileGenderChangedImpl(this.gender);

  @override
  final Gender gender;

  @override
  String toString() {
    return 'EditProfileEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileGenderChangedImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileGenderChangedImplCopyWith<_$EditProfileGenderChangedImpl>
      get copyWith => __$$EditProfileGenderChangedImplCopyWithImpl<
          _$EditProfileGenderChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) {
    return genderChanged?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class EditProfileGenderChanged implements EditProfileEvent {
  const factory EditProfileGenderChanged(final Gender gender) =
      _$EditProfileGenderChangedImpl;

  Gender get gender;
  @JsonKey(ignore: true)
  _$$EditProfileGenderChangedImplCopyWith<_$EditProfileGenderChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfilePhoneChangedImplCopyWith<$Res> {
  factory _$$EditProfilePhoneChangedImplCopyWith(
          _$EditProfilePhoneChangedImpl value,
          $Res Function(_$EditProfilePhoneChangedImpl) then) =
      __$$EditProfilePhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$EditProfilePhoneChangedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfilePhoneChangedImpl>
    implements _$$EditProfilePhoneChangedImplCopyWith<$Res> {
  __$$EditProfilePhoneChangedImplCopyWithImpl(
      _$EditProfilePhoneChangedImpl _value,
      $Res Function(_$EditProfilePhoneChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$EditProfilePhoneChangedImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditProfilePhoneChangedImpl implements EditProfilePhoneChanged {
  const _$EditProfilePhoneChangedImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'EditProfileEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfilePhoneChangedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfilePhoneChangedImplCopyWith<_$EditProfilePhoneChangedImpl>
      get copyWith => __$$EditProfilePhoneChangedImplCopyWithImpl<
          _$EditProfilePhoneChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class EditProfilePhoneChanged implements EditProfileEvent {
  const factory EditProfilePhoneChanged(final String phone) =
      _$EditProfilePhoneChangedImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$EditProfilePhoneChangedImplCopyWith<_$EditProfilePhoneChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileFormSubmittedImplCopyWith<$Res> {
  factory _$$EditProfileFormSubmittedImplCopyWith(
          _$EditProfileFormSubmittedImpl value,
          $Res Function(_$EditProfileFormSubmittedImpl) then) =
      __$$EditProfileFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileFormSubmittedImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileFormSubmittedImpl>
    implements _$$EditProfileFormSubmittedImplCopyWith<$Res> {
  __$$EditProfileFormSubmittedImplCopyWithImpl(
      _$EditProfileFormSubmittedImpl _value,
      $Res Function(_$EditProfileFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileFormSubmittedImpl implements EditProfileFormSubmitted {
  const _$EditProfileFormSubmittedImpl();

  @override
  String toString() {
    return 'EditProfileEvent.formSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) nameChanged,
    required TResult Function(Gender gender) genderChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? nameChanged,
    TResult? Function(Gender gender)? genderChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? nameChanged,
    TResult Function(Gender gender)? genderChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfileStarted value) started,
    required TResult Function(EditProfileNameChanged value) nameChanged,
    required TResult Function(EditProfileGenderChanged value) genderChanged,
    required TResult Function(EditProfilePhoneChanged value) phoneChanged,
    required TResult Function(EditProfileFormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfileStarted value)? started,
    TResult? Function(EditProfileNameChanged value)? nameChanged,
    TResult? Function(EditProfileGenderChanged value)? genderChanged,
    TResult? Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult? Function(EditProfileFormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfileStarted value)? started,
    TResult Function(EditProfileNameChanged value)? nameChanged,
    TResult Function(EditProfileGenderChanged value)? genderChanged,
    TResult Function(EditProfilePhoneChanged value)? phoneChanged,
    TResult Function(EditProfileFormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class EditProfileFormSubmitted implements EditProfileEvent {
  const factory EditProfileFormSubmitted() = _$EditProfileFormSubmittedImpl;
}

/// @nodoc
mixin _$EditProfileState {
  EditProfileStatus get status => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  GenderInput get gender => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call(
      {EditProfileStatus status,
      Name name,
      Phone phone,
      GenderInput gender,
      bool isValid,
      User? user,
      String? message});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = null,
    Object? isValid = null,
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditProfileStatus status,
      Name name,
      Phone phone,
      GenderInput gender,
      bool isValid,
      User? user,
      String? message});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = null,
    Object? isValid = null,
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_$EditProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderInput,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements _EditProfileState {
  const _$EditProfileStateImpl(
      {this.status = EditProfileStatus.initial,
      this.name = const Name.pure(),
      this.phone = const Phone.pure(),
      this.gender = const GenderInput.pure(),
      this.isValid = false,
      this.user,
      this.message});

  @override
  @JsonKey()
  final EditProfileStatus status;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final Phone phone;
  @override
  @JsonKey()
  final GenderInput gender;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final User? user;
  @override
  final String? message;

  @override
  String toString() {
    return 'EditProfileState(status: $status, name: $name, phone: $phone, gender: $gender, isValid: $isValid, user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, name, phone, gender, isValid, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {final EditProfileStatus status,
      final Name name,
      final Phone phone,
      final GenderInput gender,
      final bool isValid,
      final User? user,
      final String? message}) = _$EditProfileStateImpl;

  @override
  EditProfileStatus get status;
  @override
  Name get name;
  @override
  Phone get phone;
  @override
  GenderInput get gender;
  @override
  bool get isValid;
  @override
  User? get user;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
