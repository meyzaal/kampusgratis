// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Module {
  String get id => throw _privateConstructorUsedError;
  bool get isAllVideoSeen => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)
        detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSession value) session,
    required TResult Function(DetailModule value) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSession value)? session,
    TResult? Function(DetailModule value)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSession value)? session,
    TResult Function(DetailModule value)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res, Module>;
  @useResult
  $Res call({String id, bool isAllVideoSeen, String title, String description});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res, $Val extends Module>
    implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isAllVideoSeen = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isAllVideoSeen: null == isAllVideoSeen
          ? _value.isAllVideoSeen
          : isAllVideoSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleSessionImplCopyWith<$Res>
    implements $ModuleCopyWith<$Res> {
  factory _$$ModuleSessionImplCopyWith(
          _$ModuleSessionImpl value, $Res Function(_$ModuleSessionImpl) then) =
      __$$ModuleSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int totalVideos,
      int totalDocuments,
      int totalJournals,
      int totalArticles,
      bool isAllVideoSeen,
      String title,
      String description,
      bool submitted});
}

/// @nodoc
class __$$ModuleSessionImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$ModuleSessionImpl>
    implements _$$ModuleSessionImplCopyWith<$Res> {
  __$$ModuleSessionImplCopyWithImpl(
      _$ModuleSessionImpl _value, $Res Function(_$ModuleSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalVideos = null,
    Object? totalDocuments = null,
    Object? totalJournals = null,
    Object? totalArticles = null,
    Object? isAllVideoSeen = null,
    Object? title = null,
    Object? description = null,
    Object? submitted = null,
  }) {
    return _then(_$ModuleSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalVideos: null == totalVideos
          ? _value.totalVideos
          : totalVideos // ignore: cast_nullable_to_non_nullable
              as int,
      totalDocuments: null == totalDocuments
          ? _value.totalDocuments
          : totalDocuments // ignore: cast_nullable_to_non_nullable
              as int,
      totalJournals: null == totalJournals
          ? _value.totalJournals
          : totalJournals // ignore: cast_nullable_to_non_nullable
              as int,
      totalArticles: null == totalArticles
          ? _value.totalArticles
          : totalArticles // ignore: cast_nullable_to_non_nullable
              as int,
      isAllVideoSeen: null == isAllVideoSeen
          ? _value.isAllVideoSeen
          : isAllVideoSeen // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ModuleSessionImpl implements ModuleSession {
  const _$ModuleSessionImpl(
      {required this.id,
      required this.totalVideos,
      required this.totalDocuments,
      required this.totalJournals,
      required this.totalArticles,
      required this.isAllVideoSeen,
      required this.title,
      required this.description,
      required this.submitted});

  @override
  final String id;
  @override
  final int totalVideos;
  @override
  final int totalDocuments;
  @override
  final int totalJournals;
  @override
  final int totalArticles;
  @override
  final bool isAllVideoSeen;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool submitted;

  @override
  String toString() {
    return 'Module.session(id: $id, totalVideos: $totalVideos, totalDocuments: $totalDocuments, totalJournals: $totalJournals, totalArticles: $totalArticles, isAllVideoSeen: $isAllVideoSeen, title: $title, description: $description, submitted: $submitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalVideos, totalVideos) ||
                other.totalVideos == totalVideos) &&
            (identical(other.totalDocuments, totalDocuments) ||
                other.totalDocuments == totalDocuments) &&
            (identical(other.totalJournals, totalJournals) ||
                other.totalJournals == totalJournals) &&
            (identical(other.totalArticles, totalArticles) ||
                other.totalArticles == totalArticles) &&
            (identical(other.isAllVideoSeen, isAllVideoSeen) ||
                other.isAllVideoSeen == isAllVideoSeen) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalVideos,
      totalDocuments,
      totalJournals,
      totalArticles,
      isAllVideoSeen,
      title,
      description,
      submitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleSessionImplCopyWith<_$ModuleSessionImpl> get copyWith =>
      __$$ModuleSessionImplCopyWithImpl<_$ModuleSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)
        detail,
  }) {
    return session(id, totalVideos, totalDocuments, totalJournals,
        totalArticles, isAllVideoSeen, title, description, submitted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
  }) {
    return session?.call(id, totalVideos, totalDocuments, totalJournals,
        totalArticles, isAllVideoSeen, title, description, submitted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(id, totalVideos, totalDocuments, totalJournals,
          totalArticles, isAllVideoSeen, title, description, submitted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSession value) session,
    required TResult Function(DetailModule value) detail,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSession value)? session,
    TResult? Function(DetailModule value)? detail,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSession value)? session,
    TResult Function(DetailModule value)? detail,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }
}

abstract class ModuleSession implements Module {
  const factory ModuleSession(
      {required final String id,
      required final int totalVideos,
      required final int totalDocuments,
      required final int totalJournals,
      required final int totalArticles,
      required final bool isAllVideoSeen,
      required final String title,
      required final String description,
      required final bool submitted}) = _$ModuleSessionImpl;

  @override
  String get id;
  int get totalVideos;
  int get totalDocuments;
  int get totalJournals;
  int get totalArticles;
  @override
  bool get isAllVideoSeen;
  @override
  String get title;
  @override
  String get description;
  bool get submitted;
  @override
  @JsonKey(ignore: true)
  _$$ModuleSessionImplCopyWith<_$ModuleSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailModuleImplCopyWith<$Res>
    implements $ModuleCopyWith<$Res> {
  factory _$$DetailModuleImplCopyWith(
          _$DetailModuleImpl value, $Res Function(_$DetailModuleImpl) then) =
      __$$DetailModuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      bool isAllVideoSeen,
      List<Content> videos,
      List<Document> documents,
      List<Content> journals,
      List<Content> articles,
      ProgressStatus status});
}

/// @nodoc
class __$$DetailModuleImplCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res, _$DetailModuleImpl>
    implements _$$DetailModuleImplCopyWith<$Res> {
  __$$DetailModuleImplCopyWithImpl(
      _$DetailModuleImpl _value, $Res Function(_$DetailModuleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isAllVideoSeen = null,
    Object? videos = null,
    Object? documents = null,
    Object? journals = null,
    Object? articles = null,
    Object? status = null,
  }) {
    return _then(_$DetailModuleImpl(
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
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
      journals: null == journals
          ? _value._journals
          : journals // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProgressStatus,
    ));
  }
}

/// @nodoc

class _$DetailModuleImpl implements DetailModule {
  const _$DetailModuleImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.isAllVideoSeen,
      required final List<Content> videos,
      required final List<Document> documents,
      required final List<Content> journals,
      required final List<Content> articles,
      required this.status})
      : _videos = videos,
        _documents = documents,
        _journals = journals,
        _articles = articles;

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isAllVideoSeen;
  final List<Content> _videos;
  @override
  List<Content> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  final List<Content> _journals;
  @override
  List<Content> get journals {
    if (_journals is EqualUnmodifiableListView) return _journals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journals);
  }

  final List<Content> _articles;
  @override
  List<Content> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final ProgressStatus status;

  @override
  String toString() {
    return 'Module.detail(id: $id, title: $title, description: $description, isAllVideoSeen: $isAllVideoSeen, videos: $videos, documents: $documents, journals: $journals, articles: $articles, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailModuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isAllVideoSeen, isAllVideoSeen) ||
                other.isAllVideoSeen == isAllVideoSeen) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other._journals, _journals) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      isAllVideoSeen,
      const DeepCollectionEquality().hash(_videos),
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(_journals),
      const DeepCollectionEquality().hash(_articles),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailModuleImplCopyWith<_$DetailModuleImpl> get copyWith =>
      __$$DetailModuleImplCopyWithImpl<_$DetailModuleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)
        session,
    required TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)
        detail,
  }) {
    return detail(id, title, description, isAllVideoSeen, videos, documents,
        journals, articles, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult? Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
  }) {
    return detail?.call(id, title, description, isAllVideoSeen, videos,
        documents, journals, articles, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            int totalVideos,
            int totalDocuments,
            int totalJournals,
            int totalArticles,
            bool isAllVideoSeen,
            String title,
            String description,
            bool submitted)?
        session,
    TResult Function(
            String id,
            String title,
            String description,
            bool isAllVideoSeen,
            List<Content> videos,
            List<Document> documents,
            List<Content> journals,
            List<Content> articles,
            ProgressStatus status)?
        detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(id, title, description, isAllVideoSeen, videos, documents,
          journals, articles, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModuleSession value) session,
    required TResult Function(DetailModule value) detail,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ModuleSession value)? session,
    TResult? Function(DetailModule value)? detail,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModuleSession value)? session,
    TResult Function(DetailModule value)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class DetailModule implements Module {
  const factory DetailModule(
      {required final String id,
      required final String title,
      required final String description,
      required final bool isAllVideoSeen,
      required final List<Content> videos,
      required final List<Document> documents,
      required final List<Content> journals,
      required final List<Content> articles,
      required final ProgressStatus status}) = _$DetailModuleImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isAllVideoSeen;
  List<Content> get videos;
  List<Document> get documents;
  List<Content> get journals;
  List<Content> get articles;
  ProgressStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$DetailModuleImplCopyWith<_$DetailModuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
