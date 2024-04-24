import "package:flutter/material.dart";

import "widgets/theme_widgets_exporter.dart";


class AppThemeData {
  final TextTheme textTheme;

  const AppThemeData(this.textTheme);

  ThemeData light() {
    return theme(ThemeColorsWithContrast.lightScheme().toColorScheme());
  }

  ThemeData lightMediumContrast() {
    return theme(ThemeColorsWithContrast.lightMediumContrastScheme().toColorScheme());
  }

  ThemeData lightHighContrast() {
    return theme(ThemeColorsWithContrast.lightHighContrastScheme().toColorScheme());
  }

  ThemeData dark() {
    return theme(ThemeColorsWithContrast.darkScheme().toColorScheme());
  }

  ThemeData darkMediumContrast() {
    return theme(ThemeColorsWithContrast.darkMediumContrastScheme().toColorScheme());
  }

  ThemeData darkHighContrast() {
    return theme(ThemeColorsWithContrast.darkHighContrastScheme().toColorScheme());
  }

  List<ExtendedColor> get extendedColors => [
  ];
  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,

    primarySwatch: MaterialColor(
      AppColors.primaryColor.value,
      AppColors.colorSwatch,
    ),

    progressIndicatorTheme:
    const ProgressIndicatorThemeData(color: AppColors.primaryColor),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      hintStyle: TextStyle(
        color: Colors.grey.shade400,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primaryColor,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: AppColors.primaryColor,
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 14, letterSpacing: .5),
        foregroundColor: Colors.white,
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
    ),

    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(fontSize:18,color: Colors.black),
      foregroundColor:Colors.black,
      backgroundColor: Colors.white,
      elevation: 5,
    ),


  );
}





