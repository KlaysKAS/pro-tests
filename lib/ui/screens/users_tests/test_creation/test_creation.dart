import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  @override
  Widget build(context) {
    // final bisness = ref.read(testCreationProvider);
    final text = AppLocalizations.of(context)!;
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
              decoration: InputDecoration(label: Text(text.createTestStartFormTestTitle)),
            ),
            const SizedBox(height: Const.paddingBetweenLarge),
            MainFormInput(
              controller: testDescriptionController,
              decoration: InputDecoration(label: Text(text.createTestStartFormTestDescribe)),
              minLines: 4,
              maxLines: 5,
            ),
            const Spacer(),
            MainButton(
              btnText: text.createTestStartCreateBtn,
              onPressed: () {
                final title = testTitleController.text;
                if (title.isNotEmpty) {
                  // final id = bisness.createTest(testTitleController.text);
                  // context.goNamed(AppRoutes.editTest.name, params: {'testId': '$id'});
                }
              },
            ),
            const SizedBox(height: Const.paddingBetweenLarge)
          ],
        ),
      ),
    );
  }
}
