// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'administration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Administration {
  Details? get details => throw _privateConstructorUsedError;
  Biodatas? get biodatas => throw _privateConstructorUsedError;
  Familials? get familials => throw _privateConstructorUsedError;
  Files? get files => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdministrationCopyWith<Administration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdministrationCopyWith<$Res> {
  factory $AdministrationCopyWith(
          Administration value, $Res Function(Administration) then) =
      _$AdministrationCopyWithImpl<$Res, Administration>;
  @useResult
  $Res call(
      {Details? details,
      Biodatas? biodatas,
      Familials? familials,
      Files? files});

  $DetailsCopyWith<$Res>? get details;
  $BiodatasCopyWith<$Res>? get biodatas;
  $FamilialsCopyWith<$Res>? get familials;
  $FilesCopyWith<$Res>? get files;
}

/// @nodoc
class _$AdministrationCopyWithImpl<$Res, $Val extends Administration>
    implements $AdministrationCopyWith<$Res> {
  _$AdministrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? biodatas = freezed,
    Object? familials = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      biodatas: freezed == biodatas
          ? _value.biodatas
          : biodatas // ignore: cast_nullable_to_non_nullable
              as Biodatas?,
      familials: freezed == familials
          ? _value.familials
          : familials // ignore: cast_nullable_to_non_nullable
              as Familials?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Files?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiodatasCopyWith<$Res>? get biodatas {
    if (_value.biodatas == null) {
      return null;
    }

    return $BiodatasCopyWith<$Res>(_value.biodatas!, (value) {
      return _then(_value.copyWith(biodatas: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FamilialsCopyWith<$Res>? get familials {
    if (_value.familials == null) {
      return null;
    }

    return $FamilialsCopyWith<$Res>(_value.familials!, (value) {
      return _then(_value.copyWith(familials: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilesCopyWith<$Res>? get files {
    if (_value.files == null) {
      return null;
    }

    return $FilesCopyWith<$Res>(_value.files!, (value) {
      return _then(_value.copyWith(files: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdministrationImplCopyWith<$Res>
    implements $AdministrationCopyWith<$Res> {
  factory _$$AdministrationImplCopyWith(_$AdministrationImpl value,
          $Res Function(_$AdministrationImpl) then) =
      __$$AdministrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Details? details,
      Biodatas? biodatas,
      Familials? familials,
      Files? files});

  @override
  $DetailsCopyWith<$Res>? get details;
  @override
  $BiodatasCopyWith<$Res>? get biodatas;
  @override
  $FamilialsCopyWith<$Res>? get familials;
  @override
  $FilesCopyWith<$Res>? get files;
}

/// @nodoc
class __$$AdministrationImplCopyWithImpl<$Res>
    extends _$AdministrationCopyWithImpl<$Res, _$AdministrationImpl>
    implements _$$AdministrationImplCopyWith<$Res> {
  __$$AdministrationImplCopyWithImpl(
      _$AdministrationImpl _value, $Res Function(_$AdministrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? biodatas = freezed,
    Object? familials = freezed,
    Object? files = freezed,
  }) {
    return _then(_$AdministrationImpl(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details?,
      biodatas: freezed == biodatas
          ? _value.biodatas
          : biodatas // ignore: cast_nullable_to_non_nullable
              as Biodatas?,
      familials: freezed == familials
          ? _value.familials
          : familials // ignore: cast_nullable_to_non_nullable
              as Familials?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Files?,
    ));
  }
}

/// @nodoc

class _$AdministrationImpl implements _Administration {
  const _$AdministrationImpl(
      {this.details, this.biodatas, this.familials, this.files});

  @override
  final Details? details;
  @override
  final Biodatas? biodatas;
  @override
  final Familials? familials;
  @override
  final Files? files;

  @override
  String toString() {
    return 'Administration(details: $details, biodatas: $biodatas, familials: $familials, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdministrationImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.biodatas, biodatas) ||
                other.biodatas == biodatas) &&
            (identical(other.familials, familials) ||
                other.familials == familials) &&
            (identical(other.files, files) || other.files == files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, details, biodatas, familials, files);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      __$$AdministrationImplCopyWithImpl<_$AdministrationImpl>(
          this, _$identity);
}

abstract class _Administration implements Administration {
  const factory _Administration(
      {final Details? details,
      final Biodatas? biodatas,
      final Familials? familials,
      final Files? files}) = _$AdministrationImpl;

  @override
  Details? get details;
  @override
  Biodatas? get biodatas;
  @override
  Familials? get familials;
  @override
  Files? get files;
  @override
  @JsonKey(ignore: true)
  _$$AdministrationImplCopyWith<_$AdministrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
