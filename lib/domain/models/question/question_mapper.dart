import 'package:pro_tests/data/model/question/question.dart' as back;
import 'package:pro_tests/domain/models/question/question.dart';

class QuestionMapper {
  static Question fromBack(back.Question question) {
    switch (question.payload.kind) {
      case 'single-select':
        final rightAnswer = question.payload.variants.where((element) => element.right ?? false);
        return Question.singleAnswer(
          id: question.id ?? 0,
          question: question.title,
          answers: question.payload.variants.map((e) => e.answer).toList(),
          answer: rightAnswer.isNotEmpty ? rightAnswer.first.answer : null,
        );
    }
    throw UnimplementedError('Question types except single-select isn`t implemented');
  }

  static back.Question fromDomain(Question question) {
    final res = question.mapOrNull(
      singleAnswer: (question) => back.Question(
        id: question.id,
        title: question.question,
        payload: back.Payload(
          kind: 'single-select',
          variants: question.answers
              .map(
                (ans) => back.QuestionAnswer(answer: ans, right: question.answer == ans),
              )
              .toList(),
        ),
      ),
    );
    if (res == null) throw UnimplementedError('Question types except single-select isn`t implemented');
    return res;
  }
}
