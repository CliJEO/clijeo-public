import 'dart:developer';
import 'package:clijeo_public/controllers/core/clijeo_user/clijeo_user_controller.dart';
import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/models/user/clijeo_user.dart';
import 'package:clijeo_public/view/core/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/components/no_prev_query_widget.dart';
import 'package:clijeo_public/view/home/components/query_cards.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
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

  Future<void> _registerNewQueryPressed(
      context, ClijeoUserController userController) async {
    var shouldRefresh =
        await Navigator.pushNamed(context, NewQueryFormScreen.id);
    if (shouldRefresh is bool && shouldRefresh) {
      await userController.refreshUser();
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Consumer<ClijeoUserController>(
        builder: (context, userController, _) => userController.state.when(
            error: (String error) => ErrorScreen(),
            loading: () => Loading(),
            stable: (ClijeoUser user) => Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: sizeConfig.safeBlockSizeHorizontal(0.08),
                          vertical: sizeConfig.safeBlockSizeVertical(0.04)),
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
                                      LocaleTextClass.getTextWithKey(
                                          context, "Hello"),
                                      style: AppTextStyle.regularDarkTitle,
                                    ),
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      user.name,
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
                              onTap: () => _registerNewQueryPressed(
                                  context, userController),
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
                            if (user.queries.isEmpty)
                              Center(
                                  child: NoPrevQueryWidget(
                                      sizeConfig: sizeConfig)),
                            if (user.queries.isNotEmpty)
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: user.queries.length,
                                itemBuilder: (context, index) {
                                  final query = user.queries[index];
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
                )));
  }
}
