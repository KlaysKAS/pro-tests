import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _loginFormController = TextEditingController();
  final TextEditingController _passwordFormController = TextEditingController();
  bool _hidePass = false;

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
          Column(
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
          ),
          const Expanded(child: SizedBox()),
          MainButton(btnText: AppLocalizations.of(context)!.loginBtn, onPressed: () => {}),
          const SizedBox(height: Const.paddingBetweenLarge),
        ],
      ),
    );
  }
}
