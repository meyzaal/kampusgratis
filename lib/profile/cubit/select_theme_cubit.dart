import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SelectThemeCubit extends Cubit<ThemeMode> {
  SelectThemeCubit({required ThemeMode selectedTheme}) : super(selectedTheme);

  void selectedThemeChanged(ThemeMode selectedTheme) => emit(selectedTheme);
}
