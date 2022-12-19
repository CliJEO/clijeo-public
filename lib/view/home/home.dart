import 'dart:developer';

import 'package:clijeo_public/controllers/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/main_app/main_app_controller.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/components/no_prev_query_widget.dart';
import 'package:clijeo_public/view/home/components/query_cards.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Consumer<ClijeoUserController>(
      builder: (context, userController, _) {
        log(userController.user.toString());
        return Scaffold(
          backgroundColor: AppTheme.backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: sizeConfig.SafeBlockSizeHorizontal(0.08),
                  vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              LocaleTextClass.getTextWithKey(context, "Hello"),
                              style: AppTextStyle.regularDarkTitle,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              userController.user.name,
                              style: AppTextStyle.regularAccentTitle,
                            )
                          ],
                        ),
                        GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, SettingsMainScreen.id),
                            child: const Icon(Icons.settings,
                                color: AppTheme.textDark, size: 25)),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      onTap: () =>
                          Navigator.pushNamed(context, NewQueryFormScreen.id),
                      sizeConfig: sizeConfig,
                      child: Center(
                        child: Text(
                          LocaleTextClass.getTextWithKey(
                              context, "RegisterQuery"),
                          style: AppTextStyle.smallLightTitle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      LocaleTextClass.getTextWithKey(
                          context, "PreviousQueries"),
                      style: AppTextStyle.smallDarkTitle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    if (userController.user.queries.isEmpty)
                      Center(child: NoPrevQueryWidget(sizeConfig: sizeConfig)),
                    if (userController.user.queries.isNotEmpty)
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: userController.user.queries.length,
                        itemBuilder: (context, index) {
                          final query = userController.user.queries[index];
                          return QueryCard(
                            queryId: query.id,
                            title: query.title,
                            isArchived: query.closed,
                            sizeConfig: sizeConfig,
                          );
                        },
                      )
                  ]),
            ),
          ),
        );
      },
    );
  }
}
