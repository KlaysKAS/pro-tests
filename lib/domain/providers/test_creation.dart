import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestCreationStateNotifier extends StateNotifier<TestInfo?> {
  TestCreationRepository? repo;

  TestCreationStateNotifier(
    super.state, {
    this.repo,
  });

  void _updateState(TestInfo newState) => state = newState;

  Future<bool> createTest(String name, String description) async {
    final test = await repo?.createTest(name, description);
    _updateState(test);

    return test != null;
  }

  Future<bool> addQuestion(Question question) async {
    final test = await repo?.addQuestion(state.id, question);
    _updateState(test);

    return test != null;
  }
}
