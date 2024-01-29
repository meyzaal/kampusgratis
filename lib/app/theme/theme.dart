import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static AppColors get colors => const AppColors();
  static ThemeData get light => ThemeData(
        colorScheme: _lightColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: _lightColorScheme.primary,
          titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 27 / 18,
          ),
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
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
                    color: _lightColorScheme.primary,
                    width: 2,
                  );
                }
                return BorderSide(
                  color: _lightColorScheme.onSurface.withOpacity(0.38),
                  width: 2,
                );
              },
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: const Color(0xFF9AA4B2),
          prefixIconColor: const Color(0xFF9AA4B2),
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            fontSize: 14,
            color: const Color(0xFF9AA4B2),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.all(12),
        ).copyWith(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFCDD5DF)),
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      );
}

const _errorColor = Color(0xFFDB342C);
const _errorContainerColor = Color(0xFFF6DCDB);

const _lightColorScheme = ColorScheme.light(
  primary: Color(0xFF0C5DAC),
  error: _errorColor,
  errorContainer: _errorContainerColor,
  onErrorContainer: _errorColor,
);

class AppColors {
  const AppColors();

  static Color get error => _errorColor;
  static Color get errorContainer => _errorContainerColor;
  static Color get info => const Color(0xFF228BE6);
  static Color get infoContainer => const Color(0xFFDEEEFB);
  static Color get success => const Color(0xFF0CA678);
  static Color get successContainer => const Color(0xFFDBF2EB);
  static Color get warning => const Color(0xFFFAB005);
  static Color get warningContainer => const Color(0xFFE9EBF8);
}
