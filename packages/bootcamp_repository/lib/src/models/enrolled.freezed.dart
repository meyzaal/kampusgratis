// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrolled.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Enrolled {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get subjectCode => throw _privateConstructorUsedError;
  int? get credit => throw _privateConstructorUsedError;
  int? get currentSemester => throw _privateConstructorUsedError;
  String? get dateTaken => throw _privateConstructorUsedError;
  String? get dateFinished => throw _privateConstructorUsedError;
  String? get proof => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnrolledCopyWith<Enrolled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrolledCopyWith<$Res> {
  factory $EnrolledCopyWith(Enrolled value, $Res Function(Enrolled) then) =
      _$EnrolledCopyWithImpl<$Res, Enrolled>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? thumbnail,
      String? subjectCode,
      int? credit,
      int? currentSemester,
      String? dateTaken,
      String? dateFinished,
      String? proof});
}

/// @nodoc
class _$EnrolledCopyWithImpl<$Res, $Val extends Enrolled>
    implements $EnrolledCopyWith<$Res> {
  _$EnrolledCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? subjectCode = freezed,
    Object? credit = freezed,
    Object? currentSemester = freezed,
    Object? dateTaken = freezed,
    Object? dateFinished = freezed,
    Object? proof = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectCode: freezed == subjectCode
          ? _value.subjectCode
          : subjectCode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTaken: freezed == dateTaken
          ? _value.dateTaken
          : dateTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFinished: freezed == dateFinished
          ? _value.dateFinished
          : dateFinished // ignore: cast_nullable_to_non_nullable
              as String?,
      proof: freezed == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnrolledImplCopyWith<$Res>
    implements $EnrolledCopyWith<$Res> {
  factory _$$EnrolledImplCopyWith(
          _$EnrolledImpl value, $Res Function(_$EnrolledImpl) then) =
      __$$EnrolledImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? thumbnail,
      String? subjectCode,
      int? credit,
      int? currentSemester,
      String? dateTaken,
      String? dateFinished,
      String? proof});
}

/// @nodoc
class __$$EnrolledImplCopyWithImpl<$Res>
    extends _$EnrolledCopyWithImpl<$Res, _$EnrolledImpl>
    implements _$$EnrolledImplCopyWith<$Res> {
  __$$EnrolledImplCopyWithImpl(
      _$EnrolledImpl _value, $Res Function(_$EnrolledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? subjectCode = freezed,
    Object? credit = freezed,
    Object? currentSemester = freezed,
    Object? dateTaken = freezed,
    Object? dateFinished = freezed,
    Object? proof = freezed,
  }) {
    return _then(_$EnrolledImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      subjectCode: freezed == subjectCode
          ? _value.subjectCode
          : subjectCode // ignore: cast_nullable_to_non_nullable
              as String?,
      credit: freezed == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as int?,
      currentSemester: freezed == currentSemester
          ? _value.currentSemester
          : currentSemester // ignore: cast_nullable_to_non_nullable
              as int?,
      dateTaken: freezed == dateTaken
          ? _value.dateTaken
          : dateTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      dateFinished: freezed == dateFinished
          ? _value.dateFinished
          : dateFinished // ignore: cast_nullable_to_non_nullable
              as String?,
      proof: freezed == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EnrolledImpl implements _Enrolled {
  const _$EnrolledImpl(
      {required this.id,
      this.name,
      this.thumbnail,
      this.subjectCode,
      this.credit,
      this.currentSemester,
      this.dateTaken,
      this.dateFinished,
      this.proof});

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? thumbnail;
  @override
  final String? subjectCode;
  @override
  final int? credit;
  @override
  final int? currentSemester;
  @override
  final String? dateTaken;
  @override
  final String? dateFinished;
  @override
  final String? proof;

  @override
  String toString() {
    return 'Enrolled(id: $id, name: $name, thumbnail: $thumbnail, subjectCode: $subjectCode, credit: $credit, currentSemester: $currentSemester, dateTaken: $dateTaken, dateFinished: $dateFinished, proof: $proof)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrolledImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.subjectCode, subjectCode) ||
                other.subjectCode == subjectCode) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.currentSemester, currentSemester) ||
                other.currentSemester == currentSemester) &&
            (identical(other.dateTaken, dateTaken) ||
                other.dateTaken == dateTaken) &&
            (identical(other.dateFinished, dateFinished) ||
                other.dateFinished == dateFinished) &&
            (identical(other.proof, proof) || other.proof == proof));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnail, subjectCode,
      credit, currentSemester, dateTaken, dateFinished, proof);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrolledImplCopyWith<_$EnrolledImpl> get copyWith =>
      __$$EnrolledImplCopyWithImpl<_$EnrolledImpl>(this, _$identity);
}

abstract class _Enrolled implements Enrolled {
  const factory _Enrolled(
      {required final String id,
      final String? name,
      final String? thumbnail,
      final String? subjectCode,
      final int? credit,
      final int? currentSemester,
      final String? dateTaken,
      final String? dateFinished,
      final String? proof}) = _$EnrolledImpl;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get thumbnail;
  @override
  String? get subjectCode;
  @override
  int? get credit;
  @override
  int? get currentSemester;
  @override
  String? get dateTaken;
  @override
  String? get dateFinished;
  @override
  String? get proof;
  @override
  @JsonKey(ignore: true)
  _$$EnrolledImplCopyWith<_$EnrolledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
