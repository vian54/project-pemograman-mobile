import 'package:flutter/material.dart';

class AppTheme {
  // Warna utama
  static const primaryBlue = Color(0xFF144A63);
  static const accentAmber = Color(0xFFFFC107);
  static const softPurple = Color(0xFF5E35B1);
  static const backgroundGrey = Color(0xFFF6F8FA);

  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Roboto',
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryBlue,
        onPrimary: Colors.white,
        secondary: accentAmber,
        onSecondary: Colors.black,
        error: const Color(0xFFD32F2F),
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black87,
      ),
      scaffoldBackgroundColor: backgroundGrey,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryBlue,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        toolbarTextStyle: TextStyle(color: Colors.white),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          height: 1.5,
          color: Colors.black87,
        ),
        titleMedium: TextStyle(
          fontSize: 13,
          color: Colors.black87,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: accentAmber,
          foregroundColor: Colors.black87,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primaryBlue),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: softPurple,
        elevation: 6,
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey.shade300,
        thickness: 1,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black54,
        size: 20,
      ),
    );
  }
}