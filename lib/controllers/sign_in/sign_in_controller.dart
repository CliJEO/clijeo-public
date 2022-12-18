import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/auth/google_auth.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/models/sign_in_response/sign_in_response.dart';
import 'package:dio/dio.dart';

class SignInController {
  static Future<SignInResponse> signIn() async {
    try {
      final idToken = await GoogleAuth.signInWithGoogle();

      // Returning if access token is null
      if (idToken == null) throw Exception("NULL access token");

      // Authenticating with the backend server
      final result = await DioBase.dioInstance
          .post(ApiUtils.loginUrl, data: {"idToken": idToken});

      final signInResponse = SignInResponse.fromJson(result.data);

      signInResponse.when((firstLogin, jwt) {
        // Setting the BackendAuth static variable to the jwt token
        BackendAuth.setToken(jwt);

        // Adding the jwt token to shared prefs
        ClijeoSharedPref.addUserAccessTokenToSharedPref(jwt);
      }, error: () {});

      // Returns the SignInResponse Object
      return signInResponse;
    } on DioError catch (e) {
      log("Dio Error: ${e.message}");
    } on Exception catch (e) {
      log("Exception Thrown: ${e.toString()}");
    } on Error catch (_) {
      log("Error Occured in SignUpController");
    }
    return const SignInResponse.error();
  }
}
