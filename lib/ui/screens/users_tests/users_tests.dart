import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/users_tests/widgets/user_test_widget.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';

//не стал комментить, кажется еще не готово)
// in this code all commented code is nessesary and
// should be uncommented as soon as DI is ready
class UsersTestsScreen extends ConsumerWidget {
  const UsersTestsScreen({super.key});

  // Remove this line
  final tests = const <TestInfo>[];

  @override
  Widget build(context, ref) {
    // final UsersTestState state = ref.watch(usersTestStateProvider);
    // final tests = state.tests
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Const.paddingBetweenSmall),
              child: Text(
                text.homeCreateTestsMainTitle,
                style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
              ),
            ),
            Expanded(
              // Replace with commented code
              child: (true)
                  // child: (state.state == state.ready)
                  ? _Content(
                      tests: tests,
                      onItemDismiss: (index) {
                        // Replace with commented code
                        tests.removeAt(index);
                        // remove test action
                        // ref.read(usersTestStateProvider).delete(tests[index].id);
                      },
                    )
                  // ignore: dead_code
                  : const Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenSmall),
              child: MainButton(
                btnText: text.createTestStartCreateBtn,
                onPressed: () {
                  context.goNamed(AppRoutes.createTest.name);
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
  final void Function(int index) onItemDismiss;

  const _Content({
    required this.tests,
    required this.onItemDismiss,
  });

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    if (tests.isNotEmpty) {
      return ListView.separated(
          itemBuilder: (context, index) => UserTestWidget(
                key: ValueKey(tests[index].id),
                test: tests[index],
                onDetalePressed: (id) => context.goNamed(AppRoutes.editTest.name, params: {'testId': '$id'}),
                onDismiss: () => onItemDismiss(index),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: Const.paddingBetweenStandart,
              ),
          itemCount: tests.length);
    } else {
      return Center(
        child: Text(text.homeNoTests),
      );
    }
  }
}
