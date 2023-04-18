import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/auth/login.dart';
import 'package:pro_tests/ui/screens/auth/register.dart';
import 'package:pro_tests/ui/utils/text_controllers.dart';

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
    final authState = ref.watch(serviceLocator.authenticationStateNotifier);
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
      AppRouter.router.replaceNamed(AppRoutes.home.name);
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
