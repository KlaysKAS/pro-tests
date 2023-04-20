import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/tile_container.dart';

part 'result_icon.dart';

part 'question_answer_tile_content.dart';

class QuestionAnswerTile extends StatelessWidget {
  final Answer ans;

  const QuestionAnswerTile({
    super.key,
    required this.ans,
  });

  @override
  Widget build(context) {
    return TileContainer(
      borderColor: ans.right ? Const.rightAnswerColor : Const.wrongAnswerColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: _Content(
              question: ans,
              answerColor: ans.right ? Const.rightAnswerColor : Const.wrongAnswerColor,
            ),
          ),
          _ResultIcon(isRight: ans.right),
        ],
      ),
    );
  }
}
