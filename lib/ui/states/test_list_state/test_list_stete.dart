import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/test_lists/test_lists.dart';

part 'test_list_stete.freezed.dart';

@freezed
class TestListState with _$TestListState {
  const factory TestListState.loading(TestLists tests) = Loading;

  const factory TestListState.readyShow(TestLists tests) = Ready;

  const factory TestListState.error(TestLists tests, [String? message]) = Error;
}
