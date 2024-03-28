// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Overview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)
        detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, int durationSeconds, int durationMinutes,
            String? sessionId, String? moduleId, String? link)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverview value) session,
    required TResult Function(DetailOverview value) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverview value)? session,
    TResult? Function(DetailOverview value)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverview value)? session,
    TResult Function(DetailOverview value)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewCopyWith<$Res> {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) then) =
      _$OverviewCopyWithImpl<$Res, Overview>;
}

/// @nodoc
class _$OverviewCopyWithImpl<$Res, $Val extends Overview>
    implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionOverviewImplCopyWith<$Res> {
  factory _$$SessionOverviewImplCopyWith(_$SessionOverviewImpl value,
          $Res Function(_$SessionOverviewImpl) then) =
      __$$SessionOverviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String subjectId,
      int durationSeconds,
      int durationMinutes,
      String? sessionId,
      String? moduleId,
      String? link});
}

/// @nodoc
class __$$SessionOverviewImplCopyWithImpl<$Res>
    extends _$OverviewCopyWithImpl<$Res, _$SessionOverviewImpl>
    implements _$$SessionOverviewImplCopyWith<$Res> {
  __$$SessionOverviewImplCopyWithImpl(
      _$SessionOverviewImpl _value, $Res Function(_$SessionOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
    Object? durationSeconds = null,
    Object? durationMinutes = null,
    Object? sessionId = freezed,
    Object? moduleId = freezed,
    Object? link = freezed,
  }) {
    return _then(_$SessionOverviewImpl(
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      moduleId: freezed == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SessionOverviewImpl implements SessionOverview {
  const _$SessionOverviewImpl(
      {required this.subjectId,
      required this.durationSeconds,
      required this.durationMinutes,
      this.sessionId,
      this.moduleId,
      this.link});

  @override
  final String subjectId;
  @override
  final int durationSeconds;
  @override
  final int durationMinutes;
  @override
  final String? sessionId;
  @override
  final String? moduleId;
  @override
  final String? link;

  @override
  String toString() {
    return 'Overview.session(subjectId: $subjectId, durationSeconds: $durationSeconds, durationMinutes: $durationMinutes, sessionId: $sessionId, moduleId: $moduleId, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionOverviewImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId, durationSeconds,
      durationMinutes, sessionId, moduleId, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionOverviewImplCopyWith<_$SessionOverviewImpl> get copyWith =>
      __$$SessionOverviewImplCopyWithImpl<_$SessionOverviewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)
        detail,
  }) {
    return session(
        subjectId, durationSeconds, durationMinutes, sessionId, moduleId, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
  }) {
    return session?.call(
        subjectId, durationSeconds, durationMinutes, sessionId, moduleId, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, int durationSeconds, int durationMinutes,
            String? sessionId, String? moduleId, String? link)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(subjectId, durationSeconds, durationMinutes, sessionId,
          moduleId, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverview value) session,
    required TResult Function(DetailOverview value) detail,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverview value)? session,
    TResult? Function(DetailOverview value)? detail,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverview value)? session,
    TResult Function(DetailOverview value)? detail,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }
}

abstract class SessionOverview implements Overview {
  const factory SessionOverview(
      {required final String subjectId,
      required final int durationSeconds,
      required final int durationMinutes,
      final String? sessionId,
      final String? moduleId,
      final String? link}) = _$SessionOverviewImpl;

  String get subjectId;
  int get durationSeconds;
  int get durationMinutes;
  String? get sessionId;
  String? get moduleId;
  String? get link;
  @JsonKey(ignore: true)
  _$$SessionOverviewImplCopyWith<_$SessionOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailOverviewImplCopyWith<$Res> {
  factory _$$DetailOverviewImplCopyWith(_$DetailOverviewImpl value,
          $Res Function(_$DetailOverviewImpl) then) =
      __$$DetailOverviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool isAllVideoSeen,
      Content video,
      List<Document> documents,
      ProgressStatus status});

  $ContentCopyWith<$Res> get video;
}

/// @nodoc
class __$$DetailOverviewImplCopyWithImpl<$Res>
    extends _$OverviewCopyWithImpl<$Res, _$DetailOverviewImpl>
    implements _$$DetailOverviewImplCopyWith<$Res> {
  __$$DetailOverviewImplCopyWithImpl(
      _$DetailOverviewImpl _value, $Res Function(_$DetailOverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isAllVideoSeen = null,
    Object? video = null,
    Object? documents = null,
    Object? status = null,
  }) {
    return _then(_$DetailOverviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAllVideoSeen: null == isAllVideoSeen
          ? _value.isAllVideoSeen
          : isAllVideoSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Content,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res> get video {
    return $ContentCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc

class _$DetailOverviewImpl implements DetailOverview {
  const _$DetailOverviewImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.isAllVideoSeen,
      required this.video,
      required final List<Document> documents,
      required this.status})
      : _documents = documents;

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isAllVideoSeen;
  @override
  final Content video;
  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final ProgressStatus status;

  @override
  String toString() {
    return 'Overview.detail(id: $id, title: $title, description: $description, isAllVideoSeen: $isAllVideoSeen, video: $video, documents: $documents, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailOverviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAllVideoSeen, isAllVideoSeen) ||
                other.isAllVideoSeen == isAllVideoSeen) &&
            (identical(other.video, video) || other.video == video) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      isAllVideoSeen,
      video,
      const DeepCollectionEquality().hash(_documents),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailOverviewImplCopyWith<_$DetailOverviewImpl> get copyWith =>
      __$$DetailOverviewImplCopyWithImpl<_$DetailOverviewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)
        detail,
  }) {
    return detail(
        id, title, description, isAllVideoSeen, video, documents, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String subjectId,
            int durationSeconds,
            int durationMinutes,
            String? sessionId,
            String? moduleId,
            String? link)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
  }) {
    return detail?.call(
        id, title, description, isAllVideoSeen, video, documents, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subjectId, int durationSeconds, int durationMinutes,
            String? sessionId, String? moduleId, String? link)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            Content video,
            List<Document> documents,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(
          id, title, description, isAllVideoSeen, video, documents, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionOverview value) session,
    required TResult Function(DetailOverview value) detail,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionOverview value)? session,
    TResult? Function(DetailOverview value)? detail,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionOverview value)? session,
    TResult Function(DetailOverview value)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class DetailOverview implements Overview {
  const factory DetailOverview(
      {required final String id,
      required final String title,
      required final String description,
      required final bool isAllVideoSeen,
      required final Content video,
      required final List<Document> documents,
      required final ProgressStatus status}) = _$DetailOverviewImpl;

  String get id;
  String get title;
  String get description;
  bool get isAllVideoSeen;
  Content get video;
  List<Document> get documents;
  ProgressStatus get status;
  @JsonKey(ignore: true)
  _$$DetailOverviewImplCopyWith<_$DetailOverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
