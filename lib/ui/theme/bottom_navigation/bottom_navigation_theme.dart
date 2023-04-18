import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class BottomNavigationTheme {
  static const main = BottomNavigationBarThemeData(
    backgroundColor: Const.backgroundColor,
    selectedItemColor: Const.tertiaryColor,
    selectedIconTheme: IconThemeData(size: 30),
    selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    unselectedItemColor: Const.inactiveColor,
    unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    unselectedIconTheme: IconThemeData(size: 24),
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

  static const dark = BottomNavigationBarThemeData(
    backgroundColor: Const.darkBackgroundColor,
    selectedItemColor: Const.darkTertiaryColor,
    selectedIconTheme: IconThemeData(size: 30),
    selectedLabelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    unselectedItemColor: Const.darkInactiveColor,
    unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    unselectedIconTheme: IconThemeData(size: 24),
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );
}
