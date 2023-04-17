part of 'question_answer_tile.dart';

class _Content extends StatelessWidget {
  final Question question;
  final String answer;
  final Color answerColor;

  const _Content({
    required this.question,
    required this.answer,
    required this.answerColor,
  });

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text.passedTestDetailsQuestion(question.question),
        ),
        const SizedBox(height: Const.paddingBetweenStandart),
        Text(
          text.passedTestDetailsAnswer(answer),
          style: TextStyle(
            color: answerColor,
          ),
        ),
      ],
    );
  }
}
