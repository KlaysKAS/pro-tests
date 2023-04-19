import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/ui/router/routes.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TestCodeDialog extends StatefulWidget {
  const TestCodeDialog({
    super.key,
  });

  @override
  State<TestCodeDialog> createState() => _TestCodeDialogState();
}

class _TestCodeDialogState extends State<TestCodeDialog> {
  late final TextEditingController testCodeController;

  @override
  void initState() {
    testCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    testCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return AlertDialog(
      title: _TitleTestCodeDialog(),
      content: _ContentTestCodeDialog(testCodeController),
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

  const _ContentTestCodeDialog(this._testCodeController);

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenStandart),
      child: Row(
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenStandart),
            child: TextFormField(
              controller: _testCodeController,
            ),
          )),
          ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Const.paddingBetweenStandart),
              child: Text(
                locale.homeLinkDialogBtn,
                style: const TextStyle(fontSize: Const.fontSizeButton),
              ),
            ),
            onPressed: () {
              context.pop();
              context.goNamed(
                AppRoutes.addTest.name,
                queryParams: <String, String>{'testCode': _testCodeController.text},
              );
            },
          ),
        ],
      ),
    );
  }
}
