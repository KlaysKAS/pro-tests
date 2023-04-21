import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_with_results/test_with_results.dart';
import 'package:pro_tests/ext.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/detail_button.dart';
import 'package:pro_tests/ui/widgets/test_icon.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'tile_content.dart';

class TestResultWidget extends ConsumerStatefulWidget {
  final TestInfo test;
  final void Function(TestWithResults? test) onDetailPressed;

  const TestResultWidget({
    super.key,
    required this.test,
    required this.onDetailPressed,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestResultWidgetState();
}

class _TestResultWidgetState extends ConsumerState<TestResultWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () => ref.read(serviceLocator.testResultsStateNotifier.notifier).chooseTest(widget.test),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(serviceLocator.testResultsStateNotifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: state.when(
        loading: (value) => _Tile(
          onDetailPressed: widget.onDetailPressed,
          test: value,
        ),
        readyShow: (value) => _Tile(
          onDetailPressed: widget.onDetailPressed,
          test: value.test,
          results: value,
        ),
        error: (message, info) => Center(
          child: message!.toText(),
        ),
        noTest: () => const Placeholder(),
        invalidId: (message) => const Placeholder(),
      ),
    );
  }
}
