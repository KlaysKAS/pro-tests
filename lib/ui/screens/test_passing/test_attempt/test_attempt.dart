import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
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
    this.testId,
  });

  final String? testId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TestAttemptScreenState();
}

class _TestAttemptScreenState extends ConsumerState<TestAttemptScreen> {
  late final TestInfo test;
  List<int> chosenIndexes = [];
  String chosenAnswer = '';

  Question question1 = const Question.singleAnswer(
    id: 0,
    question: 'question',
    answers: ['a', 'b', 'c', 'd'],
    answer: 'a',
  );

  @override
  void initState() {
    if (widget.testId != null) {
      final id = int.parse(widget.testId!);
      test = TestInfo(id, 'adoba', 'description', '');
      // test = ref.read(serviceLocator.testPassing).getTest(widget.testId);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Question question = question1;
    // final Question question = ref.watch(serviceLocator.testPassing);
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(test.title),
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
                        chosenAnswer = answer;
                      },
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Const.paddingBetweenLarge,
                      ),
                      child: _ChoiceAnswers(
                        question: question,
                        onChanged: (indexes) {
                          chosenIndexes = indexes;
                        },
                      ),
                    ),
            ),
            const SizedBox(height: Const.paddingBetweenStandart),
            MainButton(
              btnText: text.passingTestNextBtn,
              onPressed: _nextQuestion,
            ),
            const SizedBox(height: Const.paddingBetweenLarge),
          ],
        ),
      ),
    );
  }

  void _nextQuestion() {
    // ref.read(serviceLocator.testPassing);
  }
}
