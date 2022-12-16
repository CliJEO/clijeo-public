import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/user/clijeo_user.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/common_components/disabled_form_field.dart';
import 'package:clijeo_public/view/common_components/disabled_toggle_button.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsMainScreen extends StatelessWidget {
  static String id = "SettingsMainScreen";
  const SettingsMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: sizeConfig.SafeBlockSizeHorizontal(0.06),
              vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomBackButton(),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        LocaleTextClass.getTextWithKey(context, "Settings"),
                        style: AppTextStyle.regularDarkTitle,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, SettingsEditScreen.id),
                      child: const Icon(Icons.edit,
                          color: AppTheme.textDark, size: 20)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleTextClass.getTextWithKey(context, "SettingsPara"),
                        style: AppTextStyle.smallDarkLightBoldBody,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //TODO: GET-NAME
                      DisabledFormField(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Name"),
                          fieldValue: "Name"),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Age"),
                          fieldValue: "Age"),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledToggleButton(
                          fieldTitle:
                              LocaleTextClass.getTextWithKey(context, "Gender"),
                          options: ["Male", "Female", "Other"],
                          sizeConfig: sizeConfig),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledToggleButton(
                          fieldTitle: LocaleTextClass.getTextWithKey(
                              context, "LanguagePreference"),
                          options: ["English", "Malayalam"],
                          sizeConfig: sizeConfig),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle: LocaleTextClass.getTextWithKey(
                              context, "PhoneNumber"),
                          fieldValue: "Phone Number"),
                      const SizedBox(
                        height: 20,
                      ),
                      DisabledFormField(
                          fieldTitle: LocaleTextClass.getTextWithKey(
                              context, "Location"),
                          fieldValue: "Location"),
                      SizedBox(
                        height: 20,
                      ),
                      PrimaryButton(
                          onTap: () async {
                            await context.read<ClijeoUser>().signUserOut();
                          },
                          sizeConfig: sizeConfig,
                          child: Center(
                            child: Text(
                              LocaleTextClass.getTextWithKey(
                                  context, "SignOut"),
                              style: AppTextStyle.smallLightTitle,
                            ),
                          ))
                    ]),
              ),
            ],
          )),
        ));
  }
}
