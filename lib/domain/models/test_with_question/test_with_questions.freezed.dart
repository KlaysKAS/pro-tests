// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_with_questions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestWithQuestion {
  TestInfo get test => throw _privateConstructorUsedError;
  List<Question> get question => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestWithQuestionCopyWith<TestWithQuestion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestWithQuestionCopyWith<$Res> {
  factory $TestWithQuestionCopyWith(TestWithQuestion value, $Res Function(TestWithQuestion) then) =
      _$TestWithQuestionCopyWithImpl<$Res, TestWithQuestion>;
  @useResult
  $Res call({TestInfo test, List<Question> question});
}

/// @nodoc
class _$TestWithQuestionCopyWithImpl<$Res, $Val extends TestWithQuestion> implements $TestWithQuestionCopyWith<$Res> {
  _$TestWithQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestWithQuestionCopyWith<$Res> implements $TestWithQuestionCopyWith<$Res> {
  factory _$$_TestWithQuestionCopyWith(_$_TestWithQuestion value, $Res Function(_$_TestWithQuestion) then) =
      __$$_TestWithQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestInfo test, List<Question> question});
}

/// @nodoc
class __$$_TestWithQuestionCopyWithImpl<$Res> extends _$TestWithQuestionCopyWithImpl<$Res, _$_TestWithQuestion>
    implements _$$_TestWithQuestionCopyWith<$Res> {
  __$$_TestWithQuestionCopyWithImpl(_$_TestWithQuestion _value, $Res Function(_$_TestWithQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
    Object? question = null,
  }) {
    return _then(_$_TestWithQuestion(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      question: null == question
          ? _value._question
          : question // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_TestWithQuestion implements _TestWithQuestion {
  const _$_TestWithQuestion({required this.test, required final List<Question> question}) : _question = question;

  @override
  final TestInfo test;
  final List<Question> _question;
  @override
  List<Question> get question {
    if (_question is EqualUnmodifiableListView) return _question;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_question);
  }

  @override
  String toString() {
    return 'TestWithQuestion(test: $test, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestWithQuestion &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other._question, _question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, test, const DeepCollectionEquality().hash(_question));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestWithQuestionCopyWith<_$_TestWithQuestion> get copyWith =>
      __$$_TestWithQuestionCopyWithImpl<_$_TestWithQuestion>(this, _$identity);
}

abstract class _TestWithQuestion implements TestWithQuestion {
  const factory _TestWithQuestion({required final TestInfo test, required final List<Question> question}) =
      _$_TestWithQuestion;

  @override
  TestInfo get test;
  @override
  List<Question> get question;
  @override
  @JsonKey(ignore: true)
  _$$_TestWithQuestionCopyWith<_$_TestWithQuestion> get copyWith => throw _privateConstructorUsedError;
}
