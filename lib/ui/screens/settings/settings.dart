import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pro_tests/main.dart';
import 'package:pro_tests/ui/states/settings_state/settings_state.dart';
import 'package:pro_tests/ui/theme/const.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  void _changeLocale(Locale locale, WidgetRef ref) {
    final notifier = ref.read(serviceLocator.settingsProvider.notifier);
    final settingsState = ref.read(serviceLocator.settingsProvider);

    notifier.state = SettingsState(settingsState.theme, locale);
  }

  void _changeTheme(ThemeMode theme, WidgetRef ref) {
    final notifier = ref.read(serviceLocator.settingsProvider.notifier);
    final settingsState = ref.read(serviceLocator.settingsProvider);

    notifier.state = SettingsState(theme, settingsState.locale);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(serviceLocator.settingsProvider);
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: SettingsList(
          physics: const BouncingScrollPhysics(),
          sections: [
            SettingsSection(
              title: Text(text.homeSettingsCommonSectionTitle),
              tiles: [
                CustomSettingsTile(
                  child: ExpansionTile(
                    subtitle: Text(text.homeSettingsCurrentLanguage),
                    title: Text(
                      text.homeSettingsLanguageTitle,
                    ),
                    leading: const Icon(Icons.language),
                    childrenPadding: EdgeInsets.symmetric(horizontal: Const.paddingBetweenStandart),
                    children: [
                      ListTile(
                        title: Text(text.homeSettingsEnglishLanguage),
                        onTap: () => _changeLocale(AppLocalizations.supportedLocales[0], ref),
                        trailing: settingsState.locale == AppLocalizations.supportedLocales[0]
                            ? const Icon(Icons.check)
                            : const SizedBox(),
                      ),
                      ListTile(
                        title: Text(text.homeSettingsRussianLanguage),
                        onTap: () => _changeLocale(AppLocalizations.supportedLocales[1], ref),
                        trailing: settingsState.locale == AppLocalizations.supportedLocales[1]
                            ? const Icon(Icons.check)
                            : const SizedBox(),
                      ),
                    ],
                  ),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {
                    _changeTheme(value ? ThemeMode.dark : ThemeMode.light, ref);
                  },
                  initialValue: settingsState.theme == ThemeMode.dark,
                  leading: const Icon(Icons.format_paint),
                  title: Text(text.homeSettingsDarkThemeTitle),
                ),
              ],
            ),
            SettingsSection(
              title: Text(text.homeSettingsAccountSectionTitle),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: const Icon(Icons.logout_outlined),
                  title: Text(text.homeSettingsLogoutTitle),
                  onPressed: (ctx) {
                    ref.read(serviceLocator.authenticationStateNotifier.notifier).signOut();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
