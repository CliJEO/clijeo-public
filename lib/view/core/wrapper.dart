import 'package:clijeo_public/controllers/core/user/clijeo_user.dart';
import 'package:clijeo_public/main.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/sign_up/sign_up_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static String id = "Wrapper";
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ClijeoUser>(builder: (context, user, _) {
      if (user.userCredential == null) {
        print("SignInPage trigerred");
        return const SignUpHomeScreen();
      } else {
        return const HomeScreen();
      }
    });
  }
}
