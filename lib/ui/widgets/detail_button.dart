import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';

class DetailButton extends StatelessWidget {
  final VoidCallback onTap;
  const DetailButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(context) {
    final theme = Theme.of(context);
    return IconButton(
      color: theme.colorScheme.primary,
      padding: const EdgeInsets.all(Const.paddingBetweenSmall),
      splashRadius: Const.paddingBetweenSmall,
      icon: const Icon(Icons.info),
      onPressed: onTap,
    );
  }
}
