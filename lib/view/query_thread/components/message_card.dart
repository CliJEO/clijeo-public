import 'package:clijeo_public/controllers/app_localization/locale_text_class.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard(
      {super.key,
      required this.user,
      required this.body,
      required this.date,
      required this.isArchived,
      required this.sizeConfig});
  final SizeConfig sizeConfig;
  final String user;
  final bool isArchived;
  final String body;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppTheme.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
              color: Color(0x33000000), blurRadius: 4.0, offset: Offset(0, 2))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                user,
                style: isArchived
                    ? AppTextStyle.smallDarkLightTitle
                    : AppTextStyle.smallAccentTitle,
              ),
              Text(
                date,
                style: AppTextStyle.smallDarkLightBoldBody,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            body,
            style: AppTextStyle.smallDarkLightBody,
          ),
        ]),
      ),
    );
  }
}
