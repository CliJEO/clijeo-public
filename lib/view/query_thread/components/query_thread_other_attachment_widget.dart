import 'package:clijeo_public/controllers/core/file/file_controller.dart';
import 'package:clijeo_public/controllers/core/language/locale_text_class.dart';
import 'package:clijeo_public/controllers/query_thread/query_thread_attachment/query_thread_attachment_controller.dart';
import 'package:clijeo_public/models/attachment/attachment.dart';
import 'package:clijeo_public/view/core/theme/app_color.dart';
import 'package:clijeo_public/view/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class QueryThreadOtherAttachmentWidget extends StatelessWidget {
  const QueryThreadOtherAttachmentWidget({super.key, required this.attachment});
  final Attachment attachment;

  String _preprocessString(String str) {
    if (str.length > 20) {
      return "${str.substring(0, 10)}..";
    }
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QueryThreadAttachmentController>(
      create: (context) =>
          QueryThreadAttachmentController(attachment: attachment),
      child: Consumer<QueryThreadAttachmentController>(
          builder: (context, queryThreadAttachmentController, _) {
        return GestureDetector(
          onTap: queryThreadAttachmentController.state.maybeMap(
              notDownloaded: (_) => queryThreadAttachmentController.download,
              downloaded: (_) => queryThreadAttachmentController.open,
              orElse: () => null),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: queryThreadAttachmentController.state.maybeMap(
                    downloading: (_) => AppTheme.lighterPrimaryColor,
                    orElse: () => AppTheme.primaryColor),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      queryThreadAttachmentController.state.map(
                        downloading: (_) =>
                            const SpinKitRing(color: AppTheme.textLight),
                        downloaded: (_) => Icon(
                            FileController.getIconForFiletype(
                                attachment.filetype),
                            color: AppTheme.textDark,
                            size: 12),
                        notDownloaded: (_) => const Icon(Icons.download,
                            color: AppTheme.textDark, size: 12),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        _preprocessString(attachment.name),
                        style: AppTextStyle.verySmallLightTitle,
                      ),
                    ],
                  ),
                  queryThreadAttachmentController.state.maybeMap(
                      notDownloaded: (value) {
                        if (value.downloadingError != null) {
                          return Text(
                            "[${LocaleTextClass.getTextWithKey(context, value.downloadingError!)}]",
                            style: AppTextStyle.verySmallLightTitle,
                          );
                        } else {
                          return Container();
                        }
                      },
                      orElse: () => Container()),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
