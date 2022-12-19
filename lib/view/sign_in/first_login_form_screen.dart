import 'dart:developer';

import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/form_validation.dart/form_validation_controller.dart';
import 'package:clijeo_public/controllers/sign_in/first_login_form_notifier.dart';
import 'package:clijeo_public/view/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/home.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _phnoController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  void initState() {
    _loginForm.getUserNameFromBackend();
    super.initState();
  }

  Future<void> _saveProfileDetails() async {
    _formKey.currentState!.save();
    _loginForm.state.maybeWhen(
        stable: (name, age, gender, phoneNumber, location) {
          log("Name: " + name!);
          log("Location:" + location!);
        },
        orElse: () {});

    if (_formKey.currentState!.validate()) {
      _loginForm.state.maybeWhen(
          stable: (name, age, gender, phoneNumber, location) {
            log("Name: " + name!);
            log("Location:" + location!);
          },
          orElse: () {});
      // await _loginForm.saveProfileDetails(
      //     _nameController.text,
      //     int.parse(_ageController.text),
      //     "male",
      //     _phnoController.text,
      //     _locationController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<FirstLoginFormNotifier>(
      create: (context) => _loginForm,
      child: Consumer<FirstLoginFormNotifier>(
          builder: (context, value, child) => value.state.when(
              loading: () => const Loading(),
              error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
                );
                return Container();
              },
              completed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
                return const Loading();
              },
              stable: (name, age, gender, phoneNumber, location) {
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
                              fieldTitle: LocaleTextClass.getTextWithKey(
                                  context, "Gender"),
                              sizeConfig: sizeConfig,
                              options: [
                                LocaleTextClass.getTextWithKey(context, "Male"),
                                LocaleTextClass.getTextWithKey(
                                    context, "Female"),
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
                                LocaleTextClass.getTextWithKey(
                                    context, "English"),
                                LocaleTextClass.getTextWithKey(
                                    context, "Malayalam")
                              ]),
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
