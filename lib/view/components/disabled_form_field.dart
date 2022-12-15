import 'package:clijeo_public/controllers/app_localization/locale_text_class.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class DisabledFormField extends StatelessWidget {
  const DisabledFormField(
      {super.key,
      required this.fieldTitle,
      required this.fieldHintText,
      this.isLargeField = false});
  final String fieldHintText;
  final String fieldTitle;
  final bool isLargeField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: AppTextStyle.smallDarkLightBoldBody,
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          minLines: isLargeField ? 6 : 1,
          maxLines: isLargeField ? 8 : 1,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            hintStyle: AppTextStyle.smallDarkLightBody,
            focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppTheme.primaryColor, width: 1.5)),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppTheme.containerBorder, width: 1.5)),
            hintText: fieldHintText,
          ),
        ),
      ],
    );
  }
}
