import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_with_results/test_with_results.dart';
import 'package:pro_tests/domain/repository/test_get_passing_result/test_get_passing_result_repo.dart';
import 'package:pro_tests/ui/states/test_results_state/test_results_state.dart';

class TestResultStateNotifier extends StateNotifier<TestResultState> {
  final TestGetPassingResultRepo repo;

  TestResultStateNotifier(this.repo) : super(const TestResultState.noTest());

  void _updateState(TestResultState newState) => state = newState;

  Future<void> chooseTest(TestInfo info) async {
    _updateState(TestResultState.loading(info: info));
    try {
      final answers = await repo.getAnswers(info.id);
      _updateState(TestResultState.readyShow(results: TestWithResults(test: info, answers: answers)));
      return;
    } catch (e) {
      if (e is InternetException) {
        e.whenOrNull(
          badConnection: () => _setErrorState('Нет соединения с интернетом', info),
          somethingWentWrong: () => _setErrorState('Что-то пошло не так', info),
        );
        return;
      }
      _setErrorState('Что-то пошло не так', info);
    }
  }

  void _setErrorState(String message, TestInfo info) {
    _updateState(TestResultState.error(message: 'Что-то пошло не так, попробуйте ещё раз', info: info));
  }

  void clearChoose() {
    _updateState(const TestResultState.noTest());
  }
}
