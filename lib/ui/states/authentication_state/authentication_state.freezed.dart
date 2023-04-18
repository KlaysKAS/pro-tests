// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'signIn':
      return SignInData.fromJson(json);
    case 'signUp':
      return SignUpData.fromJson(json);
    case 'signInLoading':
      return SignInLoading.fromJson(json);
    case 'signUpLoading':
      return SignUpLoading.fromJson(json);
    case 'signInError':
      return SignInError.fromJson(json);
    case 'signUpError':
      return SignUpError.fromJson(json);
    case 'success':
      return Success.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'runtimeType', 'AuthenticationState', 'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInDataCopyWith<$Res> {
  factory _$$SignInDataCopyWith(_$SignInData value, $Res Function(_$SignInData) then) =
      __$$SignInDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInDataCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignInData>
    implements _$$SignInDataCopyWith<$Res> {
  __$$SignInDataCopyWithImpl(_$SignInData _value, $Res Function(_$SignInData) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignInData implements SignInData {
  const _$SignInData({final String? $type}) : $type = $type ?? 'signIn';

  factory _$SignInData.fromJson(Map<String, dynamic> json) => _$$SignInDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignInData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDataToJson(
      this,
    );
  }
}

abstract class SignInData implements AuthenticationState {
  const factory SignInData() = _$SignInData;

  factory SignInData.fromJson(Map<String, dynamic> json) = _$SignInData.fromJson;
}

/// @nodoc
abstract class _$$SignUpDataCopyWith<$Res> {
  factory _$$SignUpDataCopyWith(_$SignUpData value, $Res Function(_$SignUpData) then) =
      __$$SignUpDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpDataCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignUpData>
    implements _$$SignUpDataCopyWith<$Res> {
  __$$SignUpDataCopyWithImpl(_$SignUpData _value, $Res Function(_$SignUpData) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignUpData implements SignUpData {
  const _$SignUpData({final String? $type}) : $type = $type ?? 'signUp';

  factory _$SignUpData.fromJson(Map<String, dynamic> json) => _$$SignUpDataFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignUpData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpDataToJson(
      this,
    );
  }
}

abstract class SignUpData implements AuthenticationState {
  const factory SignUpData() = _$SignUpData;

  factory SignUpData.fromJson(Map<String, dynamic> json) = _$SignUpData.fromJson;
}

/// @nodoc
abstract class _$$SignInLoadingCopyWith<$Res> {
  factory _$$SignInLoadingCopyWith(_$SignInLoading value, $Res Function(_$SignInLoading) then) =
      __$$SignInLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInLoadingCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignInLoading>
    implements _$$SignInLoadingCopyWith<$Res> {
  __$$SignInLoadingCopyWithImpl(_$SignInLoading _value, $Res Function(_$SignInLoading) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignInLoading implements SignInLoading {
  const _$SignInLoading({final String? $type}) : $type = $type ?? 'signInLoading';

  factory _$SignInLoading.fromJson(Map<String, dynamic> json) => _$$SignInLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signInLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignInLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signInLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signInLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signInLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signInLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInLoadingToJson(
      this,
    );
  }
}

abstract class SignInLoading implements AuthenticationState {
  const factory SignInLoading() = _$SignInLoading;

  factory SignInLoading.fromJson(Map<String, dynamic> json) = _$SignInLoading.fromJson;
}

/// @nodoc
abstract class _$$SignUpLoadingCopyWith<$Res> {
  factory _$$SignUpLoadingCopyWith(_$SignUpLoading value, $Res Function(_$SignUpLoading) then) =
      __$$SignUpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpLoadingCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignUpLoading>
    implements _$$SignUpLoadingCopyWith<$Res> {
  __$$SignUpLoadingCopyWithImpl(_$SignUpLoading _value, $Res Function(_$SignUpLoading) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignUpLoading implements SignUpLoading {
  const _$SignUpLoading({final String? $type}) : $type = $type ?? 'signUpLoading';

  factory _$SignUpLoading.fromJson(Map<String, dynamic> json) => _$$SignUpLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signUpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SignUpLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signUpLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signUpLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signUpLoading != null) {
      return signUpLoading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpLoadingToJson(
      this,
    );
  }
}

abstract class SignUpLoading implements AuthenticationState {
  const factory SignUpLoading() = _$SignUpLoading;

  factory SignUpLoading.fromJson(Map<String, dynamic> json) = _$SignUpLoading.fromJson;
}

/// @nodoc
abstract class _$$SignInErrorCopyWith<$Res> {
  factory _$$SignInErrorCopyWith(_$SignInError value, $Res Function(_$SignInError) then) =
      __$$SignInErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignInErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignInError>
    implements _$$SignInErrorCopyWith<$Res> {
  __$$SignInErrorCopyWithImpl(_$SignInError _value, $Res Function(_$SignInError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignInError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInError implements SignInError {
  const _$SignInError([this.message, final String? $type]) : $type = $type ?? 'signInError';

  factory _$SignInError.fromJson(Map<String, dynamic> json) => _$$SignInErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signInError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInErrorCopyWith<_$SignInError> get copyWith => __$$SignInErrorCopyWithImpl<_$SignInError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signInError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signInError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInErrorToJson(
      this,
    );
  }
}

abstract class SignInError implements AuthenticationState {
  const factory SignInError([final String? message]) = _$SignInError;

  factory SignInError.fromJson(Map<String, dynamic> json) = _$SignInError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignInErrorCopyWith<_$SignInError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpErrorCopyWith<$Res> {
  factory _$$SignUpErrorCopyWith(_$SignUpError value, $Res Function(_$SignUpError) then) =
      __$$SignUpErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignUpErrorCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$SignUpError>
    implements _$$SignUpErrorCopyWith<$Res> {
  __$$SignUpErrorCopyWithImpl(_$SignUpError _value, $Res Function(_$SignUpError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignUpError(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpError implements SignUpError {
  const _$SignUpError([this.message, final String? $type]) : $type = $type ?? 'signUpError';

  factory _$SignUpError.fromJson(Map<String, dynamic> json) => _$$SignUpErrorFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signUpError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpError &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpErrorCopyWith<_$SignUpError> get copyWith => __$$SignUpErrorCopyWithImpl<_$SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return signUpError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return signUpError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpErrorToJson(
      this,
    );
  }
}

abstract class SignUpError implements AuthenticationState {
  const factory SignUpError([final String? message]) = _$SignUpError;

  factory SignUpError.fromJson(Map<String, dynamic> json) = _$SignUpError.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignUpErrorCopyWith<_$SignUpError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) = __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then) : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Success implements Success {
  const _$Success({final String? $type}) : $type = $type ?? 'success';

  factory _$Success.fromJson(Map<String, dynamic> json) => _$$SuccessFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Success);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message) signInError,
    required TResult Function(String? message) signUpError,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message)? signInError,
    TResult? Function(String? message)? signUpError,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message)? signInError,
    TResult Function(String? message)? signUpError,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInData value) signIn,
    required TResult Function(SignUpData value) signUp,
    required TResult Function(SignInLoading value) signInLoading,
    required TResult Function(SignUpLoading value) signUpLoading,
    required TResult Function(SignInError value) signInError,
    required TResult Function(SignUpError value) signUpError,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(SignInError value)? signInError,
    TResult? Function(SignUpError value)? signUpError,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(SignInError value)? signInError,
    TResult Function(SignUpError value)? signUpError,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessToJson(
      this,
    );
  }
}

abstract class Success implements AuthenticationState {
  const factory Success() = _$Success;

  factory Success.fromJson(Map<String, dynamic> json) = _$Success.fromJson;
}
