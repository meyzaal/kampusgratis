import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kg_client/kg_client.dart';

part 'details.freezed.dart';

@freezed
class Details with _$Details {
  const factory Details({
    required String id,
    required String userId,
    required AdministrationStatus status,
    String? type,
    String? reason,
    String? actionBy,
    String? createdAt,
    String? updatedAt,
  }) = _Details;
}
