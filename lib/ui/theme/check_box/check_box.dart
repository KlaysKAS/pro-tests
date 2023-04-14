import 'package:flutter/material.dart';

import '../const.dart';

class CheckBoxThemes {
  static final main = CheckboxThemeData(
    checkColor: MaterialStatePropertyAll(Const.secondaryColor),
    fillColor: MaterialStateProperty.resolveWith((state) {
      if (state.contains(MaterialState.selected)) {
        return Const.primaryColor;
      }
      return Const.inactiveColor;
    }),
  );
}
