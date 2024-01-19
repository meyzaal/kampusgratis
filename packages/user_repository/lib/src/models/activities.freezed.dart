// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Activities _$ActivitiesFromJson(Map<String, dynamic> json) {
  return _Activities.fromJson(json);
}

/// @nodoc
mixin _$Activities {
  @JsonKey(name: 'quizzes')
  List<Quiz> get quizzes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivitiesCopyWith<Activities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesCopyWith<$Res> {
  factory $ActivitiesCopyWith(
          Activities value, $Res Function(Activities) then) =
      _$ActivitiesCopyWithImpl<$Res, Activities>;
  @useResult
  $Res call({@JsonKey(name: 'quizzes') List<Quiz> quizzes});
}

/// @nodoc
class _$ActivitiesCopyWithImpl<$Res, $Val extends Activities>
    implements $ActivitiesCopyWith<$Res> {
  _$ActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
  }) {
    return _then(_value.copyWith(
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitiesImplCopyWith<$Res>
    implements $ActivitiesCopyWith<$Res> {
  factory _$$ActivitiesImplCopyWith(
          _$ActivitiesImpl value, $Res Function(_$ActivitiesImpl) then) =
      __$$ActivitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'quizzes') List<Quiz> quizzes});
}

/// @nodoc
class __$$ActivitiesImplCopyWithImpl<$Res>
    extends _$ActivitiesCopyWithImpl<$Res, _$ActivitiesImpl>
    implements _$$ActivitiesImplCopyWith<$Res> {
  __$$ActivitiesImplCopyWithImpl(
      _$ActivitiesImpl _value, $Res Function(_$ActivitiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
  }) {
    return _then(_$ActivitiesImpl(
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivitiesImpl implements _Activities {
  const _$ActivitiesImpl(
      {@JsonKey(name: 'quizzes') final List<Quiz> quizzes = const <Quiz>[]})
      : _quizzes = quizzes;

  factory _$ActivitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivitiesImplFromJson(json);

  final List<Quiz> _quizzes;
  @override
  @JsonKey(name: 'quizzes')
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString() {
    return 'Activities(quizzes: $quizzes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesImplCopyWith<_$ActivitiesImpl> get copyWith =>
      __$$ActivitiesImplCopyWithImpl<_$ActivitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivitiesImplToJson(
      this,
    );
  }
}

abstract class _Activities implements Activities {
  const factory _Activities(
      {@JsonKey(name: 'quizzes') final List<Quiz> quizzes}) = _$ActivitiesImpl;

  factory _Activities.fromJson(Map<String, dynamic> json) =
      _$ActivitiesImpl.fromJson;

  @override
  @JsonKey(name: 'quizzes')
  List<Quiz> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$ActivitiesImplCopyWith<_$ActivitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
