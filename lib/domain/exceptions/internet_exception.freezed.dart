// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAccount,
    required TResult Function() loginAlreadyExist,
    required TResult Function() badConnection,
    required TResult Function() somethingWentWrong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noAccount,
    TResult? Function()? loginAlreadyExist,
    TResult? Function()? badConnection,
    TResult? Function()? somethingWentWrong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAccount,
    TResult Function()? loginAlreadyExist,
    TResult Function()? badConnection,
    TResult Function()? somethingWentWrong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoAccount value) noAccount,
    required TResult Function(LoginAlreadyExist value) loginAlreadyExist,
    required TResult Function(BadConnection value) badConnection,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoAccount value)? noAccount,
    TResult? Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult? Function(BadConnection value)? badConnection,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoAccount value)? noAccount,
    TResult Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult Function(BadConnection value)? badConnection,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetExceptionCopyWith<$Res> {
  factory $InternetExceptionCopyWith(InternetException value, $Res Function(InternetException) then) =
      _$InternetExceptionCopyWithImpl<$Res, InternetException>;
}

/// @nodoc
class _$InternetExceptionCopyWithImpl<$Res, $Val extends InternetException>
    implements $InternetExceptionCopyWith<$Res> {
  _$InternetExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoAccountCopyWith<$Res> {
  factory _$$NoAccountCopyWith(_$NoAccount value, $Res Function(_$NoAccount) then) = __$$NoAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAccountCopyWithImpl<$Res> extends _$InternetExceptionCopyWithImpl<$Res, _$NoAccount>
    implements _$$NoAccountCopyWith<$Res> {
  __$$NoAccountCopyWithImpl(_$NoAccount _value, $Res Function(_$NoAccount) _then) : super(_value, _then);
}

/// @nodoc

class _$NoAccount implements NoAccount {
  const _$NoAccount();

  @override
  String toString() {
    return 'InternetException.noAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$NoAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAccount,
    required TResult Function() loginAlreadyExist,
    required TResult Function() badConnection,
    required TResult Function() somethingWentWrong,
  }) {
    return noAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noAccount,
    TResult? Function()? loginAlreadyExist,
    TResult? Function()? badConnection,
    TResult? Function()? somethingWentWrong,
  }) {
    return noAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAccount,
    TResult Function()? loginAlreadyExist,
    TResult Function()? badConnection,
    TResult Function()? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoAccount value) noAccount,
    required TResult Function(LoginAlreadyExist value) loginAlreadyExist,
    required TResult Function(BadConnection value) badConnection,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
  }) {
    return noAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoAccount value)? noAccount,
    TResult? Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult? Function(BadConnection value)? badConnection,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
  }) {
    return noAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoAccount value)? noAccount,
    TResult Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult Function(BadConnection value)? badConnection,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (noAccount != null) {
      return noAccount(this);
    }
    return orElse();
  }
}

abstract class NoAccount implements InternetException {
  const factory NoAccount() = _$NoAccount;
}

/// @nodoc
abstract class _$$LoginAlreadyExistCopyWith<$Res> {
  factory _$$LoginAlreadyExistCopyWith(_$LoginAlreadyExist value, $Res Function(_$LoginAlreadyExist) then) =
      __$$LoginAlreadyExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAlreadyExistCopyWithImpl<$Res> extends _$InternetExceptionCopyWithImpl<$Res, _$LoginAlreadyExist>
    implements _$$LoginAlreadyExistCopyWith<$Res> {
  __$$LoginAlreadyExistCopyWithImpl(_$LoginAlreadyExist _value, $Res Function(_$LoginAlreadyExist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginAlreadyExist implements LoginAlreadyExist {
  const _$LoginAlreadyExist();

  @override
  String toString() {
    return 'InternetException.loginAlreadyExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$LoginAlreadyExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAccount,
    required TResult Function() loginAlreadyExist,
    required TResult Function() badConnection,
    required TResult Function() somethingWentWrong,
  }) {
    return loginAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noAccount,
    TResult? Function()? loginAlreadyExist,
    TResult? Function()? badConnection,
    TResult? Function()? somethingWentWrong,
  }) {
    return loginAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAccount,
    TResult Function()? loginAlreadyExist,
    TResult Function()? badConnection,
    TResult Function()? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (loginAlreadyExist != null) {
      return loginAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoAccount value) noAccount,
    required TResult Function(LoginAlreadyExist value) loginAlreadyExist,
    required TResult Function(BadConnection value) badConnection,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
  }) {
    return loginAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoAccount value)? noAccount,
    TResult? Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult? Function(BadConnection value)? badConnection,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
  }) {
    return loginAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoAccount value)? noAccount,
    TResult Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult Function(BadConnection value)? badConnection,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (loginAlreadyExist != null) {
      return loginAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class LoginAlreadyExist implements InternetException {
  const factory LoginAlreadyExist() = _$LoginAlreadyExist;
}

/// @nodoc
abstract class _$$BadConnectionCopyWith<$Res> {
  factory _$$BadConnectionCopyWith(_$BadConnection value, $Res Function(_$BadConnection) then) =
      __$$BadConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadConnectionCopyWithImpl<$Res> extends _$InternetExceptionCopyWithImpl<$Res, _$BadConnection>
    implements _$$BadConnectionCopyWith<$Res> {
  __$$BadConnectionCopyWithImpl(_$BadConnection _value, $Res Function(_$BadConnection) _then) : super(_value, _then);
}

/// @nodoc

class _$BadConnection implements BadConnection {
  const _$BadConnection();

  @override
  String toString() {
    return 'InternetException.badConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BadConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAccount,
    required TResult Function() loginAlreadyExist,
    required TResult Function() badConnection,
    required TResult Function() somethingWentWrong,
  }) {
    return badConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noAccount,
    TResult? Function()? loginAlreadyExist,
    TResult? Function()? badConnection,
    TResult? Function()? somethingWentWrong,
  }) {
    return badConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAccount,
    TResult Function()? loginAlreadyExist,
    TResult Function()? badConnection,
    TResult Function()? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (badConnection != null) {
      return badConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoAccount value) noAccount,
    required TResult Function(LoginAlreadyExist value) loginAlreadyExist,
    required TResult Function(BadConnection value) badConnection,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
  }) {
    return badConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoAccount value)? noAccount,
    TResult? Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult? Function(BadConnection value)? badConnection,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
  }) {
    return badConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoAccount value)? noAccount,
    TResult Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult Function(BadConnection value)? badConnection,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (badConnection != null) {
      return badConnection(this);
    }
    return orElse();
  }
}

abstract class BadConnection implements InternetException {
  const factory BadConnection() = _$BadConnection;
}

/// @nodoc
abstract class _$$SomethingWentWrongCopyWith<$Res> {
  factory _$$SomethingWentWrongCopyWith(_$SomethingWentWrong value, $Res Function(_$SomethingWentWrong) then) =
      __$$SomethingWentWrongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SomethingWentWrongCopyWithImpl<$Res> extends _$InternetExceptionCopyWithImpl<$Res, _$SomethingWentWrong>
    implements _$$SomethingWentWrongCopyWith<$Res> {
  __$$SomethingWentWrongCopyWithImpl(_$SomethingWentWrong _value, $Res Function(_$SomethingWentWrong) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SomethingWentWrong implements SomethingWentWrong {
  const _$SomethingWentWrong();

  @override
  String toString() {
    return 'InternetException.somethingWentWrong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SomethingWentWrong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noAccount,
    required TResult Function() loginAlreadyExist,
    required TResult Function() badConnection,
    required TResult Function() somethingWentWrong,
  }) {
    return somethingWentWrong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noAccount,
    TResult? Function()? loginAlreadyExist,
    TResult? Function()? badConnection,
    TResult? Function()? somethingWentWrong,
  }) {
    return somethingWentWrong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noAccount,
    TResult Function()? loginAlreadyExist,
    TResult Function()? badConnection,
    TResult Function()? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoAccount value) noAccount,
    required TResult Function(LoginAlreadyExist value) loginAlreadyExist,
    required TResult Function(BadConnection value) badConnection,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
  }) {
    return somethingWentWrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoAccount value)? noAccount,
    TResult? Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult? Function(BadConnection value)? badConnection,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
  }) {
    return somethingWentWrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoAccount value)? noAccount,
    TResult Function(LoginAlreadyExist value)? loginAlreadyExist,
    TResult Function(BadConnection value)? badConnection,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong(this);
    }
    return orElse();
  }
}

abstract class SomethingWentWrong implements InternetException {
  const factory SomethingWentWrong() = _$SomethingWentWrong;
}
