// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_list_stete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestListState {
  TestLists get tests => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestLists tests) loading,
    required TResult Function(TestLists tests) readyShow,
    required TResult Function(TestLists tests, String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestLists tests)? loading,
    TResult? Function(TestLists tests)? readyShow,
    TResult? Function(TestLists tests, String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestLists tests)? loading,
    TResult Function(TestLists tests)? readyShow,
    TResult Function(TestLists tests, String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) readyShow,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? readyShow,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? readyShow,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestListStateCopyWith<TestListState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestListStateCopyWith<$Res> {
  factory $TestListStateCopyWith(TestListState value, $Res Function(TestListState) then) =
      _$TestListStateCopyWithImpl<$Res, TestListState>;
  @useResult
  $Res call({TestLists tests});

  $TestListsCopyWith<$Res> get tests;
}

/// @nodoc
class _$TestListStateCopyWithImpl<$Res, $Val extends TestListState> implements $TestListStateCopyWith<$Res> {
  _$TestListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
  }) {
    return _then(_value.copyWith(
      tests: null == tests
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as TestLists,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TestListsCopyWith<$Res> get tests {
    return $TestListsCopyWith<$Res>(_value.tests, (value) {
      return _then(_value.copyWith(tests: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> implements $TestListStateCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) = __$$LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestLists tests});

  @override
  $TestListsCopyWith<$Res> get tests;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$TestListStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
  }) {
    return _then(_$Loading(
      null == tests
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as TestLists,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.tests);

  @override
  final TestLists tests;

  @override
  String toString() {
    return 'TestListState.loading(tests: $tests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            (identical(other.tests, tests) || other.tests == tests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCopyWith<_$Loading> get copyWith => __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestLists tests) loading,
    required TResult Function(TestLists tests) readyShow,
    required TResult Function(TestLists tests, String? message) error,
  }) {
    return loading(tests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestLists tests)? loading,
    TResult? Function(TestLists tests)? readyShow,
    TResult? Function(TestLists tests, String? message)? error,
  }) {
    return loading?.call(tests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestLists tests)? loading,
    TResult Function(TestLists tests)? readyShow,
    TResult Function(TestLists tests, String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) readyShow,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? readyShow,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? readyShow,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TestListState {
  const factory Loading(final TestLists tests) = _$Loading;

  @override
  TestLists get tests;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyCopyWith<$Res> implements $TestListStateCopyWith<$Res> {
  factory _$$ReadyCopyWith(_$Ready value, $Res Function(_$Ready) then) = __$$ReadyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestLists tests});

  @override
  $TestListsCopyWith<$Res> get tests;
}

/// @nodoc
class __$$ReadyCopyWithImpl<$Res> extends _$TestListStateCopyWithImpl<$Res, _$Ready> implements _$$ReadyCopyWith<$Res> {
  __$$ReadyCopyWithImpl(_$Ready _value, $Res Function(_$Ready) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
  }) {
    return _then(_$Ready(
      null == tests
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as TestLists,
    ));
  }
}

/// @nodoc

class _$Ready implements Ready {
  const _$Ready(this.tests);

  @override
  final TestLists tests;

  @override
  String toString() {
    return 'TestListState.readyShow(tests: $tests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ready &&
            (identical(other.tests, tests) || other.tests == tests));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tests);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyCopyWith<_$Ready> get copyWith => __$$ReadyCopyWithImpl<_$Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestLists tests) loading,
    required TResult Function(TestLists tests) readyShow,
    required TResult Function(TestLists tests, String? message) error,
  }) {
    return readyShow(tests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestLists tests)? loading,
    TResult? Function(TestLists tests)? readyShow,
    TResult? Function(TestLists tests, String? message)? error,
  }) {
    return readyShow?.call(tests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestLists tests)? loading,
    TResult Function(TestLists tests)? readyShow,
    TResult Function(TestLists tests, String? message)? error,
    required TResult orElse(),
  }) {
    if (readyShow != null) {
      return readyShow(tests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) readyShow,
    required TResult Function(Error value) error,
  }) {
    return readyShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? readyShow,
    TResult? Function(Error value)? error,
  }) {
    return readyShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? readyShow,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (readyShow != null) {
      return readyShow(this);
    }
    return orElse();
  }
}

abstract class Ready implements TestListState {
  const factory Ready(final TestLists tests) = _$Ready;

  @override
  TestLists get tests;
  @override
  @JsonKey(ignore: true)
  _$$ReadyCopyWith<_$Ready> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> implements $TestListStateCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) = __$$ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestLists tests, String? message});

  @override
  $TestListsCopyWith<$Res> get tests;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$TestListStateCopyWithImpl<$Res, _$Error> implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tests = null,
    Object? message = freezed,
  }) {
    return _then(_$Error(
      null == tests
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as TestLists,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.tests, [this.message]);

  @override
  final TestLists tests;
  @override
  final String? message;

  @override
  String toString() {
    return 'TestListState.error(tests: $tests, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.tests, tests) || other.tests == tests) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tests, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith => __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TestLists tests) loading,
    required TResult Function(TestLists tests) readyShow,
    required TResult Function(TestLists tests, String? message) error,
  }) {
    return error(tests, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TestLists tests)? loading,
    TResult? Function(TestLists tests)? readyShow,
    TResult? Function(TestLists tests, String? message)? error,
  }) {
    return error?.call(tests, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TestLists tests)? loading,
    TResult Function(TestLists tests)? readyShow,
    TResult Function(TestLists tests, String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(tests, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Ready value) readyShow,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Ready value)? readyShow,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Ready value)? readyShow,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements TestListState {
  const factory Error(final TestLists tests, [final String? message]) = _$Error;

  @override
  TestLists get tests;
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
