import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';

import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/repository/test_get_passing_result/test_get_passing_result_repo.dart';
import 'package:pro_tests/ui/states/test_passing_state/test_passing_state.dart';

class TestAttemptStateNotifier extends StateNotifier<TestPassingState?> {
  final TestGetPassingResultRepo repo;

  TestAttemptStateNotifier(this.repo) : super(null);

  void _updateState(TestPassingState newState) => state = newState;

  void answer(String question, String answer) {
    if (state == null) return;
    final answers = state!.answers;
    final newMap = <int, Answer>{};
    for (var k in answers.keys) {
      newMap[k] = answers[k]!;
    }
    newMap[state!.chosenQuestion] = Answer(title: question, answer: answer, right: true);
    _updateState(state!.copyWith(answers: newMap));
  }

  Future<String?> sendTest() async {
    try {
      await repo.pushAnswers(state!.testInfo.id, state!.answers.values.toList());
      return null;
    } on InternetException catch (e) {
      return e.whenOrNull(
        badConnection: () => 'internet',
        somethingWentWrong: () => 'something',
      );
    }
    // return 'something';
  }

  Future<String?> beginTest(int testId) async {
    try {
      final test = await repo.getTestInfo(testId);
      _updateState(TestPassingState(testInfo: test, questions: [], answers: {}, chosenQuestion: 0));
      final questions = await repo.getQuestions(test.id);
      _updateState(state!.copyWith(questions: questions));
      return null;
    } on InternetException catch (e) {
      return e.whenOrNull(
        badConnection: () => 'internet',
        somethingWentWrong: () => 'something',
      );
    }
  }

  void chooseQuestion(int index) {
    _updateState(state!.copyWith(chosenQuestion: max(0, min(index, state!.questions.length - 1))));
  }
}
