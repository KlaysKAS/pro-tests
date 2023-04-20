import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/services/test_get_passing_results_service.dart';

abstract class TestGetPassingResultRepo {
  abstract final TestGetPassingResultsService service;

  Future<List<Question>> getQuestions(int testId);

  Future<List<Answer>> pushAnswers(int testId, List<Answer> qa);

  Future<List<Answer>> getAnswers(int testId);

  Future<TestInfo> getTestInfo(int testId);
}
