import 'package:user_repository/src/utils/utils.dart';

extension GenderX on Gender {
  String get nameInIdn {
    switch (this) {
      case Gender.male:
        return 'Laki-laki';
      case Gender.female:
        return 'Perempuan';
      case Gender.unknown:
        return '-';
    }
  }
}