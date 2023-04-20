import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:pro_tests/domain/providers/service_locator.dart';
import 'package:pro_tests/ui/router/router.dart';
import 'package:pro_tests/domain/providers/app_locator.dart';

import 'l10n/all_locales.dart';
import 'ui/theme/themes.dart';

const sentryDsn = 'https://c27e8e45f55d4374af2a30638b5b4417@o4505034476158976.ingest.sentry.io/4505034480287744';

late final ServiceLocator serviceLocator;

void main() {
  runZonedGuarded(() async {
    await SentryFlutter.init((opts) {
      opts.dsn = sentryDsn;
      opts.tracesSampleRate = 1.0;
      opts.debug = true;
    });
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      serviceLocator = AppLocator();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    });
    runApp(const ProviderScope(child: MyApp()));
  }, (error, trace) async {
    await Sentry.captureException(error, stackTrace: trace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: AllLocale.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      themeMode: ThemeMode.dark,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
