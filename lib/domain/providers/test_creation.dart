import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';

// ignore: non_type_as_type_argument
class TestCreationStateNotifier extends StateNotifier<TestInfo> {
  TestCreateDeleteRepository? repo;

  TestCreationStateNotifier(
    super.state, {
    this.repo,
  });

  // ignore: undefined_class
  void _updateState(TestInfo newState) => state = newState;

  Future<bool> createTest(String name, String description) async {
    final test = await repo?.createTest(name, description);
    _updateState(test);

    return test != null;
  }

  // ignore: undefined_class
  Future<bool> addQuestion(Question question) async {
    final test = await repo?.addQuestion(state.id, question);
    _updateState(test);

    return test != null;
  }
}
