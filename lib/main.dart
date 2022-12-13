import 'package:clijeo_public/controllers/app_localization/app_localization.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:clijeo_public/view/sign_up/sign_up_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CLIJEO-PUBLIC',
      locale: Locale('en'),
      supportedLocales: [
        Locale('en'),
        Locale('ml'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: SignUpHomeScreen(),
    );
  }
}
