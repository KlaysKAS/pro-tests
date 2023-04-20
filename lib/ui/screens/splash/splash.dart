import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';

class SplashScreenScreen extends ConsumerStatefulWidget {
  const SplashScreenScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenScreenState();
}

class _SplashScreenScreenState extends ConsumerState<SplashScreenScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _initLocator();
    });
    return const Placeholder();
  }

  void _pushAuth() async {
    AppRouter.router.replaceNamed(AppRoutes.auth.name);
  }

  void _pushHome() async {
    AppRouter.router.replaceNamed(AppRoutes.home.name);
  }

  Future<void> _initLocator() async {
    final tm = serviceLocator.tokenManager;
    if (!tm.isTokenValid(await tm.readToken())) {
      _pushAuth();
    } else {
      _pushHome();
    }
    FlutterNativeSplash.remove();
  }
}
