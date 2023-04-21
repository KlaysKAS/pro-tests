import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_zxing/flutter_zxing.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_tests/ext.dart';
import 'package:pro_tests/ui/router/routes.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'dart:typed_data';
import 'package:image/image.dart' as imglib;
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:flutter_share_me/flutter_share_me.dart';

class TestShareScreen extends StatefulWidget {
  final String testId;

  const TestShareScreen({super.key, required this.testId});

  @override
  State<TestShareScreen> createState() => _TestShareScreenState();
}

class _TestShareScreenState extends State<TestShareScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  late final Encode result = zx.encodeBarcode(
    contents: 'http://protests.cfeee1e5e4e00a.ru/home/attemptTest/${widget.testId}',
    params: EncodeParams(
      format: Format.qrCode,
      width: 250,
      height: 250,
      margin: 10,
      eccLevel: EccLevel.high,
    ),
  );

  Uint8List? bytess;

  void createBarcode() {
    FocusScope.of(context).unfocus();
    final String text = 'http://protests.cfeee1e5e4e00a.ru/home/attemptTest/${widget.testId}';
    const int width = 250;
    const int height = 250;
    const int margin = 10;
    const EccLevel ecc = EccLevel.medium;
    final Encode result = zx.encodeBarcode(
      contents: text,
      params: EncodeParams(
        format: Format.qrCode,
        width: width,
        height: height,
        margin: margin,
        eccLevel: ecc,
      ),
    );
    String? error;
    if (result.isValid && result.data != null) {
      try {
        final imglib.Image img = imglib.Image.fromBytes(
          width: width,
          height: height,
          bytes: result.data!.buffer,
          numChannels: 4,
        );
        final Uint8List encodedBytes = Uint8List.fromList(
          imglib.encodeJpg(img),
        );
        bytess = encodedBytes;
      } catch (e) {
        error = e.toString();
      }
    }
  }

  bool _isFirstUse = true;

  void _onceUse() {
    if (!_isFirstUse) return;
    _isFirstUse = false;
    setState(() {
      createBarcode();
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      _onceUse();
    });
    // final Uint8List? encodedBytes = _init_qr_data();
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text.shareTestAppbarTitle,
          style: const TextStyle(
            fontSize: Const.fontSizeBodyTitle,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: Const.paddingBetweenLarge,
            ),
            Text(
              widget.testId,
              style: const TextStyle(
                fontSize: Const.fontSizeBodyTitle,
              ),
            ),
            const SizedBox(height: Const.paddingBetweenSmall),
            Expanded(
              child: Center(
                child: bytess == null
                    ? const CircularProgressIndicator()
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Const.paddingBetweenLarge,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.memory(
                            bytess!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: Const.paddingBetweenSmall),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MainButton(
                  btnText: text.shareTestLinkBtn,
                  onPressed: () async {
                    String? response;
                    final FlutterShareMe flutterShareMe = FlutterShareMe();
                    response = await flutterShareMe.shareToSystem(
                      msg: 'http://protests.cfeee1e5e4e00a.ru/home/attemptTest/${widget.testId}',
                    );
                  },
                ),
                const SizedBox(height: Const.paddingBetweenStandart),
                MainButton(
                  btnText: text.shareTestHomeBtn,
                  onPressed: () => {
                    context.goNamed(AppRoutes.home.name),
                  },
                ),
                const SizedBox(height: Const.paddingBetweenLarge),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
