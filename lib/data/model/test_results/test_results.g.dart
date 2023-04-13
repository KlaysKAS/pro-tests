// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestResults _$$_TestResultsFromJson(Map<String, dynamic> json) =>
    _$_TestResults(
      id: json['id'] as int,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TestResultsToJson(_$_TestResults instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questions': instance.questions,
    };
