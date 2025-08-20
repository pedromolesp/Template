import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:templateapp/app/config/l10n/generated/l10n.dart';

class LocalizationSetup {
  static const localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
  static const String defaultLanguage = 'es';
  static const supportedLocales = [
    Locale('en'),
    Locale('es'),
  ];
}
