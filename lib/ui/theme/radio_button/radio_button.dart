import 'package:flutter/material.dart';

import '../const.dart';

class RadioButtonThemes {
  static final main = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Const.primaryColor;
      }
      return Const.inactiveColor;
    }),
  );

  static final dark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Const.darkPrimaryColor;
      }
      return Const.inactiveColor;
    }),
  );
}
