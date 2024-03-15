// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleData _$ArticleDataFromJson(Map<String, dynamic> json) {
  return _ArticleData.fromJson(json);
}

/// @nodoc
mixin _$ArticleData {
  @JsonKey(name: 'data')
  List<Article>? get articles => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_data')
  int? get totalData => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_page')
  int? get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleDataCopyWith<ArticleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDataCopyWith<$Res> {
  factory $ArticleDataCopyWith(
          ArticleData value, $Res Function(ArticleData) then) =
      _$ArticleDataCopyWithImpl<$Res, ArticleData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Article>? articles,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'max_page') int? maxPage});
}

/// @nodoc
class _$ArticleDataCopyWithImpl<$Res, $Val extends ArticleData>
    implements $ArticleDataCopyWith<$Res> {
  _$ArticleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_value.copyWith(
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleDataImplCopyWith<$Res>
    implements $ArticleDataCopyWith<$Res> {
  factory _$$ArticleDataImplCopyWith(
          _$ArticleDataImpl value, $Res Function(_$ArticleDataImpl) then) =
      __$$ArticleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<Article>? articles,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'max_page') int? maxPage});
}

/// @nodoc
class __$$ArticleDataImplCopyWithImpl<$Res>
    extends _$ArticleDataCopyWithImpl<$Res, _$ArticleDataImpl>
    implements _$$ArticleDataImplCopyWith<$Res> {
  __$$ArticleDataImplCopyWithImpl(
      _$ArticleDataImpl _value, $Res Function(_$ArticleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
    Object? currentPage = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_$ArticleDataImpl(
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleDataImpl implements _ArticleData {
  const _$ArticleDataImpl(
      {@JsonKey(name: 'data') final List<Article>? articles,
      @JsonKey(name: 'page_size') this.pageSize,
      @JsonKey(name: 'total_data') this.totalData,
      @JsonKey(name: 'current_page') this.currentPage,
      @JsonKey(name: 'max_page') this.maxPage})
      : _articles = articles;

  factory _$ArticleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleDataImplFromJson(json);

  final List<Article>? _articles;
  @override
  @JsonKey(name: 'data')
  List<Article>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  @JsonKey(name: 'total_data')
  final int? totalData;
  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'max_page')
  final int? maxPage;

  @override
  String toString() {
    return 'ArticleData(articles: $articles, pageSize: $pageSize, totalData: $totalData, currentPage: $currentPage, maxPage: $maxPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleDataImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articles),
      pageSize,
      totalData,
      currentPage,
      maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleDataImplCopyWith<_$ArticleDataImpl> get copyWith =>
      __$$ArticleDataImplCopyWithImpl<_$ArticleDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleDataImplToJson(
      this,
    );
  }
}

abstract class _ArticleData implements ArticleData {
  const factory _ArticleData(
      {@JsonKey(name: 'data') final List<Article>? articles,
      @JsonKey(name: 'page_size') final int? pageSize,
      @JsonKey(name: 'total_data') final int? totalData,
      @JsonKey(name: 'current_page') final int? currentPage,
      @JsonKey(name: 'max_page') final int? maxPage}) = _$ArticleDataImpl;

  factory _ArticleData.fromJson(Map<String, dynamic> json) =
      _$ArticleDataImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Article>? get articles;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  @JsonKey(name: 'total_data')
  int? get totalData;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'max_page')
  int? get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleDataImplCopyWith<_$ArticleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  Author? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'tags') List<String>? tags});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
    Object? slug = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? isFavorite = freezed,
    Object? tags = freezed,
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
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'thumbnail') String? thumbnail,
      @JsonKey(name: 'slug') String? slug,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'author') Author? author,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'tags') List<String>? tags});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? thumbnail = freezed,
    Object? slug = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? author = freezed,
    Object? category = freezed,
    Object? isFavorite = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ArticleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'content') this.content,
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'slug') this.slug,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'is_favorite') this.isFavorite,
      @JsonKey(name: 'tags') final List<String>? tags})
      : _tags = tags;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'views')
  final int? views;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'author')
  final Author? author;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Article(id: $id, title: $title, content: $content, thumbnail: $thumbnail, slug: $slug, views: $views, createdAt: $createdAt, author: $author, category: $category, isFavorite: $isFavorite, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      content,
      thumbnail,
      slug,
      views,
      createdAt,
      author,
      category,
      isFavorite,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'thumbnail') final String? thumbnail,
      @JsonKey(name: 'slug') final String? slug,
      @JsonKey(name: 'views') final int? views,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'author') final Author? author,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'is_favorite') final bool? isFavorite,
      @JsonKey(name: 'tags') final List<String>? tags}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'views')
  int? get views;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'author')
  Author? get author;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({@JsonKey(name: 'full_name') String? fullName});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'full_name') String? fullName});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(_$AuthorImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  const _$AuthorImpl({@JsonKey(name: 'full_name') this.fullName});

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String? fullName;

  @override
  String toString() {
    return 'Author(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author implements Author {
  const factory _Author({@JsonKey(name: 'full_name') final String? fullName}) =
      _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchHistoryResult _$SearchHistoryResultFromJson(Map<String, dynamic> json) {
  return _SearchHistoryResult.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryResult {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SearchHistoryData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  SearchHistoryMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryResultCopyWith<SearchHistoryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryResultCopyWith<$Res> {
  factory $SearchHistoryResultCopyWith(
          SearchHistoryResult value, $Res Function(SearchHistoryResult) then) =
      _$SearchHistoryResultCopyWithImpl<$Res, SearchHistoryResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SearchHistoryData? data,
      @JsonKey(name: 'meta') SearchHistoryMeta? meta});

  $SearchHistoryDataCopyWith<$Res>? get data;
  $SearchHistoryMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SearchHistoryResultCopyWithImpl<$Res, $Val extends SearchHistoryResult>
    implements $SearchHistoryResultCopyWith<$Res> {
  _$SearchHistoryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchHistoryData?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SearchHistoryMeta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchHistoryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchHistoryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchHistoryMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $SearchHistoryMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchHistoryResultImplCopyWith<$Res>
    implements $SearchHistoryResultCopyWith<$Res> {
  factory _$$SearchHistoryResultImplCopyWith(_$SearchHistoryResultImpl value,
          $Res Function(_$SearchHistoryResultImpl) then) =
      __$$SearchHistoryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SearchHistoryData? data,
      @JsonKey(name: 'meta') SearchHistoryMeta? meta});

  @override
  $SearchHistoryDataCopyWith<$Res>? get data;
  @override
  $SearchHistoryMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$SearchHistoryResultImplCopyWithImpl<$Res>
    extends _$SearchHistoryResultCopyWithImpl<$Res, _$SearchHistoryResultImpl>
    implements _$$SearchHistoryResultImplCopyWith<$Res> {
  __$$SearchHistoryResultImplCopyWithImpl(_$SearchHistoryResultImpl _value,
      $Res Function(_$SearchHistoryResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$SearchHistoryResultImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchHistoryData?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SearchHistoryMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryResultImpl implements _SearchHistoryResult {
  const _$SearchHistoryResultImpl(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'meta') this.meta});

  factory _$SearchHistoryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryResultImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final SearchHistoryData? data;
  @override
  @JsonKey(name: 'meta')
  final SearchHistoryMeta? meta;

  @override
  String toString() {
    return 'SearchHistoryResult(code: $code, status: $status, message: $message, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryResultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, status, message, data, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryResultImplCopyWith<_$SearchHistoryResultImpl> get copyWith =>
      __$$SearchHistoryResultImplCopyWithImpl<_$SearchHistoryResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryResultImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryResult implements SearchHistoryResult {
  const factory _SearchHistoryResult(
          {@JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final SearchHistoryData? data,
          @JsonKey(name: 'meta') final SearchHistoryMeta? meta}) =
      _$SearchHistoryResultImpl;

  factory _SearchHistoryResult.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryResultImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  SearchHistoryData? get data;
  @override
  @JsonKey(name: 'meta')
  SearchHistoryMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryResultImplCopyWith<_$SearchHistoryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchHistoryData _$SearchHistoryDataFromJson(Map<String, dynamic> json) {
  return _SearchHistoryData.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryData {
  @JsonKey(name: 'articles')
  List<History>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryDataCopyWith<SearchHistoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryDataCopyWith<$Res> {
  factory $SearchHistoryDataCopyWith(
          SearchHistoryData value, $Res Function(SearchHistoryData) then) =
      _$SearchHistoryDataCopyWithImpl<$Res, SearchHistoryData>;
  @useResult
  $Res call({@JsonKey(name: 'articles') List<History>? articles});
}

/// @nodoc
class _$SearchHistoryDataCopyWithImpl<$Res, $Val extends SearchHistoryData>
    implements $SearchHistoryDataCopyWith<$Res> {
  _$SearchHistoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryDataImplCopyWith<$Res>
    implements $SearchHistoryDataCopyWith<$Res> {
  factory _$$SearchHistoryDataImplCopyWith(_$SearchHistoryDataImpl value,
          $Res Function(_$SearchHistoryDataImpl) then) =
      __$$SearchHistoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'articles') List<History>? articles});
}

/// @nodoc
class __$$SearchHistoryDataImplCopyWithImpl<$Res>
    extends _$SearchHistoryDataCopyWithImpl<$Res, _$SearchHistoryDataImpl>
    implements _$$SearchHistoryDataImplCopyWith<$Res> {
  __$$SearchHistoryDataImplCopyWithImpl(_$SearchHistoryDataImpl _value,
      $Res Function(_$SearchHistoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$SearchHistoryDataImpl(
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<History>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryDataImpl implements _SearchHistoryData {
  const _$SearchHistoryDataImpl(
      {@JsonKey(name: 'articles') final List<History>? articles})
      : _articles = articles;

  factory _$SearchHistoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryDataImplFromJson(json);

  final List<History>? _articles;
  @override
  @JsonKey(name: 'articles')
  List<History>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchHistoryData(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryDataImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryDataImplCopyWith<_$SearchHistoryDataImpl> get copyWith =>
      __$$SearchHistoryDataImplCopyWithImpl<_$SearchHistoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryDataImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryData implements SearchHistoryData {
  const factory _SearchHistoryData(
          {@JsonKey(name: 'articles') final List<History>? articles}) =
      _$SearchHistoryDataImpl;

  factory _SearchHistoryData.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryDataImpl.fromJson;

  @override
  @JsonKey(name: 'articles')
  List<History>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryDataImplCopyWith<_$SearchHistoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'keyword')
  String? get keyword => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'keyword') String? keyword,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? keyword = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'keyword') String? keyword,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? keyword = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$HistoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryImpl implements _History {
  const _$HistoryImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'keyword') this.keyword,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$HistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'keyword')
  final String? keyword;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'History(id: $id, keyword: $keyword, type: $type, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, keyword, type, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryImplToJson(
      this,
    );
  }
}

abstract class _History implements History {
  const factory _History(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'keyword') final String? keyword,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$HistoryImpl;

  factory _History.fromJson(Map<String, dynamic> json) = _$HistoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'keyword')
  String? get keyword;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchHistoryMeta _$SearchHistoryMetaFromJson(Map<String, dynamic> json) {
  return _SearchHistoryMeta.fromJson(json);
}

/// @nodoc
mixin _$SearchHistoryMeta {
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_data')
  int? get totalData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHistoryMetaCopyWith<SearchHistoryMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryMetaCopyWith<$Res> {
  factory $SearchHistoryMetaCopyWith(
          SearchHistoryMeta value, $Res Function(SearchHistoryMeta) then) =
      _$SearchHistoryMetaCopyWithImpl<$Res, SearchHistoryMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData});
}

/// @nodoc
class _$SearchHistoryMetaCopyWithImpl<$Res, $Val extends SearchHistoryMeta>
    implements $SearchHistoryMetaCopyWith<$Res> {
  _$SearchHistoryMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryMetaImplCopyWith<$Res>
    implements $SearchHistoryMetaCopyWith<$Res> {
  factory _$$SearchHistoryMetaImplCopyWith(_$SearchHistoryMetaImpl value,
          $Res Function(_$SearchHistoryMetaImpl) then) =
      __$$SearchHistoryMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int? page,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'page_size') int? pageSize,
      @JsonKey(name: 'total_data') int? totalData});
}

/// @nodoc
class __$$SearchHistoryMetaImplCopyWithImpl<$Res>
    extends _$SearchHistoryMetaCopyWithImpl<$Res, _$SearchHistoryMetaImpl>
    implements _$$SearchHistoryMetaImplCopyWith<$Res> {
  __$$SearchHistoryMetaImplCopyWithImpl(_$SearchHistoryMetaImpl _value,
      $Res Function(_$SearchHistoryMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? pageSize = freezed,
    Object? totalData = freezed,
  }) {
    return _then(_$SearchHistoryMetaImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalData: freezed == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchHistoryMetaImpl implements _SearchHistoryMeta {
  const _$SearchHistoryMetaImpl(
      {@JsonKey(name: 'page') this.page,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'page_size') this.pageSize,
      @JsonKey(name: 'total_data') this.totalData});

  factory _$SearchHistoryMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchHistoryMetaImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  @JsonKey(name: 'total_data')
  final int? totalData;

  @override
  String toString() {
    return 'SearchHistoryMeta(page: $page, perPage: $perPage, pageSize: $pageSize, totalData: $totalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryMetaImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, pageSize, totalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryMetaImplCopyWith<_$SearchHistoryMetaImpl> get copyWith =>
      __$$SearchHistoryMetaImplCopyWithImpl<_$SearchHistoryMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchHistoryMetaImplToJson(
      this,
    );
  }
}

abstract class _SearchHistoryMeta implements SearchHistoryMeta {
  const factory _SearchHistoryMeta(
          {@JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'per_page') final int? perPage,
          @JsonKey(name: 'page_size') final int? pageSize,
          @JsonKey(name: 'total_data') final int? totalData}) =
      _$SearchHistoryMetaImpl;

  factory _SearchHistoryMeta.fromJson(Map<String, dynamic> json) =
      _$SearchHistoryMetaImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  @JsonKey(name: 'total_data')
  int? get totalData;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryMetaImplCopyWith<_$SearchHistoryMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
