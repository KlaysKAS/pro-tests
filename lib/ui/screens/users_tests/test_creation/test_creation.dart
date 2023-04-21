import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';

part 'widget/add_test_icon_widget.dart';

class TestCreationScreen extends ConsumerStatefulWidget {
  const TestCreationScreen({super.key});

  @override
  ConsumerState<TestCreationScreen> createState() => _TestCreationScreenState();
}

class _TestCreationScreenState extends ConsumerState<TestCreationScreen> {
  late final TextEditingController testTitleController;
  late final TextEditingController testDescriptionController;

  @override
  void initState() {
    testTitleController = TextEditingController();
    testDescriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    testTitleController.dispose();
    testDescriptionController.dispose();
    super.dispose();
  }

  bool _isAwait = false;

  @override
  Widget build(context) {
    final notifier =
        ref.read(serviceLocator.testCreationStateNotifier.notifier);
    final state = ref.watch(serviceLocator.testCreationStateNotifier);
    final text = AppLocalizations.of(context)!;
    final id = state.test.id;
    if (id != -1) {
      WidgetsFlutterBinding.ensureInitialized()
          .addPostFrameCallback((timeStamp) {
        context.goNamed(AppRoutes.editTest.name, params: {'testId': '$id'});
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text.homeCreateTestsMainTitle,
          style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            _AddTestIconWidget(),
            const Spacer(),
            MainFormInput(
              controller: testTitleController,
              decoration: InputDecoration(
                  label: Text(text.createTestStartFormTestTitle)),
            ),
            const SizedBox(height: Const.paddingBetweenLarge),
            MainFormInput(
              controller: testDescriptionController,
              decoration: InputDecoration(
                  label: Text(text.createTestStartFormTestDescribe)),
              minLines: 4,
              maxLines: 5,
            ),
            const Spacer(),
            MainButton(
              btnText: text.createTestStartCreateBtn,
              onPressed: !_isAwait
                  ? () async {
                      _isAwait = true;
                      setState(() {});
                      final title = testTitleController.text;
                      if (title.isNotEmpty) {
                        final result = await notifier.createTest(
                            testTitleController.text,
                            testDescriptionController.text);
                        _notifyAboutError(result);
                      }
                      _isAwait = false;
                      setState(() {});
                    }
                  : null,
            ),
            const SizedBox(height: Const.paddingBetweenLarge)
          ],
        ),
      ),
    );
  }

  void _notifyAboutError(String? error) {
    if (error == 'something') {
      Fluttertoast.showToast(
          msg: AppLocalizations.of(context)?.somethingWentWrong ?? '');
    }
    if (error == 'internet') {
      Fluttertoast.showToast(
          msg: AppLocalizations.of(context)?.badConnection ?? '');
    }
  }
}
