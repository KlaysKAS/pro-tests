import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/ui/router/routes.dart';

class BottomNav extends StatelessWidget {
  final AppRoutes currentPage;

  const BottomNav({
    super.key,
    required this.currentPage,
  });

  void _handleTap(int index) =>
      AppRouter.router.goNamed(_routeFromPage(index).name);

  @override
  Widget build(context) {
    final text = AppLocalizations.of(context)!;
    return BottomNavigationBar(
      onTap: _handleTap,
      currentIndex: _pageFromRoute(),
      items: [
        BottomNavigationBarItem(
          label: text.homeBottomNavCreateBtn,
          icon: const Icon(Icons.assignment_outlined),
        ),
        BottomNavigationBarItem(
          label: text.homeBottomNavPassBtn,
          icon: const Icon(Icons.edit_note),
        ),
      ],
    );
  }

  int _pageFromRoute() {
    switch (currentPage) {
      case AppRoutes.createTest:
        return 0;
      case AppRoutes.passedTest:
        return 1;
      default:
        throw Exception('Got unexpected current page');
    }
  }

  AppRoutes _routeFromPage(int index) {
    switch (index) {
      case 0:
        return AppRoutes.createTest;
      case 1:
        return AppRoutes.passedTest;
      default:
        throw Exception('Got unexpected page index');
    }
  }
}
