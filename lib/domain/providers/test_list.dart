import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';

import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';

class TestListStateNotifier extends StateNotifier<List<TestInfo>> {
  final TestCreateDeleteRepository repo;

  TestListStateNotifier(
    super.state, {
    required this.repo,
  });

  _updateState(List<TestInfo> newState) => state = newState;

  Future<bool> getUsersTests(String userId) async {
    final tests = await repo.getUsersTests();
    _updateState(tests);
    return tests.isNotEmpty;
  }

  Future<bool> delete(int testId) async {
    await repo.deleteTest(testId);
    _updateState(state.where((element) => element.id != testId).toList());
    return true;
  }
}
