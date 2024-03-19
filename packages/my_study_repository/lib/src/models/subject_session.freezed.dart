// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubjectSession {
  Subject get subject => throw _privateConstructorUsedError;
  Overview get overview => throw _privateConstructorUsedError;
  List<Session> get sessions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubjectSessionCopyWith<SubjectSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectSessionCopyWith<$Res> {
  factory $SubjectSessionCopyWith(
          SubjectSession value, $Res Function(SubjectSession) then) =
      _$SubjectSessionCopyWithImpl<$Res, SubjectSession>;
  @useResult
  $Res call({Subject subject, Overview overview, List<Session> sessions});

  $SubjectCopyWith<$Res> get subject;
  $OverviewCopyWith<$Res> get overview;
}

/// @nodoc
class _$SubjectSessionCopyWithImpl<$Res, $Val extends SubjectSession>
    implements $SubjectSessionCopyWith<$Res> {
  _$SubjectSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? overview = null,
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubjectCopyWith<$Res> get subject {
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewCopyWith<$Res> get overview {
    return $OverviewCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectSessionImplCopyWith<$Res>
    implements $SubjectSessionCopyWith<$Res> {
  factory _$$SubjectSessionImplCopyWith(_$SubjectSessionImpl value,
          $Res Function(_$SubjectSessionImpl) then) =
      __$$SubjectSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Subject subject, Overview overview, List<Session> sessions});

  @override
  $SubjectCopyWith<$Res> get subject;
  @override
  $OverviewCopyWith<$Res> get overview;
}

/// @nodoc
class __$$SubjectSessionImplCopyWithImpl<$Res>
    extends _$SubjectSessionCopyWithImpl<$Res, _$SubjectSessionImpl>
    implements _$$SubjectSessionImplCopyWith<$Res> {
  __$$SubjectSessionImplCopyWithImpl(
      _$SubjectSessionImpl _value, $Res Function(_$SubjectSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? overview = null,
    Object? sessions = null,
  }) {
    return _then(_$SubjectSessionImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Subject,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }
}

/// @nodoc

class _$SubjectSessionImpl implements _SubjectSession {
  const _$SubjectSessionImpl(
      {required this.subject,
      required this.overview,
      required final List<Session> sessions})
      : _sessions = sessions;

  @override
  final Subject subject;
  @override
  final Overview overview;
  final List<Session> _sessions;
  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SubjectSession(subject: $subject, overview: $overview, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectSessionImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, overview,
      const DeepCollectionEquality().hash(_sessions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectSessionImplCopyWith<_$SubjectSessionImpl> get copyWith =>
      __$$SubjectSessionImplCopyWithImpl<_$SubjectSessionImpl>(
          this, _$identity);
}

abstract class _SubjectSession implements SubjectSession {
  const factory _SubjectSession(
      {required final Subject subject,
      required final Overview overview,
      required final List<Session> sessions}) = _$SubjectSessionImpl;

  @override
  Subject get subject;
  @override
  Overview get overview;
  @override
  List<Session> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$SubjectSessionImplCopyWith<_$SubjectSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
