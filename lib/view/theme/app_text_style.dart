import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle smallTitle = TextStyle(
      color: AppTheme.textLight,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      fontFamily: "Inter");
  static const TextStyle largeTitle = TextStyle(
      color: AppTheme.textLight,
      fontWeight: FontWeight.bold,
      fontSize: 36,
      fontFamily: "Inter");
  static const TextStyle regularTitle = TextStyle(
      color: AppTheme.textDark,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: "Inter");
  static const TextStyle smallBody = TextStyle(
      color: AppTheme.textDarkLight, fontSize: 14, fontFamily: "Inter");
}
