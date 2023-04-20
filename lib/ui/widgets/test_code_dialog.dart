import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/utils/validators.dart';

class TestCodeDialog extends StatefulWidget {
  const TestCodeDialog({
    super.key,
  });

  @override
  State<TestCodeDialog> createState() => _TestCodeDialogState();
}

class _TestCodeDialogState extends State<TestCodeDialog> {
  late final TextEditingController _testCodeController;

  @override
  void initState() {
    _testCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _testCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return AlertDialog(
      title: _TitleTestCodeDialog(),
      content: _ContentTestCodeDialog(_testCodeController),
    );
  }
}

class _TitleTestCodeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(top: Const.paddingBetweenStandart),
      child: Text(
        locale.homeLinkDialogCodeTestTitle,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
      ),
    );
  }
}

class _ContentTestCodeDialog extends StatelessWidget {
  final TextEditingController _testCodeController;
  final formKey = GlobalKey<FormState>();

  _ContentTestCodeDialog(this._testCodeController);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenStandart),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenStandart),
                child: TextFormField(
                  validator: (value) => Validators.testCodeValidator(value, locale),
                  controller: _testCodeController,
                ),
              ),
            ),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenStandart),
                child: Text(
                  locale.homeLinkDialogBtn,
                  style: const TextStyle(fontSize: Const.fontSizeButton),
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.pop();
                  context.goNamed(
                    AppRoutes.attemptTest.name,
                    params: <String, String>{'testId': _testCodeController.text},
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
