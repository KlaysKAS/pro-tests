import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/domain/models/user_credentials/user_credentials.dart';
import 'package:pro_tests/domain/repository/authentication/authentication.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';
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
      final token = await repo.login(loginData);
      if (await serviceLocator.tokenManager.putToken(token)) {
        _updateState(_successState);
        return true;
      } else {
        _updateState(const AuthenticationState.signInError('Что-то пошло не так'));
      }
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
      login(registerData);
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
    serviceLocator.tokenManager.deleteToken();
    AppRouter.router.replaceNamed(AppRoutes.auth.name);
  }
}
