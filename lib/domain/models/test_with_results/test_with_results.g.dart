// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_with_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestWithResults _$$_TestWithResultsFromJson(Map<String, dynamic> json) => _$_TestWithResults(
      test: TestInfo.fromJson(json['test'] as Map<String, dynamic>),
      answers: (json['answers'] as List<dynamic>).map((e) => Answer.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$_TestWithResultsToJson(_$_TestWithResults instance) => <String, dynamic>{
      'test': instance.test,
      'answers': instance.answers,
    };
