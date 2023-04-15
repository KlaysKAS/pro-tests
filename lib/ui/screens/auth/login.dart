import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Expanded(child: SizedBox()),
          Text(
            AppLocalizations.of(context)!.loginMainTitle,
            style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
          ),
          const SizedBox(height: Const.paddingBetweenLarge * 3),
          _Content(),
          const Expanded(child: SizedBox()),
          MainButton(btnText: AppLocalizations.of(context)!.loginBtn, onPressed: () => {}),
          const SizedBox(height: Const.paddingBetweenLarge),
        ],
      ),
    );
  }
}

class _Content extends StatefulWidget {
  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final TextEditingController _loginFormController = TextEditingController();

  final TextEditingController _passwordFormController = TextEditingController();

  bool _hidePass = false;

  @override
  void dispose() {
    _loginFormController.dispose();
    _passwordFormController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: Const.paddingBetweenLarge),
        MainFormInput(
          controller: _loginFormController,
          onChanged: (value) => {_loginFormController.text = value},
          decoration: InputDecoration(label: Text(AppLocalizations.of(context)!.loginFormMailTitle)),
        ),
        const SizedBox(height: Const.paddingBetweenLarge),
        MainFormInput(
          obscureText: _hidePass,
          controller: _passwordFormController,
          onChanged: (value) => {_passwordFormController.text = value},
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () => {_hidePass = !_hidePass, setState(() => {})},
                child: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              ),
              label: Text(AppLocalizations.of(context)!.loginFormPasswordTitle)),
        ),
      ],
    );
  }
}
