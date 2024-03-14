import 'package:bootcamp_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

@freezed
class Data with _$Data {
  const factory Data({
    required List<Bootcamp> data,
    required Meta meta,
  }) = _Data;
}
