// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  Object? get answer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String question, List<String> answers, String? answer) singleAnswer,
    required TResult Function(int id, String question, List<String> answers, List<String>? answer) multiAnswer,
    required TResult Function(int id, String question, String? answer) openAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult? Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult? Function(int id, String question, String? answer)? openAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult Function(int id, String question, String? answer)? openAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleAnswer value) singleAnswer,
    required TResult Function(MultiAnswer value) multiAnswer,
    required TResult Function(OpenAnswer value) openAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleAnswer value)? singleAnswer,
    TResult? Function(MultiAnswer value)? multiAnswer,
    TResult? Function(OpenAnswer value)? openAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleAnswer value)? singleAnswer,
    TResult Function(MultiAnswer value)? multiAnswer,
    TResult Function(OpenAnswer value)? openAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) = _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call({int id, String question});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleAnswerCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$SingleAnswerCopyWith(_$SingleAnswer value, $Res Function(_$SingleAnswer) then) =
      __$$SingleAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, List<String> answers, String? answer});
}

/// @nodoc
class __$$SingleAnswerCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res, _$SingleAnswer>
    implements _$$SingleAnswerCopyWith<$Res> {
  __$$SingleAnswerCopyWithImpl(_$SingleAnswer _value, $Res Function(_$SingleAnswer) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answers = null,
    Object? answer = freezed,
  }) {
    return _then(_$SingleAnswer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SingleAnswer implements SingleAnswer {
  const _$SingleAnswer(
      {required this.id, required this.question, required final List<String> answers, required this.answer})
      : _answers = answers;

  @override
  final int id;
  @override
  final String question;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String? answer;

  @override
  String toString() {
    return 'Question.singleAnswer(id: $id, question: $question, answers: $answers, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) || other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question, const DeepCollectionEquality().hash(_answers), answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleAnswerCopyWith<_$SingleAnswer> get copyWith =>
      __$$SingleAnswerCopyWithImpl<_$SingleAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String question, List<String> answers, String? answer) singleAnswer,
    required TResult Function(int id, String question, List<String> answers, List<String>? answer) multiAnswer,
    required TResult Function(int id, String question, String? answer) openAnswer,
  }) {
    return singleAnswer(id, question, answers, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult? Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult? Function(int id, String question, String? answer)? openAnswer,
  }) {
    return singleAnswer?.call(id, question, answers, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult Function(int id, String question, String? answer)? openAnswer,
    required TResult orElse(),
  }) {
    if (singleAnswer != null) {
      return singleAnswer(id, question, answers, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleAnswer value) singleAnswer,
    required TResult Function(MultiAnswer value) multiAnswer,
    required TResult Function(OpenAnswer value) openAnswer,
  }) {
    return singleAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleAnswer value)? singleAnswer,
    TResult? Function(MultiAnswer value)? multiAnswer,
    TResult? Function(OpenAnswer value)? openAnswer,
  }) {
    return singleAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleAnswer value)? singleAnswer,
    TResult Function(MultiAnswer value)? multiAnswer,
    TResult Function(OpenAnswer value)? openAnswer,
    required TResult orElse(),
  }) {
    if (singleAnswer != null) {
      return singleAnswer(this);
    }
    return orElse();
  }
}

abstract class SingleAnswer implements Question {
  const factory SingleAnswer(
      {required final int id,
      required final String question,
      required final List<String> answers,
      required final String? answer}) = _$SingleAnswer;

  @override
  int get id;
  @override
  String get question;
  List<String> get answers;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$SingleAnswerCopyWith<_$SingleAnswer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiAnswerCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$MultiAnswerCopyWith(_$MultiAnswer value, $Res Function(_$MultiAnswer) then) =
      __$$MultiAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, List<String> answers, List<String>? answer});
}

/// @nodoc
class __$$MultiAnswerCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res, _$MultiAnswer>
    implements _$$MultiAnswerCopyWith<$Res> {
  __$$MultiAnswerCopyWithImpl(_$MultiAnswer _value, $Res Function(_$MultiAnswer) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answers = null,
    Object? answer = freezed,
  }) {
    return _then(_$MultiAnswer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answer: freezed == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$MultiAnswer implements MultiAnswer {
  const _$MultiAnswer(
      {required this.id,
      required this.question,
      required final List<String> answers,
      required final List<String>? answer})
      : _answers = answers,
        _answer = answer;

  @override
  final int id;
  @override
  final String question;
  final List<String> _answers;
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  final List<String>? _answer;
  @override
  List<String>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Question.multiAnswer(id: $id, question: $question, answers: $answers, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) || other.question == question) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question, const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiAnswerCopyWith<_$MultiAnswer> get copyWith => __$$MultiAnswerCopyWithImpl<_$MultiAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String question, List<String> answers, String? answer) singleAnswer,
    required TResult Function(int id, String question, List<String> answers, List<String>? answer) multiAnswer,
    required TResult Function(int id, String question, String? answer) openAnswer,
  }) {
    return multiAnswer(id, question, answers, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult? Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult? Function(int id, String question, String? answer)? openAnswer,
  }) {
    return multiAnswer?.call(id, question, answers, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult Function(int id, String question, String? answer)? openAnswer,
    required TResult orElse(),
  }) {
    if (multiAnswer != null) {
      return multiAnswer(id, question, answers, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleAnswer value) singleAnswer,
    required TResult Function(MultiAnswer value) multiAnswer,
    required TResult Function(OpenAnswer value) openAnswer,
  }) {
    return multiAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleAnswer value)? singleAnswer,
    TResult? Function(MultiAnswer value)? multiAnswer,
    TResult? Function(OpenAnswer value)? openAnswer,
  }) {
    return multiAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleAnswer value)? singleAnswer,
    TResult Function(MultiAnswer value)? multiAnswer,
    TResult Function(OpenAnswer value)? openAnswer,
    required TResult orElse(),
  }) {
    if (multiAnswer != null) {
      return multiAnswer(this);
    }
    return orElse();
  }
}

abstract class MultiAnswer implements Question {
  const factory MultiAnswer(
      {required final int id,
      required final String question,
      required final List<String> answers,
      required final List<String>? answer}) = _$MultiAnswer;

  @override
  int get id;
  @override
  String get question;
  List<String> get answers;
  @override
  List<String>? get answer;
  @override
  @JsonKey(ignore: true)
  _$$MultiAnswerCopyWith<_$MultiAnswer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpenAnswerCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$OpenAnswerCopyWith(_$OpenAnswer value, $Res Function(_$OpenAnswer) then) =
      __$$OpenAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, String? answer});
}

/// @nodoc
class __$$OpenAnswerCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res, _$OpenAnswer>
    implements _$$OpenAnswerCopyWith<$Res> {
  __$$OpenAnswerCopyWithImpl(_$OpenAnswer _value, $Res Function(_$OpenAnswer) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = freezed,
  }) {
    return _then(_$OpenAnswer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OpenAnswer implements OpenAnswer {
  const _$OpenAnswer({required this.id, required this.question, required this.answer});

  @override
  final int id;
  @override
  final String question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'Question.openAnswer(id: $id, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) || other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAnswerCopyWith<_$OpenAnswer> get copyWith => __$$OpenAnswerCopyWithImpl<_$OpenAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String question, List<String> answers, String? answer) singleAnswer,
    required TResult Function(int id, String question, List<String> answers, List<String>? answer) multiAnswer,
    required TResult Function(int id, String question, String? answer) openAnswer,
  }) {
    return openAnswer(id, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult? Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult? Function(int id, String question, String? answer)? openAnswer,
  }) {
    return openAnswer?.call(id, question, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String question, List<String> answers, String? answer)? singleAnswer,
    TResult Function(int id, String question, List<String> answers, List<String>? answer)? multiAnswer,
    TResult Function(int id, String question, String? answer)? openAnswer,
    required TResult orElse(),
  }) {
    if (openAnswer != null) {
      return openAnswer(id, question, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SingleAnswer value) singleAnswer,
    required TResult Function(MultiAnswer value) multiAnswer,
    required TResult Function(OpenAnswer value) openAnswer,
  }) {
    return openAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SingleAnswer value)? singleAnswer,
    TResult? Function(MultiAnswer value)? multiAnswer,
    TResult? Function(OpenAnswer value)? openAnswer,
  }) {
    return openAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SingleAnswer value)? singleAnswer,
    TResult Function(MultiAnswer value)? multiAnswer,
    TResult Function(OpenAnswer value)? openAnswer,
    required TResult orElse(),
  }) {
    if (openAnswer != null) {
      return openAnswer(this);
    }
    return orElse();
  }
}

abstract class OpenAnswer implements Question {
  const factory OpenAnswer({required final int id, required final String question, required final String? answer}) =
      _$OpenAnswer;

  @override
  int get id;
  @override
  String get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$OpenAnswerCopyWith<_$OpenAnswer> get copyWith => throw _privateConstructorUsedError;
}
