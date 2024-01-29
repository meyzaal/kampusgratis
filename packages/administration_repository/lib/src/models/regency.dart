import 'package:freezed_annotation/freezed_annotation.dart';

part 'regency.freezed.dart';

@freezed
class Regency with _$Regency {
  const factory Regency({
    required String code,
    required String provinceCode,
    required String name,
  }) = _Regency;
}
