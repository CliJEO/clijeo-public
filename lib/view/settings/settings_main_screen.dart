import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/main_app/main_app_controller.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/common_components/disabled_form_field.dart';
import 'package:clijeo_public/view/common_components/disabled_toggle_button.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/settings/settings_edit_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsMainScreen extends StatelessWidget {
  static String id = "SettingsMainScreen";
  const SettingsMainScreen({super.key});

  Future<void> _editSettingsPressed(
      context, ClijeoUserController userController, ClijeoUser user) async {
    var shouldRefresh = await Navigator.pushNamed(
        context, SettingsEditScreen.id,
        arguments: user);
    if (shouldRefresh is bool && shouldRefresh) {
      await userController.refreshUser();
    }
  }

  Future<void> _signOutButtonPressed(
      context, ClijeoUserController userController) async {
    await Provider.of<MainAppController>(context, listen: false)
        .signUserOut(userController);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Consumer<ClijeoUserController>(
        builder: (context, userController, _) => userController.state.when(
            loading: () => const Loading(),
            error: (error) => const ErrorScreen(),
            stable: (user) => Scaffold(
                backgroundColor: AppTheme.backgroundColor,
                body: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: sizeConfig.safeBlockSizeHorizontal(0.06),
                      vertical: sizeConfig.safeBlockSizeVertical(0.04)),
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
                                LocaleTextClass.getTextWithKey(
                                    context, "Settings"),
                                style: AppTextStyle.regularDarkTitle,
                              )
                            ],
                          ),
                          GestureDetector(
                              onTap: () => _editSettingsPressed(
                                  context, userController, user),
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
                                LocaleTextClass.getTextWithKey(
                                    context, "SettingsPara"),
                                style: AppTextStyle.smallDarkLightBoldBody,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Name"),
                                  fieldValue: user.name),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Age"),
                                  fieldValue: user.age.toString()),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                fieldTitle: LocaleTextClass.getTextWithKey(
                                    context, "Gender"),
                                fieldValue: user.gender,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                fieldTitle: LocaleTextClass.getTextWithKey(
                                    context, "LanguagePreference"),
                                fieldValue: LocaleTextClass.getTextWithKey(
                                    context, Language.getCurrentLanguageCode()),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "PhoneNumber"),
                                  fieldValue: user.phoneNumber),
                              const SizedBox(
                                height: 20,
                              ),
                              DisabledFormField(
                                  fieldTitle: LocaleTextClass.getTextWithKey(
                                      context, "Location"),
                                  fieldValue: user.location),
                              const SizedBox(
                                height: 20,
                              ),
                              PrimaryButton(
                                  onTap: () => _signOutButtonPressed(
                                      context, userController),
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
                ))));
  }
}
