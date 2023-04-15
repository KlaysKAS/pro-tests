import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/test_icon.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';
import 'package:pro_tests/ui/widgets/tile_dismiss_background.dart';

import 'detail_button.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: Dismissible(
        key: ValueKey(test.id),
        direction: DismissDirection.endToStart,
        background: const TileDismissBackground(),
        onUpdate: (details) {
          print(details.progress);
          if (details.progress < 0.01) {
            isDismissing = false;
            setState(() {});
          } else {
            isDismissing = true;
            setState(() {});
          }
        },
        dismissThresholds: const {DismissDirection.endToStart: 0.3},
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            TileContainer(
              borderColor: isDismissing ? theme.colorScheme.secondary : null,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 60, width: 60, child: TestIcon()),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(test.title),
                        const SizedBox(height: 8),
                        Text('${test.questions.length} вопросов'),
                        const SizedBox(height: 8),
                        Text('Прошло ${test.partisipants} человек'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(Const.paddingBetweenSmall),
              child: DetailButton(),
            ),
          ],
        ),
      ),
    );
  }
}
