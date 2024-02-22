// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timerStarted,
    required TResult Function(int duration) timerTicked,
    required TResult Function(
            OtpVerificationType type, String otpCode, String email)
        otpCodeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timerStarted,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timerStarted,
    TResult Function(int duration)? timerTicked,
    TResult Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpVerificationTimerStarted value) timerStarted,
    required TResult Function(_OtpVerificationTimerTicked value) timerTicked,
    required TResult Function(OtpVerificationOtpCodeSubmitted value)
        otpCodeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult? Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult? Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationEventCopyWith<$Res> {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value,
          $Res Function(OtpVerificationEvent) then) =
      _$OtpVerificationEventCopyWithImpl<$Res, OtpVerificationEvent>;
}

/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res,
        $Val extends OtpVerificationEvent>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpVerificationTimerStartedImplCopyWith<$Res> {
  factory _$$OtpVerificationTimerStartedImplCopyWith(
          _$OtpVerificationTimerStartedImpl value,
          $Res Function(_$OtpVerificationTimerStartedImpl) then) =
      __$$OtpVerificationTimerStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerificationTimerStartedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res,
        _$OtpVerificationTimerStartedImpl>
    implements _$$OtpVerificationTimerStartedImplCopyWith<$Res> {
  __$$OtpVerificationTimerStartedImplCopyWithImpl(
      _$OtpVerificationTimerStartedImpl _value,
      $Res Function(_$OtpVerificationTimerStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpVerificationTimerStartedImpl implements OtpVerificationTimerStarted {
  const _$OtpVerificationTimerStartedImpl();

  @override
  String toString() {
    return 'OtpVerificationEvent.timerStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationTimerStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timerStarted,
    required TResult Function(int duration) timerTicked,
    required TResult Function(
            OtpVerificationType type, String otpCode, String email)
        otpCodeSubmitted,
  }) {
    return timerStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timerStarted,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
  }) {
    return timerStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timerStarted,
    TResult Function(int duration)? timerTicked,
    TResult Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpVerificationTimerStarted value) timerStarted,
    required TResult Function(_OtpVerificationTimerTicked value) timerTicked,
    required TResult Function(OtpVerificationOtpCodeSubmitted value)
        otpCodeSubmitted,
  }) {
    return timerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult? Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult? Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
  }) {
    return timerStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (timerStarted != null) {
      return timerStarted(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationTimerStarted implements OtpVerificationEvent {
  const factory OtpVerificationTimerStarted() =
      _$OtpVerificationTimerStartedImpl;
}

/// @nodoc
abstract class _$$OtpVerificationTimerTickedImplCopyWith<$Res> {
  factory _$$OtpVerificationTimerTickedImplCopyWith(
          _$OtpVerificationTimerTickedImpl value,
          $Res Function(_$OtpVerificationTimerTickedImpl) then) =
      __$$OtpVerificationTimerTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$OtpVerificationTimerTickedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res,
        _$OtpVerificationTimerTickedImpl>
    implements _$$OtpVerificationTimerTickedImplCopyWith<$Res> {
  __$$OtpVerificationTimerTickedImplCopyWithImpl(
      _$OtpVerificationTimerTickedImpl _value,
      $Res Function(_$OtpVerificationTimerTickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$OtpVerificationTimerTickedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtpVerificationTimerTickedImpl implements _OtpVerificationTimerTicked {
  const _$OtpVerificationTimerTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'OtpVerificationEvent.timerTicked(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationTimerTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationTimerTickedImplCopyWith<_$OtpVerificationTimerTickedImpl>
      get copyWith => __$$OtpVerificationTimerTickedImplCopyWithImpl<
          _$OtpVerificationTimerTickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timerStarted,
    required TResult Function(int duration) timerTicked,
    required TResult Function(
            OtpVerificationType type, String otpCode, String email)
        otpCodeSubmitted,
  }) {
    return timerTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timerStarted,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
  }) {
    return timerTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timerStarted,
    TResult Function(int duration)? timerTicked,
    TResult Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpVerificationTimerStarted value) timerStarted,
    required TResult Function(_OtpVerificationTimerTicked value) timerTicked,
    required TResult Function(OtpVerificationOtpCodeSubmitted value)
        otpCodeSubmitted,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult? Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult? Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _OtpVerificationTimerTicked implements OtpVerificationEvent {
  const factory _OtpVerificationTimerTicked(final int duration) =
      _$OtpVerificationTimerTickedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$OtpVerificationTimerTickedImplCopyWith<_$OtpVerificationTimerTickedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerificationOtpCodeSubmittedImplCopyWith<$Res> {
  factory _$$OtpVerificationOtpCodeSubmittedImplCopyWith(
          _$OtpVerificationOtpCodeSubmittedImpl value,
          $Res Function(_$OtpVerificationOtpCodeSubmittedImpl) then) =
      __$$OtpVerificationOtpCodeSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpVerificationType type, String otpCode, String email});
}

/// @nodoc
class __$$OtpVerificationOtpCodeSubmittedImplCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res,
        _$OtpVerificationOtpCodeSubmittedImpl>
    implements _$$OtpVerificationOtpCodeSubmittedImplCopyWith<$Res> {
  __$$OtpVerificationOtpCodeSubmittedImplCopyWithImpl(
      _$OtpVerificationOtpCodeSubmittedImpl _value,
      $Res Function(_$OtpVerificationOtpCodeSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? otpCode = null,
    Object? email = null,
  }) {
    return _then(_$OtpVerificationOtpCodeSubmittedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OtpVerificationType,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationOtpCodeSubmittedImpl
    implements OtpVerificationOtpCodeSubmitted {
  const _$OtpVerificationOtpCodeSubmittedImpl(
      {required this.type, required this.otpCode, required this.email});

  @override
  final OtpVerificationType type;
  @override
  final String otpCode;
  @override
  final String email;

  @override
  String toString() {
    return 'OtpVerificationEvent.otpCodeSubmitted(type: $type, otpCode: $otpCode, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationOtpCodeSubmittedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, otpCode, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationOtpCodeSubmittedImplCopyWith<
          _$OtpVerificationOtpCodeSubmittedImpl>
      get copyWith => __$$OtpVerificationOtpCodeSubmittedImplCopyWithImpl<
          _$OtpVerificationOtpCodeSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() timerStarted,
    required TResult Function(int duration) timerTicked,
    required TResult Function(
            OtpVerificationType type, String otpCode, String email)
        otpCodeSubmitted,
  }) {
    return otpCodeSubmitted(type, otpCode, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? timerStarted,
    TResult? Function(int duration)? timerTicked,
    TResult? Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
  }) {
    return otpCodeSubmitted?.call(type, otpCode, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? timerStarted,
    TResult Function(int duration)? timerTicked,
    TResult Function(OtpVerificationType type, String otpCode, String email)?
        otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (otpCodeSubmitted != null) {
      return otpCodeSubmitted(type, otpCode, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpVerificationTimerStarted value) timerStarted,
    required TResult Function(_OtpVerificationTimerTicked value) timerTicked,
    required TResult Function(OtpVerificationOtpCodeSubmitted value)
        otpCodeSubmitted,
  }) {
    return otpCodeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult? Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult? Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
  }) {
    return otpCodeSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpVerificationTimerStarted value)? timerStarted,
    TResult Function(_OtpVerificationTimerTicked value)? timerTicked,
    TResult Function(OtpVerificationOtpCodeSubmitted value)? otpCodeSubmitted,
    required TResult orElse(),
  }) {
    if (otpCodeSubmitted != null) {
      return otpCodeSubmitted(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationOtpCodeSubmitted implements OtpVerificationEvent {
  const factory OtpVerificationOtpCodeSubmitted(
      {required final OtpVerificationType type,
      required final String otpCode,
      required final String email}) = _$OtpVerificationOtpCodeSubmittedImpl;

  OtpVerificationType get type;
  String get otpCode;
  String get email;
  @JsonKey(ignore: true)
  _$$OtpVerificationOtpCodeSubmittedImplCopyWith<
          _$OtpVerificationOtpCodeSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpVerificationState {
  int get duration => throw _privateConstructorUsedError;
  OtpVerificationStatus get status => throw _privateConstructorUsedError;
  OtpVerificationTimer get timer => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res, OtpVerificationState>;
  @useResult
  $Res call(
      {int duration,
      OtpVerificationStatus status,
      OtpVerificationTimer timer,
      String? token,
      String? message});
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res,
        $Val extends OtpVerificationState>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? status = null,
    Object? timer = null,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpVerificationStatus,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as OtpVerificationTimer,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpVerificationStateImplCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$$OtpVerificationStateImplCopyWith(_$OtpVerificationStateImpl value,
          $Res Function(_$OtpVerificationStateImpl) then) =
      __$$OtpVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int duration,
      OtpVerificationStatus status,
      OtpVerificationTimer timer,
      String? token,
      String? message});
}

/// @nodoc
class __$$OtpVerificationStateImplCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res, _$OtpVerificationStateImpl>
    implements _$$OtpVerificationStateImplCopyWith<$Res> {
  __$$OtpVerificationStateImplCopyWithImpl(_$OtpVerificationStateImpl _value,
      $Res Function(_$OtpVerificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? status = null,
    Object? timer = null,
    Object? token = freezed,
    Object? message = freezed,
  }) {
    return _then(_$OtpVerificationStateImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpVerificationStatus,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as OtpVerificationTimer,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtpVerificationStateImpl implements _OtpVerificationState {
  const _$OtpVerificationStateImpl(
      {required this.duration,
      this.status = OtpVerificationStatus.initial,
      this.timer = OtpVerificationTimer.initial,
      this.token,
      this.message});

  @override
  final int duration;
  @override
  @JsonKey()
  final OtpVerificationStatus status;
  @override
  @JsonKey()
  final OtpVerificationTimer timer;
  @override
  final String? token;
  @override
  final String? message;

  @override
  String toString() {
    return 'OtpVerificationState(duration: $duration, status: $status, timer: $timer, token: $token, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, status, timer, token, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith =>
          __$$OtpVerificationStateImplCopyWithImpl<_$OtpVerificationStateImpl>(
              this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
      {required final int duration,
      final OtpVerificationStatus status,
      final OtpVerificationTimer timer,
      final String? token,
      final String? message}) = _$OtpVerificationStateImpl;

  @override
  int get duration;
  @override
  OtpVerificationStatus get status;
  @override
  OtpVerificationTimer get timer;
  @override
  String? get token;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$OtpVerificationStateImplCopyWith<_$OtpVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
