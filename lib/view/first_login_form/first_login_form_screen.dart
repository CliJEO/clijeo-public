import 'dart:developer';

import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/main_app/main_app_controller.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:clijeo_public/view/core/constants.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/first_login_form/first_login_form_controller.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/error/error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstLoginFormScreen extends StatelessWidget {
  static String id = "SignUpFormScreen";
  const FirstLoginFormScreen({super.key});

  static final _formKey = GlobalKey<FormState>();

  static final List<String> _allGenderList = Constants.getAllGenders();

  static final List<String> _allLanguageList =
      Constants.getSupportedLanguages();

  String _getUsername(context) {
    var ans = Provider.of<ClijeoUserController>(context, listen: false)
        .state
        .maybeMap(stable: (state) => state.user.name, orElse: () => "");
    print("USERNAME: $ans");
    return ans;
  }

  Function(int) _genderTogglePressed(FirstLoginFormController controller) {
    return (index) => controller.updateStableStateGender(_allGenderList[index]);
  }

  Function(int) _languageTogglePressed(FirstLoginFormController controller) {
    return (index) =>
        controller.updateStableStateLanguage(_allLanguageList[index]);
  }

  Future<void> _saveProfileDetails(
      context, FirstLoginFormController controller) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await controller.saveProfileDetails();

      ClijeoUserController userController =
          Provider.of<ClijeoUserController>(context, listen: false);
      await Provider.of<MainAppController>(context, listen: false)
          .firstLoginCompleted(userController);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<FirstLoginFormController>(
      create: (context) => FirstLoginFormController(_getUsername(context)),
      child: Consumer<FirstLoginFormController>(
          builder: (context, controller, child) => controller.state.when(
              loading: () => const Loading(),
              error: (error) {
                return const ErrorScreen();
              },
              stable: (name, age, gender, language, phoneNumber, location) {
                return Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeConfig.safeBlockSizeHorizontal(0.08),
                        vertical: sizeConfig.safeBlockSizeVertical(0.05)),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              LocaleTextClass.getTextWithKey(
                                  context, "SignInFormPageTitle"),
                              style: AppTextStyle.largerAccentTitle),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                              LocaleTextClass.getTextWithKey(
                                  context, "SignInFormPara"),
                              style: AppTextStyle.smallDarkLightBoldBody),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            initialValue: name,
                            onSaved: controller.updateStableStateName,
                            fieldTitle:
                                LocaleTextClass.getTextWithKey(context, "Name"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Name-Hint"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            onSaved: controller.updateStableStateAge,
                            textInputType: TextInputType.number,
                            fieldTitle:
                                LocaleTextClass.getTextWithKey(context, "Age"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Age-Hint"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomToggleButton(
                              isSelected: _allGenderList
                                  .map((e) => e == gender)
                                  .toList(),
                              onPressed: _genderTogglePressed(controller),
                              fieldTitle: LocaleTextClass.getTextWithKey(
                                  context, "Gender"),
                              sizeConfig: sizeConfig,
                              options: _allGenderList
                                  .map((e) => LocaleTextClass.getTextWithKey(
                                      context, e))
                                  .toList()),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomToggleButton(
                              isSelected: _allLanguageList
                                  .map((e) => e == language)
                                  .toList(),
                              onPressed: _languageTogglePressed(controller),
                              fieldTitle: LocaleTextClass.getTextWithKey(
                                  context, "LanguagePreference"),
                              sizeConfig: sizeConfig,
                              options: _allLanguageList
                                  .map((e) => LocaleTextClass.getTextWithKey(
                                      context, e))
                                  .toList()),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            onSaved: controller.updateStableStatePhoneNumber,
                            textInputType: TextInputType.phone,
                            fieldTitle: LocaleTextClass.getTextWithKey(
                                context, "PhoneNumber"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "PhoneNumber-Hint"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            validator:
                                FormValidationController.nullStringValidation,
                            onSaved: controller.updateStableStateLocation,
                            textInputType: TextInputType.text,
                            fieldTitle: LocaleTextClass.getTextWithKey(
                                context, "Location"),
                            fieldHintText: LocaleTextClass.getTextWithKey(
                                context, "Location-Hint"),
                            minLines: 6,
                            maxLines: 8,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PrimaryButton(
                              onTap: () =>
                                  _saveProfileDetails(context, controller),
                              sizeConfig: sizeConfig,
                              child: Center(
                                child: Text(
                                  LocaleTextClass.getTextWithKey(
                                      context, "SaveProfileDetails"),
                                  style: AppTextStyle.smallLightTitle,
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
                );
              })),
    );
  }
}
