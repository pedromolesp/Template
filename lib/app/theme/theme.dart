import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.blue;
  static const Color textColor = Colors.black;
  static const Color appBarTextColor = Colors.white;
  static const Color buttonColor = Colors.blue;
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color dividerColor = Colors.grey;
  static const Color iconColor = Colors.black;
  static const Color hintColor = Colors.grey;
  static const Color errorColor = Colors.red;
  static const Color onErrorColor = Colors.white;
}

class AppTheme {
  // Tema claro
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.appBarTextColor,
      secondary: AppColors.buttonColor,
      onSecondary: AppColors.textColor,
      surface: AppColors.scaffoldBackgroundColor,
      onSurface: AppColors.textColor,
      error: AppColors.errorColor,
      onError: AppColors.onErrorColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      titleTextStyle: TextStyle(color: AppColors.appBarTextColor, fontSize: 20),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor),
      displayMedium: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor),
      displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor),
      headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor),
      titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor),
      titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: AppColors.textColor),
      labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor),
      labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textColor),
      labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: AppColors.textColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    cardColor: AppColors.cardColor,
    dividerColor: AppColors.dividerColor,
    iconTheme: const IconThemeData(
      color: AppColors.iconColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      hintStyle: TextStyle(color: AppColors.hintColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
    ),
    // Otras personalizaciones
  );
}
