import 'package:flutter/material.dart';

class SignInTextControllers {
  final TextEditingController _loginFormController = TextEditingController();
  final TextEditingController _passwordFormController = TextEditingController();

  TextEditingController get loginFormController => _loginFormController;

  TextEditingController get passwordFormController => _passwordFormController;

  String get login => _loginFormController.text;

  String get password => _passwordFormController.text;

  void clear() {
    _loginFormController.text = '';
    _passwordFormController.text = '';
  }

  void dispose() {
    _loginFormController.dispose();
    _passwordFormController.dispose();
  }
}

class SignUpTextControllers {
  final TextEditingController _loginFormController = TextEditingController();
  final TextEditingController _passwordFormController = TextEditingController();
  final TextEditingController _lastnameFormController = TextEditingController();
  final TextEditingController _firstnameFormController = TextEditingController();
  final TextEditingController _repeatPasswordFormController = TextEditingController();

  TextEditingController get loginFormController => _loginFormController;

  TextEditingController get lastnameFormController => _lastnameFormController;

  TextEditingController get firstnameFormController => _firstnameFormController;

  TextEditingController get passwordFormController => _passwordFormController;

  TextEditingController get repeatPasswordFormController => _repeatPasswordFormController;

  String get login => _loginFormController.text;

  String get firstname => _firstnameFormController.text;

  String get lastname => _lastnameFormController.text;

  String get password => _passwordFormController.text;

  String get repeatPassword => _repeatPasswordFormController.text;

  void clear() {
    _loginFormController.text = '';
    _passwordFormController.text = '';
    _lastnameFormController.text = '';
    _firstnameFormController.text = '';
    _repeatPasswordFormController.text = '';
  }

  void dispose() {
    _loginFormController.dispose();
    _passwordFormController.dispose();
    _lastnameFormController.dispose();
    _firstnameFormController.dispose();
    _repeatPasswordFormController.dispose();
  }
}
