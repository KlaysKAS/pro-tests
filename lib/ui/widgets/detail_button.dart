import 'package:flutter/material.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({super.key});

  @override
  Widget build(context) {
    final theme = Theme.of(context);
    return Icon(
      Icons.info,
      color: theme.colorScheme.primary,
    );
  }
}
