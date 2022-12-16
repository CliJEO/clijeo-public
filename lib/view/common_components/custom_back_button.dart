import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Icon(Icons.arrow_back, color: AppTheme.textDark, size: 20),
    );
  }
}
