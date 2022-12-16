import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class SettingsEditScreen extends StatelessWidget {
  static String id = "SettingsEditScreen";
  const SettingsEditScreen({super.key});

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
                LocaleTextClass.getTextWithKey(context, "Settings-Edit"),
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
                    fieldTitle: LocaleTextClass.getTextWithKey(context, "Name"),
                    fieldHintText:
                        LocaleTextClass.getTextWithKey(context, "Name-Hint"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormField(
                    fieldTitle: LocaleTextClass.getTextWithKey(context, "Age"),
                    fieldHintText:
                        LocaleTextClass.getTextWithKey(context, "Age-Hint"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomToggleButton(
                      fieldTitle:
                          LocaleTextClass.getTextWithKey(context, "Gender"),
                      sizeConfig: sizeConfig,
                      options: [
                        LocaleTextClass.getTextWithKey(context, "Male"),
                        LocaleTextClass.getTextWithKey(context, "Female"),
                        LocaleTextClass.getTextWithKey(context, "Other")
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomToggleButton(
                      fieldTitle: LocaleTextClass.getTextWithKey(
                          context, "LanguagePreference"),
                      sizeConfig: sizeConfig,
                      options: [
                        LocaleTextClass.getTextWithKey(context, "English"),
                        LocaleTextClass.getTextWithKey(context, "Malayalam")
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormField(
                    fieldTitle:
                        LocaleTextClass.getTextWithKey(context, "PhoneNumber"),
                    fieldHintText: LocaleTextClass.getTextWithKey(
                        context, "PhoneNumber-Hint"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormField(
                    fieldTitle:
                        LocaleTextClass.getTextWithKey(context, "Location"),
                    fieldHintText: LocaleTextClass.getTextWithKey(
                        context, "Location-Hint"),
                    minLines: 6,
                    maxLines: 8,
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
                              context, "SaveProfileDetails"),
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
