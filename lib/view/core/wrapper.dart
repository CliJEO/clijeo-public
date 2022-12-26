import 'package:clijeo_public/controllers/core/main_app/main_app_controller.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/sign_in/sign_in_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  static String id = "Wrapper";
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainAppController>(
        builder: (context, mainAppController, _) {
      return mainAppController.state.maybeWhen(
          authenticated: () => const HomeScreen(),
          loading: () => const Loading(),
          orElse: () => const SignInHomeScreen());
    });
  }
}
