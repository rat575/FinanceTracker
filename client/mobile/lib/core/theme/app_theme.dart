import 'package:flutter/material.dart';
import 'package:mobile/core/theme/app_color.dart';
import 'package:mobile/core/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    primaryColor: AppColor.primaryColor,

    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
    textTheme: AppTextTheme.lightTextTheme,

    cardTheme: CardThemeData(
      color: AppColor.glass,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey;
          }
          if (states.contains(WidgetState.pressed)) {
            return AppColor.pressedButtonColor;
          }
          if (states.contains(WidgetState.hovered)) {
            return AppColor.pressedButtonColor.withValues(alpha: 0.5);
          }
          return AppColor.teritoryColor;
        }),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),

        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
