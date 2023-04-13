import 'package:flutter/material.dart';

import '../const.dart';

class ElevatedButtonThemes {
  static final main = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Const.tertiaryColor,
      backgroundColor: Const.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Const.borderRadiusStandart),
      ),
    ),
  );

  static final dark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Const.backgroundColor,
      backgroundColor: Const.darkPrimaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Const.borderRadiusStandart),
      ),
    ),
  );
}
