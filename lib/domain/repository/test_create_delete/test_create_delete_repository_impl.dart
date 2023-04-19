import 'package:pro_tests/data/model/test_info/test_info.dart' as data;
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/question/question_mapper.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_info/test_info_mapper.dart';
import 'package:pro_tests/domain/repository/test_create_delete/test_create_delete_repository.dart';
import 'package:pro_tests/domain/services/test_create_delete_service.dart';

class TestCreateDeleteRepositoryImpl implements TestCreateDeleteRepository {
  @override
  final TestCreateDeleteService service;

  TestCreateDeleteRepositoryImpl(this.service);

  @override
  Future<Question> addQuestion(int testId, Question question) async {
    final response = await service.addQuestion(testId, QuestionMapper.fromDomain(question));
    return QuestionMapper.fromBack(response);
  }

  @override
  Future<TestInfo> createTest(String name, String description) async {
    final response = await service.createTest(name, description);
    return TestInfoMapper.fromBackend(response);
  }

  @override
  Future<void> deleteTest(int testId) async {
    await service.deleteTest(testId);
  }

  @override
  Future<List<TestInfo>> getUsersTests({bool myOwn = true}) async {
    late final List<data.TestInfo> response;
    if (myOwn) {
      response = await service.getUsersOwnTests();
    } else {
      response = await service.getUsersTests();
    }
    return response.map((info) => TestInfoMapper.fromBackend(info)).toList();
  }
}
