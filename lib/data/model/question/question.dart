import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    final int? id,
    required String title,
    required Payload payload,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}

@freezed
class Payload with _$Payload {
  const factory Payload({
    required String kind,
    required List<QuestionAnswer> variants,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}

@freezed
class QuestionAnswer with _$QuestionAnswer {
  const factory QuestionAnswer({
    required String answer,
    required bool? right,
  }) = _QuestionAnswer;

  factory QuestionAnswer.fromJson(Map<String, dynamic> json) => _$QuestionAnswerFromJson(json);
}
