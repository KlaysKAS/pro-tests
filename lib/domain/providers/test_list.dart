import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/repository/test_creation.dart';

class TestListStateNotifier extends StateNotifier<List<TestInfo>> {
  TestCreationRepository? repo;

  TestListStateNotifier(
    super.state, {
    this.repo,
  });

  _updateState(List<TestInfo> newState) => state = newState;

  Future<bool> getUsersTests(String userId) async {
    final tests = repo?.getUsersTests(userId);
    _updateState(tests ?? []);

    return tests != null;
  }

  Future<bool> delete(String testId) async {
    final deletedTestId = repo?.deleteTest(testId);
    _updateState(
        state.where((element) => element.id != deletedTestId).toList());

    return deletedTestId == testId;
  }
}
