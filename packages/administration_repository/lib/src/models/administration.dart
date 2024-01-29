import 'package:administration_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'administration.freezed.dart';

@freezed
class Administration with _$Administration {
  const factory Administration({
    required String id,
    required String userId,
    required Status status,
    // required String type,
    String? reason,
    String? actionBy,
    Biodata? biodata,
    Familial? familial,
    Documents? file,
  }) = _Administration;
}
