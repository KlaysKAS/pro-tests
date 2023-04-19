import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';

part 'test_with_questions.freezed.dart';

@freezed
class TestWithQuestion with _$TestWithQuestion {
  const factory TestWithQuestion({
    required final TestInfo test,
    required final List<Question> question,
  }) = _TestWithQuestion;
}
