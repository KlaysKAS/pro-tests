import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro_tests/domain/models/user_credentials/user_credentials.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/utils/text_controllers.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';
import 'package:pro_tests/ui/utils/validators.dart';

class RegisterScreen extends ConsumerWidget {
  final SignUpTextControllers _textControllers;

  final _formKey = GlobalKey<FormState>();

  RegisterScreen(this._textControllers, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(serviceLocator.authenticationStateNotifier.notifier);
    final errorMessage = _parseError(
      ref.read(serviceLocator.authenticationStateNotifier).whenOrNull(signUpError: (s) => s),
    );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: Const.paddingBetweenLarge * 2),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.registerMainTitle,
                    style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
                  ),
                ),
                const SizedBox(height: Const.paddingBetweenLarge * 2),
                _Content(
                  errorMessage,
                  _formKey,
                  _textControllers,
                ),
                const SizedBox(height: Const.paddingBetweenSmall),
                Center(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: notifier.openLoginForm,
                    child: Text(
                      AppLocalizations.of(context)!.registerAlreadyRegistered,
                      style: const TextStyle(fontSize: Const.fontSizeSecondary),
                    ),
                  ),
                ),
                const SizedBox(height: Const.paddingBetweenLarge * 2),
              ],
            ),
          ),
          MainButton(btnText: AppLocalizations.of(context)!.registerBtn, onPressed: () => _register(notifier)),
          const SizedBox(height: Const.paddingBetweenLarge),
        ],
      ),
    );
  }

  UserCredentials _getUserInfo() {
    final login = _textControllers.login;
    final firstname = _textControllers.firstname;
    final lastname = _textControllers.lastname;
    final pass = _textControllers.password;
    return UserCredentials(username: login, firstname: firstname, lastname: lastname, password: pass);
  }

  void _register(AuthenticationStateNotifier notifier) {
    if (_formKey.currentState?.validate() ?? false) {
      final cred = _getUserInfo();
      notifier.register(cred);
    }
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

  final SignUpTextControllers _textControllers;

  const _Content(this.errorText, this.formKey, this._textControllers);

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
            controller: widget._textControllers.loginFormController,
            decoration: InputDecoration(label: Text(locale.registerFormLoginTitle)),
            validator: (value) => Validators.loginValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            controller: widget._textControllers.firstnameFormController,
            decoration: InputDecoration(label: Text(locale.registerFormFirstnameTitle)),
            validator: (value) => Validators.firstnameValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            controller: widget._textControllers.lastnameFormController,
            decoration: InputDecoration(label: Text(locale.registerFormLastnameTitle)),
            validator: (value) => Validators.lastnameValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            obscureText: _hidePass,
            validator: (value) => Validators.passwordRegisterValidator(value, locale),
            controller: widget._textControllers.passwordFormController,
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
                Validators.repeatPasswordRegisterValidator(value, widget._textControllers.password, locale),
            controller: widget._textControllers.repeatPasswordFormController,
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
