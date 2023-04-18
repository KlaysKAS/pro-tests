import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pro_tests/ui/widgets/swipable_card.dart';

import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/detail_button.dart';
import 'package:pro_tests/ui/widgets/test_icon.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: SwipableCard(
        onDrag: (ratio) {
          setState(() {
            isDismissing = ratio >= 0.001;
          });
        },
        key: ValueKey(test.id),
        background: const _TileDismissBackground(),
        child: _TileContent(
          isDismissing: isDismissing,
          test: test,
        ),
      ),
    );
  }
}
