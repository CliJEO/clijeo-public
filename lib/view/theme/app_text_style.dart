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
  static const TextStyle smallBoldBody = TextStyle(
      color: AppTheme.textDarkLight,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      fontFamily: "Inter");
  static const TextStyle toggleButtonText = TextStyle(
      color: AppTheme.textDark,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: "Inter");
  static const TextStyle selectedToggleButtonText = TextStyle(
      color: AppTheme.primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.bold,
      fontFamily: "Inter");
  static const TextStyle signUpFormTitleNormal = TextStyle(
      color: AppTheme.textDark,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      fontFamily: "Inter");
  static const TextStyle signUpFormTitleAccent = TextStyle(
      color: AppTheme.primaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      fontFamily: "Inter");
}
