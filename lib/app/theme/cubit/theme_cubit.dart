import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ThemeBrightness { light, dark, system }

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void themeChanged(ThemeMode brightness) {
    if (brightness == state) return;
    emit(brightness);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final modeString = json['mode'];
    return ThemeMode.values.firstWhere(
      (mode) => mode.toString().split('.').last == modeString,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'mode': state.toString().split('.').last};
  }
}

extension ThemeModeX on ThemeMode {
  bool get isLight => this == ThemeMode.light;
  bool get isDark => this == ThemeMode.dark;
  bool get isSystem => this == ThemeMode.system;

  Brightness? get brightness {
    if (this == ThemeMode.light) return Brightness.light;
    if (this == ThemeMode.dark) return Brightness.dark;
    return null;
  }

  String get nameInIdn {
    switch (this) {
      case ThemeMode.light:
        return 'Terang';
      case ThemeMode.dark:
        return 'Gelap';
      case ThemeMode.system:
        return 'Sistem';
    }
  }
}
