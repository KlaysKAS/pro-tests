import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/ui/router/routes.dart';

class ModalBottomContent extends StatefulWidget {
  const ModalBottomContent({
    super.key,
  });

  @override
  State<ModalBottomContent> createState() => _ModalBottomContentState();
}

class _ModalBottomContentState extends State<ModalBottomContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(context) {
    double mHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: mHeight * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              child: const Icon(Icons.qr_code_2, size: 80, semanticLabel: 'by qr'),
              onTap: () {
                _handleTap('qr');
              }),
          GestureDetector(
              child: const Icon(Icons.add_link, size: 80, semanticLabel: 'by link'),
              onTap: () {
                _handleTap('link');
              })
        ],
      ),
    );
  }

  void _handleTap(key) => setState(() {
        context.pop();
        context.goNamed(AppRoutes.addTest.name, queryParams: <String, String>{'method': key});
      });
}
