// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bootcamp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BootcampEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetched,
    required TResult Function(String bootcampId) enrolled,
    required TResult Function() dialogShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetched,
    TResult? Function(String bootcampId)? enrolled,
    TResult? Function()? dialogShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetched,
    TResult Function(String bootcampId)? enrolled,
    TResult Function()? dialogShown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BootcampEventFetched value) fetched,
    required TResult Function(BootcampEventEnrolled value) enrolled,
    required TResult Function(BootcampEventDialogShown value) dialogShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BootcampEventFetched value)? fetched,
    TResult? Function(BootcampEventEnrolled value)? enrolled,
    TResult? Function(BootcampEventDialogShown value)? dialogShown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BootcampEventFetched value)? fetched,
    TResult Function(BootcampEventEnrolled value)? enrolled,
    TResult Function(BootcampEventDialogShown value)? dialogShown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BootcampEventCopyWith<$Res> {
  factory $BootcampEventCopyWith(
          BootcampEvent value, $Res Function(BootcampEvent) then) =
      _$BootcampEventCopyWithImpl<$Res, BootcampEvent>;
}

/// @nodoc
class _$BootcampEventCopyWithImpl<$Res, $Val extends BootcampEvent>
    implements $BootcampEventCopyWith<$Res> {
  _$BootcampEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BootcampEventFetchedImplCopyWith<$Res> {
  factory _$$BootcampEventFetchedImplCopyWith(_$BootcampEventFetchedImpl value,
          $Res Function(_$BootcampEventFetchedImpl) then) =
      __$$BootcampEventFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoadMore});
}

/// @nodoc
class __$$BootcampEventFetchedImplCopyWithImpl<$Res>
    extends _$BootcampEventCopyWithImpl<$Res, _$BootcampEventFetchedImpl>
    implements _$$BootcampEventFetchedImplCopyWith<$Res> {
  __$$BootcampEventFetchedImplCopyWithImpl(_$BootcampEventFetchedImpl _value,
      $Res Function(_$BootcampEventFetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadMore = null,
  }) {
    return _then(_$BootcampEventFetchedImpl(
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BootcampEventFetchedImpl implements BootcampEventFetched {
  const _$BootcampEventFetchedImpl({required this.isLoadMore});

  @override
  final bool isLoadMore;

  @override
  String toString() {
    return 'BootcampEvent.fetched(isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BootcampEventFetchedImpl &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BootcampEventFetchedImplCopyWith<_$BootcampEventFetchedImpl>
      get copyWith =>
          __$$BootcampEventFetchedImplCopyWithImpl<_$BootcampEventFetchedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetched,
    required TResult Function(String bootcampId) enrolled,
    required TResult Function() dialogShown,
  }) {
    return fetched(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetched,
    TResult? Function(String bootcampId)? enrolled,
    TResult? Function()? dialogShown,
  }) {
    return fetched?.call(isLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetched,
    TResult Function(String bootcampId)? enrolled,
    TResult Function()? dialogShown,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(isLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BootcampEventFetched value) fetched,
    required TResult Function(BootcampEventEnrolled value) enrolled,
    required TResult Function(BootcampEventDialogShown value) dialogShown,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BootcampEventFetched value)? fetched,
    TResult? Function(BootcampEventEnrolled value)? enrolled,
    TResult? Function(BootcampEventDialogShown value)? dialogShown,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BootcampEventFetched value)? fetched,
    TResult Function(BootcampEventEnrolled value)? enrolled,
    TResult Function(BootcampEventDialogShown value)? dialogShown,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class BootcampEventFetched implements BootcampEvent {
  const factory BootcampEventFetched({required final bool isLoadMore}) =
      _$BootcampEventFetchedImpl;

  bool get isLoadMore;
  @JsonKey(ignore: true)
  _$$BootcampEventFetchedImplCopyWith<_$BootcampEventFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BootcampEventEnrolledImplCopyWith<$Res> {
  factory _$$BootcampEventEnrolledImplCopyWith(
          _$BootcampEventEnrolledImpl value,
          $Res Function(_$BootcampEventEnrolledImpl) then) =
      __$$BootcampEventEnrolledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bootcampId});
}

/// @nodoc
class __$$BootcampEventEnrolledImplCopyWithImpl<$Res>
    extends _$BootcampEventCopyWithImpl<$Res, _$BootcampEventEnrolledImpl>
    implements _$$BootcampEventEnrolledImplCopyWith<$Res> {
  __$$BootcampEventEnrolledImplCopyWithImpl(_$BootcampEventEnrolledImpl _value,
      $Res Function(_$BootcampEventEnrolledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bootcampId = null,
  }) {
    return _then(_$BootcampEventEnrolledImpl(
      null == bootcampId
          ? _value.bootcampId
          : bootcampId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BootcampEventEnrolledImpl implements BootcampEventEnrolled {
  const _$BootcampEventEnrolledImpl(this.bootcampId);

  @override
  final String bootcampId;

  @override
  String toString() {
    return 'BootcampEvent.enrolled(bootcampId: $bootcampId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BootcampEventEnrolledImpl &&
            (identical(other.bootcampId, bootcampId) ||
                other.bootcampId == bootcampId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bootcampId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BootcampEventEnrolledImplCopyWith<_$BootcampEventEnrolledImpl>
      get copyWith => __$$BootcampEventEnrolledImplCopyWithImpl<
          _$BootcampEventEnrolledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetched,
    required TResult Function(String bootcampId) enrolled,
    required TResult Function() dialogShown,
  }) {
    return enrolled(bootcampId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetched,
    TResult? Function(String bootcampId)? enrolled,
    TResult? Function()? dialogShown,
  }) {
    return enrolled?.call(bootcampId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetched,
    TResult Function(String bootcampId)? enrolled,
    TResult Function()? dialogShown,
    required TResult orElse(),
  }) {
    if (enrolled != null) {
      return enrolled(bootcampId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BootcampEventFetched value) fetched,
    required TResult Function(BootcampEventEnrolled value) enrolled,
    required TResult Function(BootcampEventDialogShown value) dialogShown,
  }) {
    return enrolled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BootcampEventFetched value)? fetched,
    TResult? Function(BootcampEventEnrolled value)? enrolled,
    TResult? Function(BootcampEventDialogShown value)? dialogShown,
  }) {
    return enrolled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BootcampEventFetched value)? fetched,
    TResult Function(BootcampEventEnrolled value)? enrolled,
    TResult Function(BootcampEventDialogShown value)? dialogShown,
    required TResult orElse(),
  }) {
    if (enrolled != null) {
      return enrolled(this);
    }
    return orElse();
  }
}

abstract class BootcampEventEnrolled implements BootcampEvent {
  const factory BootcampEventEnrolled(final String bootcampId) =
      _$BootcampEventEnrolledImpl;

  String get bootcampId;
  @JsonKey(ignore: true)
  _$$BootcampEventEnrolledImplCopyWith<_$BootcampEventEnrolledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BootcampEventDialogShownImplCopyWith<$Res> {
  factory _$$BootcampEventDialogShownImplCopyWith(
          _$BootcampEventDialogShownImpl value,
          $Res Function(_$BootcampEventDialogShownImpl) then) =
      __$$BootcampEventDialogShownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BootcampEventDialogShownImplCopyWithImpl<$Res>
    extends _$BootcampEventCopyWithImpl<$Res, _$BootcampEventDialogShownImpl>
    implements _$$BootcampEventDialogShownImplCopyWith<$Res> {
  __$$BootcampEventDialogShownImplCopyWithImpl(
      _$BootcampEventDialogShownImpl _value,
      $Res Function(_$BootcampEventDialogShownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BootcampEventDialogShownImpl implements BootcampEventDialogShown {
  const _$BootcampEventDialogShownImpl();

  @override
  String toString() {
    return 'BootcampEvent.dialogShown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BootcampEventDialogShownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoadMore) fetched,
    required TResult Function(String bootcampId) enrolled,
    required TResult Function() dialogShown,
  }) {
    return dialogShown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoadMore)? fetched,
    TResult? Function(String bootcampId)? enrolled,
    TResult? Function()? dialogShown,
  }) {
    return dialogShown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoadMore)? fetched,
    TResult Function(String bootcampId)? enrolled,
    TResult Function()? dialogShown,
    required TResult orElse(),
  }) {
    if (dialogShown != null) {
      return dialogShown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BootcampEventFetched value) fetched,
    required TResult Function(BootcampEventEnrolled value) enrolled,
    required TResult Function(BootcampEventDialogShown value) dialogShown,
  }) {
    return dialogShown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BootcampEventFetched value)? fetched,
    TResult? Function(BootcampEventEnrolled value)? enrolled,
    TResult? Function(BootcampEventDialogShown value)? dialogShown,
  }) {
    return dialogShown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BootcampEventFetched value)? fetched,
    TResult Function(BootcampEventEnrolled value)? enrolled,
    TResult Function(BootcampEventDialogShown value)? dialogShown,
    required TResult orElse(),
  }) {
    if (dialogShown != null) {
      return dialogShown(this);
    }
    return orElse();
  }
}

abstract class BootcampEventDialogShown implements BootcampEvent {
  const factory BootcampEventDialogShown() = _$BootcampEventDialogShownImpl;
}

/// @nodoc
mixin _$BootcampState {
  List<BootcampData> get datas => throw _privateConstructorUsedError;
  BootcampStatus get status => throw _privateConstructorUsedError;
  bool get hasReachMax => throw _privateConstructorUsedError;
  bool get dialogShown => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BootcampStateCopyWith<BootcampState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BootcampStateCopyWith<$Res> {
  factory $BootcampStateCopyWith(
          BootcampState value, $Res Function(BootcampState) then) =
      _$BootcampStateCopyWithImpl<$Res, BootcampState>;
  @useResult
  $Res call(
      {List<BootcampData> datas,
      BootcampStatus status,
      bool hasReachMax,
      bool dialogShown,
      Meta? meta,
      String? message});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BootcampStateCopyWithImpl<$Res, $Val extends BootcampState>
    implements $BootcampStateCopyWith<$Res> {
  _$BootcampStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
    Object? status = null,
    Object? hasReachMax = null,
    Object? dialogShown = null,
    Object? meta = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      datas: null == datas
          ? _value.datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<BootcampData>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BootcampStatus,
      hasReachMax: null == hasReachMax
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogShown: null == dialogShown
          ? _value.dialogShown
          : dialogShown // ignore: cast_nullable_to_non_nullable
              as bool,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BootcampStateImplCopyWith<$Res>
    implements $BootcampStateCopyWith<$Res> {
  factory _$$BootcampStateImplCopyWith(
          _$BootcampStateImpl value, $Res Function(_$BootcampStateImpl) then) =
      __$$BootcampStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BootcampData> datas,
      BootcampStatus status,
      bool hasReachMax,
      bool dialogShown,
      Meta? meta,
      String? message});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$BootcampStateImplCopyWithImpl<$Res>
    extends _$BootcampStateCopyWithImpl<$Res, _$BootcampStateImpl>
    implements _$$BootcampStateImplCopyWith<$Res> {
  __$$BootcampStateImplCopyWithImpl(
      _$BootcampStateImpl _value, $Res Function(_$BootcampStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
    Object? status = null,
    Object? hasReachMax = null,
    Object? dialogShown = null,
    Object? meta = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BootcampStateImpl(
      datas: null == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<BootcampData>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BootcampStatus,
      hasReachMax: null == hasReachMax
          ? _value.hasReachMax
          : hasReachMax // ignore: cast_nullable_to_non_nullable
              as bool,
      dialogShown: null == dialogShown
          ? _value.dialogShown
          : dialogShown // ignore: cast_nullable_to_non_nullable
              as bool,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BootcampStateImpl implements _BootcampState {
  const _$BootcampStateImpl(
      {required final List<BootcampData> datas,
      required this.status,
      required this.hasReachMax,
      required this.dialogShown,
      this.meta,
      this.message})
      : _datas = datas;

  final List<BootcampData> _datas;
  @override
  List<BootcampData> get datas {
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datas);
  }

  @override
  final BootcampStatus status;
  @override
  final bool hasReachMax;
  @override
  final bool dialogShown;
  @override
  final Meta? meta;
  @override
  final String? message;

  @override
  String toString() {
    return 'BootcampState(datas: $datas, status: $status, hasReachMax: $hasReachMax, dialogShown: $dialogShown, meta: $meta, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BootcampStateImpl &&
            const DeepCollectionEquality().equals(other._datas, _datas) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasReachMax, hasReachMax) ||
                other.hasReachMax == hasReachMax) &&
            (identical(other.dialogShown, dialogShown) ||
                other.dialogShown == dialogShown) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_datas),
      status,
      hasReachMax,
      dialogShown,
      meta,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BootcampStateImplCopyWith<_$BootcampStateImpl> get copyWith =>
      __$$BootcampStateImplCopyWithImpl<_$BootcampStateImpl>(this, _$identity);
}

abstract class _BootcampState implements BootcampState {
  const factory _BootcampState(
      {required final List<BootcampData> datas,
      required final BootcampStatus status,
      required final bool hasReachMax,
      required final bool dialogShown,
      final Meta? meta,
      final String? message}) = _$BootcampStateImpl;

  @override
  List<BootcampData> get datas;
  @override
  BootcampStatus get status;
  @override
  bool get hasReachMax;
  @override
  bool get dialogShown;
  @override
  Meta? get meta;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BootcampStateImplCopyWith<_$BootcampStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BootcampData {
  Bootcamp get data => throw _privateConstructorUsedError;
  BootcampStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BootcampDataCopyWith<BootcampData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BootcampDataCopyWith<$Res> {
  factory $BootcampDataCopyWith(
          BootcampData value, $Res Function(BootcampData) then) =
      _$BootcampDataCopyWithImpl<$Res, BootcampData>;
  @useResult
  $Res call({Bootcamp data, BootcampStatus status, String? message});

  $BootcampCopyWith<$Res> get data;
}

/// @nodoc
class _$BootcampDataCopyWithImpl<$Res, $Val extends BootcampData>
    implements $BootcampDataCopyWith<$Res> {
  _$BootcampDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Bootcamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BootcampStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BootcampCopyWith<$Res> get data {
    return $BootcampCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BootcampDataImplCopyWith<$Res>
    implements $BootcampDataCopyWith<$Res> {
  factory _$$BootcampDataImplCopyWith(
          _$BootcampDataImpl value, $Res Function(_$BootcampDataImpl) then) =
      __$$BootcampDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bootcamp data, BootcampStatus status, String? message});

  @override
  $BootcampCopyWith<$Res> get data;
}

/// @nodoc
class __$$BootcampDataImplCopyWithImpl<$Res>
    extends _$BootcampDataCopyWithImpl<$Res, _$BootcampDataImpl>
    implements _$$BootcampDataImplCopyWith<$Res> {
  __$$BootcampDataImplCopyWithImpl(
      _$BootcampDataImpl _value, $Res Function(_$BootcampDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$BootcampDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Bootcamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BootcampStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BootcampDataImpl implements _BootcampData {
  const _$BootcampDataImpl(
      {required this.data, required this.status, this.message});

  @override
  final Bootcamp data;
  @override
  final BootcampStatus status;
  @override
  final String? message;

  @override
  String toString() {
    return 'BootcampData(data: $data, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BootcampDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BootcampDataImplCopyWith<_$BootcampDataImpl> get copyWith =>
      __$$BootcampDataImplCopyWithImpl<_$BootcampDataImpl>(this, _$identity);
}

abstract class _BootcampData implements BootcampData {
  const factory _BootcampData(
      {required final Bootcamp data,
      required final BootcampStatus status,
      final String? message}) = _$BootcampDataImpl;

  @override
  Bootcamp get data;
  @override
  BootcampStatus get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BootcampDataImplCopyWith<_$BootcampDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
