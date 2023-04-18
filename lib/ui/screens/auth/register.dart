import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';
import 'package:pro_tests/ui/utils/validators.dart';

class RegisterScreen extends ConsumerWidget {
  final TextEditingController _loginFormController;
  final TextEditingController _passwordFormController;
  final TextEditingController _lastnameFormController;
  final TextEditingController _firstnameFormController;
  final TextEditingController _repeatPasswordFormController;

  final _formKey = GlobalKey<FormState>();

  RegisterScreen(this._loginFormController, this._passwordFormController, this._lastnameFormController,
      this._firstnameFormController, this._repeatPasswordFormController,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final notifier = ref.read(authProvider.notifier);
    // final errorMessage = _parseError(ref.read(authProvider).whenOrNull(signUpError: (s) => s));
    const notifier = null; // TODO: change it when auth page will be created
    const errorMessage = null; // TODO: change it when auth page will be created
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: Const.paddingBetweenLarge * 3),
          Center(
            child: Text(
              AppLocalizations.of(context)!.registerMainTitle,
              style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
            ),
          ),
          const SizedBox(height: Const.paddingBetweenLarge * 3),
          _Content(errorMessage, _formKey, _loginFormController, _firstnameFormController, _lastnameFormController,
              _passwordFormController, _repeatPasswordFormController),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainButton(btnText: AppLocalizations.of(context)!.registerBtn, onPressed: () => _register(notifier)),
          const SizedBox(height: Const.paddingBetweenLarge),
        ],
      ),
    );
  }

  UserCredentials _getUserInfo() {
    final login = _loginFormController.text;
    final firstname = _firstnameFormController.text;
    final lastname = _lastnameFormController.text;
    final pass = _passwordFormController.text;
    return UserCredentials(username: login, firstname: firstname, lastname: lastname, password: pass);
  }

  void _register(AuthenticationStateNotifier notifier) {
    // if (_formKey.currentState?.validate() ?? false) {
    //   final cred = _getUserInfo();
    //   notifier.register(cred);
    // }
  }

  String? _parseError(String? error) {
    switch (error) {
      case 'Нет соединения с интернетом':
      case 'Что-то пошло не так':
        Fluttertoast.showToast(msg: error!);
        return null;
      case null:
        return null;
    }
    return error;
  }
}

class _Content extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final String? errorText;

  final TextEditingController loginController;
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController passwordController;
  final TextEditingController repeatPasswordController;

  const _Content(this.errorText, this.formKey, this.loginController, this.firstnameController, this.lastnameController,
      this.passwordController, this.repeatPasswordController);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  bool _hidePass = true;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;

    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            controller: widget.loginController,
            decoration: InputDecoration(label: Text(locale.registerFormLoginTitle)),
            validator: (value) => Validators.loginValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            controller: widget.firstnameController,
            decoration: InputDecoration(label: Text(locale.registerFormFirstnameTitle)),
            validator: (value) => Validators.firstnameValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            controller: widget.lastnameController,
            decoration: InputDecoration(label: Text(locale.registerFormLastnameTitle)),
            validator: (value) => Validators.lastnameValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            obscureText: _hidePass,
            validator: (value) => Validators.passwordRegisterValidator(value, locale),
            controller: widget.passwordController,
            decoration: InputDecoration(
              errorText: widget.errorText,
              suffixIcon: GestureDetector(
                onTap: () => {_hidePass = !_hidePass, setState(() => {})},
                child: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              ),
              label: Text(AppLocalizations.of(context)!.registerFormPasswordTitle),
            ),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            obscureText: _hidePass,
            validator: (value) =>
                Validators.repeatPasswordRegisterValidator(value, widget.passwordController.text, locale),
            controller: widget.repeatPasswordController,
            decoration: InputDecoration(
              errorText: widget.errorText,
              suffixIcon: GestureDetector(
                onTap: () => {_hidePass = !_hidePass, setState(() => {})},
                child: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              ),
              label: Text(AppLocalizations.of(context)!.registerFormRePasswordTitle),
            ),
          ),
        ],
      ),
    );
  }
}
