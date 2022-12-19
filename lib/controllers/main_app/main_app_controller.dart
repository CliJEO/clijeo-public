import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/main_app/main_app_state.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainAppController extends ChangeNotifier {
  MainAppState state = const MainAppState.unauthenticated();

  Future<ClijeoUser> getUser() async {
    if (BackendAuth.getToken().isNotEmpty) {
      state = const MainAppState.loading();
      notifyListeners();
      try {
        final result = await DioBase.dioInstance.get(
          ApiUtils.userUrl,
          options: Options(
            headers: {
              'Authorization': 'Bearer ${BackendAuth.getToken()}',
            },
          ),
        );
        final user = ClijeoUser.fromJson(result.data);
        state = const MainAppState.authenticated();
        notifyListeners();
        return user;
      } on DioError catch (e) {
        state = MainAppState.error("Dio Error: ${e.response}");
      } on Error catch (e) {
        state = MainAppState.error("Error: ${e.toString()}");
      }
      notifyListeners();
    }
    return ClijeoUser.empty();
  }
}
