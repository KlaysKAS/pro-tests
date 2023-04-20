import 'package:flutter/material.dart';

class TestAttemptScreen extends StatelessWidget {
  const TestAttemptScreen({super.key, this.testId});

  final String? testId;

  @override
  Widget build(BuildContext context) {
    return Text(testId!);
  }
}
