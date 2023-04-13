import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TextFieldThemes {
  static const main = InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.formColor, width: 2)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.formColor, width: 2)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.formColor, width: 2)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.formErrorColor, width: 2)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.formErrorColor, width: 2)),
      floatingLabelStyle: TextStyle(
        color: Const.formColor,
        fontSize: Const.fontSizeBody,
      ));

  static const dark = InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.darkFormColor, width: 2)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.darkFormColor, width: 2)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.darkFormColor, width: 2)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.darkFormErrorColor, width: 2)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Const.borderRadiusSmall),
          borderSide: BorderSide(color: Const.darkFormErrorColor, width: 2)),
      floatingLabelStyle: TextStyle(
        color: Const.darkFormColor,
        fontSize: Const.fontSizeBody,
      ));
}
