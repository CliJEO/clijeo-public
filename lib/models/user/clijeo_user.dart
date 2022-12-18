import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clijeo_user.g.dart';
part 'clijeo_user.freezed.dart';

@freezed
class ClijeoUser with _$ClijeoUser {
  const factory ClijeoUser(
      {required String name,
      int? age,
      String? gender,
      String? phoneNumber,
      String? location}) = _ClijeoUser;
  factory ClijeoUser.fromJson(Map<String, dynamic> json) =>
      _$ClijeoUserFromJson(json);

  factory ClijeoUser.empty() {
    return const ClijeoUser(
      name: "",
    );
  }
}
