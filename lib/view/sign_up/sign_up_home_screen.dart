import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/user/clijeo_user.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpHomeScreen extends StatelessWidget {
  static String id = "SignUpHomeScreen";
  const SignUpHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: sizeConfig.SafeBlockSizeVertical(0.5),
            width: sizeConfig.SafeBlockSizeHorizontal(1),
            color: AppTheme.primaryColor,
            child: Padding(
              padding: EdgeInsets.only(
                  left: sizeConfig.SafeBlockSizeHorizontal(0.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizeConfig.SafeBlockSizeVertical(0.05),
                  ),
                  Text(
                    LocaleTextClass.getTextWithKey(context, "AppTitle"),
                    style: AppTextStyle.smallLightTitle,
                  ),
                  SizedBox(
                    height: sizeConfig.SafeBlockSizeVertical(0.15),
                  ),
                  SizedBox(
                    width: sizeConfig.SafeBlockSizeHorizontal(0.8),
                    child: Text(
                      LocaleTextClass.getTextWithKey(context, "AppFullTitle"),
                      style: AppTextStyle.largeLightTitle,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              height: sizeConfig.SafeBlockSizeVertical(0.5),
              width: sizeConfig.SafeBlockSizeHorizontal(1),
              color: AppTheme.backgroundColor,
              child: Padding(
                padding: EdgeInsets.only(
                    left: sizeConfig.SafeBlockSizeHorizontal(0.1),
                    right: sizeConfig.SafeBlockSizeHorizontal(0.1)),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: sizeConfig.SafeBlockSizeVertical(0.06),
                      ),
                      Text(
                        LocaleTextClass.getTextWithKey(
                            context, "SignUpHomePageHeadingSecondParaHeading"),
                        style: AppTextStyle.regularDarkTitle,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: sizeConfig.SafeBlockSizeHorizontal(0.75),
                        child: Text(
                          LocaleTextClass.getTextWithKey(
                              context, "SignUpHomePageHeadingSecondParaBody"),
                          style: AppTextStyle.smallDarkLightBody,
                        ),
                      ),
                      SizedBox(height: sizeConfig.SafeBlockSizeVertical(0.11)),
                      PrimaryButton(
                          onTap: () async {
                            var user = context.read<ClijeoUser>();
                            await user.getCredentials();
                          },
                          sizeConfig: sizeConfig,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/google_logo.png',
                                scale: 0.06,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                LocaleTextClass.getTextWithKey(
                                    context, "SignInHomePageButton"),
                                style: AppTextStyle.smallLightTitle,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
