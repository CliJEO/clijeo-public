import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class ThreadRespondScreen extends StatelessWidget {
  static String id = "ThreadRespondScreen";
  const ThreadRespondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.SafeBlockSizeHorizontal(0.06),
            vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomBackButton(),
              const SizedBox(
                width: 10,
              ),
              Text(
                LocaleTextClass.getTextWithKey(context, "ReplyInThreadTitle"),
                style: AppTextStyle.regularDarkTitle,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomFormField(
                    fieldTitle: LocaleTextClass.getTextWithKey(context, "Body"),
                    fieldHintText:
                        LocaleTextClass.getTextWithKey(context, "Reply-Hint"),
                    minLines: 15,
                    maxLines: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                      onTap: () {},
                      sizeConfig: sizeConfig,
                      child: Center(
                        child: Text(
                          LocaleTextClass.getTextWithKey(
                              context, "SendMessage"),
                          style: AppTextStyle.smallLightTitle,
                        ),
                      ))
                ],
              )),
        ]),
      )),
    );
  }
}
