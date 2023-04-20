part of '../test_attempt.dart';

class _QuestionCard extends StatelessWidget {
  final String question;

  const _QuestionCard({required this.question});

  @override
  Widget build(context) {
    final text = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(Const.paddingBetweenLarge),
      child: TileContainer(
        child: Row(
          children: [
            Expanded(
              child: Text(
                text.passingTestQuestion(question),
                style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
