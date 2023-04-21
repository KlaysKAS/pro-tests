import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScaffoldWithBottomNav extends StatefulWidget {
  final List<Widget> pages;

  const ScaffoldWithBottomNav({
    super.key,
    required this.pages,
  });

  @override
  State<ScaffoldWithBottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<ScaffoldWithBottomNav> {
  late final List<Widget> pages;
  int page = 0;

  @override
  void initState() {
    pages = widget.pages;
    super.initState();
  }

  //didUpdateWidget забыли

  @override
  Widget build(context) {
    final text = AppLocalizations.of(context)!;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _handleTap,
        currentIndex: page,
        items: [
          BottomNavigationBarItem(
            label: text.homeBottomNavCreateBtn,
            icon: const Icon(Icons.assignment_outlined),
          ),
          BottomNavigationBarItem(
            label: text.homeBottomNavPassBtn,
            icon: const Icon(Icons.edit_note),
          ),
          BottomNavigationBarItem(
            label: text.homeBottomNavSettingsBtn,
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: pages[page],
    );
  }

  void _handleTap(int index) => setState(() => page = index);
}
