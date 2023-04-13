import 'package:flutter/material.dart';

class TextFieldThemes {
  static const main = InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFF6750A4), width: 2)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFF6750A4), width: 2)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFF6750A4), width: 2)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFFB3261E), width: 2)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Color(0xFFB3261E), width: 2)),
      floatingLabelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: Color(0xFF6750A4),
        fontSize: 16,
      ));
}
