import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:flutter/material.dart';

class ClijeoUserController extends ChangeNotifier {
  ClijeoUser user = ClijeoUser.empty();

  void setUser(ClijeoUser user) => this.user = user;
}
