import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/main_app/main_app_state.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainAppController extends ChangeNotifier {
  MainAppState state = const MainAppState.unauthenticated();

  Future<void> initializeApp(ClijeoUserController userController) async {
    await ClijeoSharedPref.loadSharedPrefToApp();
    checkAuthenticationStatus();

    await state.maybeWhen(
        authenticated: () async {
          await userController.refreshUser();
        },
        orElse: () {});
  }

  void checkAuthenticationStatus() {
    if (BackendAuth.getToken().isNotEmpty) {
      state = const MainAppState.authenticated();
      notifyListeners();
    }
  }
}
