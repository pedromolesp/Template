import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.blue;
  static const Color black = Colors.black;
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

class AppDarkColors {
  static const Color black = Colors.black;

  static const Color primaryColor = Colors.blue;
  static const Color textColor = Colors.white;
  static const Color appBarTextColor = Colors.white;
  static const Color buttonColor = Colors.blue;
  static const Color scaffoldBackgroundColor = Colors.black;
  static Color cardColor = Colors.grey[800]!;
  static const Color dividerColor = Colors.grey;
  static const Color iconColor = Colors.white;
  static const Color hintColor = Colors.grey;
  static const Color errorColor = Colors.red;
  static const Color onErrorColor = Colors.black;
}

TextTheme _buildTextTheme(Color textColor) {
  return TextTheme(
    displayLarge:
        TextStyle(fontSize: 57, fontWeight: FontWeight.bold, color: textColor),
    displayMedium:
        TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: textColor),
    displaySmall: TextStyle(
        fontSize: 36, fontWeight: FontWeight.normal, color: textColor),
    headlineLarge:
        TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textColor),
    headlineMedium: TextStyle(
        fontSize: 28, fontWeight: FontWeight.normal, color: textColor),
    headlineSmall: TextStyle(
        fontSize: 24, fontWeight: FontWeight.normal, color: textColor),
    titleLarge:
        TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
    titleMedium:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
    titleSmall:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
    bodyLarge: TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: textColor),
    bodyMedium: TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: textColor),
    bodySmall: TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: textColor),
    labelLarge:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
    labelMedium:
        TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: textColor),
    labelSmall:
        TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: textColor),
  );
}

class AppTheme {
  // Tema claro
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
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
    textTheme: _buildTextTheme(AppColors.textColor),
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
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primaryColor),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(AppColors.primaryColor),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(AppColors.primaryColor),
      trackColor: WidgetStateProperty.all(
          AppColors.primaryColor.withValues(alpha: 0.5)),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.primaryColor,
      inactiveTrackColor: AppColors.primaryColor.withValues(alpha: 0.5),
      thumbColor: AppColors.primaryColor,
    ),
    tabBarTheme: const TabBarThemeData(
      labelColor: AppColors.primaryColor,
      unselectedLabelColor: AppColors.hintColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.hintColor,
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      titleTextStyle: TextStyle(color: AppColors.textColor, fontSize: 20),
      contentTextStyle: TextStyle(color: AppColors.textColor, fontSize: 16),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      textStyle: const TextStyle(color: AppColors.appBarTextColor),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.primaryColor.withOpacity(0.1),
      labelStyle: const TextStyle(color: AppColors.textColor),
      selectedColor: AppColors.primaryColor,
      secondarySelectedColor: AppColors.primaryColor,
      padding: const EdgeInsets.all(8),
    ),
    popupMenuTheme: const PopupMenuThemeData(
      color: AppColors.scaffoldBackgroundColor,
      textStyle: TextStyle(color: AppColors.textColor),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.scaffoldBackgroundColor,
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      collapsedBackgroundColor: AppColors.scaffoldBackgroundColor,
      textColor: AppColors.textColor,
      iconColor: AppColors.iconColor,
    ),
  );

  // Tema oscuro
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppDarkColors.primaryColor,
      brightness: Brightness.dark,
      primary: AppDarkColors.primaryColor,
      onPrimary: AppDarkColors.appBarTextColor,
      secondary: AppDarkColors.buttonColor,
      onSecondary: AppDarkColors.textColor,
      surface: AppDarkColors.scaffoldBackgroundColor,
      onSurface: AppDarkColors.textColor,
      error: AppDarkColors.errorColor,
      onError: AppDarkColors.onErrorColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppDarkColors.primaryColor,
      titleTextStyle:
          TextStyle(color: AppDarkColors.appBarTextColor, fontSize: 20),
    ),
    textTheme: _buildTextTheme(AppDarkColors.textColor),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppDarkColors.buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    cardColor: AppDarkColors.cardColor,
    dividerColor: AppDarkColors.dividerColor,
    iconTheme: const IconThemeData(
      color: AppDarkColors.iconColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppDarkColors.primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppDarkColors.primaryColor),
      ),
      hintStyle: TextStyle(color: AppDarkColors.hintColor),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppDarkColors.primaryColor,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(AppDarkColors.primaryColor),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(AppDarkColors.primaryColor),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(AppDarkColors.primaryColor),
      trackColor:
          WidgetStateProperty.all(AppDarkColors.primaryColor.withOpacity(0.5)),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppDarkColors.primaryColor,
      inactiveTrackColor: AppDarkColors.primaryColor.withOpacity(0.5),
      thumbColor: AppDarkColors.primaryColor,
    ),
    tabBarTheme: const TabBarThemeData(
      labelColor: AppDarkColors.primaryColor,
      unselectedLabelColor: AppDarkColors.hintColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 11, 5, 5),
      selectedItemColor: AppDarkColors.primaryColor,
      unselectedItemColor: AppDarkColors.hintColor,
    ),
    dialogTheme: const DialogThemeData(
      backgroundColor: AppDarkColors.scaffoldBackgroundColor,
      titleTextStyle: TextStyle(color: AppDarkColors.textColor, fontSize: 20),
      contentTextStyle: TextStyle(color: AppDarkColors.textColor, fontSize: 16),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppDarkColors.primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      textStyle: const TextStyle(color: AppDarkColors.appBarTextColor),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppDarkColors.primaryColor.withOpacity(0.1),
      labelStyle: const TextStyle(color: AppDarkColors.textColor),
      selectedColor: AppDarkColors.primaryColor,
      secondarySelectedColor: AppDarkColors.primaryColor,
      padding: const EdgeInsets.all(8),
    ),
    popupMenuTheme: const PopupMenuThemeData(
      color: AppDarkColors.scaffoldBackgroundColor,
      textStyle: TextStyle(color: AppDarkColors.textColor),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppDarkColors.scaffoldBackgroundColor,
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      backgroundColor: AppDarkColors.scaffoldBackgroundColor,
      collapsedBackgroundColor: AppDarkColors.scaffoldBackgroundColor,
      textColor: AppDarkColors.textColor,
      iconColor: AppDarkColors.iconColor,
    ),
  );
}
