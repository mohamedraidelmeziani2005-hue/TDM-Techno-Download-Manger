import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/generated/app_localizations.dart';

void main() {
  runApp(const TechnoDownloadManagerApp());
}

class TechnoDownloadManagerApp extends StatefulWidget {
  const TechnoDownloadManagerApp({super.key});

  @override
  State<TechnoDownloadManagerApp> createState() =>
      _TechnoDownloadManagerAppState();
}

class _TechnoDownloadManagerAppState extends State<TechnoDownloadManagerApp> {
  Locale _locale = const Locale('ar');

  void _toggleLocale() {
    setState(() {
      _locale = _locale.languageCode == 'ar'
          ? const Locale('en')
          : const Locale('ar');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        useMaterial3: true,
      ),
      home: FoundationScreen(onToggleLocale: _toggleLocale),
    );
  }
}

class FoundationScreen extends StatelessWidget {
  const FoundationScreen({required this.onToggleLocale, super.key});

  final VoidCallback onToggleLocale;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
        actions: [
          TextButton(
            onPressed: onToggleLocale,
            child: Text(localizations.switchLanguage),
          ),
        ],
      ),
      body: Center(child: Text(localizations.foundationMessage)),
    );
  }
}
