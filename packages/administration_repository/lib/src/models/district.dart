import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';

@freezed
class District with _$District {
  const factory District({
    required String code,
    required String regencyCode,
    required String name,
  }) = _District;
}
