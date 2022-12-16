import 'package:clijeo_public/controllers/core/firebase_auth/google_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ClijeoUser extends ChangeNotifier {
  UserCredential? userCredential;

  Future<void> getCredentials() async {
    try {
      userCredential = await GoogleAuth.signInWithGoogle();
      notifyListeners();
      print("Credentials received: " + userCredential.toString());
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
