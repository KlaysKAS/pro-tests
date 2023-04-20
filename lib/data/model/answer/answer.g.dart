// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      question: json['question'] as String,
      answer: json['answer'] as String,
      right: json['right'] as bool?,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'right': instance.right,
    };
