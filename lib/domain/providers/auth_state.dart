import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/domain/exceptions/internet_exception.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';

import '../models/user_credentials.dart';
import '../repository/authentication.dart';

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
        noAccount: () => _updateState(AuthenticationState.error('Неверная почта или пароль', loginData)),
        badConnection: () => _updateState(AuthenticationState.error('Нет соединения с интернетом', loginData)),
      );
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
        loginAlreadyExist: () => _updateState(AuthenticationState.error('Логин уже занят', registerData)),
        badConnection: () => _updateState(AuthenticationState.error('Нет соединения с интернетом', registerData)),
      );
    }
    return false;
  }

  void openRegisterForm() {
    _updateState(_initialSignUpState);
  }

  void signOut() {
    _updateState(_initialState);
    repo.signOut();
  }
}
