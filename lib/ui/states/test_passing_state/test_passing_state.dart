import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pro_tests/domain/models/answer/answer.dart';
import 'package:pro_tests/domain/models/question/question.dart';
import 'package:pro_tests/domain/models/test_info/test_info.dart';

part 'test_passing_state.freezed.dart';

@freezed
class TestPassingState with _$TestPassingState {
  const factory TestPassingState({
    required final TestInfo testInfo,
    required final List<Question> questions,
    required Map<int, Answer> answers,
    required final int chosenQuestion,
  }) = _TestPassingState;
}
