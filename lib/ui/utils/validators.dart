import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Validators {
  static final _passRegexp = RegExp(r'^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&?@./\\+\-="]).*$');

  static String? passwordLoginValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.loginFormPasswordEmpty;
    }
    return null;
  }

  static String? loginValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.loginFormLoginEmpty;
    }
    return null;
  }

  static String? passwordRegisterValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.registerFormPasswordEmpty;
    }
    if (value!.length < 8) {
      return local.registerFormPasswordError;
    }
    if (!_passRegexp.hasMatch(value)) {
      return local.registerFormPasswordError;
    }
    return null;
  }

  static String? repeatPasswordRegisterValidator(String? value, String? originalPass, AppLocalizations local) {
    if (value == '') {
      return local.registerFormPasswordEmpty;
    }
    if (value != originalPass) {
      return local.registerFormPasswordMatchError;
    }
    return null;
  }

  static String? firstnameValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.registerFormFirstnameEmptyError;
    }
    return null;
  }

  static String? lastnameValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.registerFormLastnameEmptyError;
    }
    return null;
  }

  static String? testCodeValidator(String? value, AppLocalizations local) {
    if (value == '') {
      return local.homeLinkDialogCodeError;
    }
    return null;
  }
}
