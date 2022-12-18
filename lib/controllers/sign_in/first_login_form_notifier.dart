import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:clijeo_public/models/notifier/first_login_form/first_login_form_state.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FirstLoginFormNotifier extends ChangeNotifier {
  FirstLoginFormState state = const FirstLoginFormState.loading();

  Future<String?> getUserNameFromBackend() async {
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.userUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      ClijeoUser.fromJson(result.data).maybeWhen(
          (name, age, gender, phoneNumber, location) {
        state = const FirstLoginFormState.stable();
        notifyListeners();
        return name;
      }, orElse: () {
        state = const FirstLoginFormState.error("Invalid Backend Response");
      });
    } on DioError catch (e) {
      state = FirstLoginFormState.error("Dio Error: ${e.response}");
    } on Error catch (e) {
      state = FirstLoginFormState.error("Error: ${e.toString()}");
    }
    notifyListeners();
    return null;
  }

  static String? nullStringValidation(String? val) {
    if (val == null) {
      return "Please enter a valid non-empty string";
    } else {
      return null;
    }
  }
}
