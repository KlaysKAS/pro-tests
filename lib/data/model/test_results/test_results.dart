import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/data/model/question_result/question_result.dart';

part 'test_results.freezed.dart';

part 'test_results.g.dart';

@freezed
class TestResults with _$TestResults {
  const factory TestResults({
    required int id,
    required String title,
    required List<QuestionResult> questions,
  }) = _TestResults;

  factory TestResults.fromJson(Map<String, Object?> json) => _$TestResultsFromJson(json);
}
