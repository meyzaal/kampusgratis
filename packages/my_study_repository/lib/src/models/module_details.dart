import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'module_details.freezed.dart';

@freezed
class ModuleDetails with _$ModuleDetails {
  factory ModuleDetails({
    required Detail detail,
    required DetailModule module,
  }) = _ModuleDetails;
}
