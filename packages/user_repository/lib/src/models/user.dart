import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/src/utils/utils.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') @Default('') String id,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    @JsonKey(name: 'user_name') @Default('') String userName,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'email_verified_at') @Default('') String emailVerifiedAt,
    @JsonKey(name: 'avatar') @Default('') String avatar,
    @JsonKey(name: 'gender') @Default(Gender.unknown) Gender gender,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'role') @Default(Role.guest) Role role,
    @JsonKey(name: 'created_at') @Default('') String createdAt,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
