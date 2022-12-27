import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class QueryThreadAttachmentWidget extends StatelessWidget {
  const QueryThreadAttachmentWidget(
      {super.key, required this.name, required this.downloadFunction});
  final String name;
  final Function() downloadFunction;

  String _preprocessString(String str) {
    if (str.length > 10) {
      return "${str.substring(0, 10)}..";
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: downloadFunction,
      child: Container(
        height: 30,
        decoration: const BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Icon(Icons.description, color: AppTheme.textDark, size: 12),
              const SizedBox(
                width: 10,
              ),
              Text(
                _preprocessString(name),
                style: AppTextStyle.verySmallLightTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
