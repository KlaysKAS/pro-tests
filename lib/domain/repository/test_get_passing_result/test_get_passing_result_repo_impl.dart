import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/models/answer/answer_mapper.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/question/question_mapper.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';
import 'package:pro_tests/domain/models/test_info/test_info_mapper.dart';
import 'package:pro_tests/domain/repository/test_get_passing_result/test_get_passing_result_repo.dart';
import 'package:pro_tests/domain/services/test_get_passing_results_service.dart';

class TestGetPassingResultRepoImpl implements TestGetPassingResultRepo {
  @override
  final TestGetPassingResultsService service;

  TestGetPassingResultRepoImpl(this.service);

  @override
  Future<List<Answer>> getAnswers(int testId) async {
    final result = await service.getAnswers(testId);
    return result.map((ans) => AnswerMapper.fromBackend(ans)).toList();
  }

  @override
  Future<List<Question>> getQuestions(int testId) async {
    final res = await service.getQuestions(testId);
    return res.map((q) => QuestionMapper.fromBack(q)).toList();
  }

  @override
  Future<TestInfo> getTestInfo(int testId) async {
    final res = await service.getTestInfo(testId);
    return TestInfoMapper.fromBackend(res);
  }

  @override
  Future<List<Answer>> pushAnswers(int testId, List<Answer> qa) async {
    final res = await service.pushAnswers(testId, qa.map((ans) => AnswerMapper.fromDomain(ans)).toList());
    return res.map((ans) => AnswerMapper.fromBackend(ans)).toList();
  }
}
