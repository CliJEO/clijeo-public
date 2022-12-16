import 'package:clijeo_public/controllers/app_localization/locale_text_class.dart';
import 'package:clijeo_public/view/common_components/primary_button.dart';
import 'package:clijeo_public/view/home/components/no_prev_query_widget.dart';
import 'package:clijeo_public/view/home/components/query_cards.dart';
import 'package:clijeo_public/view/new_query/new_query_form_screen.dart';
import 'package:clijeo_public/view/settings/settings_main_screen.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: sizeConfig.SafeBlockSizeHorizontal(0.08),
              vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    // TODO: ADD GET-USER CALL
                    Text(
                      "User",
                      style: AppTextStyle.regularAccentTitle,
                    )
                  ],
                ),
                GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, SettingsMainScreen.id),
                    child: const Icon(Icons.settings,
                        color: AppTheme.textDark, size: 25)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            PrimaryButton(
              onTap: () => Navigator.pushNamed(context, NewQueryFormScreen.id),
              sizeConfig: sizeConfig,
              child: Center(
                child: Text(
                  LocaleTextClass.getTextWithKey(context, "RegisterQuery"),
                  style: AppTextStyle.smallLightTitle,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              LocaleTextClass.getTextWithKey(context, "PreviousQueries"),
              style: AppTextStyle.smallDarkTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            // Center(child: NoPrevQueryWidget(sizeConfig: sizeConfig))
            QueryCard(
              subject:
                  "Filing a complaint against delayed building constructors",
              sizeConfig: sizeConfig,
              isActive: true,
            )
          ]),
        ),
      ),
    );
  }
}
