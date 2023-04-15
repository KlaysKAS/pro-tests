import 'package:flutter/material.dart';

import '../../../theme/const.dart';
import '../../../widgets/detail_button.dart';
import '../../../widgets/test_icon.dart';
import '../../../widgets/tile_container.dart';

part 'tile_dismiss_background.dart';
part 'tile_content.dart';

class UserTestWidget extends StatefulWidget {
  final TestInfo test;

  const UserTestWidget({
    super.key,
    this.test = const TestInfo(),
  });

  @override
  State<UserTestWidget> createState() => _UserTestWidgetState();
}

class TestInfo {
  const TestInfo();

  final id = 1;
  final title = 'bebra';
  final questions = const [1, 2, 3];
  final partisipants = 400;
}

class _UserTestWidgetState extends State<UserTestWidget> {
  late final test = widget.test;
  var isDismissing = false;

  @override
  Widget build(context) {
    final theme = Theme.of(context);
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: Dismissible(
        key: ValueKey(test.id),
        direction: DismissDirection.endToStart,
        background: const _TileDismissBackground(),
        onUpdate: (details) {
          if (details.progress < 0.01) {
            isDismissing = false;
            setState(() {});
          } else {
            isDismissing = true;
            setState(() {});
          }
        },
        dismissThresholds: const {DismissDirection.endToStart: 0.3},
        child: _TileContent(
          isDismissing: isDismissing,
          test: test,
        ),
      ),
    );
  }
}
