import 'package:clijeo_public/controllers/core/auth/google_auth.dart';
import 'package:flutter/material.dart';

class ClijeoUser extends ChangeNotifier {
  String? idToken;

  Future<void> getCredentials() async {
    try {
      idToken = await GoogleAuth.signInWithGoogle();
      notifyListeners();
      print("Credentials received");
    } catch (error) {
      print(error);
    }
  }

  Future<void> signUserOut() async {
    try {
      await GoogleAuth.googleSignOut();
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
