import 'package:freezed_annotation/freezed_annotation.dart';

part 'village.freezed.dart';

@freezed
class Village with _$Village {
  const factory Village({
    required String code,
    required String districtCode,
    required String name,
  }) = _Village;
}
