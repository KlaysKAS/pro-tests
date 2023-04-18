import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/data/services/auth_service.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/domain/repository/authentication.dart';
import 'package:pro_tests/domain/user_credentials_mapper.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/auth/login.dart';
import 'package:pro_tests/ui/screens/auth/register.dart';
import 'package:pro_tests/ui/states/authentication_state/authentication_state.dart';
import 'package:pro_tests/ui/utils/text_controllers.dart';

final authProvider = StateNotifierProvider<AuthenticationStateNotifier, AuthenticationState>(
  (ref) => AuthenticationStateNotifier(
    Reps(
      authService: AuthServiceImpl(
        Dio(),
      ),
    ),
  ),
);

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  final loginControllers = SignInTextControllers();
  final registerControllers = SignUpTextControllers();

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    return authState.map(
      signIn: _signInPage,
      signUp: _signUpPage,
      signInLoading: _signInLoadingPage,
      signUpLoading: _signUpLoadingPage,
      signInError: _signInPage,
      signUpError: _signUpPage,
      success: _successPage,
    );
  }

  Widget _signInPage(_) => _loginPage();

  Widget _signInLoadingPage(_) {
    return Stack(
      children: [
        _loginPage(),
        const Center(
          child: CircularProgressIndicator(),
        )
      ],
    );
  }

  Widget _signUpPage(_) => _registerPage();

  Widget _signUpLoadingPage(_) {
    return Stack(
      children: [
        _registerPage(),
        const Center(
          child: CircularProgressIndicator(),
        )
      ],
    );
  }

  Widget _successPage(_) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      registerControllers.clear();
      loginControllers.clear();
      AppRouter.router.pushNamed(AppRoutes.myTest.name);
    });

    return Container();
  }

  Widget _loginPage() {
    return LoginScreen(loginControllers);
  }

  Widget _registerPage() {
    return RegisterScreen(registerControllers);
  }

  @override
  void dispose() {
    registerControllers.dispose();
    loginControllers.dispose();
    super.dispose();
  }
}

class Reps extends AuthenticationRepository {
  Reps({required super.authService});

  @override
  Future<void> login(UserCredentials loginCred) async {
    final data = UserCredentialsMapper.fromForm(loginCred);
    await authService.login(data);
  }

  @override
  Future<void> register(UserCredentials registerCred) async {
    final data = UserCredentialsMapper.fromForm(registerCred);
    await authService.register(data);
  }

  @override
  void signOut() {}
}
