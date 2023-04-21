import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/custom_radio_button.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'widgets/question_card.dart';

part 'widgets/answers_widgets.dart';

class TestAttemptScreen extends ConsumerStatefulWidget {
  const TestAttemptScreen({
    super.key,
    required this.testId,
  });

  final int testId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestAttemptScreenState();
}

class _TestAttemptScreenState extends ConsumerState<TestAttemptScreen> {
  bool _loadingTest = false;

  @override
  void initState() {
    super.initState();
    _loadingTest = true;
    ref.read(serviceLocator.testAttemptStateNotifier.notifier).beginTest(widget.testId).then((value) {
      if (mounted) {
        setState(
          () {
            _loadingTest = false;
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(serviceLocator.testAttemptStateNotifier);
    final notifier = ref.read(serviceLocator.testAttemptStateNotifier.notifier);
    final locale = AppLocalizations.of(context)!;
    if (state == null || _loadingTest) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    final text = AppLocalizations.of(context)!;
    final question = state.questions[state.chosenQuestion];
    final ans = question.map(singleAnswer: (q) => q.answers, multiAnswer: (q) => q.answers, openAnswer: (q) => []);
    return Scaffold(
      appBar: AppBar(
        title: Text(state.testInfo.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _QuestionCard(question: question.question),
            ),
            Expanded(
              child: (question is OpenAnswer)
                  ? _OpenAnswer(
                      onChanged: (answer) {
                        notifier.answer(question.question, answer);
                      },
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Const.paddingBetweenLarge,
                      ),
                      child: _ChoiceAnswers(
                        question: question,
                        onChanged: (indexes) {
                          notifier.answer(question.question, ans[indexes.first]);
                        },
                      ),
                    ),
            ),
            const SizedBox(height: Const.paddingBetweenStandart),
            if (state.chosenQuestion == state.questions.length - 1)
              MainButton(
                btnText: 'Закончить',
                onPressed: () async {
                  final message = await notifier.sendTest();
                  if (message == null) {
                    await ref.read(serviceLocator.testResultsStateNotifier.notifier).chooseTest(state.testInfo);
                    AppRouter.router.replaceNamed(
                      AppRoutes.testResults.routeName,
                      params: {'testId': state.testInfo.id.toString()},
                    );
                  } else {
                    switch (message) {
                      case 'internet':
                        Fluttertoast.showToast(msg: locale.badConnection);
                        break;
                      case 'something':
                        Fluttertoast.showToast(msg: locale.badConnection);
                        break;
                      default:
                        Fluttertoast.showToast(msg: locale.badConnection);
                    }
                  }
                },
              )
            else
              MainButton(
                btnText: text.passingTestNextBtn,
                onPressed: () => _choseQuest(state.chosenQuestion + 1),
              ),
            const SizedBox(height: Const.paddingBetweenLarge),
          ],
        ),
      ),
    );
  }

  void _choseQuest(int index) {
    ref.read(serviceLocator.testAttemptStateNotifier.notifier).chooseQuestion(index);
  }
}
