import 'package:flutter_test/flutter_test.dart';
import 'package:pro_tests/data/model/question_result/question_result.dart';

void main() {
  group('Question result model testing', () {

    test('Test factory method', () {
      const questionResult = QuestionResult(id: 0, question: 'quest1', answer: '1', isRight: true);

      expect(questionResult.id, 0);
      expect(questionResult.question, 'quest1');
      expect(questionResult.answer, '1');
      expect(questionResult.isRight, true);
    });

    test('Test from json', () {
      final json = <String, Object>{
        'id': 0,
        'question': 'quest1',
        'answer': '1',
        'isRight': true,
      };
      final questionResult = QuestionResult.fromJson(json);
      expect(questionResult.id, 0);
      expect(questionResult.question, 'quest1');
      expect(questionResult.answer, '1');
      expect(questionResult.isRight, true);
    });

    test('Test equals', () {
      const first = QuestionResult(id: 0, question: 'quest1', answer: '1', isRight: true);
      const second = QuestionResult(id: 0, question: 'quest1', answer: '1', isRight: true);
      const third = QuestionResult(id: 1, question: 'quest2', answer: '2', isRight: false);
      expect(first == second, true);
      expect(first.id == second.id, true);
      expect(first.question == second.question, true);
      expect(first.answer == second.answer, true);
      expect(first.isRight == second.isRight, true);

      expect(first == third, false);
      expect(first.id == third.id, false);
      expect(first.question == third.question, false);
      expect(first.answer == third.answer, false);
      expect(first.isRight == third.isRight, false);
    });
  });
}
