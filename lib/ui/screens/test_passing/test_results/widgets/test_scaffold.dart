import 'package:flutter/material.dart';
import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/question_result.dart';
import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/skeleton_result.dart';
import 'package:pro_tests/ui/theme/const.dart';

class TestScaffold extends StatelessWidget {
  final TestInfo info;
  final List<Answer>? answers;
  final void Function() onBack;

  const TestScaffold({super.key, required this.info, this.answers, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: onBack,
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(info.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          Const.paddingBetweenLarge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              info.description,
              style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
            ),
            const SizedBox(height: Const.paddingBetweenSmall),
            Text(info.author),
            const SizedBox(
              height: Const.paddingBetweenLarge,
            ),
            Expanded(
              child: answers == null ? const SkeletonAnswers() : QuestionResults(answers: answers!),
            ),
          ],
        ),
      ),
    );
  }
}
