import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pro_tests/data/model/question/question.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'result_icon.dart';
part 'question_answer_tile_content.dart';

class QuestionAnswerTile extends StatelessWidget {
  final Question question;
  final String attemptAnswer;

  const QuestionAnswerTile({
    super.key,
    required this.question,
    required this.attemptAnswer,
  });

  @override
  Widget build(context) {
    final isRight = question.answer == attemptAnswer;
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Const.paddingBetweenLarge),
      child: TileContainer(
        borderColor: isRight ? Const.rightAnswerColor : Const.wrongAnswerColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: _Content(
                question: question,
                answer: attemptAnswer,
                answerColor:
                    isRight ? Const.rightAnswerColor : Const.wrongAnswerColor,
              ),
            ),
            _ResultIcon(isRight: isRight),
          ],
        ),
      ),
    );
  }
}
