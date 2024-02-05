import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData fromBrightness(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: _primaryColor,
      brightness: brightness,
      primary: _primaryColor,
      error: _errorColor,
      errorContainer: _errorContainerColor,
      onErrorContainer: _errorColor,
    );
    final themeData = ThemeData(
      brightness: brightness,
      colorScheme: colorScheme,
    );

    return themeData.copyWith(
      brightness: brightness,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colorScheme.primary,
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
                  color: colorScheme.primary,
                  width: 2,
                );
              }
              return BorderSide(
                color: colorScheme.onSurface.withOpacity(0.38),
                width: 2,
              );
            },
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return AppColors.success;
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
        ),
        contentTextStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(themeData.textTheme),
    );
  }

//   static ThemeData get light => ThemeData(
//         colorScheme: _lightColorScheme,
//         appBarTheme: AppBarTheme(
//           centerTitle: true,
//           backgroundColor: _lightColorScheme.primary,
//           titleTextStyle: GoogleFonts.poppins(
//             fontWeight: FontWeight.w600,
//             fontSize: 18,
//             height: 27 / 18,
//           ),
//           elevation: 0,
//           iconTheme: const IconThemeData(color: Colors.white),
//         ),
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//             textStyle: GoogleFonts.poppins(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               height: 21 / 14,
//             ),
//             padding: const EdgeInsets.symmetric(
//               horizontal: 24,
//               vertical: 12,
//             ),
//           ),
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//             textStyle: GoogleFonts.poppins(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               height: 21 / 14,
//             ),
//             padding: const EdgeInsets.symmetric(
//               horizontal: 24,
//               vertical: 12,
//             ),
//           ),
//         ),
//         filledButtonTheme: FilledButtonThemeData(
//           style: FilledButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//             textStyle: GoogleFonts.poppins(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               height: 21 / 14,
//             ),
//             padding: const EdgeInsets.symmetric(
//               horizontal: 24,
//               vertical: 12,
//             ),
//           ),
//         ),
//         outlinedButtonTheme: OutlinedButtonThemeData(
//           style: OutlinedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//             textStyle: GoogleFonts.poppins(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               height: 21 / 14,
//             ),
//             padding: const EdgeInsets.symmetric(
//               horizontal: 24,
//               vertical: 12,
//             ),
//           ).copyWith(
//             side: MaterialStateProperty.resolveWith(
//               (states) {
//                 if (states.isEmpty) {
//                   return BorderSide(
//                     color: _lightColorScheme.primary,
//                     width: 2,
//                   );
//                 }
//                 return BorderSide(
//                   color: _lightColorScheme.onSurface.withOpacity(0.38),
//                   width: 2,
//                 );
//               },
//             ),
//           ),
//         ),
//         checkboxTheme: CheckboxThemeData(
//           fillColor: MaterialStateProperty.resolveWith(
//             (states) {
//               if (states.contains(MaterialState.selected)) {
//                 return AppColors.success;
//               }

//               return Colors.transparent;
//             },
//           ),
//         ),
//         inputDecorationTheme: InputDecorationTheme(
//           suffixIconColor: _lightColorScheme.outline,
//           prefixIconColor: _lightColorScheme.outline,
//           hintStyle: GoogleFonts.poppins(
//             fontWeight: FontWeight.normal,
//             fontSize: 14,
//             color: _lightColorScheme.outline,
//           ),
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//           contentPadding: const EdgeInsets.all(12),
//         ).copyWith(
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8),
//             borderSide: BorderSide(color: _lightColorScheme.outlineVariant),
//           ),
//         ),
//         textTheme: GoogleFonts.poppinsTextTheme(),
//       );
}

const _primaryColor = Color(0xFF0C5DAC);
const _errorColor = Color(0xFFDB342C);
const _errorContainerColor = Color(0xFFF6DCDB);

// final _lightColorScheme = ColorScheme.fromSeed(
//   seedColor: _primaryColor,
//   primary: _primaryColor,
//   error: _errorColor,
//   errorContainer: _errorContainerColor,
//   onErrorContainer: _errorColor,
// );
// final _darkColorScheme = ColorScheme.fromSeed(
//   seedColor: _primaryColor,
//   brightness: Brightness.dark,
//   primary: _primaryColor,
//   error: _errorColor,
//   errorContainer: _errorContainerColor,
//   onErrorContainer: _errorColor,
// );

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