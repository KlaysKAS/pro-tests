import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class MainFormInput extends StatelessWidget {
  final TextEditingController? controller;
  String? initialValue;
  InputDecoration? decoration = const InputDecoration();
  TextStyle? style;
  TextAlign textAlign;
  bool autofocus;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  TapRegionCallback? onTapOutside;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onFieldSubmitted;
  bool obscureText;

  MainFormInput(
      {Key? key,
      this.initialValue,
      this.obscureText = false,
      this.controller,
      this.decoration,
      this.style,
      this.textAlign = TextAlign.start,
      this.autofocus = false,
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onTap,
      this.onTapOutside})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              obscureText: obscureText,
              initialValue: initialValue,
              controller: controller,
              decoration: decoration,
              style: style,
              onChanged: onChanged,
              onTap: onTap,
              onTapOutside: onTapOutside,
              onFieldSubmitted: onFieldSubmitted,
              textAlign: textAlign,
              autofocus: autofocus,
            ),
          ),
        ],
      ),
    );
  }
}
