// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_with_answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionWithAnswer _$$_QuestionWithAnswerFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionWithAnswer(
      id: json['id'] as int,
      question: json['question'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_QuestionWithAnswerToJson(
        _$_QuestionWithAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answers': instance.answers,
      'answer': instance.answer,
    };
