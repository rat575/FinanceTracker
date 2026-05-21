import 'package:flutter/material.dart';
import 'package:mobile/core/theme/app_color.dart';
import 'package:mobile/core/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    primaryColor: AppColor.primaryColor,

    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
    textTheme: AppTextTheme.lightTextTheme,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      foregroundColor: AppColor.textPrimary,
    ),

    cardTheme: CardThemeData(
      color: AppColor.glass,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.backgroundColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
