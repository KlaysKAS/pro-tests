import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';
import 'package:pro_tests/ui/widgets/swipable_card.dart';

import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/detail_button.dart';
import 'package:pro_tests/ui/widgets/test_icon.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'tile_dismiss_background.dart';
part 'tile_content.dart';

class UserTestWidget extends StatefulWidget {
  final TestInfo test;
  final VoidCallback? onDismiss;
  final void Function(int id) onDetalePressed;

  const UserTestWidget({
    super.key,
    required this.test,
    required this.onDetalePressed,
    this.onDismiss,
  });

  @override
  State<UserTestWidget> createState() => _UserTestWidgetState();
}

class _UserTestWidgetState extends State<UserTestWidget> {
  late final test = widget.test;
  var isDismissing = false;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: SwipableCard(
        onBackGroundTap: widget.onDismiss,
        onDrag: (ratio) {
          setState(() {
            isDismissing = ratio >= 0.001;
          });
        },
        background: const _TileDismissBackground(),
        child: _TileContent(
          isDismissing: isDismissing,
          test: test,
          onDetalePressed: widget.onDetalePressed,
        ),
      ),
    );
  }
}
