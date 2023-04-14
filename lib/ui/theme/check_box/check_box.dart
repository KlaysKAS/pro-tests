import 'package:flutter/material.dart';

import '../const.dart';

class CheckBoxThemes {
  static final main = CheckboxThemeData(
    checkColor: const MaterialStatePropertyAll(Const.secondaryColor),
    fillColor: MaterialStateProperty.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Const.primaryColor;
      }
      return Const.inactiveColor;
    }),
  );

  static final dark = CheckboxThemeData(
    checkColor: const MaterialStatePropertyAll(Const.darkSecondaryColor),
    fillColor: MaterialStateProperty.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Const.darkPrimaryColor;
      }
      return Const.inactiveColor;
    }),
  );
}
