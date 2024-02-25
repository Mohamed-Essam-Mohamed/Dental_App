// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dr_mohamed/app.dart';
import 'package:dr_mohamed/generated/l10n.dart';
import 'package:dr_mohamed/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(DentalApp());
}

class DentalApp extends StatelessWidget {
  const DentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeLight,
      themeMode: ThemeMode.light,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: App.routeName,
      routes: {
        App.routeName: (context) => App(),
      },
    );
  }
}
