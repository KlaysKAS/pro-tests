// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_with_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestWithResults _$TestWithResultsFromJson(Map<String, dynamic> json) {
  return _TestWithResults.fromJson(json);
}

/// @nodoc
mixin _$TestWithResults {
  TestInfo get test => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestWithResultsCopyWith<TestWithResults> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestWithResultsCopyWith<$Res> {
  factory $TestWithResultsCopyWith(TestWithResults value, $Res Function(TestWithResults) then) =
      _$TestWithResultsCopyWithImpl<$Res, TestWithResults>;
  @useResult
  $Res call({TestInfo test, List<Answer> answers});
}

/// @nodoc
class _$TestWithResultsCopyWithImpl<$Res, $Val extends TestWithResults> implements $TestWithResultsCopyWith<$Res> {
  _$TestWithResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestWithResultsCopyWith<$Res> implements $TestWithResultsCopyWith<$Res> {
  factory _$$_TestWithResultsCopyWith(_$_TestWithResults value, $Res Function(_$_TestWithResults) then) =
      __$$_TestWithResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestInfo test, List<Answer> answers});
}

/// @nodoc
class __$$_TestWithResultsCopyWithImpl<$Res> extends _$TestWithResultsCopyWithImpl<$Res, _$_TestWithResults>
    implements _$$_TestWithResultsCopyWith<$Res> {
  __$$_TestWithResultsCopyWithImpl(_$_TestWithResults _value, $Res Function(_$_TestWithResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
    Object? answers = null,
  }) {
    return _then(_$_TestWithResults(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as TestInfo,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestWithResults implements _TestWithResults {
  const _$_TestWithResults({required this.test, required final List<Answer> answers}) : _answers = answers;

  factory _$_TestWithResults.fromJson(Map<String, dynamic> json) => _$$_TestWithResultsFromJson(json);

  @override
  final TestInfo test;
  final List<Answer> _answers;
  @override
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'TestWithResults(test: $test, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestWithResults &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, test, const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestWithResultsCopyWith<_$_TestWithResults> get copyWith =>
      __$$_TestWithResultsCopyWithImpl<_$_TestWithResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestWithResultsToJson(
      this,
    );
  }
}

abstract class _TestWithResults implements TestWithResults {
  const factory _TestWithResults({required final TestInfo test, required final List<Answer> answers}) =
      _$_TestWithResults;

  factory _TestWithResults.fromJson(Map<String, dynamic> json) = _$_TestWithResults.fromJson;

  @override
  TestInfo get test;
  @override
  List<Answer> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_TestWithResultsCopyWith<_$_TestWithResults> get copyWith => throw _privateConstructorUsedError;
}
