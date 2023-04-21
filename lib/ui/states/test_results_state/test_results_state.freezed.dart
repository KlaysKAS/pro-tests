// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_results_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultStateCopyWith<$Res> {
  factory $TestResultStateCopyWith(TestResultState value, $Res Function(TestResultState) then) =
      _$TestResultStateCopyWithImpl<$Res, TestResultState>;
}

/// @nodoc
class _$TestResultStateCopyWithImpl<$Res, $Val extends TestResultState> implements $TestResultStateCopyWith<$Res> {
  _$TestResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingResultsCopyWith<$Res> {
  factory _$$LoadingResultsCopyWith(_$LoadingResults value, $Res Function(_$LoadingResults) then) =
      __$$LoadingResultsCopyWithImpl<$Res>;
  @useResult
  $Res call({TestInfo info});
}

/// @nodoc
class __$$LoadingResultsCopyWithImpl<$Res> extends _$TestResultStateCopyWithImpl<$Res, _$LoadingResults>
    implements _$$LoadingResultsCopyWith<$Res> {
  __$$LoadingResultsCopyWithImpl(_$LoadingResults _value, $Res Function(_$LoadingResults) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
  }) {
    return _then(_$LoadingResults(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TestInfo,
    ));
  }
}

/// @nodoc

class _$LoadingResults implements LoadingResults {
  const _$LoadingResults({required this.info});

  @override
  final TestInfo info;

  @override
  String toString() {
    return 'TestResultState.loading(info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingResults &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingResultsCopyWith<_$LoadingResults> get copyWith =>
      __$$LoadingResultsCopyWithImpl<_$LoadingResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) {
    return loading(info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) {
    return loading?.call(info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingResults implements TestResultState {
  const factory LoadingResults({required final TestInfo info}) = _$LoadingResults;

  TestInfo get info;
  @JsonKey(ignore: true)
  _$$LoadingResultsCopyWith<_$LoadingResults> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyShowCopyWith<$Res> {
  factory _$$ReadyShowCopyWith(_$ReadyShow value, $Res Function(_$ReadyShow) then) = __$$ReadyShowCopyWithImpl<$Res>;
  @useResult
  $Res call({TestWithResults results});

  $TestWithResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$ReadyShowCopyWithImpl<$Res> extends _$TestResultStateCopyWithImpl<$Res, _$ReadyShow>
    implements _$$ReadyShowCopyWith<$Res> {
  __$$ReadyShowCopyWithImpl(_$ReadyShow _value, $Res Function(_$ReadyShow) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$ReadyShow(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as TestWithResults,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestWithResultsCopyWith<$Res> get results {
    return $TestWithResultsCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value));
    });
  }
}

/// @nodoc

class _$ReadyShow implements ReadyShow {
  const _$ReadyShow({required this.results});

  @override
  final TestWithResults results;

  @override
  String toString() {
    return 'TestResultState.readyShow(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyShow &&
            (identical(other.results, results) || other.results == results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyShowCopyWith<_$ReadyShow> get copyWith => __$$ReadyShowCopyWithImpl<_$ReadyShow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) {
    return readyShow(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) {
    return readyShow?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) {
    if (readyShow != null) {
      return readyShow(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) {
    return readyShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) {
    return readyShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (readyShow != null) {
      return readyShow(this);
    }
    return orElse();
  }
}

abstract class ReadyShow implements TestResultState {
  const factory ReadyShow({required final TestWithResults results}) = _$ReadyShow;

  TestWithResults get results;
  @JsonKey(ignore: true)
  _$$ReadyShowCopyWith<_$ReadyShow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) = __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, TestInfo info});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$TestResultStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? info = null,
  }) {
    return _then(_$Error(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TestInfo,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({this.message, required this.info});

  @override
  final String? message;
  @override
  final TestInfo info;

  @override
  String toString() {
    return 'TestResultState.error(message: $message, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.info, info) || other.info == info));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith => __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) {
    return error(message, info);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) {
    return error?.call(message, info);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TestResultState {
  const factory Error({final String? message, required final TestInfo info}) = _$Error;

  String? get message;
  TestInfo get info;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearResultCopyWith<$Res> {
  factory _$$ClearResultCopyWith(_$ClearResult value, $Res Function(_$ClearResult) then) =
      __$$ClearResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearResultCopyWithImpl<$Res> extends _$TestResultStateCopyWithImpl<$Res, _$ClearResult>
    implements _$$ClearResultCopyWith<$Res> {
  __$$ClearResultCopyWithImpl(_$ClearResult _value, $Res Function(_$ClearResult) _then) : super(_value, _then);
}

/// @nodoc

class _$ClearResult implements ClearResult {
  const _$ClearResult();

  @override
  String toString() {
    return 'TestResultState.noTest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ClearResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) {
    return noTest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) {
    return noTest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) {
    if (noTest != null) {
      return noTest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) {
    return noTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) {
    return noTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (noTest != null) {
      return noTest(this);
    }
    return orElse();
  }
}

abstract class ClearResult implements TestResultState {
  const factory ClearResult() = _$ClearResult;
}

/// @nodoc
abstract class _$$InvalidIdCopyWith<$Res> {
  factory _$$InvalidIdCopyWith(_$InvalidId value, $Res Function(_$InvalidId) then) = __$$InvalidIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidIdCopyWithImpl<$Res> extends _$TestResultStateCopyWithImpl<$Res, _$InvalidId>
    implements _$$InvalidIdCopyWith<$Res> {
  __$$InvalidIdCopyWithImpl(_$InvalidId _value, $Res Function(_$InvalidId) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidId(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidId implements InvalidId {
  const _$InvalidId({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TestResultState.invalidId(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidId &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidIdCopyWith<_$InvalidId> get copyWith => __$$InvalidIdCopyWithImpl<_$InvalidId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestInfo info) loading,
    required TResult Function(TestWithResults results) readyShow,
    required TResult Function(String? message, TestInfo info) error,
    required TResult Function() noTest,
    required TResult Function(String? message) invalidId,
  }) {
    return invalidId(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestInfo info)? loading,
    TResult? Function(TestWithResults results)? readyShow,
    TResult? Function(String? message, TestInfo info)? error,
    TResult? Function()? noTest,
    TResult? Function(String? message)? invalidId,
  }) {
    return invalidId?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestInfo info)? loading,
    TResult Function(TestWithResults results)? readyShow,
    TResult Function(String? message, TestInfo info)? error,
    TResult Function()? noTest,
    TResult Function(String? message)? invalidId,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingResults value) loading,
    required TResult Function(ReadyShow value) readyShow,
    required TResult Function(Error value) error,
    required TResult Function(ClearResult value) noTest,
    required TResult Function(InvalidId value) invalidId,
  }) {
    return invalidId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingResults value)? loading,
    TResult? Function(ReadyShow value)? readyShow,
    TResult? Function(Error value)? error,
    TResult? Function(ClearResult value)? noTest,
    TResult? Function(InvalidId value)? invalidId,
  }) {
    return invalidId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingResults value)? loading,
    TResult Function(ReadyShow value)? readyShow,
    TResult Function(Error value)? error,
    TResult Function(ClearResult value)? noTest,
    TResult Function(InvalidId value)? invalidId,
    required TResult orElse(),
  }) {
    if (invalidId != null) {
      return invalidId(this);
    }
    return orElse();
  }
}

abstract class InvalidId implements TestResultState {
  const factory InvalidId({final String? message}) = _$InvalidId;

  String? get message;
  @JsonKey(ignore: true)
  _$$InvalidIdCopyWith<_$InvalidId> get copyWith => throw _privateConstructorUsedError;
}
