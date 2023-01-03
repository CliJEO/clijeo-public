import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/core/localization/language_controller.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/edit_settings_form/edit_settings_form_controller.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/core/constants.dart';
import 'package:clijeo_public/view/error/error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsEditScreen extends StatelessWidget {
  static String id = "SettingsEditScreen";
  static final _formKey = GlobalKey<FormState>();
  const SettingsEditScreen({super.key});

  static final List<String> _allGenderList = Constants.getAllGenders();
  static final List<String> _allLanguageList =
      Constants.getSupportedLanguages();

  Function(int) _genderTogglePressed(EditSettingsFormController controller) {
    return (index) => controller.updateStableStateGender(_allGenderList[index]);
  }

  Function(int) _languageTogglePressed(EditSettingsFormController controller) {
    return (index) =>
        controller.updateStableStateLanguage(_allLanguageList[index]);
  }

  Future<void> _saveProfileDetails(
      context,
      EditSettingsFormController controller,
      LanguageController languageController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await controller.saveProfileDetails(languageController);
      Navigator.of(context).pop(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    final user = ModalRoute.of(context)!.settings.arguments as ClijeoUser;
    return ChangeNotifierProvider<EditSettingsFormController>(
      create: (context) => EditSettingsFormController(
          name: user.name,
          age: user.age,
          gender: user.gender ?? Constants.getAllGenders().first,
          location: user.location,
          phoneNumber: user.phoneNumber,
          language: Provider.of<LanguageController>(context, listen: false)
              .getCurrentLanguageCode()),
      child: Consumer<EditSettingsFormController>(
          builder: (context, settingsFormController, _) =>
              settingsFormController.state.when(
                  loading: () => Loading(),
                  error: (error) => ErrorScreen(),
                  stable: ((name, age, gender, language, phoneNumber,
                          location) =>
                      Scaffold(
                        backgroundColor: AppTheme.backgroundColor,
                        body: SingleChildScrollView(
                            child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  sizeConfig.safeBlockSizeHorizontal(0.06),
                              vertical: sizeConfig.safeBlockSizeVertical(0.04)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const CustomBackButton(
                                      returnValueOnPop: false,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      LocaleTextClass.getTextWithKey(
                                          context, "Settings-Edit"),
                                      style: AppTextStyle.regularDarkTitle,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomFormField(
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: name,
                                            onSaved: settingsFormController
                                                .updateStableStateName,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Name"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Name-Hint"),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          CustomFormField(
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: age.toString(),
                                            onSaved: settingsFormController
                                                .updateStableStateAge,
                                            textInputType: TextInputType.number,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Age"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Age-Hint"),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          CustomToggleButton(
                                              isSelected: _allGenderList
                                                  .map((e) => e == gender)
                                                  .toList(),
                                              onPressed: _genderTogglePressed(
                                                  settingsFormController),
                                              fieldTitle: LocaleTextClass
                                                  .getTextWithKey(
                                                      context, "Gender"),
                                              sizeConfig: sizeConfig,
                                              options: _allGenderList
                                                  .map((e) => LocaleTextClass
                                                      .getTextWithKey(
                                                          context, e))
                                                  .toList()),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          CustomToggleButton(
                                              isSelected: _allLanguageList
                                                  .map((e) => e == language)
                                                  .toList(),
                                              onPressed: _languageTogglePressed(
                                                  settingsFormController),
                                              fieldTitle: LocaleTextClass
                                                  .getTextWithKey(context,
                                                      "LanguagePreference"),
                                              sizeConfig: sizeConfig,
                                              options: _allLanguageList
                                                  .map((e) => LocaleTextClass
                                                      .getTextWithKey(
                                                          context, e))
                                                  .toList()),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          CustomFormField(
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: phoneNumber,
                                            onSaved: settingsFormController
                                                .updateStableStatePhoneNumber,
                                            textInputType: TextInputType.phone,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "PhoneNumber"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context,
                                                    "PhoneNumber-Hint"),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          CustomFormField(
                                            validator: FormValidationController
                                                .nullStringValidation,
                                            initialValue: location,
                                            onSaved: settingsFormController
                                                .updateStableStateLocation,
                                            textInputType: TextInputType.text,
                                            fieldTitle:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Location"),
                                            fieldHintText:
                                                LocaleTextClass.getTextWithKey(
                                                    context, "Location-Hint"),
                                            minLines: 6,
                                            maxLines: 8,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          PrimaryButton(
                                              onTap: () => _saveProfileDetails(
                                                  context,
                                                  settingsFormController,
                                                  Provider.of<
                                                          LanguageController>(
                                                      context,
                                                      listen: false)),
                                              sizeConfig: sizeConfig,
                                              child: Center(
                                                child: Text(
                                                  LocaleTextClass
                                                      .getTextWithKey(context,
                                                          "SaveProfileDetails"),
                                                  style: AppTextStyle
                                                      .smallLightTitle,
                                                ),
                                              ))
                                        ],
                                      ),
                                    )),
                              ]),
                        )),
                      )))),
    );
  }
}
