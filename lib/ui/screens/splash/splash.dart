import 'package:flutter/material.dart';
import 'package:pro_tests/domain/providers/app_locator.dart';
import 'package:pro_tests/ext.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';

class SplashScreenScreen extends StatelessWidget {
  const SplashScreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _initLocator();
    });
    return Placeholder(
      child: Center(child: 'splash'.toText()),
    );
  }

  void _pushAuth() {
    AppRouter.router.replaceNamed(AppRoutes.auth.name);
  }

  Future<void> _initLocator() async {
    serviceLocator = AppLocator();
    await serviceLocator.init();
    _pushAuth();
  }
}
