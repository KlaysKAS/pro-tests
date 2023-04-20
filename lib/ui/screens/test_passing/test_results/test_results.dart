import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/test_scaffold.dart';
import 'package:pro_tests/domain/providers/test_results.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TestResultsScreen extends ConsumerWidget {
  const TestResultsScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.read(serviceLocator.testResultsStateNotifier.notifier);
    final state = ref.watch(serviceLocator.testResultsStateNotifier);
    return state.when(
      loading: (info) => TestScaffold(info: info, onBack: () => _onBackPressed(notifier)),
      readyShow: (twr) => TestScaffold(info: twr.test, answers: twr.answers, onBack: () => _onBackPressed(notifier)),
      error: (msg, info) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            msg ?? '',
            style: const TextStyle(fontSize: Const.paddingBetweenStandart),
          ),
          ElevatedButton(
            onPressed: () => notifier.chooseTest(info),
            child: Text(AppLocalizations.of(context)!.buttonRetry),
          ),
        ],
      ),
      noTest: () => Container(),
    );
  }

  void _onBackPressed(TestResultStateNotifier notifier) {
    AppRouter.router.pop();
    notifier.clearChoose();
  }
}
