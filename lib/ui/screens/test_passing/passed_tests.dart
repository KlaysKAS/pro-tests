import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'package:pro_tests/data/model/test_results/test_results.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/test_passing/widgets/test_result_widget.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/modal_qr_link.dart';

class PassedTestScreen extends ConsumerWidget {
  const PassedTestScreen({super.key});

  final tests = const <TestResults>[];

  @override
  Widget build(context, ref) {
    // final PassedTestState state = ref.watch(passedTestStateProvider);
    // final tests = state.tests
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Const.paddingBetweenSmall),
              child: Text(
                text.homePassedTestsMainTitle,
                style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
              ),
            ),
            Expanded(
              // Replace with commented code
              child: (true)
                  // child: (state.state == state.ready)
                  ? _Content(
                      tests: tests,
                    )
                  // ignore: dead_code
                  : const Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenSmall),
              child: MainButton(
                btnText: text.homePassButton,
                onPressed: () {
                  showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Const.borderRadiusStandart,
                          topRight: Const.borderRadiusStandart,
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return const ModalBottomContent();
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final List<TestResults> tests;

  const _Content({
    required this.tests,
  });

  @override
  Widget build(BuildContext context) {
    if (tests.isNotEmpty) {
      return ListView.separated(
          itemBuilder: (context, index) => TestResultWidget(
                result: tests[index],
                onDetailPressed: () =>
                    context.goNamed(AppRoutes.testDetails.name, params: {'testId': '${tests[index]}'}),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: Const.paddingBetweenStandart,
              ),
          itemCount: tests.length);
    } else {
      return const Center(
        child: Text('There is no test right now'),
      );
    }
  }
}
