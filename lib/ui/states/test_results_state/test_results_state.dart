import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_with_results/test_with_results.dart';

part 'test_results_state.freezed.dart';

@freezed
class TestResultState with _$TestResultState {
  const factory TestResultState.loading({required TestInfo info}) = LoadingResults;

  const factory TestResultState.readyShow({required TestWithResults results}) = ReadyShow;

  const factory TestResultState.error({String? message, required TestInfo info}) = Error;

  const factory TestResultState.noTest() = ClearResult;
}
