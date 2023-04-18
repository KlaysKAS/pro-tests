import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_result.freezed.dart';

part 'question_result.g.dart';

@freezed
class QuestionResult with _$QuestionResult {
  const factory QuestionResult({
    required int id,
    required String question,
    required String answer,
    required bool isRight,
  }) = _QuestionResult;

  factory QuestionResult.fromJson(Map<String, Object?> json) => _$QuestionResultFromJson(json);
}
