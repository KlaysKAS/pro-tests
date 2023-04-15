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
    case 'error':
      return Error.fromJson(json);
    case 'success':
      return Success.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthenticationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
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
  factory _$$SignInDataCopyWith(
          _$SignInData value, $Res Function(_$SignInData) then) =
      __$$SignInDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentials credentials});
}

/// @nodoc
class __$$SignInDataCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignInData>
    implements _$$SignInDataCopyWith<$Res> {
  __$$SignInDataCopyWithImpl(
      _$SignInData _value, $Res Function(_$SignInData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$SignInData(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInData implements SignInData {
  const _$SignInData(
      [this.credentials = const UserCredentials(username: '', password: ''),
      final String? $type])
      : $type = $type ?? 'signIn';

  factory _$SignInData.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataFromJson(json);

  @override
  @JsonKey()
  final UserCredentials credentials;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signIn(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInData &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDataCopyWith<_$SignInData> get copyWith =>
      __$$SignInDataCopyWithImpl<_$SignInData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return signIn(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return signIn?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(credentials);
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
    required TResult Function(Error value) error,
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
    TResult? Function(Error value)? error,
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
    TResult Function(Error value)? error,
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
  const factory SignInData([final UserCredentials credentials]) = _$SignInData;

  factory SignInData.fromJson(Map<String, dynamic> json) =
      _$SignInData.fromJson;

  UserCredentials get credentials;
  @JsonKey(ignore: true)
  _$$SignInDataCopyWith<_$SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpDataCopyWith<$Res> {
  factory _$$SignUpDataCopyWith(
          _$SignUpData value, $Res Function(_$SignUpData) then) =
      __$$SignUpDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentials credentials});
}

/// @nodoc
class __$$SignUpDataCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignUpData>
    implements _$$SignUpDataCopyWith<$Res> {
  __$$SignUpDataCopyWithImpl(
      _$SignUpData _value, $Res Function(_$SignUpData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$SignUpData(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpData implements SignUpData {
  const _$SignUpData(
      [this.credentials = const UserCredentials(
          username: '', password: '', firstname: '', lastname: ''),
      final String? $type])
      : $type = $type ?? 'signUp';

  factory _$SignUpData.fromJson(Map<String, dynamic> json) =>
      _$$SignUpDataFromJson(json);

  @override
  @JsonKey()
  final UserCredentials credentials;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signUp(credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpData &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpDataCopyWith<_$SignUpData> get copyWith =>
      __$$SignUpDataCopyWithImpl<_$SignUpData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return signUp(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return signUp?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(credentials);
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
    required TResult Function(Error value) error,
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
    TResult? Function(Error value)? error,
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
    TResult Function(Error value)? error,
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
  const factory SignUpData([final UserCredentials credentials]) = _$SignUpData;

  factory SignUpData.fromJson(Map<String, dynamic> json) =
      _$SignUpData.fromJson;

  UserCredentials get credentials;
  @JsonKey(ignore: true)
  _$$SignUpDataCopyWith<_$SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInLoadingCopyWith<$Res> {
  factory _$$SignInLoadingCopyWith(
          _$SignInLoading value, $Res Function(_$SignInLoading) then) =
      __$$SignInLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignInLoading>
    implements _$$SignInLoadingCopyWith<$Res> {
  __$$SignInLoadingCopyWithImpl(
      _$SignInLoading _value, $Res Function(_$SignInLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignInLoading implements SignInLoading {
  const _$SignInLoading({final String? $type})
      : $type = $type ?? 'signInLoading';

  factory _$SignInLoading.fromJson(Map<String, dynamic> json) =>
      _$$SignInLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signInLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return signInLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return signInLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
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
    required TResult Function(Error value) error,
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
    TResult? Function(Error value)? error,
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
    TResult Function(Error value)? error,
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

  factory SignInLoading.fromJson(Map<String, dynamic> json) =
      _$SignInLoading.fromJson;
}

/// @nodoc
abstract class _$$SignUpLoadingCopyWith<$Res> {
  factory _$$SignUpLoadingCopyWith(
          _$SignUpLoading value, $Res Function(_$SignUpLoading) then) =
      __$$SignUpLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$SignUpLoading>
    implements _$$SignUpLoadingCopyWith<$Res> {
  __$$SignUpLoadingCopyWithImpl(
      _$SignUpLoading _value, $Res Function(_$SignUpLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SignUpLoading implements SignUpLoading {
  const _$SignUpLoading({final String? $type})
      : $type = $type ?? 'signUpLoading';

  factory _$SignUpLoading.fromJson(Map<String, dynamic> json) =>
      _$$SignUpLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.signUpLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return signUpLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return signUpLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
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
    required TResult Function(Error value) error,
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
    TResult? Function(Error value)? error,
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
    TResult Function(Error value)? error,
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

  factory SignUpLoading.fromJson(Map<String, dynamic> json) =
      _$SignUpLoading.fromJson;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, UserCredentials credentials});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? credentials = null,
  }) {
    return _then(_$Error(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Error implements Error {
  const _$Error(
      [this.message,
      this.credentials = const UserCredentials(
          username: '', password: '', firstname: '', lastname: ''),
      final String? $type])
      : $type = $type ?? 'error';

  factory _$Error.fromJson(Map<String, dynamic> json) => _$$ErrorFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey()
  final UserCredentials credentials;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message, credentials: $credentials)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return error(message, credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return error?.call(message, credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, credentials);
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
    required TResult Function(Error value) error,
    required TResult Function(Success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInData value)? signIn,
    TResult? Function(SignUpData value)? signUp,
    TResult? Function(SignInLoading value)? signInLoading,
    TResult? Function(SignUpLoading value)? signUpLoading,
    TResult? Function(Error value)? error,
    TResult? Function(Success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInData value)? signIn,
    TResult Function(SignUpData value)? signUp,
    TResult Function(SignInLoading value)? signInLoading,
    TResult Function(SignUpLoading value)? signUpLoading,
    TResult Function(Error value)? error,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorToJson(
      this,
    );
  }
}

abstract class Error implements AuthenticationState {
  const factory Error(
      [final String? message, final UserCredentials credentials]) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  String? get message;
  UserCredentials get credentials;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Success implements Success {
  const _$Success({final String? $type}) : $type = $type ?? 'success';

  factory _$Success.fromJson(Map<String, dynamic> json) =>
      _$$SuccessFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Success);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentials credentials) signIn,
    required TResult Function(UserCredentials credentials) signUp,
    required TResult Function() signInLoading,
    required TResult Function() signUpLoading,
    required TResult Function(String? message, UserCredentials credentials)
        error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentials credentials)? signIn,
    TResult? Function(UserCredentials credentials)? signUp,
    TResult? Function()? signInLoading,
    TResult? Function()? signUpLoading,
    TResult? Function(String? message, UserCredentials credentials)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentials credentials)? signIn,
    TResult Function(UserCredentials credentials)? signUp,
    TResult Function()? signInLoading,
    TResult Function()? signUpLoading,
    TResult Function(String? message, UserCredentials credentials)? error,
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
    required TResult Function(Error value) error,
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
    TResult? Function(Error value)? error,
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
    TResult Function(Error value)? error,
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
