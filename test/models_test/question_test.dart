import 'package:flutter_test/flutter_test.dart';
import 'package:pro_tests/domain/models/question/question.dart';

void main() {
  group('Question model testing', () {
    const id = 0;
    const question = 'a';
    final answers = ['a', 'b', 'c', 'd'];
    const answer = 'b';

    test('Test factory method', () {
      final questionO = Question.singleAnswer(id: id, question: question, answers: answers, answer: answer);
      questionO.when(
        singleAnswer: (int oId, String oQuestion, List<String> oAnswers, String? oAnswer) {
          expect(oId, id);
          expect(oQuestion, question);
          expect(oAnswers, answers);
          expect(oAnswer, answer);
        },
        multiAnswer: (int id, String question, List<String> answers, List<String>? answer) {},
        openAnswer: (int id, String question, String? answer) {},
      );
    });

    test('Test equals', () {
      final newAnswers = ['a'];
      final question1 = Question.singleAnswer(id: id, question: question, answers: answers, answer: answer);
      final question2 = Question.singleAnswer(id: id, question: question, answers: answers, answer: answer);
      final question3 = Question.singleAnswer(id: 2, question: '', answers: newAnswers, answer: null);
      final question4 = Question.singleAnswer(id: 2, question: '', answers: newAnswers, answer: null);
      expect(question1 == question2, true);

      expect(question1 == question3, false);

      expect(question3 == question4, true);
    });
  });
}
