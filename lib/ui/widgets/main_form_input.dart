import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

typedef Validator = String? Function(String?);

class MainFormInput extends StatelessWidget {
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final bool obscureText;
  final Validator? validator;

  const MainFormInput({
    Key? key,
    this.obscureText = false,
    this.controller,
    this.decoration = const InputDecoration(),
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        controller: controller,
        decoration: decoration,
      ),
    );
  }
}
