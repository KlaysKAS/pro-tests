import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/test_lists/test_lists.dart';
import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';
import 'package:pro_tests/ui/states/test_list_state/test_list_stete.dart';

class TestListStateNotifier extends StateNotifier<TestListState> {
  final TestCreateDeleteRepository repo;

  TestListStateNotifier({
    required this.repo,
  }) : super(const TestListState.loading(TestLists(my: [], myOwn: [])));

  _updateState(TestListState newState) => state = newState;

  Future<void> getMyTests() async {
    _updateState(TestListState.loading(state.tests));
    try {
      final tests = await repo.getUsersTests(myOwn: false);
      _updateState(TestListState.readyShow(state.tests.copyWith(my: tests)));
      return;
    } on InternetException catch (e) {
      e.mapOrNull(
        badConnection: (value) => _setError(''),
        somethingWentWrong: (value) => _setError(''),
      );
    }
  }

  Future<void> getMyOwnedTests() async {
    _updateState(TestListState.loading(state.tests));
    print('asdf');
    try {
      print('asdf');
      final tests = await repo.getUsersTests();
      print('asdf');
      _updateState(TestListState.readyShow(state.tests.copyWith(myOwn: tests)));
    } on InternetException catch (e) {
      e.mapOrNull(
        badConnection: (value) => _setError(''),
        somethingWentWrong: (value) => _setError(''),
      );
    }
  }

  Future<void> delete(int testId) async {
    try {
      await repo.deleteTest(testId);
      _updateState(
        TestListState.readyShow(
          state.tests.copyWith(
            myOwn: state.tests.myOwn.where((element) => element.id != testId).toList(),
          ),
        ),
      );
    } on InternetException catch (e) {
      e.mapOrNull(
        badConnection: (value) => _setError(''),
        somethingWentWrong: (value) => _setError(''),
      );
    }
  }

  void _setError(String? msg) {
    _updateState(TestListState.error(state.tests, msg));
  }
}
