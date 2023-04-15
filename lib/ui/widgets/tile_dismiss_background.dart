import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TileDismissBackground extends StatelessWidget {
  const TileDismissBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: const BorderRadius.all(Const.borderRadiusStandart),
      ),
      child: const Align(
        alignment: Alignment.centerRight,
        child: Icon(Icons.delete),
      ),
    );
  }
}
