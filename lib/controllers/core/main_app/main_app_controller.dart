import 'dart:developer';
import 'dart:io';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/auth/google_auth.dart';
import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/localization/language_controller.dart';
import 'package:clijeo_public/controllers/core/main_app/main_app_state.dart';
import 'package:clijeo_public/controllers/core/notifications/notifications.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/models/sign_in_response/sign_in_response.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainAppController extends ChangeNotifier {
  MainAppState state = const MainAppState.unauthenticated();

  Future<void> initializeApp(ClijeoUserController userController,
      LanguageController languageController) async {
    await ClijeoSharedPref.loadSharedPrefToApp(languageController);

    if (BackendAuth.getToken().isNotEmpty) {
      await ClijeoNotifications.setupNotifications();
      state = const MainAppState.authenticated();
      notifyListeners();

      await state.maybeWhen(
          authenticated: () async {
            await userController.refreshUser();
          },
          orElse: () {});
    }
  }

  Future<void> signUserOut(ClijeoUserController userController) async {
    state = const MainAppState.loading();
    notifyListeners();

    try {
      await GoogleAuth.googleSignOut();
      userController.clearUserState();
      BackendAuth.clearToken();
      state = const MainAppState.unauthenticated();
      notifyListeners();
    } catch (e) {
      state = MainAppState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> firstLoginCompleted(ClijeoUserController userController) async {
    await userController.refreshUser();
    state = const MainAppState.authenticated();
    notifyListeners();
  }

  Future<void> signIn(ClijeoUserController userController) async {
    try {
      final idToken = await GoogleAuth.signInWithGoogle();

      // Returning if access token is null
      if (idToken == null) throw Exception("NULL access token");

      // Authenticating with the backend server
      final result = await DioBase.dioInstance
          .post(ApiUtils.loginUrl, data: {"idToken": idToken});

      final signInResponse = SignInResponse.fromJson(result.data);

      signInResponse.when((firstLogin, jwt) async {
        // Setting the BackendAuth static variable to the jwt token
        await BackendAuth.setTokenAndUpdateSharedPref(jwt);

        state = firstLogin
            ? const MainAppState.authenticatedFirstLogin()
            : const MainAppState.authenticated();

        await userController.refreshUser();
      }, error: () {
        log("Error");
      });
    } on DioError catch (e) {
      log("Dio Error: ${e.message}");
      state = MainAppState.error(e.message);
    } on Exception catch (e) {
      log("Exception Thrown: ${e.toString()}");
      state = MainAppState.error(e.toString());
    } on Error catch (e) {
      log("Error Occured in SignUpController");
      state = MainAppState.error(e.toString());
    }
    notifyListeners();
  }
}
