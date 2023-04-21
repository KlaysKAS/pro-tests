import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_lists/test_lists.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/test_passing/widgets/test_result_widget.dart';
import 'package:pro_tests/ui/states/test_list_state/test_list_stete.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/modal_qr_link.dart';
import 'package:pro_tests/ui/widgets/test_code_dialog.dart';

class PassedTestScreen extends ConsumerStatefulWidget {
  const PassedTestScreen({super.key});
  @override
  ConsumerState<PassedTestScreen> createState() => _PassedTestScreenState();
}

class _PassedTestScreenState extends ConsumerState<PassedTestScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => ref.read(serviceLocator.testListStateNotifier.notifier).getMyTests());
  }

  @override
  Widget build(context) {
    final text = AppLocalizations.of(context)!;
    Future<void> showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const TestCodeDialog();
        },
      );
    }

    void handleQrOrLink(key) {
      context.pop();
      key == 'qr' ? context.goNamed(AppRoutes.attemptTest.name) : showMyDialog();
    }

    final state = TestListState.readyShow(TestLists(my: [
      TestInfo(7, 'title', 'description', 'author'),
      TestInfo(14, 'title', 'description', 'author'),
      TestInfo(15, 'title', 'description', 'author'),
    ], myOwn: []));

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
              child: state.when(
                loading: (tests) => const Placeholder(),
                readyShow: (tests) => _Content(
                  tests: tests.my,
                ),
                error: (tests, message) => Center(child: Text(message ?? '')),
              ),
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
                      return ModalBottomContent(
                        showMyDialog: showMyDialog,
                        handleQrOrLink: handleQrOrLink,
                      );
                    },
                  );
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
  final List<TestInfo> tests;

  const _Content({
    required this.tests,
  });

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;

    if (tests.isNotEmpty) {
      return ListView.separated(
        itemBuilder: (context, index) => ProviderScope(
          parent: ProviderContainer(),
          child: TestResultWidget(
            test: tests[index],
            onDetailPressed: (test) => context.goNamed(
              AppRoutes.testResults.name,
              params: {'testId': '${tests[index]}'},
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: Const.paddingBetweenStandart,
        ),
        itemCount: tests.length,
      );
    } else {
      return Center(
        child: Text(text.homeNoTests),
      );
    }
  }
}
