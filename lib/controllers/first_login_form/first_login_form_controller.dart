import 'package:clijeo_public/models/user_dto/clijeo_user_dto.dart';
import 'package:clijeo_public/view/core/constants.dart';
import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/localization/language_controller.dart';
import 'package:clijeo_public/controllers/first_login_form/first_login_form_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FirstLoginFormController extends ChangeNotifier {
  FirstLoginFormState state;

  FirstLoginFormController(String name, String languageCode)
      : state = FirstLoginFormState.stable(
            name: name,
            gender: Constants.getAllGenders().first,
            language: languageCode);

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

  // Future<void> getUserNameFromBackend() async {
  //   try {
  //     final result = await DioBase.dioInstance.get(
  //       ApiUtils.userUrl,
  //       options: Options(
  //         headers: {
  //           'Authorization': 'Bearer ${BackendAuth.getToken()}',
  //         },
  //       ),
  //     );
  //     final user = ClijeoUserDto.fromJson(result.data);
  //     state = FirstLoginFormState.stable(
  //         name: user.name,
  //         language: LanguageController.getCurrentLanguageCode(),
  //         gender: Constants.getAllGenders().first);
  //     notifyListeners();
  //   } on DioError catch (e) {
  //     state = FirstLoginFormState.error("Dio Error: ${e.response}");
  //   } on Error catch (e) {
  //     state = FirstLoginFormState.error("Error: ${e.toString()}");
  //   }
  //   notifyListeners();
  // }

  Future<void> saveProfileDetails(LanguageController languageController) async {
    await state.maybeWhen(
        stable: (name, age, gender, language, phoneNumber, location) async {
          final user = ClijeoUserDto(
            name: name,
            age: age,
            gender: gender,
            phoneNumber: phoneNumber,
            location: location,
          );

          state = const FirstLoginFormState.loading();
          notifyListeners();

          try {
            await DioBase.dioInstance.put(ApiUtils.userProfileUpdateUrl,
                options: Options(
                  headers: {
                    'Authorization': 'Bearer ${BackendAuth.getToken()}',
                  },
                ),
                data: user.toJson());

            // Updating the shared pref and static variable for language
            await languageController
                .setCurrentLanguageCodeAndUpdateSharedPref(language);
          } on DioError catch (e) {
            state = FirstLoginFormState.error("Dio Error: ${e.response}");
            notifyListeners();
          } on Error catch (e) {
            state = FirstLoginFormState.error("Error: ${e.toString()}");
            notifyListeners();
          }
        },
        orElse: () {});
  }
}
