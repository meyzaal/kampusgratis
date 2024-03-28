import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_study_repository/my_study_repository.dart';

part 'overview_details.freezed.dart';

@freezed
class OverviewDetails with _$OverviewDetails {
  const factory OverviewDetails({
    required Detail detail,
    required DetailOverview overview,
  }) = _OverviewDetails;
}
