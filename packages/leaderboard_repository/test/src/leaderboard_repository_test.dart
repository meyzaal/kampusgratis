// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:leaderboard_repository/leaderboard_repository.dart';

void main() {
  group('LeaderboardRepository', () {
    test('can be instantiated', () {
      expect(LeaderboardRepository(), isNotNull);
    });
  });
}
