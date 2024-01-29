// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleMeta {
  int get pageSize => throw _privateConstructorUsedError;
  int get totalData => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get maxPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleMetaCopyWith<ArticleMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleMetaCopyWith<$Res> {
  factory $ArticleMetaCopyWith(
          ArticleMeta value, $Res Function(ArticleMeta) then) =
      _$ArticleMetaCopyWithImpl<$Res, ArticleMeta>;
  @useResult
  $Res call({int pageSize, int totalData, int currentPage, int maxPage});
}

/// @nodoc
class _$ArticleMetaCopyWithImpl<$Res, $Val extends ArticleMeta>
    implements $ArticleMetaCopyWith<$Res> {
  _$ArticleMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? totalData = null,
    Object? currentPage = null,
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalData: null == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleMetaImplCopyWith<$Res>
    implements $ArticleMetaCopyWith<$Res> {
  factory _$$ArticleMetaImplCopyWith(
          _$ArticleMetaImpl value, $Res Function(_$ArticleMetaImpl) then) =
      __$$ArticleMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageSize, int totalData, int currentPage, int maxPage});
}

/// @nodoc
class __$$ArticleMetaImplCopyWithImpl<$Res>
    extends _$ArticleMetaCopyWithImpl<$Res, _$ArticleMetaImpl>
    implements _$$ArticleMetaImplCopyWith<$Res> {
  __$$ArticleMetaImplCopyWithImpl(
      _$ArticleMetaImpl _value, $Res Function(_$ArticleMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? totalData = null,
    Object? currentPage = null,
    Object? maxPage = null,
  }) {
    return _then(_$ArticleMetaImpl(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalData: null == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ArticleMetaImpl implements _ArticleMeta {
  const _$ArticleMetaImpl(
      {required this.pageSize,
      required this.totalData,
      required this.currentPage,
      required this.maxPage});

  @override
  final int pageSize;
  @override
  final int totalData;
  @override
  final int currentPage;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'ArticleMeta(pageSize: $pageSize, totalData: $totalData, currentPage: $currentPage, maxPage: $maxPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleMetaImpl &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageSize, totalData, currentPage, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleMetaImplCopyWith<_$ArticleMetaImpl> get copyWith =>
      __$$ArticleMetaImplCopyWithImpl<_$ArticleMetaImpl>(this, _$identity);
}

abstract class _ArticleMeta implements ArticleMeta {
  const factory _ArticleMeta(
      {required final int pageSize,
      required final int totalData,
      required final int currentPage,
      required final int maxPage}) = _$ArticleMetaImpl;

  @override
  int get pageSize;
  @override
  int get totalData;
  @override
  int get currentPage;
  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleMetaImplCopyWith<_$ArticleMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryMeta {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryMetaCopyWith<HistoryMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryMetaCopyWith<$Res> {
  factory $HistoryMetaCopyWith(
          HistoryMeta value, $Res Function(HistoryMeta) then) =
      _$HistoryMetaCopyWithImpl<$Res, HistoryMeta>;
  @useResult
  $Res call({int page, int perPage, int pageSize, int totalData});
}

/// @nodoc
class _$HistoryMetaCopyWithImpl<$Res, $Val extends HistoryMeta>
    implements $HistoryMetaCopyWith<$Res> {
  _$HistoryMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageSize = null,
    Object? totalData = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalData: null == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryMetaImplCopyWith<$Res>
    implements $HistoryMetaCopyWith<$Res> {
  factory _$$HistoryMetaImplCopyWith(
          _$HistoryMetaImpl value, $Res Function(_$HistoryMetaImpl) then) =
      __$$HistoryMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int perPage, int pageSize, int totalData});
}

/// @nodoc
class __$$HistoryMetaImplCopyWithImpl<$Res>
    extends _$HistoryMetaCopyWithImpl<$Res, _$HistoryMetaImpl>
    implements _$$HistoryMetaImplCopyWith<$Res> {
  __$$HistoryMetaImplCopyWithImpl(
      _$HistoryMetaImpl _value, $Res Function(_$HistoryMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageSize = null,
    Object? totalData = null,
  }) {
    return _then(_$HistoryMetaImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalData: null == totalData
          ? _value.totalData
          : totalData // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HistoryMetaImpl implements _HistoryMeta {
  const _$HistoryMetaImpl(
      {required this.page,
      required this.perPage,
      required this.pageSize,
      required this.totalData});

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int pageSize;
  @override
  final int totalData;

  @override
  String toString() {
    return 'HistoryMeta(page: $page, perPage: $perPage, pageSize: $pageSize, totalData: $totalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryMetaImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalData, totalData) ||
                other.totalData == totalData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, page, perPage, pageSize, totalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryMetaImplCopyWith<_$HistoryMetaImpl> get copyWith =>
      __$$HistoryMetaImplCopyWithImpl<_$HistoryMetaImpl>(this, _$identity);
}

abstract class _HistoryMeta implements HistoryMeta {
  const factory _HistoryMeta(
      {required final int page,
      required final int perPage,
      required final int pageSize,
      required final int totalData}) = _$HistoryMetaImpl;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get pageSize;
  @override
  int get totalData;
  @override
  @JsonKey(ignore: true)
  _$$HistoryMetaImplCopyWith<_$HistoryMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
