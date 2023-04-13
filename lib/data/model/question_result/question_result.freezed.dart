// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionResult _$QuestionResultFromJson(Map<String, dynamic> json) {
  return _QuestionResult.fromJson(json);
}

/// @nodoc
mixin _$QuestionResult {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  bool get isRight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResultCopyWith<QuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResultCopyWith<$Res> {
  factory $QuestionResultCopyWith(
          QuestionResult value, $Res Function(QuestionResult) then) =
      _$QuestionResultCopyWithImpl<$Res, QuestionResult>;
  @useResult
  $Res call({int id, String question, String answer, bool isRight});
}

/// @nodoc
class _$QuestionResultCopyWithImpl<$Res, $Val extends QuestionResult>
    implements $QuestionResultCopyWith<$Res> {
  _$QuestionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? isRight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      isRight: null == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResultCopyWith<$Res>
    implements $QuestionResultCopyWith<$Res> {
  factory _$$_QuestionResultCopyWith(
          _$_QuestionResult value, $Res Function(_$_QuestionResult) then) =
      __$$_QuestionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, String answer, bool isRight});
}

/// @nodoc
class __$$_QuestionResultCopyWithImpl<$Res>
    extends _$QuestionResultCopyWithImpl<$Res, _$_QuestionResult>
    implements _$$_QuestionResultCopyWith<$Res> {
  __$$_QuestionResultCopyWithImpl(
      _$_QuestionResult _value, $Res Function(_$_QuestionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? isRight = null,
  }) {
    return _then(_$_QuestionResult(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      isRight: null == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionResult implements _QuestionResult {
  const _$_QuestionResult(
      {required this.id,
      required this.question,
      required this.answer,
      required this.isRight});

  factory _$_QuestionResult.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionResultFromJson(json);

  @override
  final int id;
  @override
  final String question;
  @override
  final String answer;
  @override
  final bool isRight;

  @override
  String toString() {
    return 'QuestionResult(id: $id, question: $question, answer: $answer, isRight: $isRight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.isRight, isRight) || other.isRight == isRight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, answer, isRight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResultCopyWith<_$_QuestionResult> get copyWith =>
      __$$_QuestionResultCopyWithImpl<_$_QuestionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResultToJson(
      this,
    );
  }
}

abstract class _QuestionResult implements QuestionResult {
  const factory _QuestionResult(
      {required final int id,
      required final String question,
      required final String answer,
      required final bool isRight}) = _$_QuestionResult;

  factory _QuestionResult.fromJson(Map<String, dynamic> json) =
      _$_QuestionResult.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  bool get isRight;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionResultCopyWith<_$_QuestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
