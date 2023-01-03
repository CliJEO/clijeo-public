import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorText});
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppTheme.errorColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          errorText,
          style: AppTextStyle.midSmallLightTitle,
        ),
      ),
    );
  }
}
