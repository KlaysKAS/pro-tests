import 'package:flutter/material.dart';

import '../theme/const.dart';

class TileContainer extends StatefulWidget {
  final Widget? child;
  final Color? borderColor;

  const TileContainer({
    super.key,
    this.borderColor,
    this.child,
  });

  @override
  State<TileContainer> createState() => _TileContainerState();
}

class _TileContainerState extends State<TileContainer> {
  Color? borderColor;

  @override
  void initState() {
    super.initState();
    borderColor = widget.borderColor;
  }

  @override
  void didUpdateWidget(covariant TileContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.borderColor != oldWidget.borderColor) {
      setState(() {
        borderColor = widget.borderColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedContainer(
      padding: const EdgeInsets.all(Const.paddingBetweenStandart),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Const.borderRadiusStandart),
        color: theme.colorScheme.background,
        border: Border.all(
          width: 1,
          color: borderColor ?? theme.colorScheme.primary,
        ),
      ),
      duration: Duration(milliseconds: 100),
      child: widget.child,
    );
  }
}
