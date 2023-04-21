import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_with_question/test_with_questions.dart';
import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';

class TestCreationStateNotifier extends StateNotifier<TestWithQuestion> {
  final TestCreateDeleteRepository repo;
  static final _emptyTest = TestWithQuestion(test: TestInfo(-1, '', '', ''), question: []);

  TestCreationStateNotifier({required this.repo}) : super(_emptyTest);

  void _updateState(TestWithQuestion newState) => state = newState;

  Future<String?> createTest(String name, String description) async {
    try {
      final test = await repo.createTest(name, description);
      _updateState(TestWithQuestion(test: test, question: []));
      return null;
    } on InternetException catch (e) {
      return e.whenOrNull(
        badConnection: () => 'internet',
        somethingWentWrong: () => 'something',
      );
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    return 'something';
  }

  Future<String?> addQuestion(Question question) async {
    try {
      final quest = await repo.addQuestion(state.test.id, question);
      final list = state.question;
      _updateState(state.copyWith(question: list..add(quest)));
      return null;
    } on InternetException catch (e) {
      return e.whenOrNull(
        badConnection: () => 'internet',
        somethingWentWrong: () => 'something',
      );
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    return 'something';
  }

  Future<void> deleteQuestion(Question question) async {}

  void closeTest() {
    state = _emptyTest;
  }
}
