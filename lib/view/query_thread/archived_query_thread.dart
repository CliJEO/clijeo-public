// import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
// import 'package:clijeo_public/view/common_components/custom_back_button.dart';
// import 'package:clijeo_public/view/query_thread/components/badges.dart';
// import 'package:clijeo_public/view/query_thread/components/message_card.dart';
// import 'package:clijeo_public/view/theme/app_color.dart';
// import 'package:clijeo_public/view/theme/app_text_style.dart';
// import 'package:clijeo_public/view/theme/size_config.dart';
// import 'package:flutter/material.dart';

// class ArchivedQueryThread extends StatelessWidget {
//   static String id = "ArchivedQueryThread";
//   const ArchivedQueryThread({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final sizeConfig = SizeConfig(context);
//     return Scaffold(
//       backgroundColor: AppTheme.backgroundColor,
//       body: SingleChildScrollView(
//           child: Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: sizeConfig.SafeBlockSizeHorizontal(0.06),
//                   vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             const CustomBackButton(),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               LocaleTextClass.getTextWithKey(
//                                   context, "ArchivedThread"),
//                               style: AppTextStyle.regularDarkTitle,
//                             ),
//                           ],
//                         ),
//                         Badges(
//                             text: LocaleTextClass.getTextWithKey(
//                                 context, "ARCHIVED"),
//                             color: AppTheme.disabledColor)
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 5),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 LocaleTextClass.getTextWithKey(
//                                     context, "QueryThreadPara"),
//                                 style: AppTextStyle.largeDarkLightBoldBody,
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               MessageCard(
//                                   user: "You",
//                                   body:
//                                       "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut dapibus lectus. Quisque tristique id ex nec posuere. Duis justo arcu, tincidunt ac elementum eget, volutpat ut risus. Nullam vehicula, sem vitae eleifend cursus, eros lacus scelerisque diam, quis varius diam ex et orci. Cras semper nibh est, in porttitor velit viverra porta.",
//                                   date: "15/12/2022",
//                                   isArchived: true,
//                                   sizeConfig: sizeConfig),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                             ])),
//                   ]))),
//     );
//   }
// }
