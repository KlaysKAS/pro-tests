import 'package:flutter/material.dart';

import '../const.dart';

class ElevatedButtonThemes {
  static final main = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Const.tertiaryColor,
      backgroundColor: Const.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
