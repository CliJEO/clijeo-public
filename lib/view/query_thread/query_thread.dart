import 'dart:developer';

import 'package:clijeo_public/controllers/core/localization/locale_text_class.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_controller.dart';
import 'package:clijeo_public/models/query/query.dart';
import 'package:clijeo_public/view/core/common_components/custom_back_button.dart';
import 'package:clijeo_public/view/error/error_screen.dart';
import 'package:clijeo_public/view/loading/loading.dart';
import 'package:clijeo_public/view/query_thread/components/badges.dart';
import 'package:clijeo_public/view/query_thread/components/message_card.dart';
import 'package:clijeo_public/view/query_thread/thread_respond.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QueryThread extends StatelessWidget {
  static String id = "QueryThread";
  const QueryThread({super.key});

  Future<void> _replyInThreadPressed(
      context, QueryThreadController queryThreadController) async {
    var shouldRefresh = await Navigator.pushNamed(
        context, ThreadRespondScreen.id,
        arguments: queryThreadController.queryId);
    if (shouldRefresh is bool && shouldRefresh) {
      await _refresh(queryThreadController);
    }
  }

  Future<void> _refresh(QueryThreadController queryThreadController) async {
    await queryThreadController.getQueryDetails();
  }

  @override
  Widget build(BuildContext context) {
    final sizeConfig = SizeConfig(context);
    final queryId = ModalRoute.of(context)!.settings.arguments as int;
    return ChangeNotifierProvider<QueryThreadController>(
      create: (context) => QueryThreadController(queryId: queryId),
      child: Consumer<QueryThreadController>(
          builder: (context, queryThreadController, _) {
        return queryThreadController.state.when(
            initial: () {
              queryThreadController.getQueryDetails();
              return const Loading();
            },
            loading: () => const Loading(),
            error: (error) => const ErrorScreen(),
            stable: (query, isLoadingAttachments, voiceAttachments,
                    otherAttachments) =>
                Scaffold(
                  backgroundColor: AppTheme.backgroundColor,
                  body: RefreshIndicator(
                    backgroundColor: AppTheme.backgroundColor,
                    color: AppTheme.primaryColor,
                    strokeWidth: 3,
                    triggerMode: RefreshIndicatorTriggerMode.onEdge,
                    onRefresh: () => _refresh(queryThreadController),
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    sizeConfig.safeBlockSizeHorizontal(0.06),
                                vertical:
                                    sizeConfig.safeBlockSizeVertical(0.04)),
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
                                            style:
                                                AppTextStyle.regularDarkTitle,
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
                                      child: Column(
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
                                              isArchived: query.closed,
                                              sizeConfig: sizeConfig,
                                              otherAttachmentDownloadFunction:
                                                  QueryThreadController
                                                      .getDownloadAttachmentFunction(
                                                          otherAttachments),
                                              otherAttachments:
                                                  otherAttachments,
                                              voiceAttachments:
                                                  voiceAttachments,
                                              isLoadingAttachments:
                                                  isLoadingAttachments,
                                            ),
                                            if (query.responses.isNotEmpty)
                                              ListView.builder(
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemCount:
                                                      query.responses.length,
                                                  itemBuilder: (context,
                                                          index) =>
                                                      MessageCard(
                                                        user: LocaleTextClass.getTextWithKey(
                                                            context,
                                                            QueryThreadController
                                                                .getResponderName(
                                                                    query.responses[
                                                                        index])),
                                                        body: query
                                                            .responses[index]
                                                            .content,
                                                        date: QueryThreadController
                                                            .getDatetimeString(
                                                                query
                                                                    .responses[
                                                                        index]
                                                                    .timestamp),
                                                        isArchived:
                                                            query.closed,
                                                        sizeConfig: sizeConfig,
                                                        otherAttachmentDownloadFunction:
                                                            null,
                                                        otherAttachments: null,
                                                        isLoadingAttachments:
                                                            false,
                                                      )),
                                            if (!query.closed)
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () =>
                                                        _replyInThreadPressed(
                                                            context,
                                                            queryThreadController),
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
                                          ])),
                                ]))),
                  ),
                ));
      }),
    );
  }
}
