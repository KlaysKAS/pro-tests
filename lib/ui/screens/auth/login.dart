import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pro_tests/domain/models/user_credentials.dart';
import 'package:pro_tests/domain/providers/auth_state.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:pro_tests/ui/utils/text_controllers.dart';
import 'package:pro_tests/ui/widgets/main_button.dart';
import 'package:pro_tests/ui/widgets/main_form_input.dart';
import 'package:pro_tests/ui/utils/validators.dart';

class LoginScreen extends ConsumerWidget {
  final SignInTextControllers _textControllers;

  final _formKey = GlobalKey<FormState>();

  LoginScreen(this._textControllers, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(serviceLocator.authenticationStateNotifier.notifier);
    final errorMessage = _parseError(
      ref.read(serviceLocator.authenticationStateNotifier).whenOrNull(signInError: (s) => s),
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          Text(
            AppLocalizations.of(context)!.loginMainTitle,
            style: const TextStyle(fontSize: Const.fontSizeBodyTitle),
          ),
          const SizedBox(height: Const.paddingBetweenLarge * 3),
          _Content(
            errorMessage,
            _formKey,
            _textControllers,
          ),
          const SizedBox(height: Const.paddingBetweenSmall),
          InkWell(
            splashColor: Colors.transparent,
            onTap: notifier.openRegisterForm,
            child: Text(
              AppLocalizations.of(context)!.loginDontHaveAnAccount,
              style: const TextStyle(fontSize: Const.fontSizeSecondary),
            ),
          ),
          const Spacer(),
          MainButton(btnText: AppLocalizations.of(context)!.loginBtn, onPressed: () => _login(notifier)),
          const SizedBox(height: Const.paddingBetweenLarge),
        ],
      ),
    );
  }

  UserCredentials _getUserInfo() {
    final login = _textControllers.login;
    final pass = _textControllers.password;
    return UserCredentials(username: login, password: pass);
  }

  void _login(AuthenticationStateNotifier notifier) {
    if (_formKey.currentState?.validate() ?? false) {
      final cred = _getUserInfo();
      notifier.login(cred);
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

  final SignInTextControllers _textControllers;

  const _Content(this.errorText, this.formKey, this._textControllers);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  bool _hidePass = false;

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
            decoration: InputDecoration(label: Text(locale.loginFormLoginTitle)),
            validator: (value) => Validators.loginValidator(value, locale),
          ),
          const SizedBox(height: Const.paddingBetweenLarge),
          MainFormInput(
            obscureText: _hidePass,
            validator: (value) => Validators.passwordLoginValidator(value, locale),
            controller: widget._textControllers.passwordFormController,
            decoration: InputDecoration(
              errorText: widget.errorText,
              suffixIcon: GestureDetector(
                onTap: () => {_hidePass = !_hidePass, setState(() => {})},
                child: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              ),
              label: Text(AppLocalizations.of(context)!.loginFormPasswordTitle),
            ),
          ),
        ],
      ),
    );
  }
}
