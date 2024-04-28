import "package:flutter/material.dart";
import "package:flutter_chat_ui/flutter_chat_ui.dart";

import "widgets/theme_widgets_exporter.dart";

class AppThemeData {
  final TextTheme textTheme;

  const AppThemeData(this.textTheme);

  ThemeData light() {
    return theme(ThemeColorsWithContrast.lightScheme().toColorScheme());
  }

  ThemeData dark() {
    return theme(ThemeColorsWithContrast.darkScheme().toColorScheme());
  }

  // ThemeData lightMediumContrast() {
  //   return theme(ThemeColorsWithContrast.lightMediumContrastScheme().toColorScheme());
  // }
  // ThemeData lightHighContrast() {
  //   return theme(ThemeColorsWithContrast.lightHighContrastScheme().toColorScheme());
  // }
  // ThemeData darkMediumContrast() {
  //   return theme(ThemeColorsWithContrast.darkMediumContrastScheme().toColorScheme());
  // }
  // ThemeData darkHighContrast() {
  //   return theme(ThemeColorsWithContrast.darkHighContrastScheme().toColorScheme());
  // }

  List<ExtendedColor> get extendedColors => [];

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: TextTheme(
          // displayLarge > displayMedium
// > displaySmall > headlineMedium
// > headlineSmall > titleLarge
// > titleMedium > titleSmall
// > bodyLarge > bodyMedium
// > bodySmall > labelLarge >labelSmall

          titleLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),

          titleMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),
          titleSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),
          bodyLarge: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),
          bodyMedium: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),
          bodySmall: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w500,
              fontFamily: "Satoshi",
              color: colorScheme.onPrimaryContainer),
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
        primarySwatch: MaterialColor(
          AppColors.primaryColor.value,
          AppColors.colorSwatch,
        ),
        iconTheme: IconThemeData(
            color: colorScheme.onPrimaryContainer, size: 32, weight: 4),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: colorScheme.surfaceTint,
            size: 32,
            weight: 4,
          ),
          unselectedIconTheme: IconThemeData(
            color: colorScheme.onPrimaryContainer,
            size: 32,
            weight: 4,
          ),
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
          border: OutlineInputBorder(
            borderSide: BorderSide(color: colorScheme.onPrimaryContainer),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide:
                BorderSide(color: colorScheme.onPrimaryContainer, width: 2),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: AppColors.primaryColor,
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 18, letterSpacing: .5),
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 18, color: Colors.black),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: -5,
          toolbarHeight: 55,
        ),
      );

  static DefaultChatTheme get defaultChatTheme {
    return const DefaultChatTheme(
      primaryColor: AppColors.primaryColor,
      backgroundColor: Colors.transparent,
      inputBackgroundColor: Colors.white,
      inputTextColor: Colors.black,
      inputTextDecoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      inputPadding: EdgeInsets.all(4),
      inputBorderRadius: BorderRadius.all(Radius.circular(0)),
      inputMargin: EdgeInsets.only(left: 18, right: 18, bottom: 12),
    );
  }
}
