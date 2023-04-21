import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';

part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  const factory Answer({
    required final String title,
    required final String answer,
    required final bool right,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
