import 'package:flutter/material.dart';
import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/ui/screens/test_passing/test_results/widgets/question_answer_tile.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonAnswers extends StatelessWidget {
  const SkeletonAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonTheme(
      shimmerGradient: const LinearGradient(
        colors: [
          Const.primaryColor,
          Const.secondaryColor,
          Const.primaryColor,
        ],
        stops: [
          0.1,
          0.5,
          0.9,
        ],
      ),
      darkShimmerGradient: const LinearGradient(
        colors: [
          Const.primaryColor,
          Const.lightenPrimaryColor,
          Const.primaryColor,
        ],
        stops: [
          0.1,
          0.5,
          0.9,
        ],
      ),
      child: SkeletonListView(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: Const.paddingBetweenStandart),
            child: SkeletonItem(
              child: Opacity(
                opacity: 0.3,
                child: QuestionAnswerTile(
                  ans: Answer(title: '', answer: '', right: false),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
