import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class NewQueryFormAttachmentWidget extends StatelessWidget {
  const NewQueryFormAttachmentWidget(
      {super.key, required this.name, required this.closeFunction});
  final String name;
  final Function() closeFunction;

  String _preprocessString(String str) {
    if (str.length > 10) {
      return "${str.substring(0, 10)}..";
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(
          color: AppTheme.selectedColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Icon(Icons.description,
                      color: AppTheme.textDark, size: 12),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _preprocessString(name),
                    style: AppTextStyle.verySmallDarkTitle,
                  ),
                ],
              ),
              GestureDetector(
                  onTap: closeFunction,
                  child: const Icon(Icons.close,
                      color: AppTheme.textDark, size: 12)),
            ],
          )),
    );
  }
}
