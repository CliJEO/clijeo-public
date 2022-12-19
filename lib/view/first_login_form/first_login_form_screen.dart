import 'dart:developer';

import 'package:clijeo_public/constants.dart';
import 'package:clijeo_public/controllers/core/localization/language.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/first_login_form/first_login_form_notifier.dart';
import 'package:clijeo_public/view/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/home.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstLoginFormScreen extends StatefulWidget {
  static String id = "SignUpFormScreen";
  const FirstLoginFormScreen({super.key});

  @override
  State<FirstLoginFormScreen> createState() => _FirstLoginFormScreenState();
}

class _FirstLoginFormScreenState extends State<FirstLoginFormScreen> {
  final FirstLoginFormNotifier _loginForm = FirstLoginFormNotifier();
  final _formKey = GlobalKey<FormState>();

  final List<String> _allGenderList = Constants.getAllGenders();
  final List<String> _allLanguageList = Constants.getSupportedLanguages();

  @override
  void initState() {
    _loginForm.getUserNameFromBackend();
    super.initState();
  }

  void _genderTogglePressed(int index) {
    _loginForm.updateStableStateGender(_allGenderList[index]);
  }

  void _languageTogglePressed(int index) {
    _loginForm.updateStableStateLanguage(_allLanguageList[index]);
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _saveProfileDetails() async {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        await _loginForm.saveProfileDetails();
        _loginForm.state.maybeWhen(
            completed: () =>
                Navigator.of(context).pushReplacementNamed(HomeScreen.id),
            orElse: () {});
      }
    }

    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<FirstLoginFormNotifier>(
      create: (context) => _loginForm,
      child: Consumer<FirstLoginFormNotifier>(
          builder: (context, value, child) => value.state.when(
              loading: () => const Loading(),
              error: (error) {
                return const ErrorScreen();
              },
              completed: () => const Loading(),
              stable: (name, age, gender, language, phoneNumber, location) {
                return Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeConfig.SafeBlockSizeHorizontal(0.08),
                        vertical: sizeConfig.SafeBlockSizeVertical(0.05)),
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
                            onSaved: _loginForm.updateStableStateName,
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
                            onSaved: _loginForm.updateStableStateAge,
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
                              onPressed: _genderTogglePressed,
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
                              onPressed: _languageTogglePressed,
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
                            onSaved: _loginForm.updateStableStatePhoneNumber,
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
                            onSaved: _loginForm.updateStableStateLocation,
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
                              onTap: _saveProfileDetails,
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
