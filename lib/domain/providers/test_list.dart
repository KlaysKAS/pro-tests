import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/models/test_lists/test_lists.dart';
import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';

class TestListStateNotifier extends StateNotifier<TestLists> {
  final TestCreateDeleteRepository repo;

  TestListStateNotifier(
    super.state, {
    required this.repo,
  });

  _updateState(TestLists newState) => state = newState;

  Future<void> getMyTests() async {
    final tests = await repo.getUsersTests(myOwn: false);
    _updateState(state.copyWith(my: tests));
  }

  Future<void> getMyOwnedTests() async {
    final tests = await repo.getUsersTests();
    _updateState(state.copyWith(myOwn: tests));
  }

  Future<bool> delete(int testId) async {
    await repo.deleteTest(testId);
    _updateState(state.copyWith(myOwn: state.myOwn.where((element) => element.id != testId).toList()));
    return true;
  }
}
