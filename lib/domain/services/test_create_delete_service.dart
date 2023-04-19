import 'package:dio/dio.dart';
import 'package:pro_tests/data/model/question/question.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';

abstract class TestCreateDeleteService {
  final Dio dio;

  TestCreateDeleteService(this.dio);

  Future<Question> addQuestion(int testId, Question question);

  Future<TestInfo> createTest(String name, String description);

  Future<void> deleteTest(int testId);

  Future<List<TestInfo>> getUsersOwnTests();

  Future<List<TestInfo>> getUsersTests();
}
