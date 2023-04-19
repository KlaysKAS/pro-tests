import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_with_question/test_with_questions.dart';

import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';

class TestCreationStateNotifier extends StateNotifier<TestWithQuestion> {
  final TestCreateDeleteRepository repo;

  TestCreationStateNotifier(
    super.state, {
    required this.repo,
  });

  void _updateState(TestWithQuestion newState) => state = newState;

  Future<void> createTest(String name, String description) async {
    final test = await repo.createTest(name, description);
    _updateState(state.copyWith(test: test));
  }

  Future<void> addQuestion(Question question) async {
    final quest = await repo.addQuestion(state.test.id, question);
    final list = state.question;
    _updateState(state.copyWith(question: list..add(quest)));
  }
}
