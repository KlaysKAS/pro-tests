import 'package:flutter/material.dart';
import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/question_answer_tile.dart';
import 'package:pro_tests/ui/theme/const.dart';

class QuestionResults extends StatelessWidget {
  final List<Answer> answers;

  const QuestionResults({super.key, required this.answers});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: answers.length,
      itemBuilder: (BuildContext context, int index) {
        return QuestionAnswerTile(
          ans: answers[index],
        );
      },
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: Const.paddingBetweenSmall,
      ),
    );
  }
}
