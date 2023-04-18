import 'package:flutter/material.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/widgets/scaffold_with_bottom_navigation.dart';

class PassedTestScreen extends StatelessWidget {
  const PassedTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('test'),
      ),
    );
  }
}
