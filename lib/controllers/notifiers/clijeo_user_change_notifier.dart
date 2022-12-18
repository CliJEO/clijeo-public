import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ClijeoUserNotifier extends ChangeNotifier {
  ClijeoUser user = ClijeoUser.empty();

  Future<void> getUserFromBackend() async {
    try {
      final result = await DioBase.dioInstance.get(
        ApiUtils.userUrl,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${BackendAuth.getToken()}',
          },
        ),
      );
      user = ClijeoUser.fromJson(result.data);
      notifyListeners();
    } on DioError catch (e) {
      print("Dio Error: ${e.response}");
    } on Error catch (e) {
      print("Error: ${e.toString()}");
    }
  }
}
