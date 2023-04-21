import 'package:flutter/material.dart';

//Почему не freezed?
class SettingsState {
  ThemeMode theme;
  Locale locale;

  SettingsState(this.theme, this.locale);
}
