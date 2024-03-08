import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kampusgratis/app/app.dart';

class AppTheme {
  static ThemeData light() {
    return _getTheme(Brightness.light);
  }

  static ThemeData dark() {
    return _getTheme(Brightness.dark);
  }
}

ThemeData _getTheme(Brightness brightness) {
  ThemeData theme;
  ColorScheme colorScheme;
  CustomColors customColors;

  switch (brightness) {
    case Brightness.dark:
      theme = ThemeData.dark(useMaterial3: true);
      colorScheme = darkColorScheme;
      customColors = darkCustomColors;
    case Brightness.light:
      theme = ThemeData.light(useMaterial3: true);
      colorScheme = lightColorScheme;
      customColors = lightCustomColors;
  }

  return theme.copyWith(
    extensions: [customColors],
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: colorScheme.primary,
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 27 / 18,
        color: colorScheme.onPrimary,
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 21 / 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 21 / 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 21 / 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          height: 21 / 14,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
      ).copyWith(
        side: MaterialStateProperty.resolveWith(
          (states) {
            if (states.isEmpty) {
              return BorderSide(
                color: colorScheme.primary,
                // width: 2,
              );
            }
            return BorderSide(
              color: colorScheme.onSurface.withOpacity(0.38),
              // width: 2,
            );
          },
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return theme.extension<CustomColors>()?.sourceSuccess;
          }

          return Colors.transparent;
        },
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: colorScheme.outline,
      prefixIconColor: colorScheme.outline,
      hintStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: colorScheme.outline,
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.all(12),
    ).copyWith(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.outlineVariant),
      ),
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: colorScheme.onSurface,
      ),
      contentTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: colorScheme.onSurface,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: colorScheme.primary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      showDragHandle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(theme.textTheme),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    datePickerTheme: DatePickerThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}
