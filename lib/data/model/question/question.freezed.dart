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

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Payload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) = _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call({int? id, String title, Payload payload});

  $PayloadCopyWith<$Res> get payload;
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
    Object? id = freezed,
    Object? title = null,
    Object? payload = null,
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
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayloadCopyWith<$Res> get payload {
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(_$_Question value, $Res Function(_$_Question) then) = __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, Payload payload});

  @override
  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(_$_Question _value, $Res Function(_$_Question) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? payload = null,
  }) {
    return _then(_$_Question(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question({this.id, required this.title, required this.payload});

  factory _$_Question.fromJson(Map<String, dynamic> json) => _$$_QuestionFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final Payload payload;

  @override
  String toString() {
    return 'Question(id: $id, title: $title, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith => __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question({final int? id, required final String title, required final Payload payload}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  Payload get payload;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith => throw _privateConstructorUsedError;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
mixin _$Payload {
  String get kind => throw _privateConstructorUsedError;
  List<QuestionAnswer> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) = _$PayloadCopyWithImpl<$Res, Payload>;
  @useResult
  $Res call({String kind, List<QuestionAnswer> variants});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res, $Val extends Payload> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$$_PayloadCopyWith(_$_Payload value, $Res Function(_$_Payload) then) = __$$_PayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String kind, List<QuestionAnswer> variants});
}

/// @nodoc
class __$$_PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res, _$_Payload>
    implements _$$_PayloadCopyWith<$Res> {
  __$$_PayloadCopyWithImpl(_$_Payload _value, $Res Function(_$_Payload) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? variants = null,
  }) {
    return _then(_$_Payload(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payload implements _Payload {
  const _$_Payload({required this.kind, required final List<QuestionAnswer> variants}) : _variants = variants;

  factory _$_Payload.fromJson(Map<String, dynamic> json) => _$$_PayloadFromJson(json);

  @override
  final String kind;
  final List<QuestionAnswer> _variants;
  @override
  List<QuestionAnswer> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'Payload(kind: $kind, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payload &&
            (identical(other.kind, kind) || other.kind == kind) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayloadCopyWith<_$_Payload> get copyWith => __$$_PayloadCopyWithImpl<_$_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadToJson(
      this,
    );
  }
}

abstract class _Payload implements Payload {
  const factory _Payload({required final String kind, required final List<QuestionAnswer> variants}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  String get kind;
  @override
  List<QuestionAnswer> get variants;
  @override
  @JsonKey(ignore: true)
  _$$_PayloadCopyWith<_$_Payload> get copyWith => throw _privateConstructorUsedError;
}

QuestionAnswer _$QuestionAnswerFromJson(Map<String, dynamic> json) {
  return _QuestionAnswer.fromJson(json);
}

/// @nodoc
mixin _$QuestionAnswer {
  String get answer => throw _privateConstructorUsedError;
  bool? get right => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAnswerCopyWith<QuestionAnswer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerCopyWith<$Res> {
  factory $QuestionAnswerCopyWith(QuestionAnswer value, $Res Function(QuestionAnswer) then) =
      _$QuestionAnswerCopyWithImpl<$Res, QuestionAnswer>;
  @useResult
  $Res call({String answer, bool? right});
}

/// @nodoc
class _$QuestionAnswerCopyWithImpl<$Res, $Val extends QuestionAnswer> implements $QuestionAnswerCopyWith<$Res> {
  _$QuestionAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? right = freezed,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerCopyWith<$Res> implements $QuestionAnswerCopyWith<$Res> {
  factory _$$_QuestionAnswerCopyWith(_$_QuestionAnswer value, $Res Function(_$_QuestionAnswer) then) =
      __$$_QuestionAnswerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String answer, bool? right});
}

/// @nodoc
class __$$_QuestionAnswerCopyWithImpl<$Res> extends _$QuestionAnswerCopyWithImpl<$Res, _$_QuestionAnswer>
    implements _$$_QuestionAnswerCopyWith<$Res> {
  __$$_QuestionAnswerCopyWithImpl(_$_QuestionAnswer _value, $Res Function(_$_QuestionAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? right = freezed,
  }) {
    return _then(_$_QuestionAnswer(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionAnswer implements _QuestionAnswer {
  const _$_QuestionAnswer({required this.answer, required this.right});

  factory _$_QuestionAnswer.fromJson(Map<String, dynamic> json) => _$$_QuestionAnswerFromJson(json);

  @override
  final String answer;
  @override
  final bool? right;

  @override
  String toString() {
    return 'QuestionAnswer(answer: $answer, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswer &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer, right);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith =>
      __$$_QuestionAnswerCopyWithImpl<_$_QuestionAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionAnswerToJson(
      this,
    );
  }
}

abstract class _QuestionAnswer implements QuestionAnswer {
  const factory _QuestionAnswer({required final String answer, required final bool? right}) = _$_QuestionAnswer;

  factory _QuestionAnswer.fromJson(Map<String, dynamic> json) = _$_QuestionAnswer.fromJson;

  @override
  String get answer;
  @override
  bool? get right;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerCopyWith<_$_QuestionAnswer> get copyWith => throw _privateConstructorUsedError;
}
