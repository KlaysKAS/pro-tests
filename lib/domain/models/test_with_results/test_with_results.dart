import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';

part 'test_with_results.freezed.dart';
part 'test_with_results.g.dart';

@freezed
class TestWithResults with _$TestWithResults {
  const factory TestWithResults({
    required final TestInfo test,
    required final List<Answer> answers,
  }) = _TestWithResults;

  factory TestWithResults.fromJson(Map<String, dynamic> json) => _$TestWithResultsFromJson(json);
}
