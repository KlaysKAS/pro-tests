import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required int id,
    required String question,
    required List<String> answers,
    required String? answer,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}
