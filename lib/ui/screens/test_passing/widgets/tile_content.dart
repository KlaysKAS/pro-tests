part of 'test_result_widget.dart';

class _Tile extends StatelessWidget {
  final TestInfo test;
  final TestWithResults? results;
  final void Function(TestWithResults? test) onDetailPressed;

  const _Tile({
    required this.test,
    this.results,
    required this.onDetailPressed,
  });

  @override
  Widget build(BuildContext context) {
    final rate = _calcRate();
    Color? color;
    if (rate != null) {
      color = rate < Const.testResultLowerBound
          ? Const.wrongAnswerColor
          : rate < Const.testResultUpperBound
              ? Const.primaryColor
              : Const.rightAnswerColor;
    }
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
                  results: results,
                  rightAmount: _rightAmount,
                ),
              ),
            ],
          ),
        ),
        DetailButton(
          onTap: () => onDetailPressed(results),
        )
      ],
    );
  }

  int? get _rightAmount =>
      results?.answers.fold<int>(0, (previousValue, element) => previousValue + (element.right ? 1 : 0));

  /// Calculate rightAnswers/questions
  double? _calcRate() {
    final right = _rightAmount?.toDouble();
    final all = results?.answers.length.toDouble();
    if (right == null || all == null) {
      return null;
    }
    return right / all;
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.test,
    this.results,
    this.rightAmount,
  });

  final TestInfo test;
  final TestWithResults? results;
  final int? rightAmount;

  @override
  Widget build(BuildContext context) {
    final text = AppLocalizations.of(context)!;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text.homePassedTestName(test.title)),
        const SizedBox(height: 8),
        Text(text.homeTestQuestionsNum('${results?.answers.length}')),
        const SizedBox(height: 8),
        if (results != null && rightAmount != null)
          Row(
            children: [
              Text(
                text.homePassedRightAnswNum(rightAmount!),
                style: const TextStyle(color: Const.rightAnswerColor),
              ),
              const SizedBox(
                width: Const.paddingBetweenSmall,
              ),
              Text(
                text.homePassedWrongAnswNum('${results!.answers.length - rightAmount!}'),
                style: const TextStyle(color: Const.wrongAnswerColor),
              ),
            ],
          )
      ],
    );
  }
}
