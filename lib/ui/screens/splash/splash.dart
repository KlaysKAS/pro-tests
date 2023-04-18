import 'package:flutter/material.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';

class SplashScreenScreen extends StatelessWidget {
  const SplashScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _pushAuth();
    });
    return const Placeholder();
  }

  void _pushAuth() {
    AppRouter.router.replaceNamed(AppRoutes.auth.name);
  }
}
