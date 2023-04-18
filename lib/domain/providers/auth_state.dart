import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';
import 'package:pro_tests/domain/repository/authentication.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

class AuthenticationStateNotifier extends StateNotifier<AuthenticationState> {
  static const _initialState = AuthenticationState.signIn();
  static const _initialSignUpState = AuthenticationState.signUp();
  static const _inLoadingState = AuthenticationState.signInLoading();
  static const _upLoadingState = AuthenticationState.signUpLoading();
  static const _successState = AuthenticationState.success();

  final AuthenticationRepository repo;

  AuthenticationStateNotifier(this.repo) : super(_initialState);

  void _updateState(AuthenticationState newState) => state = newState;

  Future<bool> login(UserCredentials loginData) async {
    _updateState(_inLoadingState);
    try {
      await repo.login(loginData);
      state = _successState;
      return true;
    } on InternetException catch (e) {
      e.whenOrNull(
        noAccount: () => _updateState(const AuthenticationState.signInError('Неверная почта или пароль')),
        badConnection: () => _updateState(const AuthenticationState.signInError('Нет соединения с интернетом')),
      );
    } on Object catch (e, s) {
      debugPrint(e as String?);
      debugPrintStack(stackTrace: s);
      _updateState(const AuthenticationState.signInError('Что-то пошло не так'));
    }
    return false;
  }

  Future<bool> register(UserCredentials registerData) async {
    _updateState(_upLoadingState);
    try {
      await repo.register(registerData);
      await repo.login(registerData);
      state = _successState;
      return true;
    } on InternetException catch (e) {
      e.whenOrNull(
        loginAlreadyExist: () => _updateState(const AuthenticationState.signUpError('Логин уже занят')),
        badConnection: () => _updateState(const AuthenticationState.signUpError('Нет соединения с интернетом')),
      );
    } on Object catch (e, s) {
      debugPrint(e as String?);
      debugPrintStack(stackTrace: s);
      _updateState(const AuthenticationState.signUpError('Что-то пошло не так'));
    }
    return false;
  }

  void openRegisterForm() {
    _updateState(_initialSignUpState);
  }

  void openLoginForm() {
    _updateState(_initialState);
  }

  void signOut() {
    _updateState(_initialState);
    repo.signOut();
  }
}
