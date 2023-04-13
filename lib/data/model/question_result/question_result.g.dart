// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionResult _$$_QuestionResultFromJson(Map<String, dynamic> json) =>
    _$_QuestionResult(
      id: json['id'] as int,
      question: json['question'] as String,
      answer: json['answer'] as String,
      isRight: json['isRight'] as bool,
    );

Map<String, dynamic> _$$_QuestionResultToJson(_$_QuestionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'isRight': instance.isRight,
    };
