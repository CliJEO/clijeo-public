import 'dart:developer';

import 'package:clijeo_public/constants.dart';
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

  void updateStableStateName(String? updatedName) {
    if (updatedName != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(name: updatedName),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));
    }
  }

  void updateStableStateGender(String? updatedGender) {
    if (updatedGender != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(gender: updatedGender),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));

      // Since these fields correspond to UI that needs to change
      notifyListeners();
    }
  }

  void updateStableStateLanguage(String? updatedLanguage) {
    if (updatedLanguage != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(language: updatedLanguage),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));

      // Since these fields correspond to UI that needs to change
      notifyListeners();
    }
  }

  void updateStableStateAge(String? updatedAge) {
    if (updatedAge != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(age: int.tryParse(updatedAge)),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));
    }
  }

  void updateStableStatePhoneNumber(String? updatedPhoneNumber) {
    if (updatedPhoneNumber != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(phoneNumber: updatedPhoneNumber),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));
    }
  }

  void updateStableStateLocation(String? updatedLocation) {
    if (updatedLocation != null) {
      state = state.maybeMap(
          stable: (value) => value.copyWith(location: updatedLocation),
          orElse: () =>
              const FirstLoginFormState.error("State Error: Invalid State"));
    }
  }

  Future<void> getUserNameFromBackend() async {
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
        state = FirstLoginFormState.stable(
            name: name,
            language: Language.getCurrentLanguageCode(),
            gender: Constants.getAllGenders().first);
        notifyListeners();
      }, orElse: () {
        state = const FirstLoginFormState.error("State Error: Invalid State");
      });
    } on DioError catch (e) {
      state = FirstLoginFormState.error("Dio Error: ${e.response}");
    } on Error catch (e) {
      state = FirstLoginFormState.error("Error: ${e.toString()}");
    }
    notifyListeners();
  }

  Future<void> saveProfileDetails() async {
    state.maybeWhen(
        stable: (name, age, gender, language, phoneNumber, location) async {
          final user = ClijeoUser(
              name: name,
              age: age,
              gender: gender,
              phoneNumber: phoneNumber,
              location: location);

          state = const FirstLoginFormState.loading();
          notifyListeners();

          try {
            await DioBase.dioInstance.put(ApiUtils.userUpdateUrl,
                options: Options(
                  headers: {
                    'Authorization': 'Bearer ${BackendAuth.getToken()}',
                  },
                ),
                data: user.toJson());

            // Updating the shared pref and static variable for language
            if (language != null) {
              await Language.setCurrentLanguageCodeAndUpdateSharedPref(
                  language);
            }

            state = const FirstLoginFormState.completed();
          } on DioError catch (e) {
            state = FirstLoginFormState.error("Dio Error: ${e.response}");
          } on Error catch (e) {
            state = FirstLoginFormState.error("Error: ${e.toString()}");
          }
          notifyListeners();
        },
        orElse: () {});
  }
}
