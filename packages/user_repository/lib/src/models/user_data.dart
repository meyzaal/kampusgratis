import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/models/models.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'user') @Default(User()) User user,
    @JsonKey(name: 'activities') @Default(Activities()) Activities activities,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}
