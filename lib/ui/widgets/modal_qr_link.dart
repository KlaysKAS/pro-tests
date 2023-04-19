import 'package:flutter/material.dart';

class ModalBottomContent extends StatefulWidget {
  final Future<void> Function() showMyDialog;
  final void Function(String key) handleQrOrLink;

  const ModalBottomContent({super.key, required this.showMyDialog, required this.handleQrOrLink});

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
                widget.handleQrOrLink('qr');
              }),
          GestureDetector(
              child: const Icon(Icons.add_link, size: 80, semanticLabel: 'by link'),
              onTap: () {
                widget.handleQrOrLink('link');
              })
        ],
      ),
    );
  }
}
