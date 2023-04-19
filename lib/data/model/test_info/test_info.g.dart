// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestInfo _$$_TestInfoFromJson(Map<String, dynamic> json) => _$_TestInfo(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] == null ? null : Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TestInfoToJson(_$_TestInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
    };
