// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int?,
      title: json['title'] as String,
      payload: Payload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'payload': instance.payload,
    };

_$_Payload _$$_PayloadFromJson(Map<String, dynamic> json) => _$_Payload(
      kind: json['kind'] as String,
      variants:
          (json['variants'] as List<dynamic>).map((e) => QuestionAnswer.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$_PayloadToJson(_$_Payload instance) => <String, dynamic>{
      'kind': instance.kind,
      'variants': instance.variants,
    };

_$_QuestionAnswer _$$_QuestionAnswerFromJson(Map<String, dynamic> json) => _$_QuestionAnswer(
      answer: json['answer'] as String,
      right: json['right'] as bool?,
    );

Map<String, dynamic> _$$_QuestionAnswerToJson(_$_QuestionAnswer instance) => <String, dynamic>{
      'answer': instance.answer,
      'right': instance.right,
    };
