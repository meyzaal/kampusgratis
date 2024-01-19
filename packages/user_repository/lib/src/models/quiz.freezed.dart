// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_point')
  String get questionPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'kkm')
  int get kkm => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaining_attempt')
  int get remainingAttempt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'total_questions') int totalQuestions,
      @JsonKey(name: 'question_point') String questionPoint,
      @JsonKey(name: 'kkm') int kkm,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'remaining_attempt') int remainingAttempt});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? totalQuestions = null,
    Object? questionPoint = null,
    Object? kkm = null,
    Object? duration = null,
    Object? remainingAttempt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      questionPoint: null == questionPoint
          ? _value.questionPoint
          : questionPoint // ignore: cast_nullable_to_non_nullable
              as String,
      kkm: null == kkm
          ? _value.kkm
          : kkm // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAttempt: null == remainingAttempt
          ? _value.remainingAttempt
          : remainingAttempt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'total_questions') int totalQuestions,
      @JsonKey(name: 'question_point') String questionPoint,
      @JsonKey(name: 'kkm') int kkm,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'remaining_attempt') int remainingAttempt});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? totalQuestions = null,
    Object? questionPoint = null,
    Object? kkm = null,
    Object? duration = null,
    Object? remainingAttempt = null,
  }) {
    return _then(_$QuizImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      questionPoint: null == questionPoint
          ? _value.questionPoint
          : questionPoint // ignore: cast_nullable_to_non_nullable
              as String,
      kkm: null == kkm
          ? _value.kkm
          : kkm // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      remainingAttempt: null == remainingAttempt
          ? _value.remainingAttempt
          : remainingAttempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizImpl implements _Quiz {
  const _$QuizImpl(
      {@JsonKey(name: 'id') this.id = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'total_questions') this.totalQuestions = 0,
      @JsonKey(name: 'question_point') this.questionPoint = '',
      @JsonKey(name: 'kkm') this.kkm = 0,
      @JsonKey(name: 'duration') this.duration = 0,
      @JsonKey(name: 'remaining_attempt') this.remainingAttempt = 0});

  factory _$QuizImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'total_questions')
  final int totalQuestions;
  @override
  @JsonKey(name: 'question_point')
  final String questionPoint;
  @override
  @JsonKey(name: 'kkm')
  final int kkm;
  @override
  @JsonKey(name: 'duration')
  final int duration;
  @override
  @JsonKey(name: 'remaining_attempt')
  final int remainingAttempt;

  @override
  String toString() {
    return 'Quiz(id: $id, title: $title, totalQuestions: $totalQuestions, questionPoint: $questionPoint, kkm: $kkm, duration: $duration, remainingAttempt: $remainingAttempt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.questionPoint, questionPoint) ||
                other.questionPoint == questionPoint) &&
            (identical(other.kkm, kkm) || other.kkm == kkm) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.remainingAttempt, remainingAttempt) ||
                other.remainingAttempt == remainingAttempt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, totalQuestions,
      questionPoint, kkm, duration, remainingAttempt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizImplToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
          {@JsonKey(name: 'id') final String id,
          @JsonKey(name: 'title') final String title,
          @JsonKey(name: 'total_questions') final int totalQuestions,
          @JsonKey(name: 'question_point') final String questionPoint,
          @JsonKey(name: 'kkm') final int kkm,
          @JsonKey(name: 'duration') final int duration,
          @JsonKey(name: 'remaining_attempt') final int remainingAttempt}) =
      _$QuizImpl;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$QuizImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'total_questions')
  int get totalQuestions;
  @override
  @JsonKey(name: 'question_point')
  String get questionPoint;
  @override
  @JsonKey(name: 'kkm')
  int get kkm;
  @override
  @JsonKey(name: 'duration')
  int get duration;
  @override
  @JsonKey(name: 'remaining_attempt')
  int get remainingAttempt;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
