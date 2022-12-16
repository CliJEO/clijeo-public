import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/view/query_thread/active_query_thread.dart';
import 'package:clijeo_public/view/query_thread/archived_query_thread.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class QueryCard extends StatelessWidget {
  const QueryCard(
      {super.key,
      required this.subject,
      required this.sizeConfig,
      required this.isActive});
  final SizeConfig sizeConfig;
  final bool isActive;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
          context, isActive ? ActiveQueryThread.id : ArchivedQueryThread.id),
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Color(0x33000000), blurRadius: 4.0, offset: Offset(0, 2))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                  child: Divider(
                    thickness: 1,
                    color: isActive
                        ? AppTheme.primaryColor
                        : AppTheme.disabledColor,
                  ),
                ),
                Container(
                    height: 20,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: isActive
                            ? AppTheme.primaryColor
                            : AppTheme.disabledColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        isActive
                            ? LocaleTextClass.getTextWithKey(context, "ACTIVE")
                            : LocaleTextClass.getTextWithKey(
                                context, "ARCHIVED"),
                        style: AppTextStyle.verySmallLightTitle,
                      ),
                    )),
                Expanded(
                  child: SizedBox(
                    child: Divider(
                      thickness: 1,
                      color: isActive
                          ? AppTheme.primaryColor
                          : AppTheme.disabledColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                subject,
                style: AppTextStyle.smallDarkLightBody,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
