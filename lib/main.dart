import 'package:clijeo_public/controllers/core/firebase_auth/firebase_init.dart';
import 'package:clijeo_public/controllers/core/localization/app_localization.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/user/clijeo_user.dart';
import 'package:clijeo_public/view/core/wrapper.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/query_thread/active_query_thread.dart';
import 'package:clijeo_public/view/query_thread/archived_query_thread.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/sign_up/sign_up_form_screen.dart';
import 'package:clijeo_public/view/sign_up/sign_up_home_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  final firebaseInit = FirebaseInit();
  final user = ClijeoUser();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => firebaseInit),
    ChangeNotifierProvider(create: (context) => user),
  ], child: const MyApp()));
  firebaseInit.initializeFirebase();
  user.getCredentials();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FirebaseInit>(builder: (context, firebaseInit, _) {
      if (firebaseInit.firebaseInitCompleted) {
        return const ClijeoApp();
      } else {
        return const NetworkErrorPage();
      }
    });
  }
}

class NetworkErrorPage extends StatelessWidget {
  const NetworkErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: AppTheme.backgroundColor,
            body: Center(
              child: Text(LocaleTextClass.getTextWithKey(context, "NoNetwork")),
            )));
  }
}

class ClijeoApp extends StatelessWidget {
  const ClijeoApp({
    Key? key,
  }) : super(key: key);

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
        initialRoute: Wrapper.id,
        routes: {
          HomeScreen.id: (context) => const HomeScreen(),
          NewQueryFormScreen.id: (context) => const NewQueryFormScreen(),
          ActiveQueryThread.id: (context) => const ActiveQueryThread(),
          ArchivedQueryThread.id: (context) => const ArchivedQueryThread(),
          ThreadRespondScreen.id: (context) => const ThreadRespondScreen(),
          SettingsMainScreen.id: (context) => const SettingsMainScreen(),
          SettingsEditScreen.id: (context) => const SettingsEditScreen(),
          Wrapper.id: (context) => const Wrapper(),
        });
  }
}
