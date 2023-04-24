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

/// 1. Такие константы лучше хранить где нибудь в одном месте, в отдельном файле
/// 2. Можно использовать --dart-define=sentryUrl=... для того чтобы не хранить константу в коде (а например в секретах actions)
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
    serviceLocator = AppLocator();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await serviceLocator.init();
    runApp(const ProviderScope(child: MyApp()));
  }, (error, trace) async {
    await Sentry.captureException(error, stackTrace: trace);
  });
}

//Лучше в отдельном файле
//можно прямо папочку app и в нее сложить все связанное с приложением
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(serviceLocator.settingsProvider);
    return MaterialApp.router(
      supportedLocales: AllLocale.all,
      locale: state.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      themeMode: state.theme,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
