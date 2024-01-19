import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/utils/utils.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    @JsonKey(name: 'avatar') @Default('') String avatar,
    @JsonKey(name: 'poin') @Default(0) int poin,
    @JsonKey(name: 'user_name') @Default('') String userName,
    @JsonKey(name: 'discussion_likes') @Default(0) int discussionLikes,
    @JsonKey(name: 'discussion_posted') @Default(0) int discussionPosted,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    @JsonKey(name: 'semester') @Default(0) int semester,
    @JsonKey(name: 'ipk') @Default('') String ipk,
    @JsonKey(name: 'major') @Default('') String major,
    @JsonKey(name: 'role') @Default(Role.guest) Role role,
    @JsonKey(name: 'total_certificates') @Default(0) int totalCertificates,
    @JsonKey(name: 'current_subjects') @Default(0) int currentSubjects,
    @JsonKey(name: 'finished_subjects') @Default(0) int finishedSubjects,
    @JsonKey(name: 'faculty') @Default('') String faculty,
  }) = _Profile;

  factory Profile.fromJson(Map<String, Object?> json) =>
      _$ProfileFromJson(json);
}
