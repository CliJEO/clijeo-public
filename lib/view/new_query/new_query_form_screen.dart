import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewQueryFormScreen extends StatelessWidget {
  static String id = "NewQueryFormScreen";
  const NewQueryFormScreen({super.key});

  static final _formKey = GlobalKey<FormState>();
  static final _newQueryFormController = NewQueryFormController();

  Future<void> registerQuery(context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await _newQueryFormController.registerQuery();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<NewQueryFormController>(
        create: (context) => _newQueryFormController,
        child: Consumer<NewQueryFormController>(
            builder: (context, newQueryFormController, _) {
          return newQueryFormController.state.maybeWhen(
              loading: () => const Loading(),
              orElse: () => Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeConfig.SafeBlockSizeHorizontal(0.06),
                          vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                      context, "NewQuery"),
                                  style: AppTextStyle.regularDarkTitle,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomFormField(
                                        onSaved: newQueryFormController
                                            .updateStableStateSubject,
                                        validator: FormValidationController
                                            .nullStringValidation,
                                        fieldTitle:
                                            LocaleTextClass.getTextWithKey(
                                                context, "Subject"),
                                        fieldHintText:
                                            LocaleTextClass.getTextWithKey(
                                                context, "Subject-Hint"),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      CustomFormField(
                                        onSaved: newQueryFormController
                                            .updateStableStateBody,
                                        validator: FormValidationController
                                            .nullStringValidation,
                                        fieldTitle:
                                            LocaleTextClass.getTextWithKey(
                                                context, "Body"),
                                        fieldHintText:
                                            LocaleTextClass.getTextWithKey(
                                                context, "Body-Hint"),
                                        minLines: 15,
                                        maxLines: 100,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      PrimaryButton(
                                          onTap: () async {
                                            registerQuery(context);
                                          },
                                          sizeConfig: sizeConfig,
                                          child: Center(
                                            child: Text(
                                              LocaleTextClass.getTextWithKey(
                                                  context,
                                                  "RegisterQueryButton"),
                                              style:
                                                  AppTextStyle.smallLightTitle,
                                            ),
                                          ))
                                    ],
                                  ),
                                ))
                          ]),
                    ),
                  )));
        }));
  }
}
