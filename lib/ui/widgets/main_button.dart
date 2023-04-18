import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final void Function()? onPressed;
  const MainButton({Key? key, required this.btnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Text(btnText,
                    style: const TextStyle(fontSize: Const.fontSizeButton)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
