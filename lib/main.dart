import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/localization/app_localization.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/user/clijeo_user.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/query_thread/active_query_thread.dart';
import 'package:clijeo_public/view/query_thread/archived_query_thread.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/sign_in/first_login_form_screen.dart';
import 'package:clijeo_public/view/sign_in/sign_in_home_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  final user = ClijeoUser();
  DioBase.initDio();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => user),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ClijeoApp();
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
    return Consumer<ClijeoUser>(builder: ((context, user, _) {
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
          initialRoute:
              user.idToken == null ? SignInHomeScreen.id : HomeScreen.id,
          routes: {
            HomeScreen.id: (context) => const HomeScreen(),
            NewQueryFormScreen.id: (context) => const NewQueryFormScreen(),
            ActiveQueryThread.id: (context) => const ActiveQueryThread(),
            ArchivedQueryThread.id: (context) => const ArchivedQueryThread(),
            ThreadRespondScreen.id: (context) => const ThreadRespondScreen(),
            SettingsMainScreen.id: (context) => const SettingsMainScreen(),
            SettingsEditScreen.id: (context) => const SettingsEditScreen(),
            SignInHomeScreen.id: (context) => const SignInHomeScreen(),
            FirstLoginFormScreen.id: (context) => const FirstLoginFormScreen(),
          });
    }));
  }
}
