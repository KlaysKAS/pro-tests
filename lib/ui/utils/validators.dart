import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Validators {
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
}
