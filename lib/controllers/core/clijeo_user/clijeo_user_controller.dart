import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_state.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ClijeoUserController extends ChangeNotifier {
  ClijeoUserState state;

  ClijeoUserController()
      : state = ClijeoUserState.stable(user: ClijeoUser.empty());

  Future<void> refreshUser() async {
    state = const ClijeoUserState.loading();
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
      state = ClijeoUserState.stable(user: user);
      notifyListeners();
      print("Refreshed");
    } on DioError catch (e) {
      state = ClijeoUserState.error("Dio Error: ${e.response}");
    } on Error catch (e) {
      state = ClijeoUserState.error("Error: ${e.toString()}");
    }
    notifyListeners();
  }
}
