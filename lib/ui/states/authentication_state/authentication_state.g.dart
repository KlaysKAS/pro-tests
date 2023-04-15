// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInData _$$SignInDataFromJson(Map<String, dynamic> json) => _$SignInData(
      json['credentials'] == null
          ? const UserCredentials(username: '', password: '')
          : UserCredentials.fromJson(
              json['credentials'] as Map<String, dynamic>),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignInDataToJson(_$SignInData instance) =>
    <String, dynamic>{
      'credentials': instance.credentials,
      'runtimeType': instance.$type,
    };

_$SignUpData _$$SignUpDataFromJson(Map<String, dynamic> json) => _$SignUpData(
      json['credentials'] == null
          ? const UserCredentials(
              username: '', password: '', firstname: '', lastname: '')
          : UserCredentials.fromJson(
              json['credentials'] as Map<String, dynamic>),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignUpDataToJson(_$SignUpData instance) =>
    <String, dynamic>{
      'credentials': instance.credentials,
      'runtimeType': instance.$type,
    };

_$SignInLoading _$$SignInLoadingFromJson(Map<String, dynamic> json) =>
    _$SignInLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignInLoadingToJson(_$SignInLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SignUpLoading _$$SignUpLoadingFromJson(Map<String, dynamic> json) =>
    _$SignUpLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SignUpLoadingToJson(_$SignUpLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Error _$$ErrorFromJson(Map<String, dynamic> json) => _$Error(
      json['message'] as String?,
      json['credentials'] == null
          ? const UserCredentials(
              username: '', password: '', firstname: '', lastname: '')
          : UserCredentials.fromJson(
              json['credentials'] as Map<String, dynamic>),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorToJson(_$Error instance) => <String, dynamic>{
      'message': instance.message,
      'credentials': instance.credentials,
      'runtimeType': instance.$type,
    };

_$Success _$$SuccessFromJson(Map<String, dynamic> json) => _$Success(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessToJson(_$Success instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };
