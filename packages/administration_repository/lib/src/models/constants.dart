import 'package:freezed_annotation/freezed_annotation.dart';

part 'constants.freezed.dart';

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
}

@freezed
class ConstantMap with _$ConstantMap {
  const factory ConstantMap({
    required List<String> keys,
    required List<String> values,
  }) = _ConstantMap;
}
