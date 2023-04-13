import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestAttemptStateNotifier extends StateNotifier<TestAttempt> {
  final TestPassingRepository? repo;

  TestAttemptStateNotifier(
    super.state, {
    this.repo,
  });

  void _updateState(TestAttempt newState) => state = newState;

  void answer(String questionId, String answerId) {
    final answers = state.answers as Map<String, String>;
    answers[questionId] = answerId;
    _updateState(state.copyWith(answers: answers));
  }

  Future<TestResult> sendTest() async {
    final testResult = repo?.sendTest(state);

    return testResult;
  }

  Future<TestResult> getTestResults(String attemptId) async {
    final testResult = repo?.getResults(state);

    return testResult;
  }

  Future<bool> beginTest(String testId) {
    // createAttempt
    final test = repo?.getTest(testId);
    if (test != null) {
      _updateState(TestAttempt.fromTest(test));
    }

    test != null;
  }
}
