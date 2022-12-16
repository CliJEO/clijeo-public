import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseInit extends ChangeNotifier {
  bool firebaseInitCompleted = false;
  String firebaseInitError = "";
  Future<void> initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      firebaseInitCompleted = true;
      notifyListeners();
    } catch (error) {
      firebaseInitError = error.toString();
      notifyListeners();
    }
  }
}
