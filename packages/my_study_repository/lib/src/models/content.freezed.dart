// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Content {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Content value) $default, {
    required TResult Function(_EmptyContent value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Content value)? $default, {
    TResult? Function(_EmptyContent value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Content value)? $default, {
    TResult Function(_EmptyContent value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String title,
      String content,
      String url,
      String moduleId,
      int durationInSeconds});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? url = null,
    Object? moduleId = null,
    Object? durationInSeconds = null,
  }) {
    return _then(_$ContentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as String,
      durationInSeconds: null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {required this.id,
      required this.title,
      required this.content,
      required this.url,
      required this.moduleId,
      required this.durationInSeconds});

  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String url;
  @override
  final String moduleId;
  @override
  final int durationInSeconds;

  @override
  String toString() {
    return 'Content(id: $id, title: $title, content: $content, url: $url, moduleId: $moduleId, durationInSeconds: $durationInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, content, url, moduleId, durationInSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(id, title, content, url, moduleId, durationInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(id, title, content, url, moduleId, durationInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, title, content, url, moduleId, durationInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Content value) $default, {
    required TResult Function(_EmptyContent value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Content value)? $default, {
    TResult? Function(_EmptyContent value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Content value)? $default, {
    TResult Function(_EmptyContent value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {required final String id,
      required final String title,
      required final String content,
      required final String url,
      required final String moduleId,
      required final int durationInSeconds}) = _$ContentImpl;

  String get id;
  String get title;
  String get content;
  String get url;
  String get moduleId;
  int get durationInSeconds;
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyContentImplCopyWith<$Res> {
  factory _$$EmptyContentImplCopyWith(
          _$EmptyContentImpl value, $Res Function(_$EmptyContentImpl) then) =
      __$$EmptyContentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$EmptyContentImpl>
    implements _$$EmptyContentImplCopyWith<$Res> {
  __$$EmptyContentImplCopyWithImpl(
      _$EmptyContentImpl _value, $Res Function(_$EmptyContentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyContentImpl implements _EmptyContent {
  const _$EmptyContentImpl();

  @override
  String toString() {
    return 'Content.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyContentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String content, String url,
            String moduleId, int durationInSeconds)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Content value) $default, {
    required TResult Function(_EmptyContent value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Content value)? $default, {
    TResult? Function(_EmptyContent value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Content value)? $default, {
    TResult Function(_EmptyContent value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyContent implements Content {
  const factory _EmptyContent() = _$EmptyContentImpl;
}
