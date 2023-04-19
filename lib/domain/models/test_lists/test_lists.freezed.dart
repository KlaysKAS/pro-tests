// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_lists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TestLists {
  List<TestInfo> get myOwn => throw _privateConstructorUsedError;
  List<TestInfo> get my => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestListsCopyWith<TestLists> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestListsCopyWith<$Res> {
  factory $TestListsCopyWith(TestLists value, $Res Function(TestLists) then) = _$TestListsCopyWithImpl<$Res, TestLists>;
  @useResult
  $Res call({List<TestInfo> myOwn, List<TestInfo> my});
}

/// @nodoc
class _$TestListsCopyWithImpl<$Res, $Val extends TestLists> implements $TestListsCopyWith<$Res> {
  _$TestListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOwn = null,
    Object? my = null,
  }) {
    return _then(_value.copyWith(
      myOwn: null == myOwn
          ? _value.myOwn
          : myOwn // ignore: cast_nullable_to_non_nullable
              as List<TestInfo>,
      my: null == my
          ? _value.my
          : my // ignore: cast_nullable_to_non_nullable
              as List<TestInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestListsCopyWith<$Res> implements $TestListsCopyWith<$Res> {
  factory _$$_TestListsCopyWith(_$_TestLists value, $Res Function(_$_TestLists) then) =
      __$$_TestListsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TestInfo> myOwn, List<TestInfo> my});
}

/// @nodoc
class __$$_TestListsCopyWithImpl<$Res> extends _$TestListsCopyWithImpl<$Res, _$_TestLists>
    implements _$$_TestListsCopyWith<$Res> {
  __$$_TestListsCopyWithImpl(_$_TestLists _value, $Res Function(_$_TestLists) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myOwn = null,
    Object? my = null,
  }) {
    return _then(_$_TestLists(
      myOwn: null == myOwn
          ? _value._myOwn
          : myOwn // ignore: cast_nullable_to_non_nullable
              as List<TestInfo>,
      my: null == my
          ? _value._my
          : my // ignore: cast_nullable_to_non_nullable
              as List<TestInfo>,
    ));
  }
}

/// @nodoc

class _$_TestLists implements _TestLists {
  const _$_TestLists({required final List<TestInfo> myOwn, required final List<TestInfo> my})
      : _myOwn = myOwn,
        _my = my;

  final List<TestInfo> _myOwn;
  @override
  List<TestInfo> get myOwn {
    if (_myOwn is EqualUnmodifiableListView) return _myOwn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myOwn);
  }

  final List<TestInfo> _my;
  @override
  List<TestInfo> get my {
    if (_my is EqualUnmodifiableListView) return _my;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_my);
  }

  @override
  String toString() {
    return 'TestLists(myOwn: $myOwn, my: $my)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestLists &&
            const DeepCollectionEquality().equals(other._myOwn, _myOwn) &&
            const DeepCollectionEquality().equals(other._my, _my));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_myOwn), const DeepCollectionEquality().hash(_my));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestListsCopyWith<_$_TestLists> get copyWith => __$$_TestListsCopyWithImpl<_$_TestLists>(this, _$identity);
}

abstract class _TestLists implements TestLists {
  const factory _TestLists({required final List<TestInfo> myOwn, required final List<TestInfo> my}) = _$_TestLists;

  @override
  List<TestInfo> get myOwn;
  @override
  List<TestInfo> get my;
  @override
  @JsonKey(ignore: true)
  _$$_TestListsCopyWith<_$_TestLists> get copyWith => throw _privateConstructorUsedError;
}
