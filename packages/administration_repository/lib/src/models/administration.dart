import 'package:administration_repository/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'administration.freezed.dart';

@freezed
class Administration with _$Administration {
  const factory Administration({
    Details? details,
    Biodatas? biodatas,
    Familials? familials,
    Files? files,
  }) = _Administration;
}
