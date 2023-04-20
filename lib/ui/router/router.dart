import 'package:go_router/go_router.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/screens/home_screen.dart';

import '../screens/screens.dart';

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.splash.name,
        builder: (context, state) => const SplashScreenScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.auth.name}',
        name: AppRoutes.auth.name,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: '/${AppRoutes.home.name}',
        name: AppRoutes.home.name,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.createTest.name,
            name: AppRoutes.createTest.name,
            builder: (context, state) => const TestCreationScreen(),
          ),
          GoRoute(
            path: '${AppRoutes.editTest.name}/:testId',
            name: AppRoutes.editTest.name,
            builder: (context, state) => const TestEditScreen(),
          ),
          GoRoute(
            path: '${AppRoutes.shareTest.name}/:testId',
            name: AppRoutes.shareTest.name,
            builder: (context, state) => const TestShareScreen(),
          ),
          GoRoute(
            path: '${AppRoutes.testDetails.name}/:testId',
            name: AppRoutes.testDetails.name,
            builder: (context, state) => const TestDetailsScreen(),
          ),
          GoRoute(
              path: AppRoutes.addTest.name,
              name: AppRoutes.addTest.name,
              builder: (context, state) => const TestAddingScreen()),
          GoRoute(
            path: '${AppRoutes.attemptTest.name}/:testId',
            name: AppRoutes.attemptTest.name,
            builder: (context, state) {
              final testId = state.params['testId'] ?? 'Not';
              return TestAttemptScreen(testId: testId);
            },
          ),
          GoRoute(
            path: '${AppRoutes.testResults.name}/:testId',
            name: AppRoutes.testResults.name,
            builder: (context, state) => const TestResultsScreen(),
          ),
        ],
      ),
    ],
  );
}
