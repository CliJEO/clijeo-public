import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  static String clientId =
      "626402316921-e6us5e5r6hoahuijr5h1ot5t3or8iers.apps.googleusercontent.com";
  static Future<String?> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignInAccount? googleUser =
        await GoogleSignIn(serverClientId: clientId).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    return googleAuth?.idToken;
  }

  static Future<void> googleSignOut() async {
    await GoogleSignIn().disconnect();
  }
}
