// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestInfo _$TestInfoFromJson(Map<String, dynamic> json) {
  return _TestInfo.fromJson(json);
}

/// @nodoc
mixin _$TestInfo {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestInfoCopyWith<TestInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestInfoCopyWith<$Res> {
  factory $TestInfoCopyWith(TestInfo value, $Res Function(TestInfo) then) = _$TestInfoCopyWithImpl<$Res, TestInfo>;
  @useResult
  $Res call({int? id, String title, String description, Author? author});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$TestInfoCopyWithImpl<$Res, $Val extends TestInfo> implements $TestInfoCopyWith<$Res> {
  _$TestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestInfoCopyWith<$Res> implements $TestInfoCopyWith<$Res> {
  factory _$$_TestInfoCopyWith(_$_TestInfo value, $Res Function(_$_TestInfo) then) = __$$_TestInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, String description, Author? author});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$_TestInfoCopyWithImpl<$Res> extends _$TestInfoCopyWithImpl<$Res, _$_TestInfo>
    implements _$$_TestInfoCopyWith<$Res> {
  __$$_TestInfoCopyWithImpl(_$_TestInfo _value, $Res Function(_$_TestInfo) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? author = freezed,
  }) {
    return _then(_$_TestInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestInfo implements _TestInfo {
  const _$_TestInfo({this.id, required this.title, required this.description, this.author});

  factory _$_TestInfo.fromJson(Map<String, dynamic> json) => _$$_TestInfoFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final Author? author;

  @override
  String toString() {
    return 'TestInfo(id: $id, title: $title, description: $description, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestInfoCopyWith<_$_TestInfo> get copyWith => __$$_TestInfoCopyWithImpl<_$_TestInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestInfoToJson(
      this,
    );
  }
}

abstract class _TestInfo implements TestInfo {
  const factory _TestInfo(
      {final int? id,
      required final String title,
      required final String description,
      final Author? author}) = _$_TestInfo;

  factory _TestInfo.fromJson(Map<String, dynamic> json) = _$_TestInfo.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  Author? get author;
  @override
  @JsonKey(ignore: true)
  _$$_TestInfoCopyWith<_$_TestInfo> get copyWith => throw _privateConstructorUsedError;
}
