import 'package:flutter_test/flutter_test.dart';
import 'package:pro_tests/data/model/question/question.dart';

void main() {
  group('Question result model testing', () {
    const id = 0;
    const question = 'a';
    final answers = ['a', 'b', 'c', 'd'];
    const answer = 'b';

    test('Test factory method', () {
      final questionO = Question(id: id, question: question, answers: answers, answer: answer);

      expect(questionO.id, id);
      expect(questionO.question, question);
      expect(questionO.answers, answers);
      expect(questionO.answer, answer);
    });

    test('Test from json', () {
      final json = <String, Object>{
        'id': id,
        'question': question,
        'answers': answers,
        'answer': answer,
      };
      final questionO = Question.fromJson(json);
      expect(questionO.id, id);
      expect(questionO.question, question);
      expect(questionO.answers, answers);
      expect(questionO.answer, answer);
    });

    test('Test to json', () {
      final questionO = Question(id: id, question: question, answers: answers, answer: answer);
      final json = questionO.toJson();
      final questionOb = Question.fromJson(json);

      expect(questionO.id, questionOb.id);
      expect(questionO.question, questionOb.question);
      expect(questionO.answers, questionOb.answers);
      expect(questionO.answer, questionOb.answer);
    });

    test('Test equals', () {
      final question1 = Question(id: id, question: question, answers: answers, answer: answer);
      final question2 = Question(id: id, question: question, answers: answers, answer: answer);
      final question3 = Question(id: 2, question: '', answers: [], answer: '');
      expect(question1 == question2, true);
      expect(question1.id == question2.id, true);
      expect(question1.question == question2.question, true);
      expect(question1.answers == question2.answers, true);
      expect(question1.answer == question2.answer, true);

      expect(question1 == question3, false);
      expect(question1.id == question3.id, false);
      expect(question1.question == question3.question, false);
      expect(question1.answers == question3.answers, false);
      expect(question1.answer == question3.answer, false);
    });
  });
}
