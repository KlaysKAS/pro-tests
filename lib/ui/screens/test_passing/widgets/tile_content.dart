part of 'test_result_widget.dart';

class _Tile extends StatelessWidget {
  final TestInfo test;
  final int rightAmount;
  final Color color;

  const _Tile({
    required this.color,
    required this.test,
    required this.rightAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        TileContainer(
          borderColor: color,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 60,
                width: 60,
                child: TestIcon(),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _Content(
                  test: test,
                  rightAmount: rightAmount,
                ),
              ),
            ],
          ),
        ),
        DetailButton(
          onTap: () {
            //TODO: implement UserTile detail button
          },
        )
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    super.key,
    required this.test,
    required this.rightAmount,
  });

  final TestInfo test;
  final int rightAmount;

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text.homePassedTestName(test.title)),
        const SizedBox(height: 8),
        Text(text.homeTestQuestionsNum(test.questions.length)),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              text.homePassedRightAnswNum(rightAmount),
              style: const TextStyle(color: Const.rightAnswerColor),
            ),
            const SizedBox(
              width: Const.paddingBetweenSmall,
            ),
            Text(
              text.homePassedWrongAnswNum(test.questions.length - rightAmount),
              style: const TextStyle(color: Const.wrongAnswerColor),
            ),
          ],
        )
      ],
    );
  }
}
