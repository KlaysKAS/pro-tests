import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/extentions/padding_extention.dart';

import 'ElevatedButton/elevated_button.dart';
import 'TextField/text_field.dart';
import 'const.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    hintColor: Const.inactiveColor,
    colorScheme: const ColorScheme(
      background: Const.backgroundColor,
      onBackground: Const.tertiaryColor,
      error: Const.formErrorColor,
      onError: Const.backgroundColor,
      primary: Const.primaryColor,
      onPrimary: Const.tertiaryColor,
      secondary: Const.secondaryColor,
      onSecondary: Const.backgroundColor,
      surface: Const.backgroundColor,
      onSurface: Const.tertiaryColor,
      tertiary: Const.tertiaryColor,
      onTertiary: Const.backgroundColor,
      brightness: Brightness.light,
    ),
    inputDecorationTheme: TextFieldThemes.main,
    elevatedButtonTheme: ElevatedButtonThemes.main,
    extensions: const [PaddingThemeExtention()],
  );

  static final darkTheme = ThemeData(
    hintColor: Const.inactiveColor,
    colorScheme: const ColorScheme(
      background: Const.darkBackgroundColor,
      onBackground: Const.darkTertiaryColor,
      error: Const.darkFormErrorColor,
      onError: Const.backgroundColor,
      primary: Const.darkPrimaryColor,
      onPrimary: Const.tertiaryColor,
      secondary: Const.darkSecondaryColor,
      onSecondary: Const.darkBackgroundColor,
      surface: Const.darkBackgroundColor,
      onSurface: Const.darkTertiaryColor,
      tertiary: Const.darkTertiaryColor,
      onTertiary: Const.darkBackgroundColor,
      brightness: Brightness.dark,
    ),
    inputDecorationTheme: TextFieldThemes.dark,
    elevatedButtonTheme: ElevatedButtonThemes.dark,
    extensions: const [PaddingThemeExtention()],
  );
}
