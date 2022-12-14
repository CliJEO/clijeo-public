import 'package:clijeo_public/controllers/app_localization/locale_text_class.dart';
import 'package:clijeo_public/view/components/custom_form_field.dart';
import 'package:clijeo_public/view/components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/components/primary_button.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class SignUpFormScreen extends StatelessWidget {
  const SignUpFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: sizeConfig.SafeBlockSizeHorizontal(0.08),
            vertical: sizeConfig.SafeBlockSizeVertical(0.05)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(LocaleTextClass.getTextWithKey(context, "SignInFormPageTitle"),
                style: AppTextStyle.signUpFormTitleAccent),
            const SizedBox(
              height: 15,
            ),
            Text(LocaleTextClass.getTextWithKey(context, "SignInFormPara"),
                style: AppTextStyle.smallBoldBody),
            const SizedBox(
              height: 30,
            ),
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
                fieldTitle: LocaleTextClass.getTextWithKey(context, "Gender"),
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
              fieldHintText:
                  LocaleTextClass.getTextWithKey(context, "PhoneNumber-Hint"),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomFormField(
              fieldTitle: LocaleTextClass.getTextWithKey(context, "Location"),
              fieldHintText:
                  LocaleTextClass.getTextWithKey(context, "Location-Hint"),
              isLargeField: true,
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
                    style: AppTextStyle.smallTitle,
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
