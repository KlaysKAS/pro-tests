import 'package:flutter/material.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/modal_qr_link.dart';

class PassedTestScreen extends StatelessWidget {
  const PassedTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Const.borderRadiusStandart,
                          topRight: Const.borderRadiusStandart,
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return const ModalBottomContent();
                      });
                },
                child: const Text('test bottom modal')),
          ],
        ),
      ),
    );
  }
}
