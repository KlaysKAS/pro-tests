// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials_auth_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentialsAuthService _$UserCredentialsAuthServiceFromJson(Map<String, dynamic> json) {
  return _UserCredentialsAuthService.fromJson(json);
}

/// @nodoc
mixin _$UserCredentialsAuthService {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsAuthServiceCopyWith<UserCredentialsAuthService> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsAuthServiceCopyWith<$Res> {
  factory $UserCredentialsAuthServiceCopyWith(
          UserCredentialsAuthService value, $Res Function(UserCredentialsAuthService) then) =
      _$UserCredentialsAuthServiceCopyWithImpl<$Res, UserCredentialsAuthService>;
  @useResult
  $Res call({String login, String password, String? fullName});
}

/// @nodoc
class _$UserCredentialsAuthServiceCopyWithImpl<$Res, $Val extends UserCredentialsAuthService>
    implements $UserCredentialsAuthServiceCopyWith<$Res> {
  _$UserCredentialsAuthServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? fullName = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCredentialsAuthServiceCopyWith<$Res> implements $UserCredentialsAuthServiceCopyWith<$Res> {
  factory _$$_UserCredentialsAuthServiceCopyWith(
          _$_UserCredentialsAuthService value, $Res Function(_$_UserCredentialsAuthService) then) =
      __$$_UserCredentialsAuthServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password, String? fullName});
}

/// @nodoc
class __$$_UserCredentialsAuthServiceCopyWithImpl<$Res>
    extends _$UserCredentialsAuthServiceCopyWithImpl<$Res, _$_UserCredentialsAuthService>
    implements _$$_UserCredentialsAuthServiceCopyWith<$Res> {
  __$$_UserCredentialsAuthServiceCopyWithImpl(
      _$_UserCredentialsAuthService _value, $Res Function(_$_UserCredentialsAuthService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? fullName = freezed,
  }) {
    return _then(_$_UserCredentialsAuthService(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCredentialsAuthService implements _UserCredentialsAuthService {
  const _$_UserCredentialsAuthService(this.login, this.password, this.fullName);

  factory _$_UserCredentialsAuthService.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsAuthServiceFromJson(json);

  @override
  final String login;
  @override
  final String password;
  @override
  final String? fullName;

  @override
  String toString() {
    return 'UserCredentialsAuthService(login: $login, password: $password, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentialsAuthService &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.fullName, fullName) || other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCredentialsAuthServiceCopyWith<_$_UserCredentialsAuthService> get copyWith =>
      __$$_UserCredentialsAuthServiceCopyWithImpl<_$_UserCredentialsAuthService>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsAuthServiceToJson(
      this,
    );
  }
}

abstract class _UserCredentialsAuthService implements UserCredentialsAuthService {
  const factory _UserCredentialsAuthService(final String login, final String password, final String? fullName) =
      _$_UserCredentialsAuthService;

  factory _UserCredentialsAuthService.fromJson(Map<String, dynamic> json) = _$_UserCredentialsAuthService.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  String? get fullName;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsAuthServiceCopyWith<_$_UserCredentialsAuthService> get copyWith =>
      throw _privateConstructorUsedError;
}
