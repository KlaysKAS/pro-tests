// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_passing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestPassingState {
  TestInfo get testInfo => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  Map<int, Answer> get answers => throw _privateConstructorUsedError;
  int get chosenQuestion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestPassingStateCopyWith<TestPassingState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestPassingStateCopyWith<$Res> {
  factory $TestPassingStateCopyWith(TestPassingState value, $Res Function(TestPassingState) then) =
      _$TestPassingStateCopyWithImpl<$Res, TestPassingState>;
  @useResult
  $Res call({TestInfo testInfo, List<Question> questions, Map<int, Answer> answers, int chosenQuestion});
}

/// @nodoc
class _$TestPassingStateCopyWithImpl<$Res, $Val extends TestPassingState> implements $TestPassingStateCopyWith<$Res> {
  _$TestPassingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testInfo = null,
    Object? questions = null,
    Object? answers = null,
    Object? chosenQuestion = null,
  }) {
    return _then(_value.copyWith(
      testInfo: null == testInfo
          ? _value.testInfo
          : testInfo // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<int, Answer>,
      chosenQuestion: null == chosenQuestion
          ? _value.chosenQuestion
          : chosenQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestPassingStateCopyWith<$Res> implements $TestPassingStateCopyWith<$Res> {
  factory _$$_TestPassingStateCopyWith(_$_TestPassingState value, $Res Function(_$_TestPassingState) then) =
      __$$_TestPassingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestInfo testInfo, List<Question> questions, Map<int, Answer> answers, int chosenQuestion});
}

/// @nodoc
class __$$_TestPassingStateCopyWithImpl<$Res> extends _$TestPassingStateCopyWithImpl<$Res, _$_TestPassingState>
    implements _$$_TestPassingStateCopyWith<$Res> {
  __$$_TestPassingStateCopyWithImpl(_$_TestPassingState _value, $Res Function(_$_TestPassingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testInfo = null,
    Object? questions = null,
    Object? answers = null,
    Object? chosenQuestion = null,
  }) {
    return _then(_$_TestPassingState(
      testInfo: null == testInfo
          ? _value.testInfo
          : testInfo // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<int, Answer>,
      chosenQuestion: null == chosenQuestion
          ? _value.chosenQuestion
          : chosenQuestion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TestPassingState implements _TestPassingState {
  const _$_TestPassingState(
      {required this.testInfo,
      required final List<Question> questions,
      required final Map<int, Answer> answers,
      required this.chosenQuestion})
      : _questions = questions,
        _answers = answers;

  @override
  final TestInfo testInfo;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final Map<int, Answer> _answers;
  @override
  Map<int, Answer> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

  @override
  final int chosenQuestion;

  @override
  String toString() {
    return 'TestPassingState(testInfo: $testInfo, questions: $questions, answers: $answers, chosenQuestion: $chosenQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestPassingState &&
            (identical(other.testInfo, testInfo) || other.testInfo == testInfo) &&
            const DeepCollectionEquality().equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.chosenQuestion, chosenQuestion) || other.chosenQuestion == chosenQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testInfo, const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_answers), chosenQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestPassingStateCopyWith<_$_TestPassingState> get copyWith =>
      __$$_TestPassingStateCopyWithImpl<_$_TestPassingState>(this, _$identity);
}

abstract class _TestPassingState implements TestPassingState {
  const factory _TestPassingState(
      {required final TestInfo testInfo,
      required final List<Question> questions,
      required final Map<int, Answer> answers,
      required final int chosenQuestion}) = _$_TestPassingState;

  @override
  TestInfo get testInfo;
  @override
  List<Question> get questions;
  @override
  Map<int, Answer> get answers;
  @override
  int get chosenQuestion;
  @override
  @JsonKey(ignore: true)
  _$$_TestPassingStateCopyWith<_$_TestPassingState> get copyWith => throw _privateConstructorUsedError;
}
