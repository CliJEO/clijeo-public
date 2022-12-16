import 'package:clijeo_public/controllers/app_localization/app_localization.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/query_thread/active_query_thread.dart';
import 'package:clijeo_public/view/query_thread/archived_query_thread.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/sign_up/sign_up_form_screen.dart';
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
    return MaterialApp(
        title: 'CLIJEO-PUBLIC',
        locale: const Locale('en'),
        supportedLocales: const [
          Locale('en'),
          Locale('ml'),
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          NewQueryFormScreen.id: (context) => const NewQueryFormScreen(),
          ActiveQueryThread.id: (context) => const ActiveQueryThread(),
          ArchivedQueryThread.id: (context) => const ArchivedQueryThread(),
          ThreadRespondScreen.id: (context) => const ThreadRespondScreen(),
          SettingsMainScreen.id: (context) => const SettingsMainScreen(),
          SettingsEditScreen.id: (context) => const SettingsEditScreen(),
        });
  }
}
