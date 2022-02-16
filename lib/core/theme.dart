import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (states) => const TextStyle(
          fontSize: 48,
        ),
      ),
    ),
  );

  static final lightTheme = ThemeData.light().copyWith(
    appBarTheme: ThemeData.light().appBarTheme.copyWith(elevation: 0),
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    elevatedButtonTheme: _elevatedButtonTheme,
    textTheme: GoogleFonts.robotoMonoTextTheme(ThemeData.light().textTheme).apply(
      bodyColor: Colors.black,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          elevation: 0,
          backgroundColor: const Color(0xFF3E3E3E),
        ),
    elevatedButtonTheme: _elevatedButtonTheme,
    colorScheme: const ColorScheme.dark(),
    brightness: Brightness.dark,
    textTheme: GoogleFonts.robotoMonoTextTheme(ThemeData.dark().textTheme).apply(
      bodyColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFF3E3E3E),
  );
}
