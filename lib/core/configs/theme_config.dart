import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_task/core/configs/colors_config.dart';

ThemeData lightThemeData() {
  return ThemeData(
    platform: TargetPlatform.android,
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: LightTheme.primaryColor,
      onPrimary: LightTheme.contrastColor,
      secondary: LightTheme.accentColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: LightTheme.surfaceColor,
      onSurface: LightTheme.contrastColor,
    ),
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    platform: TargetPlatform.android,
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: DarkTheme.primaryColor,
      onPrimary: DarkTheme.contrastColor,
      secondary: DarkTheme.accentColor,
      onSecondary: Colors.black,
      error: Colors.red.shade300,
      onError: Colors.black,
      surface: DarkTheme.surfaceColor,
      onSurface: DarkTheme.contrastColor,
    ),
  );
}
