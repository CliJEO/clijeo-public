import 'package:clijeo_public/controllers/core/form_validation/form_validation_controller.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/new_query/new_query_form_controller.dart';
import 'package:clijeo_public/view/new_query/components/new_query_form_attachment_widget.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/core/common_components/custom_form_field.dart';
import 'package:clijeo_public/view/core/common_components/custom_toggle_buttons.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/new_query/components/query_recording.dart';
import 'package:clijeo_public/view/new_query/components/query_audio_player.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewQueryFormScreen extends StatelessWidget {
  static String id = "NewQueryFormScreen";
  const NewQueryFormScreen({super.key});

  static final _formKey = GlobalKey<FormState>();

  Future<void> registerQuery(
      context, NewQueryFormController newQueryFormController) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await newQueryFormController.registerQuery();
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return ChangeNotifierProvider<NewQueryFormController>(
        create: (context) => NewQueryFormController(),
        child: Consumer<NewQueryFormController>(
            builder: (context, newQueryFormController, _) {
          return newQueryFormController.state.when(
              loading: () => const Loading(),
              error: (error) => ErrorScreen(),
              stable: (subject, body, voiceAttachmentPath, otherAttachments) =>
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
                                          context, "NewQuery"),
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
                                          Text(
                                            LocaleTextClass.getTextWithKey(
                                                context, "VoiceAttachment"),
                                            style: AppTextStyle
                                                .smallDarkLightBoldBody,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          if (voiceAttachmentPath == null)
                                            QueryRecording(
                                              formController:
                                                  newQueryFormController,
                                            ),
                                          if (voiceAttachmentPath != null)
                                            QueryAudioPlayer(
                                              voiceAttachmentPath:
                                                  voiceAttachmentPath,
                                              closeFunction: () =>
                                                  newQueryFormController
                                                      .updateStableStateVoiceAttachmentPath(
                                                          null),
                                            ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                LocaleTextClass.getTextWithKey(
                                                    context,
                                                    "OtherAttachments"),
                                                style: AppTextStyle
                                                    .smallDarkLightBoldBody,
                                              ),
                                              GestureDetector(
                                                onTap: newQueryFormController
                                                    .addFilesToOtherAttachments,
                                                child: const Icon(Icons.add,
                                                    color:
                                                        AppTheme.textDarkLight,
                                                    size: 20),
                                              )
                                            ],
                                          ),
                                          if (otherAttachments != null &&
                                              otherAttachments.isNotEmpty)
                                            ListView.builder(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount:
                                                    otherAttachments.length,
                                                itemBuilder: (context, index) =>
                                                    NewQueryFormAttachmentWidget(
                                                        closeFunction: () =>
                                                            newQueryFormController
                                                                .removeFileFromOtherAttachments(
                                                                    index),
                                                        name: otherAttachments[
                                                                index]
                                                            .name)),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          PrimaryButton(
                                              onTap: () async {
                                                registerQuery(context,
                                                    newQueryFormController);
                                              },
                                              sizeConfig: sizeConfig,
                                              child: Center(
                                                child: Text(
                                                  LocaleTextClass.getTextWithKey(
                                                      context,
                                                      "RegisterQueryButton"),
                                                  style: AppTextStyle
                                                      .smallLightTitle,
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
