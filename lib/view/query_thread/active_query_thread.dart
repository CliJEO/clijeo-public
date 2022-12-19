import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_controller.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/view/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/misc_screens/error_screen.dart';
import 'package:clijeo_public/view/misc_screens/loading.dart';
import 'package:clijeo_public/view/query_thread/components/badges.dart';
import 'package:clijeo_public/view/query_thread/components/message_card.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QueryThread extends StatefulWidget {
  static String id = "ActiveQueryThread";
  const QueryThread({super.key});

  @override
  State<QueryThread> createState() => _QueryThreadState();
}

class _QueryThreadState extends State<QueryThread> {
  QueryThreadController _queryThreadController = QueryThreadController();

  @override
  void initState() {
    final queryId = ModalRoute.of(context)!.settings.arguments as int;
    _queryThreadController.getQueryDetails(queryId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);

    return ChangeNotifierProvider<QueryThreadController>(
      create: (context) => _queryThreadController,
      child: Consumer<QueryThreadController>(
          builder: (context, queryThreadController, _) {
        return queryThreadController.state.when(
            loading: () => const Loading(),
            error: (error) => const ErrorScreen(),
            stable: (query) => Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  sizeConfig.SafeBlockSizeHorizontal(0.06),
                              vertical: sizeConfig.SafeBlockSizeVertical(0.04)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const CustomBackButton(),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          LocaleTextClass.getTextWithKey(
                                              context, "QueryThread"),
                                          style: AppTextStyle.regularDarkTitle,
                                        ),
                                      ],
                                    ),
                                    Badges(
                                        text: LocaleTextClass.getTextWithKey(
                                            context,
                                            query.closed
                                                ? "ARCHIVED"
                                                : "ACTIVE"),
                                        color: query.closed
                                            ? AppTheme.disabledColor
                                            : AppTheme.activeColor)
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Consumer<QueryThreadController>(
                                        builder: (context, queryController, _) {
                                      return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              query.title,
                                              style: AppTextStyle
                                                  .largeDarkLightBoldBody,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            MessageCard(
                                                user: LocaleTextClass
                                                    .getTextWithKey(
                                                        context, "You"),
                                                body: query.content,
                                                date: QueryThreadController
                                                    .getDatetimeString(
                                                        query.timestamp),
                                                isArchived: false,
                                                sizeConfig: sizeConfig),
                                            if (query.responses.isNotEmpty)
                                              ListView.builder(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      query.responses.length,
                                                  itemBuilder: (context, index) => MessageCard(
                                                      user: LocaleTextClass.getTextWithKey(
                                                          context,
                                                          QueryThreadController.isAdminResponse(query.responses[index])
                                                              ? "Admin"
                                                              : "You"),
                                                      body: query
                                                          .responses[index]
                                                          .content,
                                                      date: QueryThreadController
                                                          .getDatetimeString(query
                                                              .responses[index]
                                                              .timestamp),
                                                      isArchived: query.closed,
                                                      sizeConfig: sizeConfig)),
                                            if (!query.closed)
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () =>
                                                        Navigator.pushNamed(
                                                            context,
                                                            ThreadRespondScreen
                                                                .id),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        LocaleTextClass
                                                            .getTextWithKey(
                                                                context,
                                                                "ReplyInThreadButton"),
                                                        style: AppTextStyle
                                                            .smallDarkLightBoldBody,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                          ]);
                                    })),
                              ]))),
                ));
      }),
    );
  }
}
