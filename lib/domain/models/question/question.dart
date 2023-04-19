import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question.singleAnswer({
    required int id,
    required String question,
    required List<String> answers,
    required String? answer,
  }) = SingleAnswer;

  const factory Question.multiAnswer({
    required int id,
    required String question,
    required List<String> answers,
    required List<String>? answer,
  }) = MultiAnswer;

  const factory Question.openAnswer({
    required int id,
    required String question,
    required String? answer,
  }) = OpenAnswer;
}
