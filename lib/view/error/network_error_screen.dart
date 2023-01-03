import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({super.key});

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
