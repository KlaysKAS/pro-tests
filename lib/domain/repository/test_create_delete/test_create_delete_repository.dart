import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/services/test_create_delete_service.dart';

abstract class TestCreateDeleteRepository {
  abstract final TestCreateDeleteService service;

  Future<TestInfo> createTest(String name, String description);

  Future<Question> addQuestion(int testId, Question question);

  Future<List<TestInfo>> getUsersTests({bool myOwn = true});

  Future<void> deleteTest(int testId);
}
