// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestResults _$TestResultsFromJson(Map<String, dynamic> json) {
  return _TestResults.fromJson(json);
}

/// @nodoc
mixin _$TestResults {
  int get id => throw _privateConstructorUsedError;
  List<QuestionResult> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultsCopyWith<TestResults> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultsCopyWith<$Res> {
  factory $TestResultsCopyWith(TestResults value, $Res Function(TestResults) then) =
      _$TestResultsCopyWithImpl<$Res, TestResults>;
  @useResult
  $Res call({int id, List<QuestionResult> questions});
}

/// @nodoc
class _$TestResultsCopyWithImpl<$Res, $Val extends TestResults> implements $TestResultsCopyWith<$Res> {
  _$TestResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestResultsCopyWith<$Res> implements $TestResultsCopyWith<$Res> {
  factory _$$_TestResultsCopyWith(_$_TestResults value, $Res Function(_$_TestResults) then) =
      __$$_TestResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<QuestionResult> questions});
}

/// @nodoc
class __$$_TestResultsCopyWithImpl<$Res> extends _$TestResultsCopyWithImpl<$Res, _$_TestResults>
    implements _$$_TestResultsCopyWith<$Res> {
  __$$_TestResultsCopyWithImpl(_$_TestResults _value, $Res Function(_$_TestResults) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questions = null,
  }) {
    return _then(_$_TestResults(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestResults implements _TestResults {
  const _$_TestResults({required this.id, required final List<QuestionResult> questions}) : _questions = questions;

  factory _$_TestResults.fromJson(Map<String, dynamic> json) => _$$_TestResultsFromJson(json);

  @override
  final int id;
  final List<QuestionResult> _questions;
  @override
  List<QuestionResult> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'TestResults(id: $id, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestResults &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestResultsCopyWith<_$_TestResults> get copyWith =>
      __$$_TestResultsCopyWithImpl<_$_TestResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestResultsToJson(
      this,
    );
  }
}

abstract class _TestResults implements TestResults {
  const factory _TestResults({required final int id, required final List<QuestionResult> questions}) = _$_TestResults;

  factory _TestResults.fromJson(Map<String, dynamic> json) = _$_TestResults.fromJson;

  @override
  int get id;
  @override
  List<QuestionResult> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_TestResultsCopyWith<_$_TestResults> get copyWith => throw _privateConstructorUsedError;
}
