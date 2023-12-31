import 'dart:ui';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final supportedLocalesProvider = Provider<List<Locale>>((ref) => [
      const Locale('en'),
      const Locale('ar'),
      const Locale('es'),
      const Locale('de'),
      const Locale('fr'),
      const Locale('el'),
      const Locale('et'),
      const Locale('nb'),
      const Locale('nn'),
      const Locale('pl'),
      const Locale('pt'),
      const Locale('ru'),
      const Locale('hi'),
      const Locale('ne'),
      const Locale('uk'),
      const Locale('hr'),
      const Locale('tr'),
      const Locale('lv'),
      const Locale('lt'),
      const Locale('ku'),
      const Locale('nl'),
      const Locale('it'),
      const Locale('ko'),
      const Locale('ja'),
      const Locale('id'),
      const Locale('cs'),
      const Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans'), // Generic Simplified Chinese 'zh_Hans'
      const Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hant'), // Generic traditional Chinese 'zh_Hant'
    ]);

final localizationsDelegatesProvider = Provider((ref) => [
      CountryLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
]);
