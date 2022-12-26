import 'dart:developer';

import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/main_app/main_app_controller.dart';
import 'package:clijeo_public/view/core/constants.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/localization/app_localization.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/query_thread/query_thread.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/first_login_form/first_login_form_screen.dart';
import 'package:clijeo_public/view/sign_in/sign_in_home_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/core/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

// Notification Stuff
const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'clijeo_notifs', // id
  'CliJEO Notifications', // name
  description: 'This channel is used for CliJEO notifications.',
  importance: Importance.high,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

@pragma('vm:entry-point')
Future<void> _notificationHandler(RemoteMessage message) async {
  // if notification arrives when app is in foreground, launch it manaually
  var initializationSettings = const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'));
  flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // receive the data notification and send a local notification
  var messageData = message.data;

  if (messageData.isNotEmpty) {
    flutterLocalNotificationsPlugin.show(
        39,
        messageData['title'],
        messageData['body'],
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
          ),
        ));
  }
}

void main() async {
  DioBase.initDio();
  final appController = MainAppController();
  final userController = ClijeoUserController();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<MainAppController>(
        create: (context) => appController),
    ChangeNotifierProvider<ClijeoUserController>(
        create: (context) => userController)
  ], child: const MyApp()));

  // Initialize App properties
  await appController.initializeApp(userController);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> setupNotifications() async {
    await Firebase.initializeApp();

    // handle notifications received while app is not in foreground
    FirebaseMessaging.onBackgroundMessage(_notificationHandler);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // navigate to the relevant page when app opens from notification.
    // if opening from terminated state
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    // if opening when app is already in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    FirebaseMessaging.onMessage.listen(_notificationHandler);

    var token = await FirebaseMessaging.instance.getToken();
    print("fcm token is $token");
    // TODO save to sharedPref and update backend whenever diff?
  }

  void _handleMessage(RemoteMessage message) {
    var queryId = message.data['queryId'];

    //   Navigator.pushNamed(context, '/chat',
    //     arguments: ChatArguments(message),
    //   );

    //TODO is a service in manifest needed to handle foreground notification clicks?
    print(message.data);
  }

  @override
  void initState() {
    super.initState();

    setupNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MainApp();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CLIJEO-PUBLIC',
        locale: Locale(Language.getCurrentLanguageCode()),
        supportedLocales:
            Constants.getSupportedLanguages().map((e) => Locale(e)).toList(),
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
          QueryThread.id: (context) => const QueryThread(),
          ThreadRespondScreen.id: (context) => const ThreadRespondScreen(),
          SettingsMainScreen.id: (context) => const SettingsMainScreen(),
          SettingsEditScreen.id: (context) => const SettingsEditScreen(),
          SignInHomeScreen.id: (context) => const SignInHomeScreen(),
          FirstLoginFormScreen.id: (context) => const FirstLoginFormScreen(),
          Wrapper.id: (context) => const Wrapper(),
        });
  }
}
