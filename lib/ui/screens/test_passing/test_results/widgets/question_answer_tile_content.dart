part of 'question_answer_tile.dart';

class _Content extends StatelessWidget {
  final Answer question;
  final Color answerColor;

  const _Content({
    required this.question,
    required this.answerColor,
  });

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text.passedTestDetailsQuestion(question.title),
        ),
        const SizedBox(height: Const.paddingBetweenStandart),
        Text(
          text.passedTestDetailsAnswer(question.answer),
          style: TextStyle(
            color: answerColor,
          ),
        ),
      ],
    );
  }
}
