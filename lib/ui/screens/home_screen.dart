import 'package:flutter/material.dart';
import 'package:pro_tests/ui/screens/settings/settings.dart';
import 'package:pro_tests/ui/screens/test_passing/passed_tests.dart';
import 'package:pro_tests/ui/screens/users_tests/test_share/test_share.dart';
import 'package:pro_tests/ui/screens/users_tests/users_tests.dart';
import 'package:pro_tests/ui/widgets/scaffold_with_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWithBottomNav(
      pages: [UsersTestsScreen(), PassedTestScreen(), SettingsScreen()],
    );
  }
}
