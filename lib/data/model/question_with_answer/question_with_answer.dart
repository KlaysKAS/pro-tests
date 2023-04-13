import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_with_answer.freezed.dart';

part 'question_with_answer.g.dart';

@freezed
class QuestionWithAnswer with _$QuestionWithAnswer {
  const factory QuestionWithAnswer({
    required int id,
    required String question,
    required List<String> answers,
    required String answer,
  }) = _QuestionWithAnswer;

  factory QuestionWithAnswer.fromJson(Map<String, Object?> json) => _$QuestionWithAnswerFromJson(json);
}
