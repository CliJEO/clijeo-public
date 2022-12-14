import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton(
      {super.key, required this.fieldTitle, required this.options});
  final String fieldTitle;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: AppTextStyle.smallBoldBody,
        ),
        const SizedBox(
          height: 10,
        ),
        ToggleButtons(
            isSelected: options.map((e) => false).toList(),
            borderColor: AppTheme.containerBorder,
            borderWidth: 1.5,
            selectedBorderColor: AppTheme.primaryColor,
            selectedColor: AppTheme.selectedColor,
            children: options
                .map((value) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        value,
                        style: AppTextStyle.toggleButtonText,
                      ),
                    ))
                .toList()),
      ],
    );
  }
}
