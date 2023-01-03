import 'package:clijeo_public/models/attachments/local_attachments.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/models/query/media/query_media.dart';
import 'package:clijeo_public/view/core/common_components/query_audio_player.dart';
import 'package:clijeo_public/view/loading/loading_widget.dart';
import 'package:clijeo_public/view/query_thread/components/query_thread_attachment_widget.dart';
import 'package:clijeo_public/view/theme/app_color.dart';
import 'package:clijeo_public/view/theme/app_text_style.dart';
import 'package:clijeo_public/view/theme/size_config.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard(
      {super.key,
      required this.user,
      required this.body,
      required this.date,
      required this.isArchived,
      required this.sizeConfig,
      required this.isLoadingAttachments,
      this.voiceAttachments,
      this.otherAttachments,
      this.otherAttachmentDownloadFunction});
  final SizeConfig sizeConfig;
  final String user;
  final bool isArchived;
  final String body;
  final String date;
  final bool isLoadingAttachments;
  final List<LocalAttachments>? otherAttachments;
  final List<LocalAttachments>? voiceAttachments;
  final Function(int)? otherAttachmentDownloadFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  user,
                  style: isArchived
                      ? AppTextStyle.smallDarkLightTitle
                      : AppTextStyle.smallAccentTitle,
                ),
                Text(
                  date,
                  style: AppTextStyle.smallDarkLightBoldBody,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              body,
              style: AppTextStyle.smallDarkLightBody,
            ),
            const SizedBox(
              height: 10,
            ),
            if (isLoadingAttachments)
              const SizedBox(height: 100, child: LoadingWidget()),
            if (!isLoadingAttachments)
              Column(
                children: [
                  if (!isArchived &&
                      voiceAttachments != null &&
                      voiceAttachments!.isNotEmpty)
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: voiceAttachments!.length,
                        itemBuilder: (context, index) => QueryAudioPlayer(
                            voiceAttachmentPath:
                                voiceAttachments![index].path)),
                  const SizedBox(
                    height: 10,
                  ),
                  if (!isArchived &&
                      otherAttachments != null &&
                      otherAttachments!.isNotEmpty &&
                      otherAttachmentDownloadFunction != null)
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: otherAttachments!.length,
                        itemBuilder: (context, index) =>
                            QueryThreadAttachmentWidget(
                                downloadFunction: () =>
                                    otherAttachmentDownloadFunction!(index),
                                // TODO: Replace with name
                                name: otherAttachments![index].name)),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
