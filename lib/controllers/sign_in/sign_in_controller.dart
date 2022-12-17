import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/google_auth.dart';
import 'package:dio/dio.dart';

class SignInController {
  static Future<void> signIn() async {
    try {
      final idToken = await GoogleAuth.signInWithGoogle();

      // Returning if access token is null
      if (idToken == null) throw Exception("NULL access token");

      print("ID Token: ${idToken}");

      // Authenticating with the backend server
      final result = await DioBase.dioInstance
          .post(ApiUtils.loginUrl, data: {"idToken": idToken});

      print(result);
    } on DioError catch (e) {
      print("Dio Error: ${e.message}");
    } on Exception catch (e) {
      print("Exception Thrown: ${e.toString()}");
    } on Error catch (e) {
      print("Error Occured in SignUpController");
    }
  }
}
