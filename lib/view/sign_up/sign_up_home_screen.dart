import 'package:clijeo_public/controllers/app_localization/locale_text_class.dart';
import 'package:clijeo_public/view/scaling/size_config.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';

class SignUpHomeScreen extends StatelessWidget {
  const SignUpHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: sizeConfig.SafeBlockSizeVertical(0.5),
          color: AppTheme.primaryColor,
          child: Row(
            children: [
              Text(LocaleTextClass.getTextWithKey(context, "AppTitle"))
            ],
          ),
        ),
        Container(
          height: sizeConfig.SafeBlockSizeVertical(0.5),
          color: AppTheme.backgroundColor,
        )
      ],
    ));
  }
}
