import 'package:user_repository/src/utils/utils.dart';

/// A Dart extension on the [Gender] enum providing additional functionality for
/// converting gender values to Indonesian names.
extension GenderX on Gender {
  /// Returns the Indonesian name associated with the gender.
  ///
  /// - 'Laki-laki' for [Gender.male].
  /// - 'Perempuan' for [Gender.female].
  /// - '-' for [Gender.unknown].
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
