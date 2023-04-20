import 'package:flutter/material.dart';

class TestAttemptScreen extends StatelessWidget {
  TestAttemptScreen({super.key, this.testId});

  String? testId;

  @override
  Widget build(BuildContext context) {
    return Text(testId!);
  }
}
