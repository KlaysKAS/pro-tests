import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/data/model/test_results/test_results.dart';
import 'package:pro_tests/ui/screens/users_tests/widgets/user_test_widget.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/detail_button.dart';
import 'package:pro_tests/ui/widgets/test_icon.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'tile_content.dart';

class TestResultWidget extends StatelessWidget {
  final TestInfo test;
  final TestResults result;
  const TestResultWidget({
    super.key,
    required this.test,
    required this.result,
  });

  int get _rightAmount =>
      result.questions.fold<int>(0, (previousValue, element) => previousValue + (element.isRight ? 1 : 0));

  /// Calculate rightAnswers/questions
  double _calcRate() => _rightAmount.toDouble() / result.questions.length.toDouble();

  @override
  Widget build(BuildContext context) {
    final rate = _calcRate();
    final color = rate < Const.testResultLowerBound
        ? Const.wrongAnswerColor
        : rate < Const.testResultUpperBound
            ? Const.primaryColor
            : Const.rightAnswerColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: _Tile(
        color: color,
        test: test,
        rightAmount: _rightAmount,
      ),
    );
  }
}
