import 'package:flutter_test/flutter_test.dart';
import 'package:pro_tests/data/model/question_result/question_result.dart';
import 'package:pro_tests/data/model/test_results/test_results.dart';

void main() {
  group('Test results model testing', () {
    final questions = [
      const QuestionResult(
          id: 0, question: 'quest1', answer: '1', isRight: true),
      const QuestionResult(
          id: 1, question: 'quest2', answer: '2', isRight: false),
    ];

    test('Test factory method', () {
      final testResults = TestResults(id: 0, questions: questions);

      expect(testResults.id, 0);
      expect(testResults.questions, questions);
    });

    test('Test from json', () {
      final json = <String, Object>{
        'id': 0,
        'questions': [
          questions[0].toJson(),
          questions[1].toJson(),
        ],
      };
      final testResults = TestResults.fromJson(json);
      expect(testResults.id, 0);
      expect(testResults.questions, questions);
    });

    test('Test equals', () {
      final testResults1 = TestResults(id: 0, questions: questions);
      final testResults2 = TestResults(id: 0, questions: questions);
      const testResults3 = TestResults(id: 1, questions: []);
      expect(testResults1 == testResults2, true);
      expect(testResults1.id == testResults2.id, true);
      expect(testResults1.questions == testResults2.questions, true);

      expect(testResults1 == testResults3, false);
      expect(testResults1.id == testResults3.id, false);
      expect(testResults1.questions == testResults3.questions, false);
    });
  });
}
