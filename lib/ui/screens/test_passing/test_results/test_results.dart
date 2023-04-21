import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/domain/models/test_with_results/test_with_results.dart';
import 'package:pro_tests/ui/router/routes.dart';

import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/test_scaffold.dart';
import 'package:pro_tests/domain/providers/test_results.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TestResultsScreen extends ConsumerStatefulWidget {
  final String id;
  final Object? test;

  const TestResultsScreen({
    super.key,
    required this.id,
    this.test,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestResultsScreenState();
}

class _TestResultsScreenState extends ConsumerState<TestResultsScreen> {
  @override
  void initState() {
    super.initState();
    final notifier = ref.read(serviceLocator.testResultsStateNotifier.notifier);
    final id = int.tryParse(widget.id);
    late final TestWithResults? test;
    if (widget.test is TestWithResults) {
      test = widget.test as TestWithResults;
    }
    if (test != null && test.test.id != id) {
      context.goNamed(
        AppRoutes.testResults.name,
        params: {'testId': 'test.test.id'},
        extra: test,
      );
    }
    if (test != null) {
      Future.delayed(Duration.zero, () => notifier.initWithTest(test!));
      return;
    }
    Future.delayed(Duration.zero, () => notifier.getTestInfo(id));
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(serviceLocator.testResultsStateNotifier.notifier);
    final state = ref.watch(serviceLocator.testResultsStateNotifier);
    final testInfo = state.whenOrNull(loading: (info) => info);
    if (testInfo != null) {
      WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
        notifier.chooseTest(testInfo);
      });
    }
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
      invalidId: (String? message) => const Placeholder(),
    );
  }

  void _onBackPressed(TestResultStateNotifier notifier) {
    AppRouter.router.pop();
    notifier.clearChoose();
  }
}
