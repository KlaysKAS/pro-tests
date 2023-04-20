import 'package:dio/dio.dart';
import 'package:pro_tests/data/model/answer/answer.dart';
import 'package:pro_tests/data/model/question/question.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';

abstract class TestGetPassingResultsService {
  final Dio dio;

  TestGetPassingResultsService(this.dio);

  Future<List<Question>> getQuestions(int testId);

  Future<List<Answer>> pushAnswers(int testId, List<Answer> qa);

  Future<List<Answer>> getAnswers(int testId);

  Future<TestInfo> getTestInfo(int testId);
}
