import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'session_modules.freezed.dart';

@freezed
class SessionModules with _$SessionModules {
  factory SessionModules({
    required Detail detail,
    required List<ModuleSession> modules,
  }) = _SessionModules;
}
