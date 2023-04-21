import 'package:dio/dio.dart';
import 'package:pro_tests/data/model/question/question.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/services/test_create_delete_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class TestCreateDeleteServiceImpl extends TestCreateDeleteService {
  final _myOwnedTestsUrl = '/tests/owned';
  final _myTestsUrl = '/tests/invited';
  final _createTestUrl = '/tests';
  final _createTestQuestionURL = '/questions';
  final _deleteTestURL = '/tests';

  final _baseUrl = 'https://protests.cfeee1e5e4e00a.ru/api/v1';

  TestCreateDeleteServiceImpl(super.dio);

  @override
  Future<Question> addQuestion(int testId, Question question) async {
    try {
      final res = await dio.post('$_baseUrl$_createTestUrl/$testId$_createTestQuestionURL', data: question.toJson());
      return Question.fromJson(res.data);
    } on DioError catch (e) {
      _errorResolver(e);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<TestInfo> createTest(String name, String description) async {
    try {
      final res = await dio.post('$_baseUrl$_createTestUrl', data: {'title': name, 'description': description});
      return TestInfo.fromJson(res.data);
    } on DioError catch (e) {
      _errorResolver(e);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<void> deleteTest(int testId) async {
    try {
      await dio.delete('$_baseUrl$_deleteTestURL/$testId');
    } on DioError catch (e) {
      _errorResolver(e);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<List<TestInfo>> getUsersOwnTests() async {
    try {
      final res = await dio.get('$_baseUrl$_myOwnedTestsUrl');
      return (res.data as List).map((e) => TestInfo.fromJson(e)).toList();
    } on DioError catch (e) {
      _errorResolver(e);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<List<TestInfo>> getUsersTests() async {
    try {
      final res = await dio.get('$_baseUrl$_myTestsUrl');
      return (res.data as List).map((e) => TestInfo.fromJson(e)).toList();
    } on DioError catch (e) {
      _errorResolver(e);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  void _errorResolver(DioError e) {
    if (e.response?.statusCode == null) {
      throw const InternetException.badConnection();
    }
    throw const InternetException.somethingWentWrong();
  }
}
