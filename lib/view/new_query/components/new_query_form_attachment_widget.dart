import 'package:clijeo_public/controllers/core/file/file_controller.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class NewQueryFormAttachmentWidget extends StatelessWidget {
  const NewQueryFormAttachmentWidget(
      {super.key,
      required this.name,
      required this.filetype,
      required this.openFunction,
      required this.closeFunction});
  final String name;
  final String filetype;
  final Function() openFunction;
  final Function() closeFunction;

  String _preprocessString(String str) {
    if (str.length > 20) {
      return "${str.substring(0, 20)}..";
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
              GestureDetector(
                onTap: openFunction,
                child: Row(
                  children: [
                    Icon(FileController.getIconForFiletype(filetype),
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
              ),
              GestureDetector(
                onTap: closeFunction,
                child: Container(
                  width: 20,
                  decoration: const BoxDecoration(
                      border: Border(
                    left: BorderSide(width: 5.0, color: AppTheme.textDark),
                  )),
                  child: const Icon(Icons.close,
                      color: AppTheme.textDark, size: 12),
                ),
              ),
            ],
          )),
    );
  }
}
