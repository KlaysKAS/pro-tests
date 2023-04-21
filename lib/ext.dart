import 'package:flutter/material.dart';

extension ToTextWidget on String {
  ///Для текстов часто приходится определять стили, экстеншн получился не расширяемый.
  Widget toText() => Text(this);
}
