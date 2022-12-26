import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class NoPrevQueryWidget extends StatelessWidget {
  const NoPrevQueryWidget({super.key, required this.sizeConfig});
  final SizeConfig sizeConfig;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: sizeConfig.safeBlockSizeVertical(0.1),
        ),
        SizedBox(
          width: sizeConfig.safeBlockSizeHorizontal(0.7),
          child: Image.asset("assets/no_query_art.png"),
        ),
        Text(
          LocaleTextClass.getTextWithKey(context, "NoPostedQuery"),
          style: AppTextStyle.smallDarkLightBoldBody,
        )
      ],
    );
  }
}
