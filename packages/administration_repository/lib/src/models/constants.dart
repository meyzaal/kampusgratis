import 'package:freezed_annotation/freezed_annotation.dart';

part 'constants.freezed.dart';
part 'constants.g.dart';

@freezed
class Constants with _$Constants {
  const factory Constants({
    required ConstantMap gender,
    required ConstantMap lastEducation,
    required ConstantMap occupation,
    required ConstantMap salary,
    required ConstantMap liveWith,
    required ConstantMap tuitionPayer,
  }) = _Constants;

  factory Constants.fromJson(Map<String, dynamic> json) =>
      _$ConstantsFromJson(json);
}

@freezed
class ConstantMap with _$ConstantMap {
  const factory ConstantMap({
    required List<String> keys,
    required List<String> values,
  }) = _ConstantMap;

  factory ConstantMap.fromJson(Map<String, dynamic> json) =>
      _$ConstantMapFromJson(json);
}

extension ConstantMapX on ConstantMap {
  String valueFromKey(String key) => values[keys.indexOf(key)];
  String keyFromValue(String value) => keys[values.indexOf(value)];
}
