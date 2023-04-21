import 'package:dio/dio.dart';

import 'package:pro_tests/data/model/answer/answer.dart';
import 'package:pro_tests/data/model/question/question.dart';
import 'package:pro_tests/data/model/test_info/test_info.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/services/test_get_passing_results_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class TestGetPassingResultsServiceImpl extends TestGetPassingResultsService {
  TestGetPassingResultsServiceImpl(super.dio);

  final _baseUrl = 'https://protests.cfeee1e5e4e00a.ru/api/v1/tests/';
  final _questionsPostfix = '/questions';
  final _answersPostfix = '/attempt';

  @override
  Future<List<Question>> getQuestions(int testId) async {
    final url = '$_baseUrl$testId$_questionsPostfix';
    try {
      final response = await dio.get(url);
      return (response.data as List<dynamic>).map((quest) => Question.fromJson(quest)).toList();
    } on DioError catch (e, s) {
      _errorResolver(e, s);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<List<Answer>> pushAnswers(int testId, List<Answer> qa) async {
    final url = '$_baseUrl$testId$_answersPostfix';
    try {
      final dataRequest = <Map<String, dynamic>>[];
      for (var i in qa) {
        dataRequest.add({'title': i.question, 'answer': i.answer});
      }
      final response = await dio.post(url, data: dataRequest);
      final rdata = (response.data as List<dynamic>).map((quest) => Answer.fromJson(quest)).toList();
      return rdata;
    } on DioError catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
      _errorResolver(e, s);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<List<Answer>> getAnswers(int testId) async {
    final url = '$_baseUrl$testId$_answersPostfix';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 204) return [];
      return (response.data as List<dynamic>).map((quest) => Answer.fromJson(quest)).toList();
    } on DioError catch (e, s) {
      _errorResolver(e, s);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  @override
  Future<TestInfo> getTestInfo(int testId) async {
    final url = '$_baseUrl$testId';
    try {
      final response = await dio.get(url);
      return TestInfo.fromJson(response.data);
    } on DioError catch (e, s) {
      _errorResolver(e, s);
    } catch (e, s) {
      await Sentry.captureException(e, stackTrace: s);
    }
    throw const InternetException.somethingWentWrong();
  }

  void _errorResolver(DioError e, StackTrace s) {
    switch (e.response?.statusCode) {
      case null:
        throw const InternetException.badConnection();
      case 403:
        throw const InternetException.permissionDenied();
      case 404:
        throw const InternetException.notFound();
    }
  }
}
