import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/repository/test_passing.dart';

// ignore: non_type_as_type_argument
class TestAttemptStateNotifier extends StateNotifier<TestAttempt> {
  final TestPassingRepository? repo;

  TestAttemptStateNotifier(
    super.state, {
    this.repo,
  });

  // ignore: undefined_class
  void _updateState(TestAttempt newState) => state = newState;

  void answer(String questionId, String answerId) {
    final answers = state.answers as Map<String, String>;
    answers[questionId] = answerId;
    _updateState(state.copyWith(answers: answers));
  }

  // ignore: non_type_as_type_argument
  Future<TestResult> sendTest() async {
    final testResult = repo?.sendTest(state);

    return testResult;
  }

  // ignore: non_type_as_type_argument
  Future<TestResult> getTestResults(String attemptId) async {
    final testResult = repo?.getResults(state);

    return testResult;
  }

  Future<bool> beginTest(String testId) async {
    final test = repo?.getTest(testId);
    if (test != null) {
      // ignore: undefined_identifier
      _updateState(TestAttempt.fromTest(test));
    }

    return test != null;
  }
}
